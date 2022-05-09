; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtsock.c_pt.bc'
source_filename = "../net/sunrpc/xprtsock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+get_srcport\22, \22a\22\09"
module asm "\09.weak\09__crc_get_srcport\09\09\09\09"
module asm "\09.long\09__crc_get_srcport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_srcport:\09\09\09\09\09"
module asm "\09.asciz \09\22get_srcport\22\09\09\09\09\09"
module asm "__kstrtabns_get_srcport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.147 }
%union.anon.147 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.148 }
%struct.atomic_t = type { i32 }
%union.anon.148 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.sock_xprt = type { %struct.rpc_xprt, ptr, ptr, ptr, %struct.anon.199, %struct.anon.201, i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.__kernel_sockaddr_storage, i16, i32, i32, i32, %struct.rpc_timeout, ptr, ptr, ptr, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.170, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root = type { ptr }
%struct.anon.170 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.anon.199 = type { %struct.anon.200, i32, i32, i32 }
%struct.anon.200 = type { i32, i32, i32 }
%struct.anon.201 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.63 }
%union.anon.63 = type { [4 x i32] }
%struct.xprt_create = type { i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.40, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.37, %union.anon.38 }
%union.anon.37 = type { ptr }
%union.anon.38 = type { i64 }
%union.anon.40 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.138, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11 }
%struct.llist_node = type { ptr }
%union.anon.11 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.13 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.138 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.165, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.165 = type { %struct.rb_node }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.72, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.109, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.110, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.31, %union.anon.33, %union.anon.34, i16, i8, i8, i32, %union.anon.36, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.64, [0 x i32], %union.anon.65, i16, i16, %union.anon.66, %struct.refcount_struct, [0 x i32], %union.anon.67 }
%union.anon.31 = type { i64 }
%union.anon.33 = type { i32 }
%union.anon.34 = type { i32 }
%union.anon.36 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { i32 }
%union.anon.65 = type { %struct.hlist_node }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.72 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { ptr }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.2, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.2 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.163, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.163 = type { %struct.atomic_t }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, i32, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.28, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.119, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.119 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.113 }
%union.anon.113 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.202, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.202 = type { %struct.anon.203 }
%struct.anon.203 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.61, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.61 = type { ptr }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.svc_sock = type { %struct.svc_xprt, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [259 x ptr] }
%struct.rpc_buffer = type { i32, [0 x i8] }

@__kstrtab_get_srcport = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_srcport = external dso_local constant [0 x i8], align 1
@__ksymtab_get_srcport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_srcport to i32), ptr @__kstrtab_get_srcport, ptr @__kstrtabns_get_srcport }, section "___ksymtab+get_srcport", align 4
@sunrpc_table_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sunrpc_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr null, i32 0, i16 365, ptr @xs_tunables_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@__param_str_min_resvport = internal constant [20 x i8] c"sunrpc.min_resvport\00", align 1
@param_ops_portnr = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_portnr, ptr @param_get_uint, ptr null }, [16 x i8] zeroinitializer }, align 32
@xprt_min_resvport = internal global { i32, [28 x i8] } { i32 665, [28 x i8] zeroinitializer }, align 32
@__param_min_resvport = internal constant %struct.kernel_param { ptr @__param_str_min_resvport, ptr null, ptr @param_ops_portnr, i16 420, i8 -1, i8 0, %union.anon.147 { ptr @xprt_min_resvport } }, section "__param", align 4
@__UNIQUE_ID_min_resvporttype867 = internal constant [36 x i8] c"sunrpc.parmtype=min_resvport:portnr\00", section ".modinfo", align 1
@__param_str_max_resvport = internal constant [20 x i8] c"sunrpc.max_resvport\00", align 1
@xprt_max_resvport = internal global { i32, [28 x i8] } { i32 1023, [28 x i8] zeroinitializer }, align 32
@__param_max_resvport = internal constant %struct.kernel_param { ptr @__param_str_max_resvport, ptr null, ptr @param_ops_portnr, i16 420, i8 -1, i8 0, %union.anon.147 { ptr @xprt_max_resvport } }, section "__param", align 4
@__UNIQUE_ID_max_resvporttype868 = internal constant [36 x i8] c"sunrpc.parmtype=max_resvport:portnr\00", section ".modinfo", align 1
@__param_str_tcp_slot_table_entries = internal constant [30 x i8] c"sunrpc.tcp_slot_table_entries\00", align 1
@param_ops_slot_table_size = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_slot_table_size, ptr @param_get_uint, ptr null }, [16 x i8] zeroinitializer }, align 32
@xprt_tcp_slot_table_entries = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_tcp_slot_table_entries = internal constant %struct.kernel_param { ptr @__param_str_tcp_slot_table_entries, ptr null, ptr @param_ops_slot_table_size, i16 420, i8 -1, i8 0, %union.anon.147 { ptr @xprt_tcp_slot_table_entries } }, section "__param", align 4
@__UNIQUE_ID_tcp_slot_table_entriestype869 = internal constant [55 x i8] c"sunrpc.parmtype=tcp_slot_table_entries:slot_table_size\00", section ".modinfo", align 1
@__param_str_tcp_max_slot_table_entries = internal constant [34 x i8] c"sunrpc.tcp_max_slot_table_entries\00", align 1
@param_ops_max_slot_table_size = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_max_slot_table_size, ptr @param_get_uint, ptr null }, [16 x i8] zeroinitializer }, align 32
@xprt_max_tcp_slot_table_entries = internal global { i32, [28 x i8] } { i32 65536, [28 x i8] zeroinitializer }, align 32
@__param_tcp_max_slot_table_entries = internal constant %struct.kernel_param { ptr @__param_str_tcp_max_slot_table_entries, ptr null, ptr @param_ops_max_slot_table_size, i16 420, i8 -1, i8 0, %union.anon.147 { ptr @xprt_max_tcp_slot_table_entries } }, section "__param", align 4
@__UNIQUE_ID_tcp_max_slot_table_entriestype870 = internal constant [63 x i8] c"sunrpc.parmtype=tcp_max_slot_table_entries:max_slot_table_size\00", section ".modinfo", align 1
@__param_str_udp_slot_table_entries = internal constant [30 x i8] c"sunrpc.udp_slot_table_entries\00", align 1
@xprt_udp_slot_table_entries = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_udp_slot_table_entries = internal constant %struct.kernel_param { ptr @__param_str_udp_slot_table_entries, ptr null, ptr @param_ops_slot_table_size, i16 420, i8 -1, i8 0, %union.anon.147 { ptr @xprt_udp_slot_table_entries } }, section "__param", align 4
@__UNIQUE_ID_udp_slot_table_entriestype871 = internal constant [55 x i8] c"sunrpc.parmtype=udp_slot_table_entries:slot_table_size\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sunrpc\00", [25 x i8] zeroinitializer }, align 32
@xs_tunables_table = internal global { [7 x %struct.ctl_table], [36 x i8] } { [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @xprt_udp_slot_table_entries, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_slot_table_size, ptr @max_slot_table_size }, %struct.ctl_table { ptr @.str.2, ptr @xprt_tcp_slot_table_entries, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_slot_table_size, ptr @max_slot_table_size }, %struct.ctl_table { ptr @.str.3, ptr @xprt_max_tcp_slot_table_entries, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_slot_table_size, ptr @max_tcp_slot_table_limit }, %struct.ctl_table { ptr @.str.4, ptr @xprt_min_resvport, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @xprt_min_resvport_limit, ptr @xprt_max_resvport_limit }, %struct.ctl_table { ptr @.str.5, ptr @xprt_max_resvport, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @xprt_min_resvport_limit, ptr @xprt_max_resvport_limit }, %struct.ctl_table { ptr @.str.6, ptr @xs_tcp_fin_timeout, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"udp_slot_table_entries\00", [41 x i8] zeroinitializer }, align 32
@min_slot_table_size = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@max_slot_table_size = internal global { i32, [28 x i8] } { i32 65536, [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcp_slot_table_entries\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tcp_max_slot_table_entries\00", [37 x i8] zeroinitializer }, align 32
@max_tcp_slot_table_limit = internal global { i32, [28 x i8] } { i32 65536, [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"min_resvport\00", [19 x i8] zeroinitializer }, align 32
@xprt_min_resvport_limit = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@xprt_max_resvport_limit = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_resvport\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_fin_timeout\00", [16 x i8] zeroinitializer }, align 32
@xs_tcp_fin_timeout = internal global i32 1500, section ".data..read_mostly", align 4
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@xs_local_transport = internal global { { %struct.list_head, i32, ptr, ptr, [32 x i8], [1 x ptr] }, [40 x i8] } { { %struct.list_head, i32, ptr, ptr, [32 x i8], [1 x ptr] } { %struct.list_head { ptr @xs_local_transport, ptr @xs_local_transport }, i32 257, ptr @xs_setup_local, ptr null, [32 x i8] c"named UNIX socket\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1 x ptr] [ptr @.str.7] }, [40 x i8] zeroinitializer }, align 32
@xs_local_ops = internal constant { %struct.rpc_xprt_ops, [52 x i8] } { %struct.rpc_xprt_ops { ptr null, ptr @xprt_reserve_xprt, ptr @xprt_release_xprt, ptr @xprt_alloc_slot, ptr @xprt_free_slot, ptr @xs_local_rpcbind, ptr @xs_local_set_port, ptr @xs_local_connect, ptr @rpc_malloc, ptr @rpc_free, ptr @xs_stream_prepare_request, ptr @xs_local_send_request, ptr @xprt_wait_for_reply_request_def, ptr null, ptr null, ptr @xs_close, ptr @xs_destroy, ptr null, ptr @xs_local_print_stats, ptr @xs_enable_swap, ptr @xs_disable_swap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@xs_local_default_timeout = internal constant { %struct.rpc_timeout, [44 x i8] } { %struct.rpc_timeout { i32 1000, i32 1000, i32 0, i32 2, i8 0 }, [44 x i8] zeroinitializer }, align 32
@xs_setup_local.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&transport->recv_worker)\00", [53 x i8] zeroinitializer }, align 32
@xs_setup_local.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&transport->error_worker)\00", [52 x i8] zeroinitializer }, align 32
@xs_setup_local.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&transport->connect_worker)->work)\00", [41 x i8] zeroinitializer }, align 32
@xs_setup_local.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&transport->connect_worker)->timer\00", [59 x i8] zeroinitializer }, align 32
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@xs_setup_local._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 2798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RPC:       bad AF_LOCAL address: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xs_setup_local\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/sunrpc/xprtsock.c\00", [42 x i8] zeroinitializer }, align 32
@xs_setup_local._entry_ptr = internal global ptr @xs_setup_local._entry, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@xs_setup_local._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.18, i32 2814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RPC:       set up xprt to %s via AF_LOCAL\0A\00", [53 x i8] zeroinitializer }, align 32
@xs_setup_local._entry_ptr.22 = internal global ptr @xs_setup_local._entry.20, section ".printk_index", align 4
@xs_setup_xprt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.18, i32 2723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RPC:       xs_setup_xprt: address too large\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xs_setup_xprt\00", [18 x i8] zeroinitializer }, align 32
@xs_setup_xprt._entry_ptr = internal global ptr @xs_setup_xprt._entry, section ".printk_index", align 4
@xs_setup_xprt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.18, i32 2731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"RPC:       xs_setup_xprt: couldn't allocate rpc_xprt\0A\00", [42 x i8] zeroinitializer }, align 32
@xs_setup_xprt._entry_ptr.27 = internal global ptr @xs_setup_xprt._entry.25, section ".printk_index", align 4
@xs_setup_xprt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&new->recv_mutex\00", [47 x i8] zeroinitializer }, align 32
@xs_init_anyaddr.sin = internal constant { %struct.sockaddr_in, [16 x i8] } { %struct.sockaddr_in { i16 2, i16 0, %struct.in_addr zeroinitializer, [8 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@xs_init_anyaddr.sin6 = internal constant { { i16, i16, i32, { { [16 x i8] } }, i32 }, [36 x i8] } { { i16, i16, i32, { { [16 x i8] } }, i32 } { i16 10, i16 0, i32 0, { { [16 x i8] } } zeroinitializer, i32 0 }, [36 x i8] zeroinitializer }, align 32
@xs_init_anyaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.18, i32 2709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RPC:       %s: Bad address family\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xs_init_anyaddr\00", [16 x i8] zeroinitializer }, align 32
@xs_init_anyaddr._entry_ptr = internal global ptr @xs_init_anyaddr._entry, section ".printk_index", align 4
@xs_local_send_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.18, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RPC:       %s(%u) = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xs_local_send_request\00", [42 x i8] zeroinitializer }, align 32
@xs_local_send_request._entry_ptr = internal global ptr @xs_local_send_request._entry, section ".printk_index", align 4
@xs_local_send_request._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.18, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RPC:       sendmsg returned unrecognized error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@xs_local_send_request._entry_ptr.36 = internal global ptr @xs_local_send_request._entry.34, section ".printk_index", align 4
@xs_nospace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_rpc_socket_nospace = external dso_local global %struct.tracepoint, align 4
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/sunrpc.h\00", [34 x i8] zeroinitializer }, align 32
@trace_rpc_socket_nospace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@xs_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.18, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RPC:       xs_close xprt %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xs_close\00", [23 x i8] zeroinitializer }, align 32
@xs_close._entry_ptr = internal global ptr @xs_close._entry, section ".printk_index", align 4
@__tracepoint_rpc_socket_close = external dso_local global %struct.tracepoint, align 4
@trace_rpc_socket_close.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xs_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.18, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RPC:       xs_destroy xprt %p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xs_destroy\00", [21 x i8] zeroinitializer }, align 32
@xs_destroy._entry_ptr = internal global ptr @xs_destroy._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.47 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\09xprt:\09local %lu %lu %lu %ld %lu %lu %lu %llu %llu %lu %llu %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@xs_read_stream_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.18, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014Callback slot table overflowed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xs_read_stream_call\00", [44 x i8] zeroinitializer }, align 32
@xs_read_stream_call._entry_ptr = internal global ptr @xs_read_stream_call._entry, section ".printk_index", align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_xs_stream_read_request = external dso_local global %struct.tracepoint, align 4
@trace_xs_stream_read_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xprtiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xs_stream_read_data = external dso_local global %struct.tracepoint, align 4
@trace_xs_stream_read_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%08x\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pi6\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%4hx\00", [27 x i8] zeroinitializer }, align 32
@xs_local_setup_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.18, i32 1865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"RPC:       can't create AF_LOCAL transport socket (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xs_local_setup_socket\00", [42 x i8] zeroinitializer }, align 32
@xs_local_setup_socket._entry_ptr = internal global ptr @xs_local_setup_socket._entry, section ".printk_index", align 4
@xs_local_setup_socket._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.18, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"RPC:       worker connecting xprt %p via AF_LOCAL to %s\0A\00", [39 x i8] zeroinitializer }, align 32
@xs_local_setup_socket._entry_ptr.62 = internal global ptr @xs_local_setup_socket._entry.60, section ".printk_index", align 4
@xs_local_setup_socket._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.18, i32 1885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RPC:       xprt %p connected to %s\0A\00", [60 x i8] zeroinitializer }, align 32
@xs_local_setup_socket._entry_ptr.65 = internal global ptr @xs_local_setup_socket._entry.63, section ".printk_index", align 4
@xs_local_setup_socket._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.18, i32 1895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RPC:       xprt %p: socket %s does not exist\0A\00", [50 x i8] zeroinitializer }, align 32
@xs_local_setup_socket._entry_ptr.68 = internal global ptr @xs_local_setup_socket._entry.66, section ".printk_index", align 4
@xs_local_setup_socket._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.18, i32 1899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RPC:       xprt %p: connection refused for %s\0A\00", [49 x i8] zeroinitializer }, align 32
@xs_local_setup_socket._entry_ptr.71 = internal global ptr @xs_local_setup_socket._entry.69, section ".printk_index", align 4
@xs_local_setup_socket._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.59, ptr @.str.18, i32 1904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: unhandled error (%d) connecting to %s\0A\00", [51 x i8] zeroinitializer }, align 32
@xs_local_setup_socket._entry_ptr.74 = internal global ptr @xs_local_setup_socket._entry.72, section ".printk_index", align 4
@xs_reclassify_socket.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xs_reclassify_socketu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sk->sk_lock.wq\00", [16 x i8] zeroinitializer }, align 32
@xs_reclassify_socketu.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(sk)->sk_lock.slock\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slock-AF_LOCAL-RPC\00", [45 x i8] zeroinitializer }, align 32
@xs_slock_key = internal global { [3 x %struct.lock_class_key], [40 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sk_lock-AF_LOCAL-RPC\00", [43 x i8] zeroinitializer }, align 32
@xs_key = internal global { [3 x %struct.lock_class_key], [40 x i8] } zeroinitializer, align 32
@xs_reclassify_socket4.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xs_reclassify_socket4.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slock-AF_INET-RPC\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sk_lock-AF_INET-RPC\00", [44 x i8] zeroinitializer }, align 32
@xs_reclassify_socket6.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xs_reclassify_socket6.__key.83 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slock-AF_INET6-RPC\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sk_lock-AF_INET6-RPC\00", [43 x i8] zeroinitializer }, align 32
@xs_data_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.18, i32 1365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RPC:       xs_data_ready...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xs_data_ready\00", [18 x i8] zeroinitializer }, align 32
@xs_data_ready._entry_ptr = internal global ptr @xs_data_ready._entry, section ".printk_index", align 4
@xs_write_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xs_error_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.18, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RPC:       xs_error_report client %p, error=%d...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xs_error_report\00", [16 x i8] zeroinitializer }, align 32
@xs_error_report._entry_ptr = internal global ptr @xs_error_report._entry, section ".printk_index", align 4
@__tracepoint_rpc_socket_error = external dso_local global %struct.tracepoint, align 4
@trace_rpc_socket_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpc_socket_connect = external dso_local global %struct.tracepoint, align 4
@trace_rpc_socket_connect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udp\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"udp6\00", [27 x i8] zeroinitializer }, align 32
@xs_udp_transport = internal global { { %struct.list_head, i32, ptr, ptr, [32 x i8], [3 x ptr] }, [32 x i8] } { { %struct.list_head, i32, ptr, ptr, [32 x i8], [3 x ptr] } { %struct.list_head { ptr @xs_udp_transport, ptr @xs_udp_transport }, i32 17, ptr @xs_setup_udp, ptr null, [32 x i8] c"udp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [3 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.7] }, [32 x i8] zeroinitializer }, align 32
@xs_udp_ops = internal constant { %struct.rpc_xprt_ops, [52 x i8] } { %struct.rpc_xprt_ops { ptr @xs_udp_set_buffer_size, ptr @xprt_reserve_xprt_cong, ptr @xprt_release_xprt_cong, ptr @xprt_alloc_slot, ptr @xprt_free_slot, ptr @rpcb_getport_async, ptr @xs_set_port, ptr @xs_connect, ptr @rpc_malloc, ptr @rpc_free, ptr null, ptr @xs_udp_send_request, ptr @xprt_wait_for_reply_request_rtt, ptr @xs_udp_timer, ptr @xprt_release_rqst_cong, ptr @xs_close, ptr @xs_destroy, ptr null, ptr @xs_udp_print_stats, ptr @xs_enable_swap, ptr @xs_disable_swap, ptr @xs_inject_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@xs_udp_default_timeout = internal constant { %struct.rpc_timeout, [44 x i8] } { %struct.rpc_timeout { i32 500, i32 3000, i32 500, i32 5, i8 0 }, [44 x i8] zeroinitializer }, align 32
@xs_setup_udp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xs_setup_udp.__key.93 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xs_setup_udp.__key.94 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xs_setup_udp.__key.95 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xs_setup_udp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.18, i32 2888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RPC:       set up xprt to %s (port %s) via %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xs_setup_udp\00", [19 x i8] zeroinitializer }, align 32
@xs_setup_udp._entry_ptr = internal global ptr @xs_setup_udp._entry, section ".printk_index", align 4
@xs_setup_udp._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.18, i32 2892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RPC:       set up xprt to %s (autobind) via %s\0A\00", [48 x i8] zeroinitializer }, align 32
@xs_setup_udp._entry_ptr.100 = internal global ptr @xs_setup_udp._entry.98, section ".printk_index", align 4
@xs_set_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.18, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RPC:       setting port for xprt %p to %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xs_set_port\00", [20 x i8] zeroinitializer }, align 32
@xs_set_port._entry_ptr = internal global ptr @xs_set_port._entry, section ".printk_index", align 4
@xs_connect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xs_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.18, i32 2325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RPC:       xs_connect delayed xprt %p for %lu seconds\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xs_connect\00", [21 x i8] zeroinitializer }, align 32
@xs_connect._entry_ptr = internal global ptr @xs_connect._entry, section ".printk_index", align 4
@xs_connect._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.18, i32 2334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RPC:       xs_connect scheduled xprt %p\0A\00", [55 x i8] zeroinitializer }, align 32
@xs_connect._entry_ptr.107 = internal global ptr @xs_connect._entry.105, section ".printk_index", align 4
@xs_udp_send_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.18, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RPC:       xs_udp_send_request(%u) = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xs_udp_send_request\00", [44 x i8] zeroinitializer }, align 32
@xs_udp_send_request._entry_ptr = internal global ptr @xs_udp_send_request._entry, section ".printk_index", align 4
@xs_udp_send_request._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.109, ptr @.str.18, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xs_udp_send_request._entry_ptr.111 = internal global ptr @xs_udp_send_request._entry.110, section ".printk_index", align 4
@.str.112 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\09xprt:\09udp %u %lu %lu %lu %lu %llu %llu %lu %llu %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@xs_inject_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.18, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"RPC:       injecting transport disconnect on xprt=%p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xs_inject_disconnect\00", [43 x i8] zeroinitializer }, align 32
@xs_inject_disconnect._entry_ptr = internal global ptr @xs_inject_disconnect._entry, section ".printk_index", align 4
@xs_udp_data_read_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.18, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RPC:       impossible RPC reply size %d!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xs_udp_data_read_skb\00", [43 x i8] zeroinitializer }, align 32
@xs_udp_data_read_skb._entry_ptr = internal global ptr @xs_udp_data_read_skb._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@xs_udp_setup_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.18, i32 2066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"RPC:       worker connecting xprt %p via %s to %s (port %s)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xs_udp_setup_socket\00", [44 x i8] zeroinitializer }, align 32
@xs_udp_setup_socket._entry_ptr = internal global ptr @xs_udp_setup_socket._entry, section ".printk_index", align 4
@xs_create_sock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.18, i32 1793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RPC:       can't create %d transport socket (%d).\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xs_create_sock\00", [17 x i8] zeroinitializer }, align 32
@xs_create_sock._entry_ptr = internal global ptr @xs_create_sock._entry, section ".printk_index", align 4
@xs_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.18, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RPC:       %s %pI4:%u: %s (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xs_bind\00", [24 x i8] zeroinitializer }, align 32
@xs_bind._entry_ptr = internal global ptr @xs_bind._entry, section ".printk_index", align 4
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@xs_bind._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.123, ptr @.str.18, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RPC:       %s %pI6:%u: %s (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@xs_bind._entry_ptr.128 = internal global ptr @xs_bind._entry.126, section ".printk_index", align 4
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcp6\00", [27 x i8] zeroinitializer }, align 32
@xs_tcp_transport = internal global { { %struct.list_head, i32, ptr, ptr, [32 x i8], [3 x ptr] }, [32 x i8] } { { %struct.list_head, i32, ptr, ptr, [32 x i8], [3 x ptr] } { %struct.list_head { ptr @xs_tcp_transport, ptr @xs_tcp_transport }, i32 6, ptr @xs_setup_tcp, ptr null, [32 x i8] c"tcp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [3 x ptr] [ptr @.str.129, ptr @.str.130, ptr @.str.7] }, [32 x i8] zeroinitializer }, align 32
@xs_tcp_ops = internal constant { %struct.rpc_xprt_ops, [52 x i8] } { %struct.rpc_xprt_ops { ptr null, ptr @xprt_reserve_xprt, ptr @xprt_release_xprt, ptr @xprt_alloc_slot, ptr @xprt_free_slot, ptr @rpcb_getport_async, ptr @xs_set_port, ptr @xs_connect, ptr @rpc_malloc, ptr @rpc_free, ptr @xs_stream_prepare_request, ptr @xs_tcp_send_request, ptr @xprt_wait_for_reply_request_def, ptr null, ptr null, ptr @xs_tcp_shutdown, ptr @xs_destroy, ptr @xs_tcp_set_connect_timeout, ptr @xs_tcp_print_stats, ptr @xs_enable_swap, ptr @xs_disable_swap, ptr @xs_inject_disconnect, ptr @xprt_setup_bc, ptr @xs_tcp_bc_maxpayload, ptr @xprt_bc_max_slots, ptr @xprt_free_bc_rqst, ptr @xprt_destroy_bc }, [52 x i8] zeroinitializer }, align 32
@xs_tcp_default_timeout = internal constant { %struct.rpc_timeout, [44 x i8] } { %struct.rpc_timeout { i32 6000, i32 6000, i32 0, i32 2, i8 0 }, [44 x i8] zeroinitializer }, align 32
@xs_setup_tcp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xs_setup_tcp.__key.132 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xs_setup_tcp.__key.133 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xs_setup_tcp.__key.134 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xs_setup_tcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.135, ptr @.str.18, i32 2971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xs_setup_tcp\00", [19 x i8] zeroinitializer }, align 32
@xs_setup_tcp._entry_ptr = internal global ptr @xs_setup_tcp._entry, section ".printk_index", align 4
@xs_setup_tcp._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.135, ptr @.str.18, i32 2975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xs_setup_tcp._entry_ptr.137 = internal global ptr @xs_setup_tcp._entry.136, section ".printk_index", align 4
@xs_tcp_send_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.18, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RPC:       xs_tcp_send_request(%u) = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xs_tcp_send_request\00", [44 x i8] zeroinitializer }, align 32
@xs_tcp_send_request._entry_ptr = internal global ptr @xs_tcp_send_request._entry, section ".printk_index", align 4
@xs_tcp_send_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xs_tcp_send_request._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.139, ptr @.str.18, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xs_tcp_send_request._entry_ptr.141 = internal global ptr @xs_tcp_send_request._entry.140, section ".printk_index", align 4
@__tracepoint_rpc_socket_shutdown = external dso_local global %struct.tracepoint, align 4
@trace_rpc_socket_shutdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.142 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\09xprt:\09tcp %u %lu %lu %lu %ld %lu %lu %lu %llu %llu %lu %llu %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@xs_tcp_setup_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.143, ptr @.str.18, i32 2249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xs_tcp_setup_socket\00", [44 x i8] zeroinitializer }, align 32
@xs_tcp_setup_socket._entry_ptr = internal global ptr @xs_tcp_setup_socket._entry, section ".printk_index", align 4
@xs_tcp_setup_socket._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.18, i32 2255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"RPC:       %p connect status %d connected %d sock state %d\0A\00", [36 x i8] zeroinitializer }, align 32
@xs_tcp_setup_socket._entry_ptr.146 = internal global ptr @xs_tcp_setup_socket._entry.144, section ".printk_index", align 4
@xs_tcp_setup_socket._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.18, i32 2286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: connect returned unhandled error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@xs_tcp_setup_socket._entry_ptr.149 = internal global ptr @xs_tcp_setup_socket._entry.147, section ".printk_index", align 4
@xs_tcp_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.18, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RPC:       xs_tcp_state_change client %p...\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xs_tcp_state_change\00", [44 x i8] zeroinitializer }, align 32
@xs_tcp_state_change._entry_ptr = internal global ptr @xs_tcp_state_change._entry, section ".printk_index", align 4
@xs_tcp_state_change._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.18, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"RPC:       state %x conn %d dead %d zapped %d sk_shutdown %d\0A\00", [34 x i8] zeroinitializer }, align 32
@xs_tcp_state_change._entry_ptr.154 = internal global ptr @xs_tcp_state_change._entry.152, section ".printk_index", align 4
@__tracepoint_rpc_socket_state_change = external dso_local global %struct.tracepoint, align 4
@trace_rpc_socket_state_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xs_bc_tcp_transport = internal global { { %struct.list_head, i32, ptr, ptr, [32 x i8], [1 x ptr] }, [40 x i8] } { { %struct.list_head, i32, ptr, ptr, [32 x i8], [1 x ptr] } { %struct.list_head { ptr @xs_bc_tcp_transport, ptr @xs_bc_tcp_transport }, i32 -2147483642, ptr @xs_setup_bc_tcp, ptr null, [32 x i8] c"tcp NFSv4.1 backchannel\00\00\00\00\00\00\00\00\00", [1 x ptr] [ptr @.str.7] }, [40 x i8] zeroinitializer }, align 32
@bc_tcp_ops = internal constant { %struct.rpc_xprt_ops, [52 x i8] } { %struct.rpc_xprt_ops { ptr null, ptr @xprt_reserve_xprt, ptr @xprt_release_xprt, ptr @xprt_alloc_slot, ptr @xprt_free_slot, ptr null, ptr null, ptr null, ptr @bc_malloc, ptr @bc_free, ptr null, ptr @bc_send_request, ptr @xprt_wait_for_reply_request_def, ptr null, ptr null, ptr @bc_close, ptr @bc_destroy, ptr null, ptr @xs_tcp_print_stats, ptr @xs_enable_swap, ptr @xs_disable_swap, ptr @xs_inject_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@xs_setup_bc_tcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.156, ptr @.str.18, i32 3034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xs_setup_bc_tcp\00", [16 x i8] zeroinitializer }, align 32
@xs_setup_bc_tcp._entry_ptr = internal global ptr @xs_setup_bc_tcp._entry, section ".printk_index", align 4
@bc_malloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.157 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"xprtsock: large bc buffer request (size %zu)\0A\00", [50 x i8] zeroinitializer }, align 32
@bc_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.18, i32 2589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RPC:       bc_destroy xprt %p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bc_destroy\00", [21 x i8] zeroinitializer }, align 32
@bc_destroy._entry_ptr = internal global ptr @bc_destroy._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.160 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.163 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967185, i64 4294967191, i64 4294967294]
@__sancov_gen_cov_switch_values.164 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967191, i64 4294967264, i64 4294967285]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967206, i64 4294967282]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.168 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 4294967285, i64 4294967295]
@__sancov_gen_cov_switch_values.172 = internal global [8 x i64] [i64 6, i64 32, i64 4294967185, i64 4294967191, i64 4294967195, i64 4294967208, i64 4294967264, i64 4294967285]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.175 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 4294967181, i64 4294967182, i64 4294967183, i64 4294967185, i64 4294967191, i64 4294967192, i64 4294967195, i64 4294967196, i64 4294967197, i64 4294967198, i64 4294967274]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.177 = internal global [10 x i64] [i64 8, i64 32, i64 4294967185, i64 4294967189, i64 4294967191, i64 4294967192, i64 4294967198, i64 4294967208, i64 4294967264, i64 4294967285]
@__sancov_gen_cov_switch_values.178 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.179 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 4, i64 7, i64 8, i64 9, i64 11]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"sunrpc_table_header\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 92, i32 33 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"sunrpc_table\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 159, i32 25 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"param_ops_portnr\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3144, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant [18 x i8] c"xprt_min_resvport\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 71, i32 21 }
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"xprt_max_resvport\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 72, i32 21 }
@___asan_gen_.196 = private unnamed_addr constant [26 x i8] c"param_ops_slot_table_size\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3163, i32 38 }
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"xprt_tcp_slot_table_entries\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 68, i32 21 }
@___asan_gen_.202 = private unnamed_addr constant [30 x i8] c"param_ops_max_slot_table_size\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3179, i32 38 }
@___asan_gen_.205 = private unnamed_addr constant [32 x i8] c"xprt_max_tcp_slot_table_entries\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 69, i32 21 }
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"xprt_udp_slot_table_entries\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 67, i32 21 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 161, i32 15 }
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"xs_tunables_table\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 103, i32 25 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 105, i32 15 }
@___asan_gen_.220 = private unnamed_addr constant [20 x i8] c"min_slot_table_size\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 86, i32 21 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c"max_slot_table_size\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 87, i32 21 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 114, i32 15 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 123, i32 15 }
@___asan_gen_.232 = private unnamed_addr constant [25 x i8] c"max_tcp_slot_table_limit\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 88, i32 21 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 132, i32 15 }
@___asan_gen_.238 = private unnamed_addr constant [24 x i8] c"xprt_min_resvport_limit\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 89, i32 21 }
@___asan_gen_.241 = private unnamed_addr constant [24 x i8] c"xprt_max_resvport_limit\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 90, i32 21 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 141, i32 15 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 150, i32 15 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3073, i32 14 }
@___asan_gen_.253 = private unnamed_addr constant [19 x i8] c"xs_local_transport\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3067, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant [13 x i8] c"xs_local_ops\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2595, i32 34 }
@___asan_gen_.259 = private unnamed_addr constant [25 x i8] c"xs_local_default_timeout\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2754, i32 33 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2790, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2791, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2792, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2797, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2803, i32 34 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2813, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2723, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2730, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2736, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2690, i32 34 }
@___asan_gen_.331 = private unnamed_addr constant [5 x i8] c"sin6\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2694, i32 35 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2709, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 869, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 893, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 795, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant [33 x i8] c"../include/trace/events/sunrpc.h\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 926, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 108, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 695, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 723, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1224, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1252, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2401, i32 18 }
@___asan_gen_.398 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 181, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 573, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 106, i32 6 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 272, i32 30 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 279, i32 30 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 293, i32 29 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 296, i32 29 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1864, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1877, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1884, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1894, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1898, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1902, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant [13 x i8] c"xs_slock_key\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1729, i32 30 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1735, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [7 x i8] c"xs_key\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1728, i32 30 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1743, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1751, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1365, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1164, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3082, i32 14 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3082, i32 21 }
@___asan_gen_.538 = private unnamed_addr constant [17 x i8] c"xs_udp_transport\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3076, i32 26 }
@___asan_gen_.541 = private unnamed_addr constant [11 x i8] c"xs_udp_ops\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2615, i32 34 }
@___asan_gen_.544 = private unnamed_addr constant [23 x i8] c"xs_udp_default_timeout\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2824, i32 33 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2862, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2863, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2864, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2885, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2890, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1620, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2323, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2334, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 941, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 977, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2427, i32 18 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1232, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1281, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2062, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1792, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1705, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1709, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3091, i32 14 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3091, i32 21 }
@___asan_gen_.676 = private unnamed_addr constant [17 x i8] c"xs_tcp_transport\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3085, i32 26 }
@___asan_gen_.679 = private unnamed_addr constant [11 x i8] c"xs_tcp_ops\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2638, i32 34 }
@___asan_gen_.682 = private unnamed_addr constant [23 x i8] c"xs_tcp_default_timeout\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2902, i32 33 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2945, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2946, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2947, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2968, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2973, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1037, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1096, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2455, i32 18 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2245, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2253, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2285, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1409, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1410, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [20 x i8] c"xs_bc_tcp_transport\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3094, i32 26 }
@___asan_gen_.757 = private unnamed_addr constant [11 x i8] c"bc_tcp_ops\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2671, i32 34 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 3031, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2485, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.775 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.776 = private constant [25 x i8] c"../net/sunrpc/xprtsock.c\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2589, i32 2 }
@llvm.compiler.used = appending global [252 x ptr] [ptr @__UNIQUE_ID_max_resvporttype868, ptr @__UNIQUE_ID_min_resvporttype867, ptr @__UNIQUE_ID_tcp_max_slot_table_entriestype870, ptr @__UNIQUE_ID_tcp_slot_table_entriestype869, ptr @__UNIQUE_ID_udp_slot_table_entriestype871, ptr @__ksymtab_get_srcport, ptr @__param_max_resvport, ptr @__param_min_resvport, ptr @__param_tcp_max_slot_table_entries, ptr @__param_tcp_slot_table_entries, ptr @__param_udp_slot_table_entries, ptr @bc_destroy._entry, ptr @bc_destroy._entry_ptr, ptr @xs_bind._entry, ptr @xs_bind._entry.126, ptr @xs_bind._entry_ptr, ptr @xs_bind._entry_ptr.128, ptr @xs_close._entry, ptr @xs_close._entry_ptr, ptr @xs_connect._entry, ptr @xs_connect._entry.105, ptr @xs_connect._entry_ptr, ptr @xs_connect._entry_ptr.107, ptr @xs_create_sock._entry, ptr @xs_create_sock._entry_ptr, ptr @xs_data_ready._entry, ptr @xs_data_ready._entry_ptr, ptr @xs_destroy._entry, ptr @xs_destroy._entry_ptr, ptr @xs_error_report._entry, ptr @xs_error_report._entry_ptr, ptr @xs_init_anyaddr._entry, ptr @xs_init_anyaddr._entry_ptr, ptr @xs_inject_disconnect._entry, ptr @xs_inject_disconnect._entry_ptr, ptr @xs_local_send_request._entry, ptr @xs_local_send_request._entry.34, ptr @xs_local_send_request._entry_ptr, ptr @xs_local_send_request._entry_ptr.36, ptr @xs_local_setup_socket._entry, ptr @xs_local_setup_socket._entry.60, ptr @xs_local_setup_socket._entry.63, ptr @xs_local_setup_socket._entry.66, ptr @xs_local_setup_socket._entry.69, ptr @xs_local_setup_socket._entry.72, ptr @xs_local_setup_socket._entry_ptr, ptr @xs_local_setup_socket._entry_ptr.62, ptr @xs_local_setup_socket._entry_ptr.65, ptr @xs_local_setup_socket._entry_ptr.68, ptr @xs_local_setup_socket._entry_ptr.71, ptr @xs_local_setup_socket._entry_ptr.74, ptr @xs_read_stream_call._entry, ptr @xs_read_stream_call._entry_ptr, ptr @xs_set_port._entry, ptr @xs_set_port._entry_ptr, ptr @xs_setup_bc_tcp._entry, ptr @xs_setup_bc_tcp._entry_ptr, ptr @xs_setup_local._entry, ptr @xs_setup_local._entry.20, ptr @xs_setup_local._entry_ptr, ptr @xs_setup_local._entry_ptr.22, ptr @xs_setup_tcp._entry, ptr @xs_setup_tcp._entry.136, ptr @xs_setup_tcp._entry_ptr, ptr @xs_setup_tcp._entry_ptr.137, ptr @xs_setup_udp._entry, ptr @xs_setup_udp._entry.98, ptr @xs_setup_udp._entry_ptr, ptr @xs_setup_udp._entry_ptr.100, ptr @xs_setup_xprt._entry, ptr @xs_setup_xprt._entry.25, ptr @xs_setup_xprt._entry_ptr, ptr @xs_setup_xprt._entry_ptr.27, ptr @xs_tcp_send_request._entry, ptr @xs_tcp_send_request._entry.140, ptr @xs_tcp_send_request._entry_ptr, ptr @xs_tcp_send_request._entry_ptr.141, ptr @xs_tcp_setup_socket._entry, ptr @xs_tcp_setup_socket._entry.144, ptr @xs_tcp_setup_socket._entry.147, ptr @xs_tcp_setup_socket._entry_ptr, ptr @xs_tcp_setup_socket._entry_ptr.146, ptr @xs_tcp_setup_socket._entry_ptr.149, ptr @xs_tcp_state_change._entry, ptr @xs_tcp_state_change._entry.152, ptr @xs_tcp_state_change._entry_ptr, ptr @xs_tcp_state_change._entry_ptr.154, ptr @xs_udp_data_read_skb._entry, ptr @xs_udp_data_read_skb._entry_ptr, ptr @xs_udp_send_request._entry, ptr @xs_udp_send_request._entry.110, ptr @xs_udp_send_request._entry_ptr, ptr @xs_udp_send_request._entry_ptr.111, ptr @xs_udp_setup_socket._entry, ptr @xs_udp_setup_socket._entry_ptr, ptr @sunrpc_table_header, ptr @sunrpc_table, ptr @param_ops_portnr, ptr @xprt_min_resvport, ptr @xprt_max_resvport, ptr @param_ops_slot_table_size, ptr @xprt_tcp_slot_table_entries, ptr @param_ops_max_slot_table_size, ptr @xprt_max_tcp_slot_table_entries, ptr @xprt_udp_slot_table_entries, ptr @.str, ptr @xs_tunables_table, ptr @.str.1, ptr @min_slot_table_size, ptr @max_slot_table_size, ptr @.str.2, ptr @.str.3, ptr @max_tcp_slot_table_limit, ptr @.str.4, ptr @xprt_min_resvport_limit, ptr @xprt_max_resvport_limit, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xs_local_transport, ptr @xs_local_ops, ptr @xs_local_default_timeout, ptr @xs_setup_local.__key, ptr @.str.9, ptr @xs_setup_local.__key.10, ptr @.str.11, ptr @xs_setup_local.__key.12, ptr @.str.13, ptr @xs_setup_local.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @xs_setup_xprt.__key, ptr @.str.28, ptr @xs_init_anyaddr.sin, ptr @xs_init_anyaddr.sin6, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @xs_reclassify_socketu.__key, ptr @.str.75, ptr @xs_reclassify_socketu.__key.76, ptr @.str.77, ptr @.str.78, ptr @xs_slock_key, ptr @.str.79, ptr @xs_key, ptr @xs_reclassify_socket4.__key, ptr @xs_reclassify_socket4.__key.80, ptr @.str.81, ptr @.str.82, ptr @xs_reclassify_socket6.__key, ptr @xs_reclassify_socket6.__key.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @xs_udp_transport, ptr @xs_udp_ops, ptr @xs_udp_default_timeout, ptr @xs_setup_udp.__key, ptr @xs_setup_udp.__key.93, ptr @xs_setup_udp.__key.94, ptr @xs_setup_udp.__key.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @xs_tcp_transport, ptr @xs_tcp_ops, ptr @xs_tcp_default_timeout, ptr @xs_setup_tcp.__key, ptr @xs_setup_tcp.__key.132, ptr @xs_setup_tcp.__key.133, ptr @xs_setup_tcp.__key.134, ptr @.str.135, ptr @.str.138, ptr @.str.139, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @xs_bc_tcp_transport, ptr @bc_tcp_ops, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159], section "llvm.metadata"
@0 = internal global [199 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrpc_table_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrpc_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_portnr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_min_resvport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_max_resvport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_slot_table_size to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_tcp_slot_table_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_max_slot_table_size to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_max_tcp_slot_table_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_udp_slot_table_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tunables_table to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_slot_table_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_slot_table_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcp_slot_table_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_min_resvport_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_max_resvport_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_transport to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_default_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_local.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_local.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_local.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_local.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_local._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_local._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_xprt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_xprt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_xprt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_init_anyaddr.sin to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_init_anyaddr.sin6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_init_anyaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_send_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_send_request._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_read_stream_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_setup_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_setup_socket._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_setup_socket._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_setup_socket._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_setup_socket._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_local_setup_socket._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_reclassify_socketu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_reclassify_socketu.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_slock_key to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_key to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_reclassify_socket4.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_reclassify_socket4.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_reclassify_socket6.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_reclassify_socket6.__key.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_data_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_error_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_udp_transport to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_udp_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_udp_default_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_udp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_udp.__key.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_udp.__key.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_udp.__key.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_udp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_udp._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_set_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_connect._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_udp_send_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_udp_send_request._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_inject_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_udp_data_read_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_udp_setup_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_create_sock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_bind._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tcp_transport to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tcp_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tcp_default_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_tcp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_tcp.__key.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_tcp.__key.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_tcp.__key.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_tcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_tcp._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tcp_send_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tcp_send_request._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tcp_setup_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tcp_setup_socket._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tcp_setup_socket._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tcp_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_tcp_state_change._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_bc_tcp_transport to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_tcp_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_setup_bc_tcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @get_srcport(ptr noundef %xprt) #0 align 64 {
entry:
  %buf.i = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_mutex = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %recv_mutex, i32 noundef 0) #11
  %sock1 = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %sock1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf.i) #11
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 128)
  %call.i = call i32 @kernel_getsockname(ptr noundef nonnull %1, ptr noundef nonnull %buf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.xs_sock_getport.exit_crit_edge, label %if.end.i

if.then.xs_sock_getport.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_sock_getport.exit

if.end.i:                                         ; preds = %if.then
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %buf.i, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %if.end.i.xs_sock_getport.exit_crit_edge [
    i16 10, label %sw.bb.i
    i16 2, label %sw.bb1.i
  ]

if.end.i.xs_sock_getport.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_sock_getport.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %buf.i, i32 0, i32 1
  br label %out.sink.split.i

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %buf.i, i32 0, i32 1
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb.i ], [ %sin_port.i, %sw.bb1.i ]
  %6 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sin6_port.sink.i, align 2
  br label %xs_sock_getport.exit

xs_sock_getport.exit:                             ; preds = %out.sink.split.i, %if.end.i.xs_sock_getport.exit_crit_edge, %if.then.xs_sock_getport.exit_crit_edge
  %port.0.i = phi i16 [ 0, %if.then.xs_sock_getport.exit_crit_edge ], [ 0, %if.end.i.xs_sock_getport.exit_crit_edge ], [ %7, %out.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf.i) #11
  br label %if.end

if.end:                                           ; preds = %xs_sock_getport.exit, %entry.if.end_crit_edge
  %ret.0 = phi i16 [ %port.0.i, %xs_sock_getport.exit ], [ 0, %entry.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %recv_mutex) #11
  ret i16 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_socket_xprt() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sunrpc_table_header, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @register_sysctl_table(ptr noundef nonnull @sunrpc_table) #11
  store ptr %call, ptr @sunrpc_table_header, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @xprt_register_transport(ptr noundef nonnull @xs_local_transport) #11
  %call2 = tail call i32 @xprt_register_transport(ptr noundef nonnull @xs_udp_transport) #11
  %call3 = tail call i32 @xprt_register_transport(ptr noundef nonnull @xs_tcp_transport) #11
  %call4 = tail call i32 @xprt_register_transport(ptr noundef nonnull @xs_bc_tcp_transport) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_socket_xprt() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sunrpc_table_header, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_sysctl_table(ptr noundef nonnull %0) #11
  store ptr null, ptr @sunrpc_table_header, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xs_local_transport) #11
  %call1 = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xs_udp_transport) #11
  %call2 = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xs_tcp_transport) #11
  %call3 = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xs_bc_tcp_transport) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xs_setup_local(ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dstaddr = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 3
  %0 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dstaddr, align 4
  %2 = load i32, ptr @xprt_tcp_slot_table_entries, align 4
  %3 = load i32, ptr @xprt_max_tcp_slot_table_entries, align 4
  %call = tail call fastcc ptr @xs_setup_xprt(ptr noundef %args, i32 noundef %2, i32 noundef %3)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %prot = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %prot to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %prot, align 4
  %xprt_class = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 54
  %5 = ptrtoint ptr %xprt_class to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xs_local_transport, ptr %xprt_class, align 4
  %max_payload = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %max_payload to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2147483647, ptr %max_payload, align 8
  %bind_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 23
  %7 = ptrtoint ptr %bind_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6000, ptr %bind_timeout, align 8
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 24
  %8 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 300, ptr %reestablish_timeout, align 4
  %idle_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 29
  %9 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 30000, ptr %idle_timeout, align 4
  %ops = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xs_local_ops, ptr %ops, align 4
  %timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xs_local_default_timeout, ptr %timeout, align 4
  %recv_worker = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9
  tail call void @__init_work(ptr noundef %recv_worker, i32 noundef 0) #11
  %12 = ptrtoint ptr %recv_worker to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %recv_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @xs_setup_local.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry5 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xs_stream_data_receive_workfn, ptr %func, align 4
  %error_worker = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8
  tail call void @__init_work(ptr noundef %error_worker, i32 noundef 0) #11
  %16 = ptrtoint ptr %error_worker to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %error_worker, align 8
  %lockdep_map13 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map13, ptr noundef nonnull @.str.11, ptr noundef nonnull @xs_setup_local.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry15 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i129 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry15, ptr %prev.i129, align 4
  %func17 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %func17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xs_error_handle, ptr %func17, align 4
  %connect_worker = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7
  tail call void @__init_work(ptr noundef %connect_worker, i32 noundef 0) #11
  %20 = ptrtoint ptr %connect_worker to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %connect_worker, align 4
  %lockdep_map29 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map29, ptr noundef nonnull @.str.13, ptr noundef nonnull @xs_setup_local.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry32 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 1
  %21 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i130 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry32, ptr %prev.i130, align 4
  %func35 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 2
  %23 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xs_dummy_setup_socket, ptr %func35, align 4
  %timer = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @xs_setup_local.__key.14) #11
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cond = icmp eq i16 %25, 1
  br i1 %cond, label %sw.bb, label %if.end.out_err_crit_edge

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

sw.bb:                                            ; preds = %if.end
  %sun_path = getelementptr inbounds %struct.sockaddr_un, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %sun_path to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sun_path, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %27)
  %cmp.not = icmp eq i8 %27, 47
  br i1 %cmp.not, label %if.end61, label %do.body47

do.body47:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %28 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body47.out_err_crit_edge, label %do.end53, !prof !432

do.body47.out_err_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %sun_path) #14
  br label %out_err

if.end61:                                         ; preds = %sw.bb
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 18
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i) #11
  tail call fastcc void @xs_format_peer_addresses(ptr noundef %call, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19)
  %call62 = tail call fastcc i32 @xs_local_setup_socket(ptr noundef %call)
  %29 = inttoptr i32 %call62 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool64.not = icmp eq i32 %call62, 0
  br i1 %tobool64.not, label %do.body68, label %if.end61.out_err_crit_edge

if.end61.out_err_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

do.body68:                                        ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %30 = load i32, ptr @rpc_debug, align 4
  %and69 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body68.do.end86_crit_edge, label %do.end80, !prof !432

do.body68.do.end86_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86

do.end80:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 51
  %31 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %address_strings, align 8
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %32) #14
  br label %do.end86

do.end86:                                         ; preds = %do.end80, %do.body68.do.end86_crit_edge
  %call87 = tail call zeroext i1 @try_module_get(ptr noundef null) #11
  br i1 %call87, label %do.end86.cleanup_crit_edge, label %do.end86.out_err_crit_edge

do.end86.out_err_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

do.end86.cleanup_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_err:                                          ; preds = %do.end86.out_err_crit_edge, %if.end61.out_err_crit_edge, %do.end53, %do.body47.out_err_crit_edge, %if.end.out_err_crit_edge
  %ret.0 = phi ptr [ %29, %if.end61.out_err_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end53 ], [ inttoptr (i32 -22 to ptr), %do.body47.out_err_crit_edge ], [ inttoptr (i32 -97 to ptr), %if.end.out_err_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end86.out_err_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 0
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %34) #11
  %arrayidx.1.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 1
  %35 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.1.i.i, align 4
  tail call void @kfree(ptr noundef %36) #11
  %arrayidx.3.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 3
  %37 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.3.i.i, align 4
  tail call void @kfree(ptr noundef %38) #11
  %arrayidx.4.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 4
  %39 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.4.i.i, align 4
  tail call void @kfree(ptr noundef %40) #11
  tail call void @xprt_free(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out_err, %do.end86.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %out_err ], [ %call, %entry.cleanup_crit_edge ], [ %call, %do.end86.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xs_setup_xprt(ptr nocapture noundef readonly %args, i32 noundef %slot_table_size, i32 noundef %max_slot_table_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addrlen = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 4
  %0 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addrlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp = icmp ugt i32 %1, 128
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %2 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup53_crit_edge, label %do.end, !prof !432

do.body.cleanup53_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  br label %cleanup53

if.end8:                                          ; preds = %entry
  %net = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %call9 = tail call ptr @xprt_alloc(ptr noundef %4, i32 noundef 1984, i32 noundef %slot_table_size, i32 noundef %max_slot_table_size) #11
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %do.body12, label %if.end31

do.body12:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %5 = load i32, ptr @rpc_debug, align 4
  %and13 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.cleanup53_crit_edge, label %do.end24, !prof !432

do.body12.cleanup53_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

do.end24:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #14
  br label %cleanup53

if.end31:                                         ; preds = %if.end8
  %recv_mutex = getelementptr inbounds %struct.sock_xprt, ptr %call9, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %recv_mutex, ptr noundef nonnull @.str.28, ptr noundef nonnull @xs_setup_xprt.__key) #11
  %addr = getelementptr inbounds %struct.rpc_xprt, ptr %call9, i32 0, i32 4
  %dstaddr = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 3
  %6 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dstaddr, align 4
  %8 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addrlen, align 4
  %10 = call ptr @memcpy(ptr %addr, ptr %7, i32 %9)
  %11 = load i32, ptr %addrlen, align 4
  %addrlen38 = getelementptr inbounds %struct.rpc_xprt, ptr %call9, i32 0, i32 5
  %12 = ptrtoint ptr %addrlen38 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %addrlen38, align 8
  %srcaddr = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 2
  %13 = ptrtoint ptr %srcaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %srcaddr, align 4
  %tobool39.not = icmp eq ptr %14, null
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %srcaddr41 = getelementptr inbounds %struct.sock_xprt, ptr %call9, i32 0, i32 11
  %15 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addrlen, align 4
  %17 = call ptr @memcpy(ptr %srcaddr41, ptr %14, i32 %16)
  br label %cleanup53

if.else:                                          ; preds = %if.end31
  %18 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dstaddr, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 2
  %srcaddr45 = getelementptr inbounds %struct.sock_xprt, ptr %call9, i32 0, i32 11
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.160)
  switch i16 %21, label %do.body.i [
    i16 1, label %if.else.cleanup53_crit_edge
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

if.else.cleanup53_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %23 = call ptr @memcpy(ptr %srcaddr45, ptr @xs_init_anyaddr.sin, i32 16)
  br label %cleanup53

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %24 = call ptr @memcpy(ptr %srcaddr45, ptr @xs_init_anyaddr.sin6, i32 28)
  br label %cleanup53

do.body.i:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %25 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !432

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge
  tail call void @xprt_free(ptr noundef nonnull %call9) #11
  br label %cleanup53

cleanup53:                                        ; preds = %cleanup, %sw.bb1.i, %sw.bb.i, %if.else.cleanup53_crit_edge, %if.then40, %do.end24, %do.body12.cleanup53_crit_edge, %do.end, %do.body.cleanup53_crit_edge
  %retval.1 = phi ptr [ inttoptr (i32 -97 to ptr), %cleanup ], [ inttoptr (i32 -9 to ptr), %do.end ], [ inttoptr (i32 -9 to ptr), %do.body.cleanup53_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end24 ], [ inttoptr (i32 -12 to ptr), %do.body12.cleanup53_crit_edge ], [ %call9, %if.then40 ], [ %call9, %if.else.cleanup53_crit_edge ], [ %call9, %sw.bb.i ], [ %call9, %sw.bb1.i ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_stream_data_receive_workfn(ptr noundef %work) #0 align 64 {
entry:
  %kvec.i.i.i = alloca %struct.kvec, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1668
  %0 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i, align 4
  %or.i = or i32 %5, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %recv_mutex.i = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %recv_mutex.i, i32 noundef 0) #11
  %sock.i = getelementptr i8, ptr %work, i32 -188
  %6 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock.i, align 8
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %entry.xs_stream_data_receive.exit_crit_edge, label %for.cond.preheader.i

entry.xs_stream_data_receive.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_stream_data_receive.exit

for.cond.preheader.i:                             ; preds = %entry
  %recv.i.i = getelementptr i8, ptr %work, i32 -176
  %len.i.i = getelementptr i8, ptr %work, i32 -160
  %copied.i.i = getelementptr i8, ptr %work, i32 -156
  %offset.i.i = getelementptr i8, ptr %work, i32 -164
  %8 = getelementptr inbounds %struct.kvec, ptr %kvec.i.i.i, i32 0, i32 1
  %msg_iter.i.i.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 2
  %calldir.i.i = getelementptr i8, ptr %work, i32 -168
  %queue_lock.i.i.i = getelementptr i8, ptr %work, i32 -448
  %xid.i1.i.i = getelementptr i8, ptr %work, i32 -172
  %msg_flags8.i.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 6
  %bc_serv.i.i.i = getelementptr i8, ptr %work, i32 -380
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end3.i, %for.cond.preheader.i
  %read.0.i = phi i32 [ %add.i, %if.end3.i ], [ 0, %for.cond.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #11
  %9 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %for.cond.i.if.end21.i.i_crit_edge

for.cond.i.if.end21.i.i_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i.i

if.then.i.i:                                      ; preds = %for.cond.i
  %12 = ptrtoint ptr %copied.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %copied.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.not.i.i = icmp eq i32 %13, 0
  %..i.i.i = select i1 %cmp2.not.i.i, i32 12, i32 4
  %14 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kvec.i.i.i) #11
  %16 = ptrtoint ptr %kvec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %recv.i.i, ptr %kvec.i.i.i, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %..i.i.i, ptr %8, align 4
  %18 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sock.i, align 8
  call void @iov_iter_kvec(ptr noundef %msg_iter.i.i.i.i, i32 noundef 0, ptr noundef nonnull %kvec.i.i.i, i32 noundef 1, i32 noundef %..i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i.i.i.i.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.i.xs_read_stream_header.exit.i.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.xs_read_stream_header.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_stream_header.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @iov_iter_advance(ptr noundef %msg_iter.i.i.i.i, i32 noundef %15) #11
  br label %xs_read_stream_header.exit.i.i

xs_read_stream_header.exit.i.i:                   ; preds = %if.then.i.i.i.i.i, %if.then.i.i.xs_read_stream_header.exit.i.i_crit_edge
  %call.i.i.i.i.i = call i32 @sock_recvmsg(ptr noundef %19, ptr noundef nonnull %msg.i.i, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp1.i.i.i.i.i = icmp sgt i32 %call.i.i.i.i.i, 0
  %add.i.i.i.i.i = select i1 %cmp1.i.i.i.i.i, i32 %15, i32 0
  %cond.i.i.i.i.i = add i32 %add.i.i.i.i.i, %call.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kvec.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i.i.i.i.i)
  %cmp5.i.i = icmp slt i32 %cond.i.i.i.i.i, 1
  br i1 %cmp5.i.i, label %xs_read_stream_header.exit.i.i.out_err.i.i_crit_edge, label %if.end.i.i

xs_read_stream_header.exit.i.i.out_err.i.i_crit_edge: ; preds = %xs_read_stream_header.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err.i.i

if.end.i.i:                                       ; preds = %xs_read_stream_header.exit.i.i
  %20 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i.i.i.i.i, ptr %offset.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i.i.i, i32 %..i.i.i)
  %cmp11.not.i.i = icmp eq i32 %cond.i.i.i.i.i, %..i.i.i
  br i1 %cmp11.not.i.i, label %if.end15.i.i, label %xs_read_stream.exit.thread30.i

xs_read_stream.exit.thread30.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #11
  br label %if.end3.i

if.end15.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %recv.i.i, align 4
  %and.i.i1 = and i32 %22, 2147483647
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i.i1, ptr %len.i.i, align 4
  %sub.i.i = add nsw i32 %..i.i.i, -4
  %24 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i.i, ptr %offset.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.end15.i.i, %for.cond.i.if.end21.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %..i.i.i, %if.end15.i.i ], [ 0, %for.cond.i.if.end21.i.i_crit_edge ]
  %25 = ptrtoint ptr %calldir.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %calldir.i.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %26, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb24.i.i
  ]

sw.default.i.i:                                   ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %msg_flags8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_flags8.i.i.i, align 4
  %or.i.i = or i32 %29, 32
  store i32 %or.i.i, ptr %msg_flags8.i.i.i, align 4
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end21.i.i
  %30 = ptrtoint ptr %bc_serv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bc_serv.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge, label %if.end.i.i.i

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %32 = ptrtoint ptr %xid.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xid.i1.i.i, align 4
  %call.i.i.i = call ptr @xprt_lookup_bc_request(ptr noundef %add.ptr, i32 noundef %33) #11
  %tobool2.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %do.end.i.i.i, label %if.end5.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #14
  br label %sw.epilog.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %34 = ptrtoint ptr %copied.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %copied.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool7.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool7.not.i.i.i, label %if.end5.i.i.i.if.end10.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end5.i.i.i.if.end10.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end5.i.i.i
  %len.i.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call.i.i.i, i32 0, i32 20, i32 8
  %36 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool8.not.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.sw.epilog.i.i_crit_edge, label %land.lhs.true.i.i.i.if.end10.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end10.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i.i

land.lhs.true.i.i.i.sw.epilog.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end10.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end10.i.i.i_crit_edge, %if.end5.i.i.i.if.end10.i.i.i_crit_edge
  %call11.i.i.i = call fastcc i32 @xs_read_stream_request(ptr noundef %add.ptr, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %call.i.i.i) #11
  %38 = ptrtoint ptr %msg_flags8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_flags8.i.i.i, align 4
  %and.i.i.i = and i32 %39, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %40 = ptrtoint ptr %copied.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %copied.i.i, align 4
  br i1 %tobool12.not.i.i.i, label %if.else.i.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @xprt_complete_bc_request(ptr noundef nonnull %call.i.i.i, i32 noundef %41) #11
  br label %sw.epilog.i.i

if.else.i.i.i:                                    ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %len19.i.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call.i.i.i, i32 0, i32 20, i32 8
  %42 = ptrtoint ptr %len19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %len19.i.i.i, align 8
  br label %sw.epilog.i.i

sw.bb24.i.i:                                      ; preds = %if.end21.i.i
  call void @_raw_spin_lock(ptr noundef %queue_lock.i.i.i) #11
  %43 = ptrtoint ptr %xid.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xid.i1.i.i, align 4
  %call.i2.i.i = call ptr @xprt_lookup_rqst(ptr noundef %add.ptr, i32 noundef %44) #11
  %tobool.not.i3.i.i = icmp eq ptr %call.i2.i.i, null
  br i1 %tobool.not.i3.i.i, label %sw.bb24.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

sw.bb24.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %sw.bb24.i.i
  %45 = ptrtoint ptr %copied.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %copied.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool3.not.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false.i.i.i.if.end.i9.i.i_crit_edge, label %land.lhs.true.i6.i.i

lor.lhs.false.i.i.i.if.end.i9.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i9.i.i

land.lhs.true.i6.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %len.i5.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call.i2.i.i, i32 0, i32 20, i32 8
  %47 = ptrtoint ptr %len.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i5.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool4.not.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i6.i.i.if.then.i.i.i_crit_edge, label %land.lhs.true.i6.i.i.if.end.i9.i.i_crit_edge

land.lhs.true.i6.i.i.if.end.i9.i.i_crit_edge:     ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i9.i.i

land.lhs.true.i6.i.i.if.then.i.i.i_crit_edge:     ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i6.i.i.if.then.i.i.i_crit_edge, %sw.bb24.i.i.if.then.i.i.i_crit_edge
  %49 = ptrtoint ptr %msg_flags8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_flags8.i.i.i, align 4
  %or.i.i.i = or i32 %50, 32
  store i32 %or.i.i.i, ptr %msg_flags8.i.i.i, align 4
  br label %xs_read_stream_reply.exit.i.i

if.end.i9.i.i:                                    ; preds = %land.lhs.true.i6.i.i.if.end.i9.i.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i9.i.i_crit_edge
  call void @xprt_pin_rqst(ptr noundef nonnull %call.i2.i.i) #11
  call void @_raw_spin_unlock(ptr noundef %queue_lock.i.i.i) #11
  %call6.i.i.i = call fastcc i32 @xs_read_stream_request(ptr noundef %add.ptr, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %call.i2.i.i) #11
  call void @_raw_spin_lock(ptr noundef %queue_lock.i.i.i) #11
  %51 = ptrtoint ptr %msg_flags8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_flags8.i.i.i, align 4
  %and.i8.i.i = and i32 %52, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.else.i10.i.i, label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rq_task.i.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call.i2.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %rq_task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rq_task.i.i.i, align 4
  %55 = ptrtoint ptr %copied.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %copied.i.i, align 4
  call void @xprt_complete_rqst(ptr noundef %54, i32 noundef %56) #11
  br label %if.end17.i.i.i

if.else.i10.i.i:                                  ; preds = %if.end.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %copied.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %copied.i.i, align 4
  %len16.i.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call.i2.i.i, i32 0, i32 20, i32 8
  %59 = ptrtoint ptr %len16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %len16.i.i.i, align 8
  br label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %if.else.i10.i.i, %if.then10.i.i.i
  call void @xprt_unpin_rqst(ptr noundef nonnull %call.i2.i.i) #11
  br label %xs_read_stream_reply.exit.i.i

xs_read_stream_reply.exit.i.i:                    ; preds = %if.end17.i.i.i, %if.then.i.i.i
  %ret.0.i.i.i = phi i32 [ %call6.i.i.i, %if.end17.i.i.i ], [ 0, %if.then.i.i.i ]
  call void @_raw_spin_unlock(ptr noundef %queue_lock.i.i.i) #11
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %xs_read_stream_reply.exit.i.i, %if.else.i.i.i, %if.then13.i.i.i, %land.lhs.true.i.i.i.sw.epilog.i.i_crit_edge, %do.end.i.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge, %sw.default.i.i
  %ret.1.i.i = phi i32 [ %ret.0.i.i, %sw.default.i.i ], [ %ret.0.i.i.i, %xs_read_stream_reply.exit.i.i ], [ -108, %do.end.i.i.i ], [ -108, %sw.bb.i.i.sw.epilog.i.i_crit_edge ], [ -108, %land.lhs.true.i.i.i.sw.epilog.i.i_crit_edge ], [ %call11.i.i.i, %if.else.i.i.i ], [ %call11.i.i.i, %if.then13.i.i.i ]
  %60 = ptrtoint ptr %msg_flags8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msg_flags8.i.i.i, align 4
  %and27.i.i = and i32 %61, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.i.i.if.end33.i.i_crit_edge, label %if.then28.i.i

sw.epilog.i.i.if.end33.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

if.then28.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %calldir.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %calldir.i.i, align 4
  %63 = ptrtoint ptr %copied.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %copied.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then28.i.i, %sw.epilog.i.i.if.end33.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %cmp34.i.i = icmp slt i32 %ret.1.i.i, 0
  br i1 %cmp34.i.i, label %if.end33.i.i.xs_read_stream.exit.thread.i_crit_edge, label %if.end36.i.i

if.end33.i.i.xs_read_stream.exit.thread.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_stream.exit.thread.i

if.end36.i.i:                                     ; preds = %if.end33.i.i
  %add.i.i = add nuw i32 %ret.1.i.i, %ret.0.i.i
  %64 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset.i.i, align 4
  %66 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %65)
  %cmp41.i.i = icmp ugt i32 %67, %65
  br i1 %cmp41.i.i, label %if.then42.i.i, label %if.end36.i.i.if.end69.i.i_crit_edge

if.end36.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i.i

if.then42.i.i:                                    ; preds = %if.end36.i.i
  br i1 %tobool.not.i.i, label %if.then42.i.i.xs_read_stream.exit.i_crit_edge, label %if.end47.i.i

if.then42.i.i.xs_read_stream.exit.i_crit_edge:    ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_stream.exit.i

if.end47.i.i:                                     ; preds = %if.then42.i.i
  %68 = ptrtoint ptr %msg_flags8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %msg_flags8.i.i.i, align 4
  %69 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sock.i, align 8
  %sub53.i.i = sub i32 %67, %65
  call void @iov_iter_discard(ptr noundef %msg_iter.i.i.i.i, i32 noundef 0, i32 noundef %sub53.i.i) #11
  %call.i11.i.i = call i32 @sock_recvmsg(ptr noundef %70, ptr noundef nonnull %msg.i.i, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i11.i.i)
  %cmp55.i.i = icmp slt i32 %call.i11.i.i, 1
  br i1 %cmp55.i.i, label %if.end47.i.i.out_err.i.i_crit_edge, label %if.end57.i.i

if.end47.i.i.out_err.i.i_crit_edge:               ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err.i.i

if.end57.i.i:                                     ; preds = %if.end47.i.i
  %71 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %offset.i.i, align 4
  %add60.i.i = add i32 %72, %call.i11.i.i
  store i32 %add60.i.i, ptr %offset.i.i, align 4
  %add61.i.i = add i32 %call.i11.i.i, %add.i.i
  %73 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add60.i.i, i32 %74)
  %cmp66.not.i.i = icmp eq i32 %add60.i.i, %74
  br i1 %cmp66.not.i.i, label %if.end57.i.i.if.end69.i.i_crit_edge, label %if.end57.i.i.xs_read_stream.exit.i_crit_edge

if.end57.i.i.xs_read_stream.exit.i_crit_edge:     ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_stream.exit.i

if.end57.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.end57.i.i.if.end69.i.i_crit_edge, %if.end36.i.i.if.end69.i.i_crit_edge
  %read.1.i.i = phi i32 [ %add61.i.i, %if.end57.i.i.if.end69.i.i_crit_edge ], [ %add.i.i, %if.end36.i.i.if.end69.i.i_crit_edge ]
  %75 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %recv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.i.i.i = icmp slt i32 %76, 0
  br i1 %tobool.i.i.i, label %if.then71.i.i, label %if.end69.i.i.if.end74.i.i_crit_edge

if.end69.i.i.if.end74.i.i_crit_edge:              ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i.i

if.then71.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_xs_stream_read_request(ptr noundef %add.ptr) #11
  %77 = ptrtoint ptr %copied.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %copied.i.i, align 4
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.then71.i.i, %if.end69.i.i.if.end74.i.i_crit_edge
  %78 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %offset.i.i, align 4
  %79 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %len.i.i, align 4
  br label %xs_read_stream.exit.i

out_err.i.i:                                      ; preds = %if.end47.i.i.out_err.i.i_crit_edge, %xs_read_stream_header.exit.i.i.out_err.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %cond.i.i.i.i.i, %xs_read_stream_header.exit.i.i.out_err.i.i_crit_edge ], [ %call.i11.i.i, %if.end47.i.i.out_err.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i.i)
  %cmp79.not.i.i = icmp eq i32 %ret.2.i.i, 0
  %spec.select.i = select i1 %cmp79.not.i.i, i32 -108, i32 %ret.2.i.i
  br label %xs_read_stream.exit.thread.i

xs_read_stream.exit.thread.i:                     ; preds = %out_err.i.i, %if.end33.i.i.xs_read_stream.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %spec.select.i, %out_err.i.i ], [ %ret.1.i.i, %if.end33.i.i.xs_read_stream.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #11
  br label %for.end.i

xs_read_stream.exit.i:                            ; preds = %if.end74.i.i, %if.end57.i.i.xs_read_stream.exit.i_crit_edge, %if.then42.i.i.xs_read_stream.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %read.1.i.i, %if.end74.i.i ], [ %add.i.i, %if.then42.i.i.xs_read_stream.exit.i_crit_edge ], [ %add61.i.i, %if.end57.i.i.xs_read_stream.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp1.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp1.i, label %xs_read_stream.exit.i.for.end.i_crit_edge, label %xs_read_stream.exit.i.if.end3.i_crit_edge

xs_read_stream.exit.i.if.end3.i_crit_edge:        ; preds = %xs_read_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

xs_read_stream.exit.i.for.end.i_crit_edge:        ; preds = %xs_read_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end3.i:                                        ; preds = %xs_read_stream.exit.i.if.end3.i_crit_edge, %xs_read_stream.exit.thread30.i
  %retval.0.i33.i = phi i32 [ %cond.i.i.i.i.i, %xs_read_stream.exit.thread30.i ], [ %retval.0.i.i, %xs_read_stream.exit.i.if.end3.i_crit_edge ]
  %add.i = add i32 %retval.0.i33.i, %read.0.i
  call void @__might_resched(ptr noundef nonnull @.str.18, i32 noundef 724, i32 noundef 0) #11
  %call.i.i = call i32 @__cond_resched() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %xs_read_stream.exit.i.for.end.i_crit_edge, %xs_read_stream.exit.thread.i
  %retval.0.i29.i = phi i32 [ %retval.0.i.ph.i, %xs_read_stream.exit.thread.i ], [ %retval.0.i.i, %xs_read_stream.exit.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %retval.0.i29.i)
  %cmp5.i = icmp eq i32 %retval.0.i29.i, -108
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sock.i, align 8
  %call8.i = call i32 @kernel_sock_shutdown(ptr noundef %81, i32 noundef 2) #11
  br label %xs_stream_data_receive.exit

if.else.i:                                        ; preds = %for.end.i
  %sock_state.i.i = getelementptr i8, ptr %work, i32 -148
  call void @_clear_bit(i32 noundef 2, ptr noundef %sock_state.i.i) #11
  %82 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sock.i, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.socket, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i.i.i.i, align 4
  %poll.i.i.i.i = getelementptr inbounds %struct.proto_ops, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %poll.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %poll.i.i.i.i, align 4
  %file.i.i.i.i = getelementptr i8, ptr %work, i32 -180
  %88 = ptrtoint ptr %file.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %file.i.i.i.i, align 8
  %call.i.i.i.i = call i32 %87(ptr noundef %89, ptr noundef %83, ptr noundef null) #11
  %and.i.i21.i = and i32 %call.i.i.i.i, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21.i)
  %tobool.not.i.i22.i = icmp ne i32 %and.i.i21.i, 0
  %and1.i.i.i = and i32 %call.i.i.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i23.i = icmp eq i32 %and1.i.i.i, 0
  %90 = and i1 %tobool.not.i.i22.i, %tobool2.not.i.i23.i
  br i1 %90, label %if.end.i25.i, label %if.else.i.xs_stream_data_receive.exit_crit_edge

if.else.i.xs_stream_data_receive.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_stream_data_receive.exit

if.end.i25.i:                                     ; preds = %if.else.i
  %call2.i.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %sock_state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i24.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i24.i, label %if.then3.i.i, label %if.end.i25.i.xs_stream_data_receive.exit_crit_edge

if.end.i25.i.xs_stream_data_receive.exit_crit_edge: ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_stream_data_receive.exit

if.then3.i.i:                                     ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %91 = load ptr, ptr @xprtiod_workqueue, align 4
  %call.i.i26.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %91, ptr noundef %work) #11
  br label %xs_stream_data_receive.exit

xs_stream_data_receive.exit:                      ; preds = %if.then3.i.i, %if.end.i25.i.xs_stream_data_receive.exit_crit_edge, %if.else.i.xs_stream_data_receive.exit_crit_edge, %if.then6.i, %entry.xs_stream_data_receive.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %entry.xs_stream_data_receive.exit_crit_edge ], [ -108, %if.then6.i ], [ %retval.0.i29.i, %if.else.i.xs_stream_data_receive.exit_crit_edge ], [ %retval.0.i29.i, %if.end.i25.i.xs_stream_data_receive.exit_crit_edge ], [ %retval.0.i29.i, %if.then3.i.i ]
  %read.1.i = phi i32 [ 0, %entry.xs_stream_data_receive.exit_crit_edge ], [ %read.0.i, %if.then6.i ], [ %read.0.i, %if.else.i.xs_stream_data_receive.exit_crit_edge ], [ %read.0.i, %if.end.i25.i.xs_stream_data_receive.exit_crit_edge ], [ %read.0.i, %if.then3.i.i ]
  %and.i = and i32 %5, 262144
  call void @mutex_unlock(ptr noundef %recv_mutex.i) #11
  call fastcc void @trace_xs_stream_read_data(ptr noundef %add.ptr, i32 noundef %ret.0.i, i32 noundef %read.1.i) #11
  %92 = call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i2 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i2 to ptr
  %task.i3 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %task.i3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task.i3, align 8
  %flags1.i4 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %flags1.i4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags1.i4, align 4
  %and.i5 = and i32 %97, -262145
  %or.i6 = or i32 %and.i5, %and.i
  store i32 %or.i6, ptr %flags1.i4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_error_handle(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1624
  %sock_state.i = getelementptr i8, ptr %work, i32 -104
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %sock_state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.xs_wake_disconnect.exit_crit_edge, label %if.then.i

entry.xs_wake_disconnect.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_wake_disconnect.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xprt_force_disconnect(ptr noundef %add.ptr) #11
  br label %xs_wake_disconnect.exit

xs_wake_disconnect.exit:                          ; preds = %if.then.i, %entry.xs_wake_disconnect.exit_crit_edge
  %call.i5 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %sock_state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %xs_wake_disconnect.exit.xs_wake_write.exit_crit_edge, label %if.then.i7

xs_wake_disconnect.exit.xs_wake_write.exit_crit_edge: ; preds = %xs_wake_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_wake_write.exit

if.then.i7:                                       ; preds = %xs_wake_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call zeroext i1 @xprt_write_space(ptr noundef %add.ptr) #11
  br label %xs_wake_write.exit

xs_wake_write.exit:                               ; preds = %if.then.i7, %xs_wake_disconnect.exit.xs_wake_write.exit_crit_edge
  %0 = ptrtoint ptr %sock_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sock_state.i, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i9 = icmp eq i32 %2, 0
  br i1 %tobool.not.i9, label %xs_wake_write.exit.xs_wake_error.exit_crit_edge, label %if.end.i

xs_wake_write.exit.xs_wake_error.exit_crit_edge:  ; preds = %xs_wake_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_wake_error.exit

if.end.i:                                         ; preds = %xs_wake_write.exit
  %recv_mutex.i = getelementptr i8, ptr %work, i32 88
  tail call void @mutex_lock_nested(ptr noundef %recv_mutex.i, i32 noundef 0) #11
  %sock.i = getelementptr i8, ptr %work, i32 -144
  %3 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sock.i, align 8
  %cmp.i = icmp eq ptr %4, null
  br i1 %cmp.i, label %if.end.i.out.i_crit_edge, label %if.end2.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end2.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %sock_state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end2.i.out.i_crit_edge, label %if.end7.i

if.end2.i.out.i_crit_edge:                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end7.i:                                        ; preds = %if.end2.i
  %xprt_err.i = getelementptr i8, ptr %work, i32 312
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xprt_err.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !433
  tail call void @llvm.prefetch.p0(ptr %xprt_err.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %xprt_err.i) #11, !srcloc !434
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !435
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp23.i = icmp slt i32 %asmresult.i.i, 0
  br i1 %cmp23.i, label %if.then24.i, label %if.end7.i.out.i_crit_edge

if.end7.i.out.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then24.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xprt_wake_pending_tasks(ptr noundef %add.ptr, i32 noundef %asmresult.i.i) #11
  br label %out.i

out.i:                                            ; preds = %if.then24.i, %if.end7.i.out.i_crit_edge, %if.end2.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %recv_mutex.i) #11
  br label %xs_wake_error.exit

xs_wake_error.exit:                               ; preds = %out.i, %xs_wake_write.exit.xs_wake_error.exit_crit_edge
  %call.i11 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %sock_state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %xs_wake_error.exit.xs_wake_pending.exit_crit_edge, label %if.then.i13

xs_wake_error.exit.xs_wake_pending.exit_crit_edge: ; preds = %xs_wake_error.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_wake_pending.exit

if.then.i13:                                      ; preds = %xs_wake_error.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xprt_wake_pending_tasks(ptr noundef %add.ptr, i32 noundef -11) #11
  br label %xs_wake_pending.exit

xs_wake_pending.exit:                             ; preds = %if.then.i13, %xs_wake_error.exit.xs_wake_pending.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xs_dummy_setup_socket(ptr nocapture noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xs_format_peer_addresses(ptr noundef %xprt, ptr noundef %protocol, ptr noundef %netid) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %protocol, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 5
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %netid, ptr %arrayidx2, align 4
  %addr.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf.i) #11
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 128)
  %3 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr.i.i, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.162)
  switch i16 %4, label %do.body.i [
    i16 1, label %sw.bb.i
    i16 2, label %sw.bb6.i
    i16 10, label %sw.bb16.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sun_path.i = getelementptr inbounds %struct.sockaddr_un, ptr %addr.i.i, i32 0, i32 1
  %call3.i = call i32 @strlcpy(ptr noundef nonnull %buf.i, ptr noundef %sun_path.i, i32 noundef 128) #11
  %call5.i = call noalias ptr @kstrdup(ptr noundef nonnull %buf.i, i32 noundef 3264) #11
  %address_strings.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 51
  %6 = ptrtoint ptr %address_strings.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i, ptr %address_strings.i, align 8
  br label %xs_format_common_peer_addresses.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = call i32 @rpc_ntop(ptr noundef %addr.i.i, ptr noundef nonnull %buf.i, i32 noundef 128) #11
  %call10.i = call noalias ptr @kstrdup(ptr noundef nonnull %buf.i, i32 noundef 3264) #11
  %address_strings11.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 51
  %7 = ptrtoint ptr %address_strings11.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10.i, ptr %address_strings11.i, align 8
  %sin_addr.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr.i, align 4
  %call15.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 128, ptr noundef nonnull @.str.54, i32 noundef %9) #11
  br label %xs_format_common_peer_addresses.exit

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i = call i32 @rpc_ntop(ptr noundef %addr.i.i, ptr noundef nonnull %buf.i, i32 noundef 128) #11
  %call20.i = call noalias ptr @kstrdup(ptr noundef nonnull %buf.i, i32 noundef 3264) #11
  %address_strings21.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 51
  %10 = ptrtoint ptr %address_strings21.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20.i, ptr %address_strings21.i, align 8
  %sin6_addr.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 4, i32 0, i32 1, i32 4
  %call25.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 128, ptr noundef nonnull @.str.55, ptr noundef %sin6_addr.i) #11
  br label %xs_format_common_peer_addresses.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/xprtsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #11, !srcloc !436
  unreachable

xs_format_common_peer_addresses.exit:             ; preds = %sw.bb16.i, %sw.bb6.i, %sw.bb.i
  %call30.i = call noalias ptr @kstrdup(ptr noundef nonnull %buf.i, i32 noundef 3264) #11
  %arrayidx32.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 3
  %11 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call30.i, ptr %arrayidx32.i, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf.i) #11
  call fastcc void @xs_format_common_peer_ports(ptr noundef %xprt)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xs_local_setup_socket(ptr noundef %transport) unnamed_addr #0 align 64 {
entry:
  %sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #11
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !437
  %xprt_net = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 49
  %1 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xprt_net, align 8
  %call = call i32 @__sock_create(ptr noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %sock, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %3 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.out_crit_edge, label %do.end, !prof !432

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 0, %call
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %sub) #14
  br label %out

if.end9:                                          ; preds = %entry
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sock, align 4
  call fastcc void @xs_reclassify_socket(i32 noundef 1, ptr noundef %5)
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock, align 4
  %call10 = call ptr @sock_alloc_file(ptr noundef %7, i32 noundef 2048, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call10 to i32
  br label %out

if.end14:                                         ; preds = %if.end9
  %file = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 3
  %9 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %file, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %10 = load i32, ptr @rpc_debug, align 4
  %and16 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.do.end32_crit_edge, label %do.end27, !prof !432

if.end14.do.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32

do.end27:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 51
  %11 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %address_strings, align 8
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %transport, ptr noundef %12) #14
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %if.end14.do.end32_crit_edge
  %13 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sock, align 4
  %inet.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 2
  %15 = ptrtoint ptr %inet.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inet.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then.i, label %do.end32.xs_local_finish_connecting.exit_crit_edge

do.end32.xs_local_finish_connecting.exit_crit_edge: ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_local_finish_connecting.exit

if.then.i:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  %sk1.i = getelementptr inbounds %struct.socket, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk1.i, align 16
  call void @lock_sock_nested(ptr noundef %18, i32 noundef 0) #11
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 77
  %19 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_data_ready.i.i, align 8
  %old_data_ready.i.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 17
  %21 = ptrtoint ptr %old_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %old_data_ready.i.i, align 8
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 76
  %22 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk_state_change.i.i, align 4
  %old_state_change.i.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 18
  %24 = ptrtoint ptr %old_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %old_state_change.i.i, align 4
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 78
  %25 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sk_write_space.i.i, align 4
  %old_write_space.i.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 19
  %27 = ptrtoint ptr %old_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %old_write_space.i.i, align 8
  %sk_error_report.i.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 79
  %28 = ptrtoint ptr %sk_error_report.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_error_report.i.i, align 8
  %old_error_report.i.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 20
  %30 = ptrtoint ptr %old_error_report.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %old_error_report.i.i, align 4
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 72
  %31 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transport, ptr %sk_user_data.i, align 4
  store ptr @xs_data_ready, ptr %sk_data_ready.i.i, align 8
  store ptr @xs_udp_write_space, ptr %sk_write_space.i.i, align 4
  %32 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %or.i.i.i = or i32 %34, 65536
  store i32 %or.i.i.i, ptr %32, align 4
  store ptr @xs_error_report, ptr %sk_error_report.i.i, align 8
  %state.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 18
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #11
  %sock2.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 1
  %35 = ptrtoint ptr %sock2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %14, ptr %sock2.i, align 8
  %36 = ptrtoint ptr %inet.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %18, ptr %inet.i, align 4
  call void @release_sock(ptr noundef %18) #11
  br label %xs_local_finish_connecting.exit

xs_local_finish_connecting.exit:                  ; preds = %if.then.i, %do.end32.xs_local_finish_connecting.exit_crit_edge
  %connect_count.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 48, i32 1
  %37 = ptrtoint ptr %connect_count.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %connect_count.i.i, align 4
  %inc.i.i = add i32 %38, 1
  store i32 %inc.i.i, ptr %connect_count.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %connect_start.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 48, i32 2
  %40 = ptrtoint ptr %connect_start.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %connect_start.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 4
  %addrlen.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 5
  %41 = ptrtoint ptr %addrlen.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addrlen.i, align 8
  %call4.i = call i32 @kernel_connect(ptr noundef %14, ptr noundef %addr.i.i, i32 noundef %42, i32 noundef 0) #11
  %43 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sock, align 4
  call fastcc void @trace_rpc_socket_connect(ptr noundef %transport, ptr noundef %44, i32 noundef %call4.i)
  %45 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %call4.i, label %do.end101 [
    i32 0, label %do.body34
    i32 -105, label %xs_local_finish_connecting.exit.out_crit_edge
    i32 -2, label %do.body58
    i32 -111, label %do.body79
  ]

xs_local_finish_connecting.exit.out_crit_edge:    ; preds = %xs_local_finish_connecting.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body34:                                        ; preds = %xs_local_finish_connecting.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %46 = load i32, ptr @rpc_debug, align 4
  %and35 = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.do.end53_crit_edge, label %do.end46, !prof !432

do.body34.do.end53_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

do.end46:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings48 = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 51
  %47 = ptrtoint ptr %address_strings48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %address_strings48, align 8
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %transport, ptr noundef %48) #14
  br label %do.end53

do.end53:                                         ; preds = %do.end46, %do.body34.do.end53_crit_edge
  %49 = ptrtoint ptr %connect_count.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %connect_count.i.i, align 4
  %inc = add i32 %50, 1
  store i32 %inc, ptr %connect_count.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %52 = ptrtoint ptr %connect_start.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %connect_start.i.i, align 8
  %sub55 = sub i32 %51, %53
  %connect_time = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 48, i32 3
  %54 = ptrtoint ptr %connect_time to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %connect_time, align 4
  %add = add i32 %sub55, %55
  store i32 %add, ptr %connect_time, align 4
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #11
  br label %out

do.body58:                                        ; preds = %xs_local_finish_connecting.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %56 = load i32, ptr @rpc_debug, align 4
  %and59 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.out_crit_edge, label %do.end70, !prof !432

do.body58.out_crit_edge:                          ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end70:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings72 = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 51
  %57 = ptrtoint ptr %address_strings72 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %address_strings72, align 8
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %transport, ptr noundef %58) #14
  br label %out

do.body79:                                        ; preds = %xs_local_finish_connecting.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %59 = load i32, ptr @rpc_debug, align 4
  %and80 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.out_crit_edge, label %do.end91, !prof !432

do.body79.out_crit_edge:                          ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end91:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings93 = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 51
  %60 = ptrtoint ptr %address_strings93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %address_strings93, align 8
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %transport, ptr noundef %61) #14
  br label %out

do.end101:                                        ; preds = %xs_local_finish_connecting.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub103 = sub i32 0, %call4.i
  %address_strings104 = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 51
  %62 = ptrtoint ptr %address_strings104 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %address_strings104, align 8
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.59, i32 noundef %sub103, ptr noundef %63) #14
  br label %out

out:                                              ; preds = %do.end101, %do.end91, %do.body79.out_crit_edge, %do.end70, %do.body58.out_crit_edge, %do.end53, %xs_local_finish_connecting.exit.out_crit_edge, %if.then12, %do.end, %do.body.out_crit_edge
  %status.0 = phi i32 [ %call, %do.end ], [ %call, %do.body.out_crit_edge ], [ %8, %if.then12 ], [ %call4.i, %do.end101 ], [ -111, %do.end91 ], [ -111, %do.body79.out_crit_edge ], [ -2, %do.end70 ], [ -2, %do.body58.out_crit_edge ], [ %call4.i, %xs_local_finish_connecting.exit.out_crit_edge ], [ 0, %do.end53 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !438
  %state.i133 = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 18
  call void @_clear_bit(i32 noundef 2, ptr noundef %state.i133) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !439
  call void @xprt_wake_pending_tasks(ptr noundef %transport, i32 noundef %status.0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #11
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_reserve_xprt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_xprt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_alloc_slot(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free_slot(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_local_rpcbind(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_xprt = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 14
  %0 = ptrtoint ptr %tk_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_xprt, align 8
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xs_local_set_port(ptr nocapture noundef %xprt, i16 noundef zeroext %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_local_connect(ptr noundef %xprt, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_flags = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 20
  %0 = ptrtoint ptr %tk_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tk_flags, align 4
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tk_rpc_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 9
  %3 = ptrtoint ptr %tk_rpc_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -107, ptr %tk_rpc_status, align 8
  tail call void @rpc_exit(ptr noundef %task, i32 noundef -107) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @xs_local_setup_socket(ptr noundef %xprt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %tk_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tk_flags, align 4
  %6 = and i16 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @msleep_interruptible(i32 noundef 15000) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_malloc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_free(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_stream_prepare_request(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_rcv_buf = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 2
  tail call void @xdr_free_bvec(ptr noundef %rq_rcv_buf) #11
  %call = tail call i32 @xdr_alloc_bvec(ptr noundef %rq_rcv_buf, i32 noundef 3264) #11
  %rq_task = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %rq_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_task, align 4
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %tk_status, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xs_local_send_request(ptr noundef %req) #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %sent = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %or.i = or i32 %3, -2147483648
  %retval.0.i = select i1 %tobool.not.i, i32 0, i32 %or.i
  %add = add i32 %3, 4
  %cond = select i1 %tobool.not.i, i32 0, i32 %add
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #11
  %4 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %5 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.37, %union.anon.38 }, %union.anon.40, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg, i32 0, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16448, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sent) #11
  %7 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %sent, align 4, !annotation !437
  %xmit.i = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xmit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %xs_send_request_was_aborted.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

xs_send_request_was_aborted.exit:                 ; preds = %entry
  %rq_bytes_sent.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 28
  %10 = ptrtoint ptr %rq_bytes_sent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rq_bytes_sent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i = icmp eq i32 %11, 0
  br i1 %cmp1.i, label %if.then, label %xs_send_request_was_aborted.exit.if.end_crit_edge

xs_send_request_was_aborted.exit.if.end_crit_edge: ; preds = %xs_send_request_was_aborted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %xs_send_request_was_aborted.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %12 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i114 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i114, label %if.then.xs_close.exit_crit_edge, label %do.end.i, !prof !432

if.then.xs_close.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_close.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %1) #14
  br label %xs_close.exit

xs_close.exit:                                    ; preds = %do.end.i, %if.then.xs_close.exit_crit_edge
  tail call fastcc void @xs_reset_transport(ptr noundef %1) #11
  %reestablish_timeout.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %reestablish_timeout.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %reestablish_timeout.i, align 4
  br label %cleanup

if.end:                                           ; preds = %xs_send_request_was_aborted.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call9 = tail call i64 @ktime_get() #11
  %rq_xtime = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 29
  %14 = ptrtoint ptr %rq_xtime to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call9, ptr %rq_xtime, align 8
  %sock = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sock, align 8
  %17 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xmit.i, align 4
  %call10 = call i32 @xprt_sock_sendmsg(ptr noundef %16, ptr noundef nonnull %msg, ptr noundef %rq_snd_buf, i32 noundef %18, i32 noundef %retval.0.i, ptr noundef nonnull %sent) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %19 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end.do.end23_crit_edge, label %do.end, !prof !432

if.end.do.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %22 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xmit.i, align 4
  %sub = sub i32 %21, %23
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %sub, i32 noundef %call10) #14
  br label %do.end23

do.end23:                                         ; preds = %do.end, %if.end.do.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call10)
  %cmp = icmp eq i32 %call10, -11
  br i1 %cmp, label %land.lhs.true, label %do.end23.if.end26_crit_edge

do.end23.if.end26_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  %inet = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %inet to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %inet, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %25, i32 0, i32 23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #11
  %26 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %25, i32 0, i32 21
  %28 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %shr.i = ashr i32 %29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %shr.i)
  %cmp.i = icmp ult i32 %27, %shr.i
  %spec.select = select i1 %cmp.i, i32 -105, i32 -11
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true, %do.end23.if.end26_crit_edge
  %status.0 = phi i32 [ %call10, %do.end23.if.end26_crit_edge ], [ %spec.select, %land.lhs.true ]
  %30 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp27.not = icmp eq i32 %31, 0
  br i1 %cmp27.not, label %lor.lhs.false, label %if.end26.if.then35_crit_edge, !prof !440

if.end26.if.then35_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end26
  %32 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %status.0, label %do.body58 [
    i32 0, label %lor.lhs.false.if.then35_crit_edge
    i32 -105, label %lor.lhs.false.cleanup_crit_edge
    i32 -11, label %lor.lhs.false.sw.bb_crit_edge
    i32 -32, label %lor.lhs.false.sw.bb77_crit_edge
  ]

lor.lhs.false.sw.bb77_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb77

lor.lhs.false.sw.bb_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.end26.if.then35_crit_edge
  %33 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xmit.i, align 4
  %add38 = add i32 %34, %31
  store i32 %add38, ptr %xmit.i, align 4
  %rq_bytes_sent = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 28
  %35 = ptrtoint ptr %rq_bytes_sent to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add38, ptr %rq_bytes_sent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %cond)
  %cmp42.not = icmp ult i32 %add38, %cond
  br i1 %cmp42.not, label %if.then35.sw.bb_crit_edge, label %if.then49, !prof !440

if.then35.sw.bb_crit_edge:                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then49:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xmit.i, align 4
  %rq_xmit_bytes_sent = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 18
  %38 = ptrtoint ptr %rq_xmit_bytes_sent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rq_xmit_bytes_sent, align 8
  %add52 = add i32 %39, %37
  store i32 %add52, ptr %rq_xmit_bytes_sent, align 8
  store i32 0, ptr %xmit.i, align 4
  br label %cleanup

sw.bb:                                            ; preds = %if.then35.sw.bb_crit_edge, %lor.lhs.false.sw.bb_crit_edge
  %call57 = call fastcc i32 @xs_nospace(ptr noundef %req)
  br label %cleanup

do.body58:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %40 = load i32, ptr @rpc_debug, align 4
  %and59 = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.sw.bb77_crit_edge, label %do.end70, !prof !432

do.body58.sw.bb77_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb77

do.end70:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  %sub72 = sub i32 0, %status.0
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %sub72) #14
  br label %sw.bb77

sw.bb77:                                          ; preds = %do.end70, %do.body58.sw.bb77_crit_edge, %lor.lhs.false.sw.bb77_crit_edge
  call void @xs_close(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb77, %sw.bb, %if.then49, %lor.lhs.false.cleanup_crit_edge, %xs_close.exit
  %retval.0 = phi i32 [ -107, %xs_close.exit ], [ 0, %if.then49 ], [ -107, %sw.bb77 ], [ %call57, %sw.bb ], [ %status.0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sent) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wait_for_reply_request_def(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_close(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !432

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %xprt) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  tail call fastcc void @xs_reset_transport(ptr noundef %xprt)
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 24
  %1 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %reestablish_timeout, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_destroy(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !432

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %xprt) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %connect_worker = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 7
  %call7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %connect_worker) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %1 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end6.xs_close.exit_crit_edge, label %do.end.i, !prof !432

do.end6.xs_close.exit_crit_edge:                  ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_close.exit

do.end.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %xprt) #14
  br label %xs_close.exit

xs_close.exit:                                    ; preds = %do.end.i, %do.end6.xs_close.exit_crit_edge
  tail call fastcc void @xs_reset_transport(ptr noundef %xprt) #11
  %reestablish_timeout.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 24
  %2 = ptrtoint ptr %reestablish_timeout.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reestablish_timeout.i, align 4
  %recv_worker = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 9
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %recv_worker) #11
  %error_worker = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 8
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %error_worker) #11
  %arrayidx.i.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 0
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %4) #11
  %arrayidx.1.i.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1.i.i, align 4
  tail call void @kfree(ptr noundef %6) #11
  %arrayidx.3.i.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 3
  %7 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.3.i.i, align 4
  tail call void @kfree(ptr noundef %8) #11
  %arrayidx.4.i.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 4
  %9 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.4.i.i, align 4
  tail call void @kfree(ptr noundef %10) #11
  tail call void @xprt_free(ptr noundef %xprt) #11
  tail call void @module_put(ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_local_print_stats(ptr noundef %xprt, ptr noundef %seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 18
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 28
  %4 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_used, align 8
  %sub = sub i32 %3, %5
  %div = sdiv i32 %sub, 100
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %idle_time.0 = phi i32 [ %div, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %stat = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48
  %6 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stat, align 8
  %connect_count = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 1
  %8 = ptrtoint ptr %connect_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connect_count, align 4
  %connect_time = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 3
  %10 = ptrtoint ptr %connect_time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %connect_time, align 4
  %div3 = udiv i32 %11, 100
  %sends = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 4
  %12 = ptrtoint ptr %sends to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sends, align 8
  %recvs = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 5
  %14 = ptrtoint ptr %recvs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %recvs, align 4
  %bad_xids = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 6
  %16 = ptrtoint ptr %bad_xids to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bad_xids, align 8
  %req_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 8
  %18 = ptrtoint ptr %req_u to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %req_u, align 8
  %bklog_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 9
  %20 = ptrtoint ptr %bklog_u to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bklog_u, align 8
  %max_slots = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 7
  %22 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_slots, align 4
  %sending_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 10
  %24 = ptrtoint ptr %sending_u to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sending_u, align 8
  %pending_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 11
  %26 = ptrtoint ptr %pending_u to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pending_u, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef %9, i32 noundef %div3, i32 noundef %idle_time.0, i32 noundef %13, i32 noundef %15, i32 noundef %17, i64 noundef %19, i64 noundef %21, i32 noundef %23, i64 noundef %25, i64 noundef %27) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xs_enable_swap(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %swapper = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %swapper, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !441
  tail call void @llvm.prefetch.p0(ptr %swapper, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %swapper, ptr %swapper, i32 1, ptr elementtype(i32) %swapper) #11, !srcloc !442
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !443
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 18
  tail call void @__might_sleep(ptr noundef nonnull @.str.48, i32 noundef 181) #11
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %wait_on_bit_lock.exit

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

wait_on_bit_lock.exit:                            ; preds = %if.end
  %call3.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %state, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 258) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %wait_on_bit_lock.exit.if.end3_crit_edge, label %wait_on_bit_lock.exit.cleanup_crit_edge

wait_on_bit_lock.exit.cleanup_crit_edge:          ; preds = %wait_on_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

wait_on_bit_lock.exit.if.end3_crit_edge:          ; preds = %wait_on_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end3:                                          ; preds = %wait_on_bit_lock.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %inet = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 2
  %1 = ptrtoint ptr %inet to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inet, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sk_set_memalloc(ptr noundef nonnull %2) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  tail call void @xprt_release_xprt(ptr noundef %xprt, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %wait_on_bit_lock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ -512, %wait_on_bit_lock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_disable_swap(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %swapper = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %swapper, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !444
  tail call void @llvm.prefetch.p0(ptr %swapper, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %swapper, ptr %swapper, i32 1, ptr elementtype(i32) %swapper) #11, !srcloc !445
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !446
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 18
  tail call void @__might_sleep(ptr noundef nonnull @.str.48, i32 noundef 181) #11
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %wait_on_bit_lock.exit

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

wait_on_bit_lock.exit:                            ; preds = %if.end
  %call3.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %state, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 258) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %wait_on_bit_lock.exit.if.end3_crit_edge, label %wait_on_bit_lock.exit.cleanup_crit_edge

wait_on_bit_lock.exit.cleanup_crit_edge:          ; preds = %wait_on_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

wait_on_bit_lock.exit.if.end3_crit_edge:          ; preds = %wait_on_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end3:                                          ; preds = %wait_on_bit_lock.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %inet = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 2
  %1 = ptrtoint ptr %inet to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inet, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sk_clear_memalloc(ptr noundef nonnull %2) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  tail call void @xprt_release_xprt(ptr noundef %xprt, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %wait_on_bit_lock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_free_bvec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_alloc_bvec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_sock_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xs_nospace(ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %inet = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %inet to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inet, align 4
  tail call fastcc void @trace_rpc_socket_nospace(ptr noundef %req, ptr noundef %1)
  %transport_lock = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %transport_lock) #11
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.thread, label %if.then2

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %transport_lock) #11
  br label %if.end16

if.then2:                                         ; preds = %entry
  %sk_write_pending = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 28
  %7 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sk_write_pending, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %sk_write_pending, align 4
  tail call void @xprt_wait_for_buffer_space(ptr noundef %1) #11
  tail call void @_raw_spin_unlock(ptr noundef %transport_lock) #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !447
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then2.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then2.rcu_read_lock.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then2
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then2.rcu_read_lock.exit_crit_edge
  %13 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  %call5 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b27 = load i1, ptr @xs_nospace.__warned, align 1
  br i1 %.b27, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xs_nospace.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 795, ptr noundef nonnull @.str.37) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %flags = getelementptr inbounds %struct.socket_wq, ptr %15, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i28, label %do.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

do.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %do.end14
  %call1.i29 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %do.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !448
  %16 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i.i35 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 78
  %20 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk_write_space, align 4
  tail call void %21(ptr noundef %3) #11
  br label %if.end16

if.end16:                                         ; preds = %rcu_read_unlock.exit, %if.end.thread
  %ret.038 = phi i32 [ -107, %if.end.thread ], [ -11, %rcu_read_unlock.exit ]
  ret i32 %ret.038
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpc_socket_nospace(ptr noundef %rqst, ptr noundef %transport) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_nospace, i32 0, i32 1), ptr blockaddress(@trace_rpc_socket_nospace, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !449

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !432

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !450
  %call42 = tail call i32 @__traceiter_rpc_socket_nospace(ptr noundef null, ptr noundef %rqst, ptr noundef %transport) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !451
  %13 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !432

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_nospace, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_nospace, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpc_socket_nospace.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_rpc_socket_nospace.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 953, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !453
  %31 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
declare dso_local void @xprt_wait_for_buffer_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_socket_nospace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xs_reset_transport(ptr noundef %transport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sock1 = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 1
  %0 = ptrtoint ptr %sock1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock1, align 8
  %inet = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 2
  %2 = ptrtoint ptr %inet to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inet, align 4
  %file = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %swapper = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %swapper, i32 noundef 4) #11
  %6 = ptrtoint ptr %swapper to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %swapper, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sk_clear_memalloc(ptr noundef nonnull %3) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @kernel_sock_shutdown(ptr noundef %1, i32 noundef 2) #11
  %recv_mutex = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %recv_mutex, i32 noundef 0) #11
  tail call void @lock_sock_nested(ptr noundef nonnull %3, i32 noundef 0) #11
  %8 = ptrtoint ptr %inet to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %inet, align 4
  %9 = ptrtoint ptr %sock1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sock1, align 8
  %10 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %file, align 8
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 72
  %11 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sk_user_data, align 4
  %old_data_ready.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 17
  %12 = ptrtoint ptr %old_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %old_data_ready.i, align 8
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 77
  %14 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %sk_data_ready.i, align 8
  %old_state_change.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 18
  %15 = ptrtoint ptr %old_state_change.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %old_state_change.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 76
  %17 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %sk_state_change.i, align 4
  %old_write_space.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 19
  %18 = ptrtoint ptr %old_write_space.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %old_write_space.i, align 8
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 78
  %20 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %sk_write_space.i, align 4
  %old_error_report.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 20
  %21 = ptrtoint ptr %old_error_report.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %old_error_report.i, align 4
  %sk_error_report.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 79
  %23 = ptrtoint ptr %sk_error_report.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %sk_error_report.i, align 8
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #11
  %connect_cookie.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 25
  %24 = ptrtoint ptr %connect_cookie.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connect_cookie.i, align 8
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %connect_cookie.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !454
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state.i) #11
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state.i) #11
  %sock_state.i.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %sock_state.i.i) #11
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %sock_state.i.i) #11
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %sock_state.i.i) #11
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %sock_state.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !455
  %offset.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 4, i32 1
  %26 = call ptr @memset(ptr %offset.i, i32 0, i32 16)
  tail call void @release_sock(ptr noundef nonnull %3) #11
  tail call void @mutex_unlock(ptr noundef %recv_mutex) #11
  tail call fastcc void @trace_rpc_socket_close(ptr noundef %transport, ptr noundef %1)
  tail call void @fput(ptr noundef %5) #11
  tail call void @xprt_disconnect_done(ptr noundef %transport) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_clear_memalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpc_socket_close(ptr noundef %xprt, ptr noundef %socket) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_close, i32 0, i32 1), ptr blockaddress(@trace_rpc_socket_close, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !449

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !432

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !456
  %call42 = tail call i32 @__traceiter_rpc_socket_close(ptr noundef null, ptr noundef %xprt, ptr noundef %socket) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !457
  %13 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !432

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_close, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_close, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpc_socket_close.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_rpc_socket_close.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 923, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !453
  %31 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_disconnect_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_socket_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_set_memalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xs_stream_read_data(ptr noundef %xprt, i32 noundef %err, i32 noundef %total) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xs_stream_read_data, i32 0, i32 1), ptr blockaddress(@trace_xs_stream_read_data, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !449

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !432

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !458
  %call42 = tail call i32 @__traceiter_xs_stream_read_data(ptr noundef null, ptr noundef %xprt, i32 noundef %err, i32 noundef %total) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !459
  %13 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !432

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xs_stream_read_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xs_stream_read_data, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xs_stream_read_data.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xs_stream_read_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 1296, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !453
  %31 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
define internal fastcc void @trace_xs_stream_read_request(ptr noundef %xs) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xs_stream_read_request, i32 0, i32 1), ptr blockaddress(@trace_xs_stream_read_request, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !449

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !432

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !460
  %call42 = tail call i32 @__traceiter_xs_stream_read_request(ptr noundef null, ptr noundef %xs) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !461
  %13 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !432

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xs_stream_read_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xs_stream_read_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xs_stream_read_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xs_stream_read_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 1324, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !453
  %31 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_lookup_bc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xs_read_stream_request(ptr nocapture noundef %transport, ptr noundef %msg, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_private_buf = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20
  %copied.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %copied.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %copied.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.xs_read_header.exit_crit_edge

entry.xs_read_header.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_header.exit

if.then.i:                                        ; preds = %entry
  %iov_len.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iov_len.i, align 4
  %offset.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.i = icmp ult i32 %3, %5
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %rq_private_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_private_buf, align 4
  %xid.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 4, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %7, ptr %xid.i, i32 %5)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i, align 4
  %11 = ptrtoint ptr %copied.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %copied.i, align 4
  br label %xs_read_header.exit

xs_read_header.exit:                              ; preds = %if.end.i, %entry.xs_read_header.exit_crit_edge
  %len = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %offset = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %xs_read_header.exit.if.end_crit_edge, label %if.then

xs_read_header.exit.if.end_crit_edge:             ; preds = %xs_read_header.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %xs_read_header.exit
  %sub = sub i32 %13, %15
  %sock = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 1
  %16 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sock, align 8
  %18 = ptrtoint ptr %copied.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %copied.i, align 4
  %add = add i32 %19, %sub
  %iov_len.i1 = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len.i1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len.i1, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %add) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %22)
  %cmp1.i = icmp ult i32 %19, %22
  br i1 %cmp1.i, label %if.then.i2, label %if.else.i

if.then.i2:                                       ; preds = %if.then
  %msg_iter.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  tail call void @iov_iter_kvec(ptr noundef %msg_iter.i.i, i32 noundef 0, ptr noundef %rq_private_buf, i32 noundef 1, i32 noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i.i.i, label %if.then.i2.xs_read_kvec.exit.i_crit_edge, label %if.then.i.i.i

if.then.i2.xs_read_kvec.exit.i_crit_edge:         ; preds = %if.then.i2
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_kvec.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iov_iter_advance(ptr noundef %msg_iter.i.i, i32 noundef %19) #11
  br label %xs_read_kvec.exit.i

xs_read_kvec.exit.i:                              ; preds = %if.then.i.i.i, %if.then.i2.xs_read_kvec.exit.i_crit_edge
  %call.i.i.i = tail call i32 @sock_recvmsg(ptr noundef %17, ptr noundef %msg, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.i.i.i = icmp sgt i32 %call.i.i.i, 0
  %add.i.i.i = select i1 %cmp1.i.i.i, i32 %19, i32 0
  %cond.i.i.i = add i32 %add.i.i.i, %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i.i.i)
  %cmp4.i = icmp slt i32 %cond.i.i.i, 1
  br i1 %cmp4.i, label %xs_read_kvec.exit.i.sock_err.i_crit_edge, label %if.end.i3

xs_read_kvec.exit.i.sock_err.i_crit_edge:         ; preds = %xs_read_kvec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_err.i

if.end.i3:                                        ; preds = %xs_read_kvec.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %add)
  %cmp6.i = icmp eq i32 %cond.i.i.i, %add
  br i1 %cmp6.i, label %if.end.i3.xs_read_xdr_buf.exit_crit_edge, label %lor.lhs.false.i

if.end.i3.xs_read_xdr_buf.exit_crit_edge:         ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_xdr_buf.exit

lor.lhs.false.i:                                  ; preds = %if.end.i3
  %msg_flags.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %23 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_flags.i, align 4
  %and.i = and i32 %24, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i4 = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %22)
  %cmp9.not.i = icmp eq i32 %cond.i.i.i, %22
  %or.cond.i = select i1 %tobool.not.i4, i1 %cmp9.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end13.i_crit_edge, label %lor.lhs.false.i.xs_read_xdr_buf.exit_crit_edge

lor.lhs.false.i.xs_read_xdr_buf.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_xdr_buf.exit

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i32 %19, %22
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %lor.lhs.false.i.if.end13.i_crit_edge
  %seek.addr.0.i = phi i32 [ %sub.i, %if.else.i ], [ 0, %lor.lhs.false.i.if.end13.i_crit_edge ]
  %sub14.i = sub i32 %add, %22
  %page_len.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 5
  %25 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %page_len.i, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %sub14.i, i32 %26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %if.end13.i.xs_alloc_sparse_pages.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end13.i.xs_alloc_sparse_pages.exit.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_alloc_sparse_pages.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end13.i
  %flags.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 6
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.xs_alloc_sparse_pages.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.xs_alloc_sparse_pages.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_alloc_sparse_pages.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %page_base.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 4
  %30 = ptrtoint ptr %page_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %page_base.i.i, align 4
  %add.i.i = add i32 %27, 4095
  %sub.i.i = add i32 %add.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i.i)
  %cmp2.not.i.i = icmp ult i32 %sub.i.i, 4096
  br i1 %cmp2.not.i.i, label %if.end.i.i.xs_alloc_sparse_pages.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.xs_alloc_sparse_pages.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_alloc_sparse_pages.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %shr.i.i = lshr i32 %sub.i.i, 12
  %pages.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 3
  %bvec.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pages.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %33, i32 %i.03.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %35, null
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %36 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pages.i.i, align 4
  %arrayidx7.i.i = getelementptr ptr, ptr %37, i32 %i.03.i.i
  %38 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call38.i.i.i.i.i, ptr %arrayidx7.i.i, align 4
  %39 = ptrtoint ptr %bvec.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bvec.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.bio_vec, ptr %40, i32 %i.03.i.i
  %41 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call38.i.i.i.i.i, ptr %arrayidx8.i.i, align 4
  %42 = load ptr, ptr %pages.i.i, align 4
  %arrayidx10.i.i = getelementptr ptr, ptr %42, i32 %i.03.i.i
  %43 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %44, null
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end5.i.i.for.inc.i.i_crit_edge

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then12.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i = shl i32 %i.03.i.i, 12
  %45 = ptrtoint ptr %page_base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page_base.i.i, align 4
  %47 = tail call i32 @llvm.usub.sat.i32(i32 %mul.i.i, i32 %46) #11
  br label %xs_alloc_sparse_pages.exit.i

for.inc.i.i:                                      ; preds = %if.end5.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shr.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.xs_alloc_sparse_pages.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.xs_alloc_sparse_pages.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_alloc_sparse_pages.exit.i

xs_alloc_sparse_pages.exit.i:                     ; preds = %for.inc.i.i.xs_alloc_sparse_pages.exit.i_crit_edge, %if.then12.i.i, %if.end.i.i.xs_alloc_sparse_pages.exit.i_crit_edge, %lor.lhs.false.i.i.xs_alloc_sparse_pages.exit.i_crit_edge, %if.end13.i.xs_alloc_sparse_pages.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %47, %if.then12.i.i ], [ %27, %lor.lhs.false.i.i.xs_alloc_sparse_pages.exit.i_crit_edge ], [ 0, %if.end13.i.xs_alloc_sparse_pages.exit.i_crit_edge ], [ %27, %if.end.i.i.xs_alloc_sparse_pages.exit.i_crit_edge ], [ %27, %for.inc.i.i.xs_alloc_sparse_pages.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %seek.addr.0.i, i32 %retval.0.i.i)
  %cmp22.i = icmp ult i32 %seek.addr.0.i, %retval.0.i.i
  br i1 %cmp22.i, label %if.then23.i, label %if.else48.i

if.then23.i:                                      ; preds = %xs_alloc_sparse_pages.exit.i
  %bvec.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 2
  %48 = ptrtoint ptr %bvec.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bvec.i, align 4
  %call24.i = tail call i32 @xdr_buf_pagecount(ptr noundef %rq_private_buf) #11
  %page_base.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 4
  %50 = ptrtoint ptr %page_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %page_base.i, align 4
  %add25.i = add i32 %51, %retval.0.i.i
  %add27.i = add i32 %51, %seek.addr.0.i
  %msg_iter.i3.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  tail call void @iov_iter_bvec(ptr noundef %msg_iter.i3.i, i32 noundef 0, ptr noundef %49, i32 noundef %call24.i, i32 noundef %add25.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add27.i)
  %cmp.not.i.i4.i = icmp eq i32 %add27.i, 0
  br i1 %cmp.not.i.i4.i, label %if.then23.i.xs_read_bvec.exit.i_crit_edge, label %if.then.i.i5.i

if.then23.i.xs_read_bvec.exit.i_crit_edge:        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_bvec.exit.i

if.then.i.i5.i:                                   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iov_iter_advance(ptr noundef %msg_iter.i3.i, i32 noundef %add27.i) #11
  br label %xs_read_bvec.exit.i

xs_read_bvec.exit.i:                              ; preds = %if.then.i.i5.i, %if.then23.i.xs_read_bvec.exit.i_crit_edge
  %call.i.i6.i = tail call i32 @sock_recvmsg(ptr noundef %17, ptr noundef %msg, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6.i)
  %cmp1.i.i7.i = icmp sgt i32 %call.i.i6.i, 0
  %add.i.i8.i = select i1 %cmp1.i.i7.i, i32 %add27.i, i32 0
  %cond.i.i9.i = add i32 %add.i.i8.i, %call.i.i6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i.i9.i)
  %cmp29.i = icmp slt i32 %cond.i.i9.i, 1
  br i1 %cmp29.i, label %xs_read_bvec.exit.i.sock_err.i_crit_edge, label %if.end31.i

xs_read_bvec.exit.i.sock_err.i_crit_edge:         ; preds = %xs_read_bvec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_err.i

if.end31.i:                                       ; preds = %xs_read_bvec.exit.i
  %52 = ptrtoint ptr %bvec.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bvec.i, align 4
  %54 = ptrtoint ptr %page_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_base.i, align 4
  %add34.i = add i32 %55, %seek.addr.0.i
  %and.i10.i = and i32 %add34.i, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i9.i, i32 %and.i10.i)
  %cmp.i.i.i = icmp ult i32 %cond.i.i9.i, %and.i10.i
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end38.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end31.i
  %.b1.i.i.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.xs_flush_bvec.exit.i_crit_edge, label %if.then.i.i11.i, !prof !432

land.rhs.i.i.i.xs_flush_bvec.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_flush_bvec.exit.i

if.then.i.i11.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.53) #11
  br label %xs_flush_bvec.exit.i

if.end38.i.i.i:                                   ; preds = %if.end31.i
  %sub.i.i.i = sub i32 %cond.i.i9.i, %and.i10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool40.not3.i.i.i = icmp eq i32 %and.i10.i, 0
  br i1 %tobool40.not3.i.i.i, label %if.end38.i.i.i.bvec_iter_advance.exit.i.i_crit_edge, label %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge

if.end38.i.i.i.land.rhs41.i.i.i_crit_edge:        ; preds = %if.end38.i.i.i
  br label %land.rhs41.i.i.i

if.end38.i.i.i.bvec_iter_advance.exit.i.i_crit_edge: ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bvec_iter_advance.exit.i.i

land.rhs41.i.i.i:                                 ; preds = %while.body.i.i.i.land.rhs41.i.i.i_crit_edge, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge
  %bytes.addr.05.i.i.i = phi i32 [ %sub46.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %and.i10.i, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %idx.04.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ 0, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %53, i32 %idx.04.i.i.i, i32 1
  %56 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i.i, i32 %57)
  %cmp42.not.i.i.i = icmp ult i32 %bytes.addr.05.i.i.i, %57
  br i1 %cmp42.not.i.i.i, label %land.rhs41.i.i.i.bvec_iter_advance.exit.i.i_crit_edge, label %while.body.i.i.i

land.rhs41.i.i.i.bvec_iter_advance.exit.i.i_crit_edge: ; preds = %land.rhs41.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bvec_iter_advance.exit.i.i

while.body.i.i.i:                                 ; preds = %land.rhs41.i.i.i
  %sub46.i.i.i = sub i32 %bytes.addr.05.i.i.i, %57
  %inc.i.i.i = add i32 %idx.04.i.i.i, 1
  %tobool40.not.i.i.i = icmp eq i32 %sub46.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %while.body.i.i.i.bvec_iter_advance.exit.i.i_crit_edge, label %while.body.i.i.i.land.rhs41.i.i.i_crit_edge

while.body.i.i.i.land.rhs41.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs41.i.i.i

while.body.i.i.i.bvec_iter_advance.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bvec_iter_advance.exit.i.i

bvec_iter_advance.exit.i.i:                       ; preds = %while.body.i.i.i.bvec_iter_advance.exit.i.i_crit_edge, %land.rhs41.i.i.i.bvec_iter_advance.exit.i.i_crit_edge, %if.end38.i.i.i.bvec_iter_advance.exit.i.i_crit_edge
  %bi.sroa.12.0.i.i = phi i32 [ 0, %if.end38.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ], [ %inc.i.i.i, %while.body.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ], [ %idx.04.i.i.i, %land.rhs41.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ]
  %bi.sroa.19.0.i.i = phi i32 [ 0, %if.end38.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ], [ 0, %while.body.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ], [ %bytes.addr.05.i.i.i, %land.rhs41.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not65.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not65.i.i, label %bvec_iter_advance.exit.i.i.xs_flush_bvec.exit.i_crit_edge, label %bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge

bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %bvec_iter_advance.exit.i.i
  br label %land.rhs.i.i

bvec_iter_advance.exit.i.i.xs_flush_bvec.exit.i_crit_edge: ; preds = %bvec_iter_advance.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_flush_bvec.exit.i

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.land.rhs.i.i_crit_edge, %bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge
  %bi.sroa.19.168.i.i = phi i32 [ %spec.select64.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %bi.sroa.19.0.i.i, %bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge ]
  %bi.sroa.12.167.i.i = phi i32 [ %spec.select.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %bi.sroa.12.0.i.i, %bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge ]
  %bi.sroa.4.166.i.i = phi i32 [ %sub.i50.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %sub.i.i.i, %bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i12.i = getelementptr %struct.bio_vec, ptr %53, i32 %bi.sroa.12.167.i.i
  %58 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i12.i, align 4
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %53, i32 %bi.sroa.12.167.i.i, i32 2
  %60 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bv_offset.i.i, align 4
  %add.i13.i = add i32 %61, %bi.sroa.19.168.i.i
  %div41.i.i = lshr i32 %add.i13.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %59, i32 %div41.i.i
  %bv_len8.i.i = getelementptr %struct.bio_vec, ptr %53, i32 %bi.sroa.12.167.i.i, i32 1
  %62 = ptrtoint ptr %bv_len8.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bv_len8.i.i, align 4
  %sub.i14.i = sub i32 %63, %bi.sroa.19.168.i.i
  %64 = tail call i32 @llvm.umin.i32(i32 %bi.sroa.4.166.i.i, i32 %sub.i14.i) #11
  %rem.i.i = and i32 %add.i13.i, 4095
  %sub15.i.i = sub nuw nsw i32 4096, %rem.i.i
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 %sub15.i.i) #11
  tail call void @flush_dcache_page(ptr noundef %add.ptr.i.i) #11
  %add.i43.i.i = add i32 %65, %bi.sroa.19.168.i.i
  %66 = ptrtoint ptr %bv_len8.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bv_len8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i43.i.i, i32 %67)
  %cmp.i46.i.i = icmp eq i32 %add.i43.i.i, %67
  %inc.i47.i.i = zext i1 %cmp.i46.i.i to i32
  %spec.select.i.i = add i32 %bi.sroa.12.167.i.i, %inc.i47.i.i
  %spec.select64.i.i = select i1 %cmp.i46.i.i, i32 0, i32 %add.i43.i.i
  %sub.i50.i.i = sub i32 %bi.sroa.4.166.i.i, %65
  %tobool.not.i15.i = icmp eq i32 %sub.i50.i.i, 0
  br i1 %tobool.not.i15.i, label %land.rhs.i.i.xs_flush_bvec.exit.i_crit_edge, label %land.rhs.i.i.land.rhs.i.i_crit_edge

land.rhs.i.i.land.rhs.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

land.rhs.i.i.xs_flush_bvec.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_flush_bvec.exit.i

xs_flush_bvec.exit.i:                             ; preds = %land.rhs.i.i.xs_flush_bvec.exit.i_crit_edge, %bvec_iter_advance.exit.i.i.xs_flush_bvec.exit.i_crit_edge, %if.then.i.i11.i, %land.rhs.i.i.i.xs_flush_bvec.exit.i_crit_edge
  %68 = ptrtoint ptr %page_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %page_base.i, align 4
  %sub36.i = sub i32 %cond.i.i9.i, %69
  %add37.i = add i32 %sub36.i, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add37.i, i32 %add)
  %cmp38.i = icmp eq i32 %add37.i, %add
  br i1 %cmp38.i, label %xs_flush_bvec.exit.i.xs_read_xdr_buf.exit_crit_edge, label %lor.lhs.false39.i

xs_flush_bvec.exit.i.xs_read_xdr_buf.exit_crit_edge: ; preds = %xs_flush_bvec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_xdr_buf.exit

lor.lhs.false39.i:                                ; preds = %xs_flush_bvec.exit.i
  %msg_flags40.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %70 = ptrtoint ptr %msg_flags40.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_flags40.i, align 4
  %and41.i = and i32 %71, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36.i, i32 %retval.0.i.i)
  %cmp45.not.i = icmp eq i32 %sub36.i, %retval.0.i.i
  %or.cond1.i = select i1 %tobool42.not.i, i1 %cmp45.not.i, i1 false
  br i1 %or.cond1.i, label %lor.lhs.false39.i.if.end51.i_crit_edge, label %lor.lhs.false39.i.xs_read_xdr_buf.exit_crit_edge

lor.lhs.false39.i.xs_read_xdr_buf.exit_crit_edge: ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_xdr_buf.exit

lor.lhs.false39.i.if.end51.i_crit_edge:           ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.else48.i:                                      ; preds = %xs_alloc_sparse_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub49.i = sub i32 %seek.addr.0.i, %retval.0.i.i
  %add50.i = add i32 %retval.0.i.i, %22
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else48.i, %lor.lhs.false39.i.if.end51.i_crit_edge
  %offset.1.i = phi i32 [ %add50.i, %if.else48.i ], [ %add37.i, %lor.lhs.false39.i.if.end51.i_crit_edge ]
  %seek.addr.1.i = phi i32 [ %sub49.i, %if.else48.i ], [ 0, %lor.lhs.false39.i.if.end51.i_crit_edge ]
  %sub52.i = sub i32 %add, %offset.1.i
  %iov_len54.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %iov_len54.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %iov_len54.i, align 4
  %74 = tail call i32 @llvm.umin.i32(i32 %sub52.i, i32 %73) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %seek.addr.1.i, i32 %74)
  %cmp61.i = icmp ult i32 %seek.addr.1.i, %74
  br i1 %cmp61.i, label %if.then62.i, label %if.else80.i

if.then62.i:                                      ; preds = %if.end51.i
  %tail.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 1
  %msg_iter.i16.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  tail call void @iov_iter_kvec(ptr noundef %msg_iter.i16.i, i32 noundef 0, ptr noundef %tail.i, i32 noundef 1, i32 noundef %74) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seek.addr.1.i)
  %cmp.not.i.i17.i = icmp eq i32 %seek.addr.1.i, 0
  br i1 %cmp.not.i.i17.i, label %if.then62.i.xs_read_kvec.exit23.i_crit_edge, label %if.then.i.i18.i

if.then62.i.xs_read_kvec.exit23.i_crit_edge:      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_kvec.exit23.i

if.then.i.i18.i:                                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iov_iter_advance(ptr noundef %msg_iter.i16.i, i32 noundef %seek.addr.1.i) #11
  br label %xs_read_kvec.exit23.i

xs_read_kvec.exit23.i:                            ; preds = %if.then.i.i18.i, %if.then62.i.xs_read_kvec.exit23.i_crit_edge
  %call.i.i19.i = tail call i32 @sock_recvmsg(ptr noundef %17, ptr noundef %msg, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19.i)
  %cmp1.i.i20.i = icmp sgt i32 %call.i.i19.i, 0
  %add.i.i21.i = select i1 %cmp1.i.i20.i, i32 %seek.addr.1.i, i32 0
  %cond.i.i22.i = add i32 %add.i.i21.i, %call.i.i19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i.i22.i)
  %cmp66.i = icmp slt i32 %cond.i.i22.i, 1
  br i1 %cmp66.i, label %xs_read_kvec.exit23.i.sock_err.i_crit_edge, label %if.end68.i

xs_read_kvec.exit23.i.sock_err.i_crit_edge:       ; preds = %xs_read_kvec.exit23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_err.i

if.end68.i:                                       ; preds = %xs_read_kvec.exit23.i
  %add69.i = add i32 %cond.i.i22.i, %offset.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add69.i, i32 %add)
  %cmp70.i = icmp eq i32 %add69.i, %add
  br i1 %cmp70.i, label %if.end68.i.xs_read_xdr_buf.exit_crit_edge, label %lor.lhs.false71.i

if.end68.i.xs_read_xdr_buf.exit_crit_edge:        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_xdr_buf.exit

lor.lhs.false71.i:                                ; preds = %if.end68.i
  %msg_flags72.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %75 = ptrtoint ptr %msg_flags72.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_flags72.i, align 4
  %and73.i = and i32 %76, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i22.i, i32 %74)
  %cmp77.not.i = icmp eq i32 %cond.i.i22.i, %74
  %or.cond2.i = select i1 %tobool74.not.i, i1 %cmp77.not.i, i1 false
  br i1 %or.cond2.i, label %lor.lhs.false71.i.if.end84.i_crit_edge, label %lor.lhs.false71.i.xs_read_xdr_buf.exit_crit_edge

lor.lhs.false71.i.xs_read_xdr_buf.exit_crit_edge: ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_read_xdr_buf.exit

lor.lhs.false71.i.if.end84.i_crit_edge:           ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84.i

if.else80.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = tail call i32 @llvm.umax.i32(i32 %offset.1.i, i32 %19) #11
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.else80.i, %lor.lhs.false71.i.if.end84.i_crit_edge
  %offset.2.i = phi i32 [ %add69.i, %lor.lhs.false71.i.if.end84.i_crit_edge ], [ %77, %if.else80.i ]
  br label %xs_read_xdr_buf.exit

sock_err.i:                                       ; preds = %xs_read_kvec.exit23.i.sock_err.i_crit_edge, %xs_read_bvec.exit.i.sock_err.i_crit_edge, %xs_read_kvec.exit.i.sock_err.i_crit_edge
  %offset.4.i = phi i32 [ 0, %xs_read_kvec.exit.i.sock_err.i_crit_edge ], [ %22, %xs_read_bvec.exit.i.sock_err.i_crit_edge ], [ %offset.1.i, %xs_read_kvec.exit23.i.sock_err.i_crit_edge ]
  %ret.1.i = phi i32 [ %cond.i.i.i, %xs_read_kvec.exit.i.sock_err.i_crit_edge ], [ %cond.i.i9.i, %xs_read_bvec.exit.i.sock_err.i_crit_edge ], [ %cond.i.i22.i, %xs_read_kvec.exit23.i.sock_err.i_crit_edge ]
  %seek.addr.2.i = phi i32 [ %19, %xs_read_kvec.exit.i.sock_err.i_crit_edge ], [ %seek.addr.0.i, %xs_read_bvec.exit.i.sock_err.i_crit_edge ], [ %seek.addr.1.i, %xs_read_kvec.exit23.i.sock_err.i_crit_edge ]
  %add86.i = add i32 %seek.addr.2.i, %offset.4.i
  br label %xs_read_xdr_buf.exit

xs_read_xdr_buf.exit:                             ; preds = %sock_err.i, %if.end84.i, %lor.lhs.false71.i.xs_read_xdr_buf.exit_crit_edge, %if.end68.i.xs_read_xdr_buf.exit_crit_edge, %lor.lhs.false39.i.xs_read_xdr_buf.exit_crit_edge, %xs_flush_bvec.exit.i.xs_read_xdr_buf.exit_crit_edge, %lor.lhs.false.i.xs_read_xdr_buf.exit_crit_edge, %if.end.i3.xs_read_xdr_buf.exit_crit_edge
  %offset.3.i = phi i32 [ %add86.i, %sock_err.i ], [ %add, %if.end.i3.xs_read_xdr_buf.exit_crit_edge ], [ %cond.i.i.i, %lor.lhs.false.i.xs_read_xdr_buf.exit_crit_edge ], [ %add, %xs_flush_bvec.exit.i.xs_read_xdr_buf.exit_crit_edge ], [ %add37.i, %lor.lhs.false39.i.xs_read_xdr_buf.exit_crit_edge ], [ %add, %if.end68.i.xs_read_xdr_buf.exit_crit_edge ], [ %add69.i, %lor.lhs.false71.i.xs_read_xdr_buf.exit_crit_edge ], [ %offset.2.i, %if.end84.i ]
  %ret.0.i = phi i32 [ %ret.1.i, %sock_err.i ], [ %add, %if.end.i3.xs_read_xdr_buf.exit_crit_edge ], [ %cond.i.i.i, %lor.lhs.false.i.xs_read_xdr_buf.exit_crit_edge ], [ %sub36.i, %xs_flush_bvec.exit.i.xs_read_xdr_buf.exit_crit_edge ], [ %sub36.i, %lor.lhs.false39.i.xs_read_xdr_buf.exit_crit_edge ], [ %cond.i.i22.i, %if.end68.i.xs_read_xdr_buf.exit_crit_edge ], [ %cond.i.i22.i, %lor.lhs.false71.i.xs_read_xdr_buf.exit_crit_edge ], [ -90, %if.end84.i ]
  %sub85.i = sub i32 %offset.3.i, %19
  %78 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset, align 4
  %add7 = add i32 %79, %sub85.i
  store i32 %add7, ptr %offset, align 4
  %80 = ptrtoint ptr %copied.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %copied.i, align 4
  %add10 = add i32 %81, %sub85.i
  store i32 %add10, ptr %copied.i, align 4
  br label %if.end

if.end:                                           ; preds = %xs_read_xdr_buf.exit, %xs_read_header.exit.if.end_crit_edge
  %read.0 = phi i32 [ -1, %xs_read_header.exit.if.end_crit_edge ], [ %sub85.i, %xs_read_xdr_buf.exit ]
  %ret.0 = phi i32 [ -1, %xs_read_header.exit.if.end_crit_edge ], [ %ret.0.i, %xs_read_xdr_buf.exit ]
  %82 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset, align 4
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp15 = icmp eq i32 %83, %85
  br i1 %cmp15, label %if.then16, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then16:                                        ; preds = %if.end
  %recv.i.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 4
  %86 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %recv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.i.i = icmp slt i32 %87, 0
  br i1 %tobool.i.i, label %if.then.i6, label %if.then16.if.end17_crit_edge

if.then16.if.end17_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then.i6:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %msg_flags.i5 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %88 = ptrtoint ptr %msg_flags.i5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_flags.i5, align 4
  %or.i = or i32 %89, 128
  store i32 %or.i, ptr %msg_flags.i5, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then.i6, %if.then16.if.end17_crit_edge, %if.end.if.end17_crit_edge
  br i1 %cmp.not, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %90 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %ret.0, label %sw.epilog [
    i32 -14, label %if.end20.sw.bb_crit_edge
    i32 -90, label %if.end20.sw.bb_crit_edge16
    i32 0, label %if.end20.cleanup_crit_edge
  ]

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20.sw.bb_crit_edge16:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end20.sw.bb_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end20.sw.bb_crit_edge, %if.end20.sw.bb_crit_edge16
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %91 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_flags, align 4
  %or = or i32 %92, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp22 = icmp slt i32 %ret.0, 0
  %spec.select = select i1 %cmp22, i32 %ret.0, i32 %read.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %if.end20.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %read.0, %sw.bb ], [ 0, %if.end17.cleanup_crit_edge ], [ -108, %if.end20.cleanup_crit_edge ], [ %spec.select, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_complete_bc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_pagecount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_lookup_rqst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_pin_rqst(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_complete_rqst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_unpin_rqst(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_discard(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xs_stream_read_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xs_stream_read_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_force_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_write_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wake_pending_tasks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xs_format_common_peer_ports(ptr nocapture noundef %xprt) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %1 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr.i, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.166)
  switch i16 %2, label %entry.rpc_get_port.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

entry.rpc_get_port.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpc_get_port.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr.i, i32 0, i32 1
  br label %return.sink.split.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr.i, i32 0, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %4 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sin6_port.sink.i, align 2
  %phi.cast = zext i16 %5 to i32
  br label %rpc_get_port.exit

rpc_get_port.exit:                                ; preds = %return.sink.split.i, %entry.rpc_get_port.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.rpc_get_port.exit_crit_edge ], [ %phi.cast, %return.sink.split.i ]
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i)
  %call4 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 3264) #11
  %arrayidx = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.167)
  switch i16 %8, label %rpc_get_port.exit.rpc_get_port.exit23_crit_edge [
    i16 2, label %sw.bb.i17
    i16 10, label %sw.bb1.i19
  ]

rpc_get_port.exit.rpc_get_port.exit23_crit_edge:  ; preds = %rpc_get_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpc_get_port.exit23

sw.bb.i17:                                        ; preds = %rpc_get_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sin_port.i16 = getelementptr inbounds %struct.sockaddr_in, ptr %addr.i, i32 0, i32 1
  br label %return.sink.split.i21

sw.bb1.i19:                                       ; preds = %rpc_get_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_port.i18 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr.i, i32 0, i32 1
  br label %return.sink.split.i21

return.sink.split.i21:                            ; preds = %sw.bb1.i19, %sw.bb.i17
  %sin6_port.sink.i20 = phi ptr [ %sin6_port.i18, %sw.bb1.i19 ], [ %sin_port.i16, %sw.bb.i17 ]
  %10 = ptrtoint ptr %sin6_port.sink.i20 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sin6_port.sink.i20, align 2
  %phi.cast24 = zext i16 %11 to i32
  br label %rpc_get_port.exit23

rpc_get_port.exit23:                              ; preds = %return.sink.split.i21, %rpc_get_port.exit.rpc_get_port.exit23_crit_edge
  %retval.0.i22 = phi i32 [ 0, %rpc_get_port.exit.rpc_get_port.exit23_crit_edge ], [ %phi.cast24, %return.sink.split.i21 ]
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.57, i32 noundef %retval.0.i22)
  %call10 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 3264) #11
  %arrayidx12 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 4
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %arrayidx12, align 8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #11
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xs_reclassify_socket(i32 noundef %family, ptr nocapture noundef readonly %sock) unnamed_addr #5 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %sock_allow_reclassification.exit, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

sock_allow_reclassification.exit:                 ; preds = %entry
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %4 = ptrtoint ptr %sk_lock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %sk_lock.i, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.i.not.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.i.not.i, label %if.end38.critedge, label %sock_allow_reclassification.exit.land.rhs_crit_edge

sock_allow_reclassification.exit.land.rhs_crit_edge: ; preds = %sock_allow_reclassification.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.rhs:                                         ; preds = %sock_allow_reclassification.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b46 = load i1, ptr @xs_reclassify_socket.__already_done, align 1
  br i1 %.b46, label %land.rhs.sw.epilog_crit_edge, label %if.then, !prof !432

land.rhs.sw.epilog_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xs_reclassify_socket.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1757, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

if.end38.critedge:                                ; preds = %sock_allow_reclassification.exit
  %6 = zext i32 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %family, label %if.end38.critedge.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb39
    i32 10, label %sw.bb40
  ]

if.end38.critedge.sw.epilog_crit_edge:            ; preds = %if.end38.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end38.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %owned.i.i, align 4
  %wq.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wq.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @xs_reclassify_socketu.__key) #11
  tail call void @__raw_spin_lock_init(ptr noundef %sk_lock.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @xs_reclassify_socketu.__key.76, i16 noundef signext 3) #11
  tail call void @debug_check_no_locks_freed(ptr noundef %sk_lock.i, i32 noundef 128) #11
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @xs_slock_key, i32 noundef 0, i8 noundef zeroext %9, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %dep_map18.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %dep_map18.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @xs_key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end38.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %owned.i.i, align 4
  %wq.i52 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wq.i52, ptr noundef nonnull @.str.75, ptr noundef nonnull @xs_reclassify_socket4.__key) #11
  tail call void @__raw_spin_lock_init(ptr noundef %sk_lock.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @xs_reclassify_socket4.__key.80, i16 noundef signext 3) #11
  tail call void @debug_check_no_locks_freed(ptr noundef %sk_lock.i, i32 noundef 128) #11
  %dep_map.i53 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %wait_type_inner.i54 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %wait_type_inner.i54 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wait_type_inner.i54, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i53, ptr noundef nonnull @.str.81, ptr noundef getelementptr inbounds ([3 x %struct.lock_class_key], ptr @xs_slock_key, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext %12, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %dep_map18.i55 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %dep_map18.i55, ptr noundef nonnull @.str.82, ptr noundef getelementptr inbounds ([3 x %struct.lock_class_key], ptr @xs_key, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end38.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %owned.i.i, align 4
  %wq.i59 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wq.i59, ptr noundef nonnull @.str.75, ptr noundef nonnull @xs_reclassify_socket6.__key) #11
  tail call void @__raw_spin_lock_init(ptr noundef %sk_lock.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @xs_reclassify_socket6.__key.83, i16 noundef signext 3) #11
  tail call void @debug_check_no_locks_freed(ptr noundef %sk_lock.i, i32 noundef 128) #11
  %dep_map.i60 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %wait_type_inner.i61 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %wait_type_inner.i61 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wait_type_inner.i61, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i60, ptr noundef nonnull @.str.84, ptr noundef getelementptr inbounds ([3 x %struct.lock_class_key], ptr @xs_slock_key, i32 0, i32 2), i32 noundef 0, i8 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %dep_map18.i62 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %dep_map18.i62, ptr noundef nonnull @.str.85, ptr noundef getelementptr inbounds ([3 x %struct.lock_class_key], ptr @xs_key, i32 0, i32 2), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %sw.bb39, %sw.bb, %if.end38.critedge.sw.epilog_crit_edge, %if.then, %land.rhs.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_file(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpc_socket_connect(ptr noundef %xprt, ptr noundef %socket, i32 noundef %error) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_connect, i32 0, i32 1), ptr blockaddress(@trace_rpc_socket_connect, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !449

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !432

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !462
  %call42 = tail call i32 @__traceiter_rpc_socket_connect(ptr noundef null, ptr noundef %xprt, ptr noundef %socket, i32 noundef %error) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !463
  %13 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !432

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_connect, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_connect, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpc_socket_connect.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_rpc_socket_connect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 920, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !453
  %31 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !432

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %1 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk_user_data.i, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %do.end5.if.end18_crit_edge, label %if.then7

do.end5.if.end18_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then7:                                         ; preds = %do.end5
  %old_data_ready = getelementptr inbounds %struct.sock_xprt, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %old_data_ready to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %old_data_ready, align 8
  tail call void %4(ptr noundef %sk) #11
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 24
  %5 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reestablish_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %reestablish_timeout, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge
  %sock_state = getelementptr inbounds %struct.sock_xprt, ptr %2, i32 0, i32 6
  %call13 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %sock_state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %8 = load ptr, ptr @xprtiod_workqueue, align 4
  %recv_worker = getelementptr inbounds %struct.sock_xprt, ptr %2, i32 0, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %recv_worker) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge, %do.end5.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_udp_write_space(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %2 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %shr.i = ashr i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %shr.i)
  %cmp.i = icmp ult i32 %1, %shr.i
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @xs_write_space(ptr noundef %sk)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_error_report(ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %2 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_err, align 4
  %sub = sub i32 0, %3
  %xprt_err = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %xprt_err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %xprt_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %5 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end15_crit_edge, label %do.end, !prof !432

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull %1, i32 noundef %3) #14
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %6 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_socket, align 8
  %8 = ptrtoint ptr %xprt_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xprt_err, align 8
  tail call fastcc void @trace_rpc_socket_error(ptr noundef nonnull %1, ptr noundef %7, i32 noundef %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !464
  %sock_state.i = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 4, ptr noundef %sock_state.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %10 = load ptr, ptr @xprtiod_workqueue, align 4
  %error_worker.i = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %error_worker.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xs_write_space(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %0 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_user_data.i, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end7, !prof !440

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !447
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  %8 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 8
  %call10 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end19_crit_edge

rcu_read_lock.exit.do.end19_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b34 = load i1, ptr @xs_write_space.__warned, align 1
  br i1 %.b34, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xs_write_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1485, ptr noundef nonnull @.str.37) #11
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %rcu_read_lock.exit.do.end19_crit_edge
  %tobool21.not = icmp eq ptr %10, null
  br i1 %tobool21.not, label %do.end19.out_crit_edge, label %lor.lhs.false

do.end19.out_crit_edge:                           ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %do.end19
  %flags22 = getelementptr inbounds %struct.socket_wq, ptr %10, i32 0, i32 2
  %call23 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp eq i32 %call23, 0
  br i1 %cmp, label %lor.lhs.false.out_crit_edge, label %if.end25

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end25:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %sock_state.i = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 5, ptr noundef %sock_state.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %11 = load ptr, ptr @xprtiod_workqueue, align 4
  %error_worker.i = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %error_worker.i) #11
  %sk_write_pending = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 28
  %12 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_write_pending, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %sk_write_pending, align 4
  br label %out

out:                                              ; preds = %if.end25, %lor.lhs.false.out_crit_edge, %do.end19.out_crit_edge
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i35, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %out
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !448
  %14 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i.i42 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpc_socket_error(ptr noundef %xprt, ptr noundef %socket, i32 noundef %error) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_error, i32 0, i32 1), ptr blockaddress(@trace_rpc_socket_error, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !449

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !432

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !465
  %call42 = tail call i32 @__traceiter_rpc_socket_error(ptr noundef null, ptr noundef %xprt, ptr noundef %socket, i32 noundef %error) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !466
  %13 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !432

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpc_socket_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_rpc_socket_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 921, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !453
  %31 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
declare dso_local i32 @__traceiter_rpc_socket_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_socket_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xs_setup_udp(ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dstaddr = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 3
  %0 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dstaddr, align 4
  %2 = load i32, ptr @xprt_udp_slot_table_entries, align 4
  %call = tail call fastcc ptr @xs_setup_xprt(ptr noundef %args, i32 noundef %2, i32 noundef %2)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %prot = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %prot to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17, ptr %prot, align 4
  %xprt_class = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 54
  %4 = ptrtoint ptr %xprt_class to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xs_udp_transport, ptr %xprt_class, align 4
  %max_payload = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %max_payload to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64128, ptr %max_payload, align 8
  %bind_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 23
  %6 = ptrtoint ptr %bind_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6000, ptr %bind_timeout, align 8
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 24
  %7 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 200, ptr %reestablish_timeout, align 4
  %idle_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 29
  %8 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 30000, ptr %idle_timeout, align 4
  %ops = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xs_udp_ops, ptr %ops, align 4
  %timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xs_udp_default_timeout, ptr %timeout, align 4
  %recv_worker = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9
  tail call void @__init_work(ptr noundef %recv_worker, i32 noundef 0) #11
  %11 = ptrtoint ptr %recv_worker to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %recv_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @xs_setup_udp.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry5 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @xs_udp_data_receive_workfn, ptr %func, align 4
  %error_worker = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8
  tail call void @__init_work(ptr noundef %error_worker, i32 noundef 0) #11
  %15 = ptrtoint ptr %error_worker to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %error_worker, align 8
  %lockdep_map13 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map13, ptr noundef nonnull @.str.11, ptr noundef nonnull @xs_setup_udp.__key.93, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry15 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i144 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i144 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry15, ptr %prev.i144, align 4
  %func17 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %func17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xs_error_handle, ptr %func17, align 4
  %connect_worker = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7
  tail call void @__init_work(ptr noundef %connect_worker, i32 noundef 0) #11
  %19 = ptrtoint ptr %connect_worker to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %connect_worker, align 4
  %lockdep_map29 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map29, ptr noundef nonnull @.str.13, ptr noundef nonnull @xs_setup_udp.__key.94, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry32 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i145 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i145 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry32, ptr %prev.i145, align 4
  %func35 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 2
  %22 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xs_udp_setup_socket, ptr %func35, align 4
  %timer = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @xs_setup_udp.__key.95) #11
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 2
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.169)
  switch i16 %24, label %if.end.out_err_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb48
  ]

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

sw.bb:                                            ; preds = %if.end
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sin_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.not = icmp eq i16 %27, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sin6_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp50.not = icmp eq i16 %29, 0
  br i1 %cmp50.not, label %sw.bb48.sw.epilog_crit_edge, label %sw.bb48.sw.epilog.sink.split_crit_edge

sw.bb48.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb48.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.str.91.sink.ph = phi ptr [ @.str.90, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @.str.91, %sw.bb48.sw.epilog.sink.split_crit_edge ]
  %state.i146 = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 18
  %call.i147 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i146) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb48.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.str.91.sink = phi ptr [ @.str.90, %sw.bb.sw.epilog_crit_edge ], [ @.str.91, %sw.bb48.sw.epilog_crit_edge ], [ %.str.91.sink.ph, %sw.epilog.sink.split ]
  tail call fastcc void @xs_format_peer_addresses(ptr noundef %call, ptr noundef nonnull @.str.90, ptr noundef nonnull %.str.91.sink)
  %state.i148 = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 18
  %30 = ptrtoint ptr %state.i148 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i148, align 4
  %32 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %33 = load i32, ptr @rpc_debug, align 4
  %and75 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool.not, label %do.body74, label %do.body57

do.body57:                                        ; preds = %sw.epilog
  br i1 %tobool76.not, label %do.body57.if.end96_crit_edge, label %do.end64, !prof !432

do.body57.if.end96_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

do.end64:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 51
  %34 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %address_strings, align 8
  %arrayidx67 = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 1
  %36 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx67, align 4
  %arrayidx69 = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 2
  %38 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx69, align 8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %35, ptr noundef %37, ptr noundef %39) #14
  br label %if.end96

do.body74:                                        ; preds = %sw.epilog
  br i1 %tobool76.not, label %do.body74.if.end96_crit_edge, label %do.end86, !prof !432

do.body74.if.end96_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

do.end86:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings88 = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 51
  %40 = ptrtoint ptr %address_strings88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %address_strings88, align 8
  %arrayidx91 = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 2
  %42 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx91, align 8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %41, ptr noundef %43) #14
  br label %if.end96

if.end96:                                         ; preds = %do.end86, %do.body74.if.end96_crit_edge, %do.end64, %do.body57.if.end96_crit_edge
  %call97 = tail call zeroext i1 @try_module_get(ptr noundef null) #11
  br i1 %call97, label %if.end96.cleanup_crit_edge, label %if.end96.out_err_crit_edge

if.end96.out_err_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_err:                                          ; preds = %if.end96.out_err_crit_edge, %if.end.out_err_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -97 to ptr), %if.end.out_err_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end96.out_err_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 0
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %45) #11
  %arrayidx.1.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 1
  %46 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.1.i.i, align 4
  tail call void @kfree(ptr noundef %47) #11
  %arrayidx.3.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 3
  %48 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.3.i.i, align 4
  tail call void @kfree(ptr noundef %49) #11
  %arrayidx.4.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 4
  %50 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.4.i.i, align 4
  tail call void @kfree(ptr noundef %51) #11
  tail call void @xprt_free(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end96.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %out_err ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end96.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_udp_data_receive_workfn(ptr noundef %work) #0 align 64 {
entry:
  %_xid.i.i = alloca i32, align 4
  %off.i.i = alloca i32, align 4
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1668
  %0 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i, align 4
  %or.i = or i32 %5, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #11
  %6 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %err.i, align 4, !annotation !437
  %recv_mutex.i = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %recv_mutex.i, i32 noundef 0) #11
  %inet.i = getelementptr i8, ptr %work, i32 -184
  %7 = ptrtoint ptr %inet.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inet.i, align 4
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %entry.xs_udp_data_receive.exit_crit_edge, label %for.cond.preheader.i

entry.xs_udp_data_receive.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_udp_data_receive.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off.i.i) #11
  %9 = ptrtoint ptr %off.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %off.i.i, align 4
  %call.i18.i = call ptr @__skb_recv_udp(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %off.i.i, ptr noundef nonnull %err.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off.i.i) #11
  %cmp119.i = icmp eq ptr %call.i18.i, null
  br i1 %cmp119.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %if.end3.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end3.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %queue_lock.i.i = getelementptr i8, ptr %work, i32 -448
  %skc_family.i.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 3
  %sk_protocol.i.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 46
  %skc_net.i.i.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 9
  %transport_lock.i.i = getelementptr i8, ptr %work, i32 -536
  br label %if.end3.i

if.end3.i:                                        ; preds = %xs_udp_data_read_skb.exit.i.if.end3.i_crit_edge, %if.end3.lr.ph.i
  %call.i20.i = phi ptr [ %call.i18.i, %if.end3.lr.ph.i ], [ %call.i.i, %xs_udp_data_read_skb.exit.i.if.end3.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_xid.i.i) #11
  %10 = ptrtoint ptr %_xid.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %_xid.i.i, align 4, !annotation !437
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i20.i, i32 0, i32 6
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp.i.i = icmp slt i32 %12, 4
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end7.i.i

do.body.i.i:                                      ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %13 = load i32, ptr @rpc_debug, align 4
  %and.i.i1 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1)
  %tobool.not.i.i = icmp eq i32 %and.i.i1, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.xs_udp_data_read_skb.exit.i_crit_edge, label %do.end.i.i, !prof !432

do.body.i.i.xs_udp_data_read_skb.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_udp_data_read_skb.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %12) #14
  br label %xs_udp_data_read_skb.exit.i

if.end7.i.i:                                      ; preds = %if.end3.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i20.i, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %12, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %skb_header_pointer.exit.i.i, label %lor.lhs.false.i.i.i.i, !prof !432

lor.lhs.false.i.i.i.i:                            ; preds = %if.end7.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %call.i20.i, i32 noundef 0, ptr noundef nonnull %_xid.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.xs_udp_data_read_skb.exit.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end11.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end11.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

lor.lhs.false.i.i.i.i.xs_udp_data_read_skb.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_udp_data_read_skb.exit.i

skb_header_pointer.exit.i.i:                      ; preds = %if.end7.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i20.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  %cmp9.i.i = icmp eq ptr %17, null
  br i1 %cmp9.i.i, label %skb_header_pointer.exit.i.i.xs_udp_data_read_skb.exit.i_crit_edge, label %skb_header_pointer.exit.i.i.if.end11.i.i_crit_edge

skb_header_pointer.exit.i.i.if.end11.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

skb_header_pointer.exit.i.i.xs_udp_data_read_skb.exit.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_udp_data_read_skb.exit.i

if.end11.i.i:                                     ; preds = %skb_header_pointer.exit.i.i.if.end11.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end11.i.i_crit_edge
  %retval.0.i.i189.i.i = phi ptr [ %17, %skb_header_pointer.exit.i.i.if.end11.i.i_crit_edge ], [ %_xid.i.i, %lor.lhs.false.i.i.i.i.if.end11.i.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %queue_lock.i.i) #11
  %18 = ptrtoint ptr %retval.0.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retval.0.i.i189.i.i, align 4
  %call12.i.i = call ptr @xprt_lookup_rqst(ptr noundef %add.ptr, i32 noundef %19) #11
  %tobool13.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool13.not.i.i, label %if.end11.i.i.out_unlock.i.i_crit_edge, label %if.end15.i.i

if.end11.i.i.out_unlock.i.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i.i

if.end15.i.i:                                     ; preds = %if.end11.i.i
  call void @xprt_pin_rqst(ptr noundef nonnull %call12.i.i) #11
  %rq_task.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call12.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %rq_task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rq_task.i.i, align 4
  call void @xprt_update_rtt(ptr noundef %21) #11
  call void @_raw_spin_unlock(ptr noundef %queue_lock.i.i) #11
  %22 = ptrtoint ptr %rq_task.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rq_task.i.i, align 4
  %rq_private_buf.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call12.i.i, i32 0, i32 20
  %buflen.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %call12.i.i, i32 0, i32 20, i32 7
  %24 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buflen.i.i, align 4
  %call22.i.i = call i32 @csum_partial_copy_to_xdr(ptr noundef %rq_private_buf.i.i, ptr noundef nonnull %call.i20.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end69.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end15.i.i
  call void @_raw_spin_lock(ptr noundef %queue_lock.i.i) #11
  %26 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %skc_family.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %27)
  %cmp37.i.i = icmp eq i16 %27, 2
  %28 = ptrtoint ptr %sk_protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sk_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %29)
  %cmp40.i.i = icmp eq i16 %29, 136
  %30 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_net.i.i.i, align 4
  br i1 %cmp37.i.i, label %cond.true.i.i, label %cond.false46.i.i

cond.true.i.i:                                    ; preds = %if.then24.i.i
  br i1 %cmp40.i.i, label %cond.true42.i.i, label %cond.false.i.i

cond.true42.i.i:                                  ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %udplite_statistics.i.i = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 30, i32 9
  br label %out_unpin.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %udp_statistics.i.i = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 30, i32 4
  br label %out_unpin.i.i

cond.false46.i.i:                                 ; preds = %if.then24.i.i
  br i1 %cmp40.i.i, label %cond.true51.i.i, label %cond.false54.i.i

cond.true51.i.i:                                  ; preds = %cond.false46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %udplite_stats_in6.i.i = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 30, i32 10
  br label %out_unpin.i.i

cond.false54.i.i:                                 ; preds = %cond.false46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %udp_stats_in6.i.i = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 30, i32 5
  br label %out_unpin.i.i

if.end69.i.i:                                     ; preds = %if.end15.i.i
  %32 = call i32 @llvm.smin.i32(i32 %25, i32 %12) #11
  call void @_raw_spin_lock(ptr noundef %transport_lock.i.i) #11
  call void @xprt_adjust_cwnd(ptr noundef %add.ptr, ptr noundef %23, i32 noundef %32) #11
  call void @_raw_spin_unlock(ptr noundef %transport_lock.i.i) #11
  call void @_raw_spin_lock(ptr noundef %queue_lock.i.i) #11
  call void @xprt_complete_rqst(ptr noundef %23, i32 noundef %32) #11
  %33 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %skc_family.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %34)
  %cmp88.i.i = icmp eq i16 %34, 2
  %35 = ptrtoint ptr %sk_protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sk_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %36)
  %cmp93.i.i = icmp eq i16 %36, 136
  %37 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skc_net.i.i.i, align 4
  br i1 %cmp88.i.i, label %cond.true90.i.i, label %cond.false105.i.i

cond.true90.i.i:                                  ; preds = %if.end69.i.i
  br i1 %cmp93.i.i, label %cond.true95.i.i, label %cond.false99.i.i

cond.true95.i.i:                                  ; preds = %cond.true90.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %udplite_statistics98.i.i = getelementptr inbounds %struct.net, ptr %38, i32 0, i32 30, i32 9
  br label %out_unpin.i.i

cond.false99.i.i:                                 ; preds = %cond.true90.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %udp_statistics102.i.i = getelementptr inbounds %struct.net, ptr %38, i32 0, i32 30, i32 4
  br label %out_unpin.i.i

cond.false105.i.i:                                ; preds = %if.end69.i.i
  br i1 %cmp93.i.i, label %cond.true110.i.i, label %cond.false114.i.i

cond.true110.i.i:                                 ; preds = %cond.false105.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %udplite_stats_in6113.i.i = getelementptr inbounds %struct.net, ptr %38, i32 0, i32 30, i32 10
  br label %out_unpin.i.i

cond.false114.i.i:                                ; preds = %cond.false105.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %udp_stats_in6117.i.i = getelementptr inbounds %struct.net, ptr %38, i32 0, i32 30, i32 5
  br label %out_unpin.i.i

out_unpin.i.i:                                    ; preds = %cond.false114.i.i, %cond.true110.i.i, %cond.false99.i.i, %cond.true95.i.i, %cond.false54.i.i, %cond.true51.i.i, %cond.false.i.i, %cond.true42.i.i
  %cond121.in.sink.i.i = phi ptr [ %udplite_statistics.i.i, %cond.true42.i.i ], [ %udp_statistics.i.i, %cond.false.i.i ], [ %udplite_stats_in6.i.i, %cond.true51.i.i ], [ %udp_stats_in6.i.i, %cond.false54.i.i ], [ %udplite_statistics98.i.i, %cond.true95.i.i ], [ %udp_statistics102.i.i, %cond.false99.i.i ], [ %udplite_stats_in6113.i.i, %cond.true110.i.i ], [ %udp_stats_in6117.i.i, %cond.false114.i.i ]
  %.sink.i.i = phi i32 [ 3, %cond.true42.i.i ], [ 3, %cond.false.i.i ], [ 3, %cond.true51.i.i ], [ 3, %cond.false54.i.i ], [ 1, %cond.true95.i.i ], [ 1, %cond.false99.i.i ], [ 1, %cond.true110.i.i ], [ 1, %cond.false114.i.i ]
  %39 = ptrtoint ptr %cond121.in.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %cond121.i.i = load ptr, ptr %cond121.in.sink.i.i, align 4
  %arrayidx123.i.i = getelementptr [10 x i32], ptr %cond121.i.i, i32 0, i32 %.sink.i.i
  %40 = ptrtoint ptr %arrayidx123.i.i to i32
  %41 = call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i183.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i183.i.i to ptr
  %cpu126.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu126.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu126.i.i, align 4
  %arrayidx127.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx127.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx127.i.i, align 4
  %add128.i.i = add i32 %46, %40
  %47 = inttoptr i32 %add128.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add129.i.i = add i32 %49, 1
  store i32 %add129.i.i, ptr %47, align 4
  call void @xprt_unpin_rqst(ptr noundef nonnull %call12.i.i) #11
  br label %out_unlock.i.i

out_unlock.i.i:                                   ; preds = %out_unpin.i.i, %if.end11.i.i.out_unlock.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %queue_lock.i.i) #11
  br label %xs_udp_data_read_skb.exit.i

xs_udp_data_read_skb.exit.i:                      ; preds = %out_unlock.i.i, %skb_header_pointer.exit.i.i.xs_udp_data_read_skb.exit.i_crit_edge, %lor.lhs.false.i.i.i.i.xs_udp_data_read_skb.exit.i_crit_edge, %do.end.i.i, %do.body.i.i.xs_udp_data_read_skb.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_xid.i.i) #11
  call void @consume_skb(ptr noundef nonnull %call.i20.i) #11
  call void @__might_resched(ptr noundef nonnull @.str.18, i32 noundef 1339, i32 noundef 0) #11
  %call.i15.i = call i32 @__cond_resched() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off.i.i) #11
  %50 = ptrtoint ptr %off.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %off.i.i, align 4
  %call.i.i = call ptr @__skb_recv_udp(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %off.i.i, ptr noundef nonnull %err.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off.i.i) #11
  %cmp1.i = icmp eq ptr %call.i.i, null
  br i1 %cmp1.i, label %xs_udp_data_read_skb.exit.i.for.end.i_crit_edge, label %xs_udp_data_read_skb.exit.i.if.end3.i_crit_edge

xs_udp_data_read_skb.exit.i.if.end3.i_crit_edge:  ; preds = %xs_udp_data_read_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

xs_udp_data_read_skb.exit.i.for.end.i_crit_edge:  ; preds = %xs_udp_data_read_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %xs_udp_data_read_skb.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %sock_state.i.i = getelementptr i8, ptr %work, i32 -148
  call void @_clear_bit(i32 noundef 2, ptr noundef %sock_state.i.i) #11
  %sock.i.i.i.i = getelementptr i8, ptr %work, i32 -188
  %51 = ptrtoint ptr %sock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sock.i.i.i.i, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.socket, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i.i.i.i, align 4
  %poll.i.i.i.i = getelementptr inbounds %struct.proto_ops, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %poll.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %poll.i.i.i.i, align 4
  %file.i.i.i.i = getelementptr i8, ptr %work, i32 -180
  %57 = ptrtoint ptr %file.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %file.i.i.i.i, align 8
  %call.i.i.i16.i = call i32 %56(ptr noundef %58, ptr noundef %52, ptr noundef null) #11
  %and.i.i.i = and i32 %call.i.i.i16.i, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp ne i32 %and.i.i.i, 0
  %and1.i.i.i = and i32 %call.i.i.i16.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  %59 = and i1 %tobool.not.i.i.i, %tobool2.not.i.i.i
  br i1 %59, label %if.end.i.i, label %for.end.i.xs_udp_data_receive.exit_crit_edge

for.end.i.xs_udp_data_receive.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_udp_data_receive.exit

if.end.i.i:                                       ; preds = %for.end.i
  %call2.i.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %sock_state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i17.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i17.i, label %if.then3.i.i, label %if.end.i.i.xs_udp_data_receive.exit_crit_edge

if.end.i.i.xs_udp_data_receive.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_udp_data_receive.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %60 = load ptr, ptr @xprtiod_workqueue, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %60, ptr noundef %work) #11
  br label %xs_udp_data_receive.exit

xs_udp_data_receive.exit:                         ; preds = %if.then3.i.i, %if.end.i.i.xs_udp_data_receive.exit_crit_edge, %for.end.i.xs_udp_data_receive.exit_crit_edge, %entry.xs_udp_data_receive.exit_crit_edge
  %and.i = and i32 %5, 262144
  call void @mutex_unlock(ptr noundef %recv_mutex.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #11
  %61 = call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i2 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i2 to ptr
  %task.i3 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task.i3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task.i3, align 8
  %flags1.i4 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %flags1.i4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags1.i4, align 4
  %and.i5 = and i32 %66, -262145
  %or.i6 = or i32 %and.i5, %and.i
  store i32 %or.i6, ptr %flags1.i4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_udp_setup_socket(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1524
  %addr.i = getelementptr i8, ptr %work, i32 -1508
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr.i, align 2
  %conv = zext i16 %1 to i32
  %call2 = tail call fastcc ptr @xs_create_sock(ptr noundef %add.ptr, ptr noundef %add.ptr, i32 noundef %conv, i32 noundef 2, i32 noundef 17, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.out_crit_edge, label %do.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %2 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end16_crit_edge, label %do.end, !prof !432

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings = getelementptr i8, ptr %work, i32 -92
  %arrayidx = getelementptr i8, ptr %work, i32 -84
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %address_strings, align 8
  %arrayidx12 = getelementptr i8, ptr %work, i32 -88
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx12, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %add.ptr, ptr noundef %4, ptr noundef %6, ptr noundef %8) #14
  br label %do.end16

do.end16:                                         ; preds = %do.end, %do.body.do.end16_crit_edge
  %inet.i = getelementptr i8, ptr %work, i32 -40
  %9 = ptrtoint ptr %inet.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inet.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.i, label %do.end16.if.end.i_crit_edge

do.end16.if.end.i_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %do.end16
  %sk1.i = getelementptr inbounds %struct.socket, ptr %call2, i32 0, i32 4
  %11 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk1.i, align 16
  tail call void @lock_sock_nested(ptr noundef %12, i32 noundef 0) #11
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 77
  %13 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_data_ready.i.i, align 8
  %old_data_ready.i.i = getelementptr i8, ptr %work, i32 444
  %15 = ptrtoint ptr %old_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %old_data_ready.i.i, align 8
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 76
  %16 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk_state_change.i.i, align 4
  %old_state_change.i.i = getelementptr i8, ptr %work, i32 448
  %18 = ptrtoint ptr %old_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %old_state_change.i.i, align 4
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 78
  %19 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_write_space.i.i, align 4
  %old_write_space.i.i = getelementptr i8, ptr %work, i32 452
  %21 = ptrtoint ptr %old_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %old_write_space.i.i, align 8
  %sk_error_report.i.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 79
  %22 = ptrtoint ptr %sk_error_report.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk_error_report.i.i, align 8
  %old_error_report.i.i = getelementptr i8, ptr %work, i32 456
  %24 = ptrtoint ptr %old_error_report.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %old_error_report.i.i, align 4
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 72
  %25 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr, ptr %sk_user_data.i, align 4
  store ptr @xs_data_ready, ptr %sk_data_ready.i.i, align 8
  store ptr @xs_udp_write_space, ptr %sk_write_space.i.i, align 4
  %26 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %or.i.i.i = or i32 %28, 65536
  store i32 %or.i.i.i, ptr %26, align 4
  %state.i.i = getelementptr i8, ptr %work, i32 -540
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #11
  %sock2.i = getelementptr i8, ptr %work, i32 -44
  %29 = ptrtoint ptr %sock2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call2, ptr %sock2.i, align 8
  %30 = ptrtoint ptr %inet.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %12, ptr %inet.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then.i.xs_set_memalloc.exit.i_crit_edge, label %if.end.i.i

if.then.i.xs_set_memalloc.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_set_memalloc.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %swapper.i.i = getelementptr i8, ptr %work, i32 -532
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %swapper.i.i, i32 noundef 4) #11
  %31 = ptrtoint ptr %swapper.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %swapper.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool1.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.xs_set_memalloc.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.xs_set_memalloc.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_set_memalloc.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %inet.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %inet.i, align 4
  tail call void @sk_set_memalloc(ptr noundef %34) #11
  br label %xs_set_memalloc.exit.i

xs_set_memalloc.exit.i:                           ; preds = %if.then2.i.i, %if.end.i.i.xs_set_memalloc.exit.i_crit_edge, %if.then.i.xs_set_memalloc.exit.i_crit_edge
  tail call void @release_sock(ptr noundef %12) #11
  br label %if.end.i

if.end.i:                                         ; preds = %xs_set_memalloc.exit.i, %do.end16.if.end.i_crit_edge
  %35 = ptrtoint ptr %inet.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inet.i, align 4
  %rcvsize.i.i = getelementptr i8, ptr %work, i32 416
  %37 = ptrtoint ptr %rcvsize.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rcvsize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i21.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i21.i, label %if.end.i.if.end.i22.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i22.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i22.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk_userlocks.i.i = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 43
  %39 = ptrtoint ptr %sk_userlocks.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i = load i8, ptr %sk_userlocks.i.i, align 8
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %sk_userlocks.i.i, align 8
  %40 = ptrtoint ptr %rcvsize.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rcvsize.i.i, align 4
  %max_reqs.i.i = getelementptr i8, ptr %work, i32 -552
  %42 = ptrtoint ptr %max_reqs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_reqs.i.i, align 4
  %mul.i.i = shl i32 %41, 1
  %mul5.i.i = mul i32 %mul.i.i, %43
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 15
  %44 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul5.i.i, ptr %sk_rcvbuf.i.i, align 8
  br label %if.end.i22.i

if.end.i22.i:                                     ; preds = %if.then.i.i, %if.end.i.if.end.i22.i_crit_edge
  %sndsize.i.i = getelementptr i8, ptr %work, i32 420
  %45 = ptrtoint ptr %sndsize.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sndsize.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool6.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool6.not.i.i, label %if.end.i22.i.xs_udp_finish_connecting.exit_crit_edge, label %if.then7.i.i

if.end.i22.i.xs_udp_finish_connecting.exit_crit_edge: ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_udp_finish_connecting.exit

if.then7.i.i:                                     ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk_userlocks8.i.i = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 43
  %47 = ptrtoint ptr %sk_userlocks8.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load9.i.i = load i8, ptr %sk_userlocks8.i.i, align 8
  %bf.set17.i.i = or i8 %bf.load9.i.i, 1
  store i8 %bf.set17.i.i, ptr %sk_userlocks8.i.i, align 8
  %48 = ptrtoint ptr %sndsize.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sndsize.i.i, align 8
  %max_reqs19.i.i = getelementptr i8, ptr %work, i32 -552
  %50 = ptrtoint ptr %max_reqs19.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_reqs19.i.i, align 4
  %mul20.i.i = shl i32 %49, 1
  %mul21.i.i = mul i32 %mul20.i.i, %51
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 21
  %52 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul21.i.i, ptr %sk_sndbuf.i.i, align 4
  %sk_write_space.i23.i = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 78
  %53 = ptrtoint ptr %sk_write_space.i23.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sk_write_space.i23.i, align 4
  tail call void %54(ptr noundef %36) #11
  br label %xs_udp_finish_connecting.exit

xs_udp_finish_connecting.exit:                    ; preds = %if.then7.i.i, %if.end.i22.i.xs_udp_finish_connecting.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %connect_start.i = getelementptr i8, ptr %work, i32 -156
  %56 = ptrtoint ptr %connect_start.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %connect_start.i, align 8
  tail call fastcc void @trace_rpc_socket_connect(ptr noundef %add.ptr, ptr noundef %call2, i32 noundef 0)
  br label %out

out:                                              ; preds = %xs_udp_finish_connecting.exit, %entry.out_crit_edge
  %status.0 = phi i32 [ -5, %entry.out_crit_edge ], [ 0, %xs_udp_finish_connecting.exit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !438
  %state.i = getelementptr i8, ptr %work, i32 -540
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !439
  tail call void @xprt_unlock_connect(ptr noundef %add.ptr, ptr noundef %add.ptr) #11
  tail call void @xprt_wake_pending_tasks(ptr noundef %add.ptr, i32 noundef %status.0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_udp_set_buffer_size(ptr nocapture noundef %xprt, i32 noundef %sndsize, i32 noundef %rcvsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sndsize1 = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sndsize)
  %tobool.not = icmp eq i32 %sndsize, 0
  %add = add i32 %sndsize, 1024
  %spec.select = select i1 %tobool.not, i32 0, i32 %add
  %0 = ptrtoint ptr %sndsize1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.select, ptr %sndsize1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcvsize)
  %tobool4.not = icmp eq i32 %rcvsize, 0
  %add6 = add i32 %rcvsize, 1024
  %storemerge = select i1 %tobool4.not, i32 0, i32 %add6
  %rcvsize3 = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 14
  %1 = ptrtoint ptr %rcvsize3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %storemerge, ptr %rcvsize3, align 4
  %inet.i = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 2
  %2 = ptrtoint ptr %inet.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %tobool.not.i = icmp eq i32 %storemerge, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sk_userlocks.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %sk_userlocks.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %sk_userlocks.i, align 8
  %bf.set.i = or i8 %bf.load.i, 2
  store i8 %bf.set.i, ptr %sk_userlocks.i, align 8
  %5 = ptrtoint ptr %rcvsize3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rcvsize3, align 4
  %max_reqs.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 15
  %7 = ptrtoint ptr %max_reqs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_reqs.i, align 4
  %mul.i = shl i32 %6, 1
  %mul5.i = mul i32 %mul.i, %8
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 15
  %9 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul5.i, ptr %sk_rcvbuf.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %sndsize1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sndsize1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %if.end.i.xs_udp_do_set_buffer_size.exit_crit_edge, label %if.then7.i

if.end.i.xs_udp_do_set_buffer_size.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_udp_do_set_buffer_size.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk_userlocks8.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 43
  %12 = ptrtoint ptr %sk_userlocks8.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load9.i = load i8, ptr %sk_userlocks8.i, align 8
  %bf.set17.i = or i8 %bf.load9.i, 1
  store i8 %bf.set17.i, ptr %sk_userlocks8.i, align 8
  %13 = ptrtoint ptr %sndsize1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sndsize1, align 8
  %max_reqs19.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 15
  %15 = ptrtoint ptr %max_reqs19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_reqs19.i, align 4
  %mul20.i = shl i32 %14, 1
  %mul21.i = mul i32 %mul20.i, %16
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 21
  %17 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul21.i, ptr %sk_sndbuf.i, align 4
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 78
  %18 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_write_space.i, align 4
  tail call void %19(ptr noundef %3) #11
  br label %xs_udp_do_set_buffer_size.exit

xs_udp_do_set_buffer_size.exit:                   ; preds = %if.then7.i, %if.end.i.xs_udp_do_set_buffer_size.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_reserve_xprt_cong(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_xprt_cong(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcb_getport_async(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_set_port(ptr noundef %xprt, i16 noundef zeroext %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !432

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %port to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %xprt, i32 noundef %conv) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %addr.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 4
  %1 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr.i, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.170)
  switch i16 %2, label %do.end4.rpc_set_port.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

do.end4.rpc_set_port.exit_crit_edge:              ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpc_set_port.exit

sw.bb.i:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr.i, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr.i, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %4 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %port, ptr %sin6_port.sink.i, align 2
  br label %rpc_set_port.exit

rpc_set_port.exit:                                ; preds = %sw.epilog.sink.split.i, %do.end4.rpc_set_port.exit_crit_edge
  %arrayidx.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 8
  tail call void @kfree(ptr noundef %6) #11
  %arrayidx2.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @kfree(ptr noundef %8) #11
  tail call fastcc void @xs_format_common_peer_ports(ptr noundef %xprt) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_connect(ptr noundef %xprt, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @xprt_lock_connect(ptr noundef %xprt, ptr noundef %task, ptr noundef %xprt) #11
  br i1 %call, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b90 = load i1, ptr @xs_connect.__already_done, align 1
  br i1 %.b90, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !432

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xs_connect.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2320, i32 noundef 9, ptr noundef null) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %sock = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end29.do.body58_crit_edge, label %land.lhs.true

if.end29.do.body58_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body58

land.lhs.true:                                    ; preds = %if.end29
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 18
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool38.not = icmp eq i32 %4, 0
  br i1 %tobool38.not, label %do.body40, label %land.lhs.true.do.body58_crit_edge

land.lhs.true.do.body58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body58

do.body40:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %5 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %do.body40.do.end56_crit_edge, label %do.end51, !prof !432

do.body40.do.end56_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56

do.end51:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 24
  %6 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reestablish_timeout, align 4
  %div = udiv i32 %7, 100
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %xprt, i32 noundef %div) #14
  br label %do.end56

do.end56:                                         ; preds = %do.end51, %do.body40.do.end56_crit_edge
  tail call fastcc void @xs_reset_transport(ptr noundef %xprt)
  %call57 = tail call i32 @xprt_reconnect_delay(ptr noundef %xprt) #11
  tail call void @xprt_reconnect_backoff(ptr noundef %xprt, i32 noundef 300) #11
  br label %if.end76

do.body58:                                        ; preds = %land.lhs.true.do.body58_crit_edge, %if.end29.do.body58_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %8 = load i32, ptr @rpc_debug, align 4
  %and59 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.if.end76_crit_edge, label %do.end70, !prof !432

do.body58.if.end76_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

do.end70:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %xprt) #14
  br label %if.end76

if.end76:                                         ; preds = %do.end70, %do.body58.if.end76_crit_edge, %do.end56
  %delay.0 = phi i32 [ 0, %do.end70 ], [ 0, %do.body58.if.end76_crit_edge ], [ %call57, %do.end56 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %9 = load ptr, ptr @xprtiod_workqueue, align 4
  %connect_worker = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %connect_worker, i32 noundef %delay.0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xs_udp_send_request(ptr noundef %req) #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %sent = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #11
  %2 = getelementptr inbounds i8, ptr %msg, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %addr.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr.i, ptr %msg, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %addrlen = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addrlen, align 8
  %7 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %msg_namelen, align 4
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %8 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16448, ptr %msg_flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sent) #11
  %9 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %sent, align 4, !annotation !437
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call zeroext i1 @xprt_request_get_cong(ptr noundef %1, ptr noundef %req) #11
  br i1 %call6, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i64 @ktime_get() #11
  %rq_xtime = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 29
  %13 = ptrtoint ptr %rq_xtime to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call9, ptr %rq_xtime, align 8
  %sock = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sock, align 8
  %call10 = call i32 @xprt_sock_sendmsg(ptr noundef %15, ptr noundef nonnull %msg, ptr noundef %rq_snd_buf, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %sent) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %16 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end8.do.end20_crit_edge, label %do.end, !prof !432

if.end8.do.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %18, i32 noundef %call10) #14
  br label %do.end20

do.end20:                                         ; preds = %do.end, %if.end8.do.end20_crit_edge
  %19 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %call10, label %do.end20.if.end26_crit_edge [
    i32 -1, label %do.end20.cleanup_crit_edge
    i32 -11, label %land.lhs.true
  ]

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end20.if.end26_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  %inet = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %inet to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inet, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 21
  %24 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %shr.i = ashr i32 %25, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %shr.i)
  %cmp.i = icmp ult i32 %23, %shr.i
  %spec.select = select i1 %cmp.i, i32 -105, i32 -11
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true, %do.end20.if.end26_crit_edge
  %status.0 = phi i32 [ %call10, %do.end20.if.end26_crit_edge ], [ %spec.select, %land.lhs.true ]
  %26 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp27.not = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp28 = icmp eq i32 %status.0, 0
  %or.cond = select i1 %cmp27.not, i1 true, i1 %cmp28
  br i1 %or.cond, label %if.then29, label %process_status

if.then29:                                        ; preds = %if.end26
  %rq_xmit_bytes_sent = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 18
  %28 = ptrtoint ptr %rq_xmit_bytes_sent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rq_xmit_bytes_sent, align 8
  %add = add i32 %29, %27
  store i32 %add, ptr %rq_xmit_bytes_sent, align 8
  %len31 = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1, i32 8
  %30 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp32.not = icmp ult i32 %27, %31
  br i1 %cmp32.not, label %if.then29.sw.bb36_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29.sw.bb36_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36

process_status:                                   ; preds = %if.end26
  %32 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %status.0, label %do.body39 [
    i32 -88, label %sw.bb
    i32 -11, label %process_status.sw.bb36_crit_edge
    i32 -101, label %process_status.cleanup_crit_edge
    i32 -105, label %process_status.cleanup_crit_edge85
    i32 -32, label %process_status.cleanup_crit_edge86
    i32 -111, label %process_status.cleanup_crit_edge87
  ]

process_status.cleanup_crit_edge87:               ; preds = %process_status
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

process_status.cleanup_crit_edge86:               ; preds = %process_status
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

process_status.cleanup_crit_edge85:               ; preds = %process_status
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

process_status.cleanup_crit_edge:                 ; preds = %process_status
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

process_status.sw.bb36_crit_edge:                 ; preds = %process_status
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36

sw.bb:                                            ; preds = %process_status
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb36:                                          ; preds = %process_status.sw.bb36_crit_edge, %if.then29.sw.bb36_crit_edge
  %call37 = call fastcc i32 @xs_nospace(ptr noundef %req)
  br label %cleanup

do.body39:                                        ; preds = %process_status
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %33 = load i32, ptr @rpc_debug, align 4
  %and40 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.cleanup_crit_edge, label %do.end51, !prof !432

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end51:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 0, %status.0
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %sub) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %do.body39.cleanup_crit_edge, %sw.bb36, %sw.bb, %process_status.cleanup_crit_edge, %process_status.cleanup_crit_edge85, %process_status.cleanup_crit_edge86, %process_status.cleanup_crit_edge87, %if.then29.cleanup_crit_edge, %do.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %entry.cleanup_crit_edge ], [ -57, %if.end.cleanup_crit_edge ], [ 0, %if.then29.cleanup_crit_edge ], [ %status.0, %do.end51 ], [ %status.0, %do.body39.cleanup_crit_edge ], [ %status.0, %process_status.cleanup_crit_edge ], [ %status.0, %process_status.cleanup_crit_edge85 ], [ %status.0, %process_status.cleanup_crit_edge86 ], [ %status.0, %process_status.cleanup_crit_edge87 ], [ %call37, %sw.bb36 ], [ -107, %sw.bb ], [ %call10, %do.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sent) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wait_for_reply_request_rtt(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_udp_timer(ptr noundef %xprt, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_lock = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %transport_lock) #11
  tail call void @xprt_adjust_cwnd(ptr noundef %xprt, ptr noundef %task, i32 noundef -110) #11
  tail call void @_raw_spin_unlock(ptr noundef %transport_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_rqst_cong(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_udp_print_stats(ptr nocapture noundef readonly %xprt, ptr noundef %seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %srcport = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 12
  %0 = ptrtoint ptr %srcport to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %srcport, align 4
  %conv = zext i16 %1 to i32
  %stat = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stat, align 8
  %sends = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 4
  %4 = ptrtoint ptr %sends to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sends, align 8
  %recvs = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 5
  %6 = ptrtoint ptr %recvs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recvs, align 4
  %bad_xids = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 6
  %8 = ptrtoint ptr %bad_xids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bad_xids, align 8
  %req_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 8
  %10 = ptrtoint ptr %req_u to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %req_u, align 8
  %bklog_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 9
  %12 = ptrtoint ptr %bklog_u to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bklog_u, align 8
  %max_slots = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 7
  %14 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_slots, align 4
  %sending_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 10
  %16 = ptrtoint ptr %sending_u to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sending_u, align 8
  %pending_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 11
  %18 = ptrtoint ptr %pending_u to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pending_u, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.112, i32 noundef %conv, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i64 noundef %11, i64 noundef %13, i32 noundef %15, i64 noundef %17, i64 noundef %19) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_inject_disconnect(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !432

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %xprt) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @xprt_disconnect_done(ptr noundef %xprt) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_lock_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_reconnect_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_reconnect_backoff(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_request_get_cong(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_adjust_cwnd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_recv_udp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_update_rtt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_to_xdr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xs_create_sock(ptr nocapture noundef readonly %xprt, ptr nocapture noundef %transport, i32 noundef %family, i32 noundef %type, i32 noundef %protocol, i1 noundef zeroext %reuseport) unnamed_addr #0 align 64 {
entry:
  %myaddr.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #11
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !437
  %xprt_net = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 49
  %1 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xprt_net, align 8
  %call = call i32 @__sock_create(ptr noundef %2, i32 noundef %family, i32 noundef %type, i32 noundef %protocol, ptr noundef nonnull %sock, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %3 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.out_crit_edge, label %do.end, !prof !432

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 0, %call
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %protocol, i32 noundef %sub) #14
  br label %out

if.end8:                                          ; preds = %entry
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sock, align 4
  call fastcc void @xs_reclassify_socket(i32 noundef %family, ptr noundef %5)
  br i1 %reuseport, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk, align 16
  call void @sock_set_reuseport(ptr noundef %9) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %10 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sock, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %myaddr.i) #11
  %12 = call ptr @memset(ptr %myaddr.i, i32 255, i32 128)
  %srcport.i.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 12
  %13 = ptrtoint ptr %srcport.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %srcport.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i.i = icmp eq i16 %14, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end11.xs_get_srcport.exit.i_crit_edge

if.end11.xs_get_srcport.exit.i_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_get_srcport.exit.i

land.lhs.true.i.i:                                ; preds = %if.end11
  %resvport.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 19
  %15 = ptrtoint ptr %resvport.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i = load i8, ptr %resvport.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.xs_bind.exit.thread_crit_edge, label %if.then.i.i

land.lhs.true.i.i.xs_bind.exit.thread_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_bind.exit.thread

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %16 = load i32, ptr @xprt_min_resvport, align 4
  %17 = load i32, ptr @xprt_max_resvport, align 4
  %conv2.i.i.i = and i32 %17, 65535
  %conv3.i.i.i = and i32 %16, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i.i.i, i32 %conv3.i.i.i)
  %cmp.i.i.i = icmp ult i32 %conv2.i.i.i, %conv3.i.i.i
  br i1 %cmp.i.i.i, label %xs_bind.exit.thread35, label %if.end.i.i.i

xs_bind.exit.thread35:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %myaddr.i) #11
  br label %if.then14

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub i32 %17, %16
  %call.i.i.i = call i32 @prandom_u32() #11
  %rem.lhs.trunc.i.i.i = trunc i32 %call.i.i.i to i16
  %18 = trunc i32 %sub.i.i.i to i16
  %rem.rhs.trunc.i.i.i = add i16 %18, 1
  %rem21.i.i.i = urem i16 %rem.lhs.trunc.i.i.i, %rem.rhs.trunc.i.i.i
  %rem.zext.i.i.i = zext i16 %rem21.i.i.i to i32
  %add14.i.i.i = add nuw nsw i32 %conv3.i.i.i, %rem.zext.i.i.i
  br label %xs_get_srcport.exit.i

xs_get_srcport.exit.i:                            ; preds = %if.end.i.i.i, %if.end11.xs_get_srcport.exit.i_crit_edge
  %port.0.i.i = phi i32 [ %conv.i.i, %if.end11.xs_get_srcport.exit.i_crit_edge ], [ %add14.i.i.i, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.0.i.i)
  %cmp.i = icmp eq i32 %port.0.i.i, 0
  br i1 %cmp.i, label %xs_get_srcport.exit.i.xs_bind.exit.thread_crit_edge, label %if.end.i

xs_get_srcport.exit.i.xs_bind.exit.thread_crit_edge: ; preds = %xs_get_srcport.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_bind.exit.thread

if.end.i:                                         ; preds = %xs_get_srcport.exit.i
  %srcaddr.i = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 11
  %addrlen.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 5
  %19 = ptrtoint ptr %addrlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addrlen.i, align 8
  %21 = call ptr @memcpy(ptr %myaddr.i, ptr %srcaddr.i, i32 %20)
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %myaddr.i, i32 0, i32 1
  %resvport.i90.i = getelementptr inbounds %struct.rpc_xprt, ptr %transport, i32 0, i32 19
  br label %do.body.i

do.body.i:                                        ; preds = %xs_next_srcport.exit.i.do.body.i_crit_edge, %if.end.i
  %nloop.0.i = phi i32 [ 0, %if.end.i ], [ %spec.select.i, %xs_next_srcport.exit.i.do.body.i_crit_edge ]
  %port.0.i = phi i32 [ %port.0.i.i, %if.end.i ], [ %conv15.i, %xs_next_srcport.exit.i.do.body.i_crit_edge ]
  %22 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %myaddr.i, align 4
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.173)
  switch i16 %23, label %do.body.i.rpc_set_port.exit.i_crit_edge [
    i16 2, label %do.body.i.sw.epilog.sink.split.i.i_crit_edge
    i16 10, label %do.body.i.sw.epilog.sink.split.i.i_crit_edge69
  ]

do.body.i.sw.epilog.sink.split.i.i_crit_edge69:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i.i

do.body.i.sw.epilog.sink.split.i.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i.i

do.body.i.rpc_set_port.exit.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpc_set_port.exit.i

sw.epilog.sink.split.i.i:                         ; preds = %do.body.i.sw.epilog.sink.split.i.i_crit_edge, %do.body.i.sw.epilog.sink.split.i.i_crit_edge69
  %conv.i = trunc i32 %port.0.i to i16
  %25 = ptrtoint ptr %sin6_port.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %sin6_port.i.i, align 2
  br label %rpc_set_port.exit.i

rpc_set_port.exit.i:                              ; preds = %sw.epilog.sink.split.i.i, %do.body.i.rpc_set_port.exit.i_crit_edge
  %26 = ptrtoint ptr %addrlen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addrlen.i, align 8
  %call3.i = call i32 @kernel_bind(ptr noundef %11, ptr noundef nonnull %myaddr.i, i32 noundef %27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.end11.i

if.then6.i:                                       ; preds = %rpc_set_port.exit.i
  %28 = ptrtoint ptr %resvport.i90.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %resvport.i90.i, align 4
  %29 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.then6.i.do.end.i_crit_edge, label %if.then8.i

if.then6.i.do.end.i_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.le.i = trunc i32 %port.0.i to i16
  %30 = ptrtoint ptr %srcport.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.le.i, ptr %srcport.i.i, align 4
  br label %do.end.i

if.end11.i:                                       ; preds = %rpc_set_port.exit.i
  %31 = ptrtoint ptr %srcport.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %srcport.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.not.i.i = icmp eq i16 %32, 0
  br i1 %cmp.not.i.i, label %if.end11.i.if.end.i.i_crit_edge, label %if.then.i89.i

if.end11.i.if.end.i.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i89.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %srcport.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %srcport.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i89.i, %if.end11.i.if.end.i.i_crit_edge
  %34 = ptrtoint ptr %resvport.i90.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i91.i = load i8, ptr %resvport.i90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i91.i)
  %tobool.not.i92.i = icmp sgt i8 %bf.load.i91.i, -1
  %.pre.i = and i32 %port.0.i, 65535
  br i1 %tobool.not.i92.i, label %if.end.i.i.xs_next_srcport.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.xs_next_srcport.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_next_srcport.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %35 = load i32, ptr @xprt_min_resvport, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %.pre.i)
  %cmp6.not.i.i = icmp ult i32 %35, %.pre.i
  br i1 %cmp6.not.i.i, label %lor.lhs.false.i.i, label %if.end4.i.i.if.then11.i.i_crit_edge

if.end4.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

lor.lhs.false.i.i:                                ; preds = %if.end4.i.i
  %36 = load i32, ptr @xprt_max_resvport, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %.pre.i)
  %cmp9.i.i = icmp ult i32 %36, %.pre.i
  br i1 %cmp9.i.i, label %lor.lhs.false.i.i.if.then11.i.i_crit_edge, label %if.end13.i.i

lor.lhs.false.i.i.if.then11.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then11.i.i_crit_edge, %if.end4.i.i.if.then11.i.i_crit_edge
  %37 = load i32, ptr @xprt_max_resvport, align 4
  br label %xs_next_srcport.exit.i

if.end13.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i.i = add nuw nsw i32 %port.0.i, 65535
  br label %xs_next_srcport.exit.i

xs_next_srcport.exit.i:                           ; preds = %if.end13.i.i, %if.then11.i.i, %if.end.i.i.xs_next_srcport.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %37, %if.then11.i.i ], [ %dec.i.i, %if.end13.i.i ], [ 0, %if.end.i.i.xs_next_srcport.exit.i_crit_edge ]
  %conv15.i = and i32 %retval.0.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre.i, i32 %conv15.i)
  %cmp17.i = icmp ult i32 %.pre.i, %conv15.i
  %inc.i = zext i1 %cmp17.i to i32
  %spec.select.i = add i32 %nloop.0.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -98, i32 %call3.i)
  %cmp21.i = icmp ne i32 %call3.i, -98
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.i)
  %cmp23.not.i = icmp eq i32 %spec.select.i, 2
  %or.cond.i = select i1 %cmp21.i, i1 true, i1 %cmp23.not.i
  br i1 %or.cond.i, label %xs_next_srcport.exit.i.do.end.i_crit_edge, label %xs_next_srcport.exit.i.do.body.i_crit_edge

xs_next_srcport.exit.i.do.body.i_crit_edge:       ; preds = %xs_next_srcport.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

xs_next_srcport.exit.i.do.end.i_crit_edge:        ; preds = %xs_next_srcport.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %xs_next_srcport.exit.i.do.end.i_crit_edge, %if.then8.i, %if.then6.i.do.end.i_crit_edge
  %port.1.i = phi i32 [ %port.0.i, %if.then8.i ], [ %port.0.i, %if.then6.i.do.end.i_crit_edge ], [ %conv15.i, %xs_next_srcport.exit.i.do.end.i_crit_edge ]
  %38 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %myaddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %cmp26.i = icmp eq i16 %39, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %40 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp26.i, label %do.body29.i, label %do.body42.i

do.body29.i:                                      ; preds = %do.end.i
  br i1 %tobool30.not.i, label %do.body29.i.xs_bind.exit_crit_edge, label %do.end36.i, !prof !432

do.body29.i.xs_bind.exit_crit_edge:               ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_bind.exit

do.end36.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %myaddr.i, i32 0, i32 2
  %cond.i = select i1 %cmp4.i, ptr @.str.125, ptr @.str.124
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, ptr noundef %sin_addr.i, i32 noundef %port.1.i, ptr noundef nonnull %cond.i, i32 noundef %call3.i) #14
  br label %xs_bind.exit

do.body42.i:                                      ; preds = %do.end.i
  br i1 %tobool30.not.i, label %do.body42.i.xs_bind.exit_crit_edge, label %do.end54.i, !prof !432

do.body42.i.xs_bind.exit_crit_edge:               ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_bind.exit

do.end54.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %myaddr.i, i32 0, i32 3
  %cond57.i = select i1 %cmp4.i, ptr @.str.125, ptr @.str.124
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.123, ptr noundef %sin6_addr.i, i32 noundef %port.1.i, ptr noundef nonnull %cond57.i, i32 noundef %call3.i) #14
  br label %xs_bind.exit

xs_bind.exit.thread:                              ; preds = %xs_get_srcport.exit.i.xs_bind.exit.thread_crit_edge, %land.lhs.true.i.i.xs_bind.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %myaddr.i) #11
  br label %if.end15

xs_bind.exit:                                     ; preds = %do.end54.i, %do.body42.i.xs_bind.exit_crit_edge, %do.end36.i, %do.body29.i.xs_bind.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %myaddr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool13.not = icmp eq i32 %call3.i, 0
  br i1 %tobool13.not, label %xs_bind.exit.if.end15_crit_edge, label %xs_bind.exit.if.then14_crit_edge

xs_bind.exit.if.then14_crit_edge:                 ; preds = %xs_bind.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

xs_bind.exit.if.end15_crit_edge:                  ; preds = %xs_bind.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %xs_bind.exit.if.then14_crit_edge, %xs_bind.exit.thread35
  %retval.0.i38 = phi i32 [ -98, %xs_bind.exit.thread35 ], [ %call3.i, %xs_bind.exit.if.then14_crit_edge ]
  %41 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sock, align 4
  call void @sock_release(ptr noundef %42) #11
  br label %out

if.end15:                                         ; preds = %xs_bind.exit.if.end15_crit_edge, %xs_bind.exit.thread
  %43 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sock, align 4
  %call16 = call ptr @sock_alloc_file(ptr noundef %44, i32 noundef 2048, ptr noundef null) #11
  %cmp.i32 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %file = getelementptr inbounds %struct.sock_xprt, ptr %transport, i32 0, i32 3
  %45 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call16, ptr %file, align 8
  %46 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sock, align 4
  br label %cleanup

out:                                              ; preds = %if.then14, %do.end, %do.body.out_crit_edge
  %err.0 = phi i32 [ %call, %do.end ], [ %call, %do.body.out_crit_edge ], [ %retval.0.i38, %if.then14 ]
  %48 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end20, %if.end15.cleanup_crit_edge
  %retval.0 = phi ptr [ %48, %out ], [ %47, %if.end20 ], [ %call16, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_unlock_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_reuseport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xs_setup_tcp(ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dstaddr = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 3
  %0 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dstaddr, align 4
  %2 = load i32, ptr @xprt_max_tcp_slot_table_entries, align 4
  %flags = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 %2, i32 65536
  %5 = load i32, ptr @xprt_tcp_slot_table_entries, align 4
  %call = tail call fastcc ptr @xs_setup_xprt(ptr noundef %args, i32 noundef %5, i32 noundef %spec.store.select)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %prot = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %prot to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %prot, align 4
  %xprt_class = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 54
  %7 = ptrtoint ptr %xprt_class to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xs_tcp_transport, ptr %xprt_class, align 4
  %max_payload = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 9
  %8 = ptrtoint ptr %max_payload to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2147483647, ptr %max_payload, align 8
  %bind_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 23
  %9 = ptrtoint ptr %bind_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6000, ptr %bind_timeout, align 8
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 24
  %10 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 300, ptr %reestablish_timeout, align 4
  %idle_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 29
  %11 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 30000, ptr %idle_timeout, align 4
  %ops = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xs_tcp_ops, ptr %ops, align 4
  %timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @xs_tcp_default_timeout, ptr %timeout, align 4
  %max_reconnect_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 31
  %14 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6000, ptr %max_reconnect_timeout, align 4
  %connect_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 30
  %15 = ptrtoint ptr %connect_timeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 18000, ptr %connect_timeout, align 8
  %recv_worker = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9
  tail call void @__init_work(ptr noundef %recv_worker, i32 noundef 0) #11
  %16 = ptrtoint ptr %recv_worker to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %recv_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @xs_setup_tcp.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry10 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xs_stream_data_receive_workfn, ptr %func, align 4
  %error_worker = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8
  tail call void @__init_work(ptr noundef %error_worker, i32 noundef 0) #11
  %20 = ptrtoint ptr %error_worker to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %error_worker, align 8
  %lockdep_map18 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map18, ptr noundef nonnull @.str.11, ptr noundef nonnull @xs_setup_tcp.__key.132, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry20 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i158 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i158 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry20, ptr %prev.i158, align 4
  %func22 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %func22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xs_error_handle, ptr %func22, align 4
  %connect_worker = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7
  tail call void @__init_work(ptr noundef %connect_worker, i32 noundef 0) #11
  %24 = ptrtoint ptr %connect_worker to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %connect_worker, align 4
  %lockdep_map34 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map34, ptr noundef nonnull @.str.13, ptr noundef nonnull @xs_setup_tcp.__key.133, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry37 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 1
  %25 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i159 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i159 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry37, ptr %prev.i159, align 4
  %func40 = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 0, i32 2
  %27 = ptrtoint ptr %func40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @xs_tcp_setup_socket, ptr %func40, align 4
  %timer = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @xs_setup_tcp.__key.134) #11
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %1, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.174)
  switch i16 %29, label %if.end3.out_err_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb53
  ]

if.end3.out_err_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

sw.bb:                                            ; preds = %if.end3
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sin_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.not = icmp eq i16 %32, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end3
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sin6_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp55.not = icmp eq i16 %34, 0
  br i1 %cmp55.not, label %sw.bb53.sw.epilog_crit_edge, label %sw.bb53.sw.epilog.sink.split_crit_edge

sw.bb53.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb53.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.str.130.sink.ph = phi ptr [ @.str.129, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @.str.130, %sw.bb53.sw.epilog.sink.split_crit_edge ]
  %state.i160 = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 18
  %call.i161 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i160) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb53.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.str.130.sink = phi ptr [ @.str.129, %sw.bb.sw.epilog_crit_edge ], [ @.str.130, %sw.bb53.sw.epilog_crit_edge ], [ %.str.130.sink.ph, %sw.epilog.sink.split ]
  tail call fastcc void @xs_format_peer_addresses(ptr noundef %call, ptr noundef nonnull @.str.129, ptr noundef nonnull %.str.130.sink)
  %state.i162 = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 18
  %35 = ptrtoint ptr %state.i162 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state.i162, align 4
  %37 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool61.not = icmp eq i32 %37, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %38 = load i32, ptr @rpc_debug, align 4
  %and82 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool61.not, label %do.body81, label %do.body63

do.body63:                                        ; preds = %sw.epilog
  br i1 %tobool83.not, label %do.body63.if.end103_crit_edge, label %do.end71, !prof !432

do.body63.if.end103_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

do.end71:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 51
  %39 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %address_strings, align 8
  %arrayidx74 = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 1
  %41 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx74, align 4
  %arrayidx76 = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 2
  %43 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx76, align 8
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %40, ptr noundef %42, ptr noundef %44) #14
  br label %if.end103

do.body81:                                        ; preds = %sw.epilog
  br i1 %tobool83.not, label %do.body81.if.end103_crit_edge, label %do.end93, !prof !432

do.body81.if.end103_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

do.end93:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings95 = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 51
  %45 = ptrtoint ptr %address_strings95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %address_strings95, align 8
  %arrayidx98 = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 2
  %47 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx98, align 8
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %46, ptr noundef %48) #14
  br label %if.end103

if.end103:                                        ; preds = %do.end93, %do.body81.if.end103_crit_edge, %do.end71, %do.body63.if.end103_crit_edge
  %call104 = tail call zeroext i1 @try_module_get(ptr noundef null) #11
  br i1 %call104, label %if.end103.cleanup_crit_edge, label %if.end103.out_err_crit_edge

if.end103.out_err_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_err:                                          ; preds = %if.end103.out_err_crit_edge, %if.end3.out_err_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -97 to ptr), %if.end3.out_err_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end103.out_err_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 0
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %50) #11
  %arrayidx.1.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 1
  %51 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.1.i.i, align 4
  tail call void @kfree(ptr noundef %52) #11
  %arrayidx.3.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 3
  %53 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.3.i.i, align 4
  tail call void @kfree(ptr noundef %54) #11
  %arrayidx.4.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 4
  %55 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.4.i.i, align 4
  tail call void @kfree(ptr noundef %56) #11
  tail call void @xprt_free(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end103.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %out_err ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end103.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_tcp_setup_socket(ptr noundef %work) #0 align 64 {
entry:
  %buf.i.i = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1524
  %sock1 = getelementptr i8, ptr %work, i32 -44
  %0 = ptrtoint ptr %sock1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  %addr.i = getelementptr i8, ptr %work, i32 -1508
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr.i, align 2
  %conv = zext i16 %3 to i32
  %call3 = tail call fastcc ptr @xs_create_sock(ptr noundef %add.ptr, ptr noundef %add.ptr, i32 noundef %conv, i32 noundef 1, i32 noundef 6, i1 noundef zeroext true)
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call3 to i32
  tail call void @xprt_wake_pending_tasks(ptr noundef %add.ptr, i32 noundef %4) #11
  br label %out

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %sock.0 = phi ptr [ %1, %entry.do.body_crit_edge ], [ %call3, %if.then.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %5 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.do.end21_crit_edge, label %do.end, !prof !432

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings = getelementptr i8, ptr %work, i32 -92
  %arrayidx = getelementptr i8, ptr %work, i32 -84
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %address_strings, align 8
  %arrayidx17 = getelementptr i8, ptr %work, i32 -88
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx17, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %add.ptr, ptr noundef %7, ptr noundef %9, ptr noundef %11) #14
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  %inet.i = getelementptr i8, ptr %work, i32 -40
  %12 = ptrtoint ptr %inet.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %inet.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i, label %do.end21.if.end7.i_crit_edge

do.end21.if.end7.i_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then.i:                                        ; preds = %do.end21
  %sk1.i = getelementptr inbounds %struct.socket, ptr %sock.0, i32 0, i32 4
  %14 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk1.i, align 16
  %addr.i.i = getelementptr i8, ptr %work, i32 -1508
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %17)
  %cmp.i87 = icmp eq i16 %17, 10
  br i1 %cmp.i87, label %if.then3.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  tail call void @lock_sock_nested(ptr noundef %15, i32 noundef 0) #11
  %skc_state.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i8 %19 to i32
  %shl.i.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i.i
  %and.i.i.i.i.i = and i32 %shl.i.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.then3.i.inet6_sk.exit.i.i.i_crit_edge, label %cond.true.i.i.i.i

if.then3.i.inet6_sk.exit.i.i.i_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit.i.i.i

cond.true.i.i.i.i:                                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %pinet6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pinet6.i.i.i.i, align 8
  br label %inet6_sk.exit.i.i.i

inet6_sk.exit.i.i.i:                              ; preds = %cond.true.i.i.i.i, %if.then3.i.inet6_sk.exit.i.i.i_crit_edge
  %cond.i.i.i.i = phi ptr [ %21, %cond.true.i.i.i.i ], [ null, %if.then3.i.inet6_sk.exit.i.i.i_crit_edge ]
  %srcprefs.i.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %srcprefs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i.i.i = load i16, ptr %srcprefs.i.i.i, align 2
  %23 = ptrtoint ptr %skc_state.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state.i.i.i.i.i, align 2
  %conv.i.i2.i.i.i = zext i8 %24 to i32
  %shl.i.i3.i.i.i = shl nuw i32 1, %conv.i.i2.i.i.i
  %and.i.i4.i.i.i = and i32 %shl.i.i3.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.i.not.i5.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.i.not.i5.i.i.i, label %inet6_sk.exit.i.i.i.ip6_sock_set_addr_preferences.exit.i_crit_edge, label %cond.true.i7.i.i.i

inet6_sk.exit.i.i.i.ip6_sock_set_addr_preferences.exit.i_crit_edge: ; preds = %inet6_sk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_sock_set_addr_preferences.exit.i

cond.true.i7.i.i.i:                               ; preds = %inet6_sk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i6.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %15, i32 0, i32 1
  %25 = ptrtoint ptr %pinet6.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pinet6.i6.i.i.i, align 8
  br label %ip6_sock_set_addr_preferences.exit.i

ip6_sock_set_addr_preferences.exit.i:             ; preds = %cond.true.i7.i.i.i, %inet6_sk.exit.i.i.i.ip6_sock_set_addr_preferences.exit.i_crit_edge
  %cond.i8.i.i.i = phi ptr [ %26, %cond.true.i7.i.i.i ], [ null, %inet6_sk.exit.i.i.i.ip6_sock_set_addr_preferences.exit.i_crit_edge ]
  %27 = and i16 %bf.load.i.i.i, 256
  %srcprefs22.i.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i8.i.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %srcprefs22.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load23.i.i.i = load i16, ptr %srcprefs22.i.i.i, align 2
  %bf.clear24.i.i.i = and i16 %bf.load23.i.i.i, -449
  %29 = or i16 %27, %bf.clear24.i.i.i
  %bf.set.i.i.i = or i16 %29, 64
  store i16 %bf.set.i.i.i, ptr %srcprefs22.i.i.i, align 2
  tail call void @release_sock(ptr noundef %15) #11
  br label %if.end.i

if.end.i:                                         ; preds = %ip6_sock_set_addr_preferences.exit.i, %if.then.i.if.end.i_crit_edge
  tail call fastcc void @xs_tcp_set_socket_timeouts(ptr noundef %add.ptr, ptr noundef %sock.0) #11
  tail call void @tcp_sock_set_nodelay(ptr noundef %15) #11
  tail call void @lock_sock_nested(ptr noundef %15, i32 noundef 0) #11
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 77
  %30 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk_data_ready.i.i, align 8
  %old_data_ready.i.i = getelementptr i8, ptr %work, i32 444
  %32 = ptrtoint ptr %old_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %old_data_ready.i.i, align 8
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 76
  %33 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sk_state_change.i.i, align 4
  %old_state_change.i.i = getelementptr i8, ptr %work, i32 448
  %35 = ptrtoint ptr %old_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %old_state_change.i.i, align 4
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 78
  %36 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sk_write_space.i.i, align 4
  %old_write_space.i.i = getelementptr i8, ptr %work, i32 452
  %38 = ptrtoint ptr %old_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %old_write_space.i.i, align 8
  %sk_error_report.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 79
  %39 = ptrtoint ptr %sk_error_report.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk_error_report.i.i, align 8
  %old_error_report.i.i = getelementptr i8, ptr %work, i32 456
  %41 = ptrtoint ptr %old_error_report.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %old_error_report.i.i, align 4
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 72
  %42 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr, ptr %sk_user_data.i, align 4
  store ptr @xs_data_ready, ptr %sk_data_ready.i.i, align 8
  store ptr @xs_tcp_state_change, ptr %sk_state_change.i.i, align 4
  store ptr @xs_tcp_write_space, ptr %sk_write_space.i.i, align 4
  %43 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 13
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  store ptr @xs_error_report, ptr %sk_error_report.i.i, align 8
  %or.i.i.i = and i32 %45, -65553
  %and.i.i.i = or i32 %or.i.i.i, 65536
  store i32 %and.i.i.i, ptr %43, align 4
  %state.i.i = getelementptr i8, ptr %work, i32 -540
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #11
  %46 = ptrtoint ptr %sock1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %sock.0, ptr %sock1, align 8
  %47 = ptrtoint ptr %inet.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %15, ptr %inet.i, align 4
  tail call void @release_sock(ptr noundef %15) #11
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %do.end21.if.end7.i_crit_edge
  %state.i42.i = getelementptr i8, ptr %work, i32 -540
  %48 = ptrtoint ptr %state.i42.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i42.i, align 4
  %50 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool9.not.i = icmp eq i32 %50, 0
  br i1 %tobool9.not.i, label %if.end7.i.xs_tcp_finish_connecting.exit_crit_edge, label %if.end11.i

if.end7.i.xs_tcp_finish_connecting.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_tcp_finish_connecting.exit

if.end11.i:                                       ; preds = %if.end7.i
  %51 = ptrtoint ptr %inet.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %inet.i, align 4
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %if.end11.i.xs_set_memalloc.exit.i_crit_edge, label %if.end.i.i

if.end11.i.xs_set_memalloc.exit.i_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_set_memalloc.exit.i

if.end.i.i:                                       ; preds = %if.end11.i
  %swapper.i.i = getelementptr i8, ptr %work, i32 -532
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %swapper.i.i, i32 noundef 4) #11
  %53 = ptrtoint ptr %swapper.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %swapper.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool1.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.xs_set_memalloc.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.xs_set_memalloc.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_set_memalloc.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %inet.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %inet.i, align 4
  tail call void @sk_set_memalloc(ptr noundef %56) #11
  br label %xs_set_memalloc.exit.i

xs_set_memalloc.exit.i:                           ; preds = %if.then2.i.i, %if.end.i.i.xs_set_memalloc.exit.i_crit_edge, %if.end11.i.xs_set_memalloc.exit.i_crit_edge
  %connect_count.i.i = getelementptr i8, ptr %work, i32 -160
  %57 = ptrtoint ptr %connect_count.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %connect_count.i.i, align 4
  %inc.i.i = add i32 %58, 1
  store i32 %inc.i.i, ptr %connect_count.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %connect_start.i.i = getelementptr i8, ptr %work, i32 -156
  %60 = ptrtoint ptr %connect_start.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %connect_start.i.i, align 8
  %sock_state.i = getelementptr i8, ptr %work, i32 -4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %sock_state.i) #11
  %addr.i43.i = getelementptr i8, ptr %work, i32 -1508
  %addrlen.i = getelementptr i8, ptr %work, i32 -1380
  %61 = ptrtoint ptr %addrlen.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addrlen.i, align 8
  %call13.i = tail call i32 @kernel_connect(ptr noundef %sock.0, ptr noundef %addr.i43.i, i32 noundef %62, i32 noundef 2048) #11
  br label %xs_tcp_finish_connecting.exit

xs_tcp_finish_connecting.exit:                    ; preds = %xs_set_memalloc.exit.i, %if.end7.i.xs_tcp_finish_connecting.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %xs_set_memalloc.exit.i ], [ -107, %if.end7.i.xs_tcp_finish_connecting.exit_crit_edge ]
  tail call fastcc void @trace_rpc_socket_connect(ptr noundef %add.ptr, ptr noundef %sock.0, i32 noundef %retval.0.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %63 = load i32, ptr @rpc_debug, align 4
  %and24 = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %xs_tcp_finish_connecting.exit.do.end42_crit_edge, label %do.end35, !prof !432

xs_tcp_finish_connecting.exit.do.end42_crit_edge: ; preds = %xs_tcp_finish_connecting.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

do.end35:                                         ; preds = %xs_tcp_finish_connecting.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 0, %retval.0.i
  %64 = ptrtoint ptr %state.i42.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %state.i42.i, align 4
  %shr.i.i = lshr i32 %65, 1
  %and1.i.i = and i32 %shr.i.i, 1
  %sk = getelementptr inbounds %struct.socket, ptr %sock.0, i32 0, i32 4
  %66 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sk, align 16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load volatile i8, ptr %skc_state, align 2
  %conv38 = zext i8 %69 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %and1.i.i, i32 noundef %conv38) #14
  br label %do.end42

do.end42:                                         ; preds = %do.end35, %xs_tcp_finish_connecting.exit.do.end42_crit_edge
  %70 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %retval.0.i, label %do.end53 [
    i32 0, label %sw.bb
    i32 -115, label %do.end42.sw.bb43_crit_edge
    i32 -114, label %do.end42.out_unlock_crit_edge
    i32 -99, label %sw.bb49
    i32 -22, label %do.end42.sw.epilog_crit_edge
    i32 -111, label %do.end42.sw.epilog_crit_edge94
    i32 -104, label %do.end42.sw.epilog_crit_edge95
    i32 -100, label %do.end42.sw.epilog_crit_edge96
    i32 -101, label %do.end42.sw.epilog_crit_edge97
    i32 -113, label %do.end42.sw.epilog_crit_edge98
    i32 -98, label %do.end42.sw.epilog_crit_edge99
    i32 -105, label %do.end42.sw.epilog_crit_edge100
  ]

do.end42.sw.epilog_crit_edge100:                  ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end42.sw.epilog_crit_edge99:                   ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end42.sw.epilog_crit_edge98:                   ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end42.sw.epilog_crit_edge97:                   ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end42.sw.epilog_crit_edge96:                   ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end42.sw.epilog_crit_edge95:                   ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end42.sw.epilog_crit_edge94:                   ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end42.sw.epilog_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end42.out_unlock_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

do.end42.sw.bb43_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb43

sw.bb:                                            ; preds = %do.end42
  %srcport.i = getelementptr i8, ptr %work, i32 408
  %71 = ptrtoint ptr %srcport.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %srcport.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp.i88 = icmp eq i16 %72, 0
  br i1 %cmp.i88, label %land.lhs.true.i, label %sw.bb.sw.bb43_crit_edge

sw.bb.sw.bb43_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb43

land.lhs.true.i:                                  ; preds = %sw.bb
  %reuseport.i = getelementptr i8, ptr %work, i32 -536
  %73 = ptrtoint ptr %reuseport.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i = load i8, ptr %reuseport.i, align 4
  %74 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i89 = icmp eq i8 %74, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i.sw.bb43_crit_edge, label %if.then.i90

land.lhs.true.i.sw.bb43_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb43

if.then.i90:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf.i.i) #11
  %75 = call ptr @memset(ptr %buf.i.i, i32 255, i32 128)
  %call.i.i = call i32 @kernel_getsockname(ptr noundef %sock.0, ptr noundef nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i90.xs_sock_getport.exit.i_crit_edge, label %if.end.i.i91

if.then.i90.xs_sock_getport.exit.i_crit_edge:     ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_sock_getport.exit.i

if.end.i.i91:                                     ; preds = %if.then.i90
  %76 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %buf.i.i, align 4
  %78 = zext i16 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.176)
  switch i16 %77, label %if.end.i.i91.xs_sock_getport.exit.i_crit_edge [
    i16 10, label %sw.bb.i.i
    i16 2, label %sw.bb1.i.i
  ]

if.end.i.i91.xs_sock_getport.exit.i_crit_edge:    ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_sock_getport.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %buf.i.i, i32 0, i32 1
  br label %out.sink.split.i.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #13
  %sin_port.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %buf.i.i, i32 0, i32 1
  br label %out.sink.split.i.i

out.sink.split.i.i:                               ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %sin6_port.sink.i.i = phi ptr [ %sin6_port.i.i, %sw.bb.i.i ], [ %sin_port.i.i, %sw.bb1.i.i ]
  %79 = ptrtoint ptr %sin6_port.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %sin6_port.sink.i.i, align 2
  br label %xs_sock_getport.exit.i

xs_sock_getport.exit.i:                           ; preds = %out.sink.split.i.i, %if.end.i.i91.xs_sock_getport.exit.i_crit_edge, %if.then.i90.xs_sock_getport.exit.i_crit_edge
  %port.0.i.i = phi i16 [ 0, %if.then.i90.xs_sock_getport.exit.i_crit_edge ], [ 0, %if.end.i.i91.xs_sock_getport.exit.i_crit_edge ], [ %80, %out.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf.i.i) #11
  %81 = ptrtoint ptr %srcport.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %port.0.i.i, ptr %srcport.i, align 4
  br label %sw.bb43

sw.bb43:                                          ; preds = %xs_sock_getport.exit.i, %land.lhs.true.i.sw.bb43_crit_edge, %sw.bb.sw.bb43_crit_edge, %do.end42.sw.bb43_crit_edge
  %reestablish_timeout = getelementptr i8, ptr %work, i32 -512
  %82 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %reestablish_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %83)
  %cmp = icmp ult i32 %83, 300
  br i1 %cmp, label %if.then45, label %sw.bb43.out_unlock_crit_edge

sw.bb43.out_unlock_crit_edge:                     ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then45:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 300, ptr %reestablish_timeout, align 4
  br label %out_unlock

sw.bb49:                                          ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  %srcport = getelementptr i8, ptr %work, i32 408
  %85 = ptrtoint ptr %srcport to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %srcport, align 4
  br label %sw.epilog

do.end53:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.143, i32 noundef %retval.0.i) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end53, %sw.bb49, %do.end42.sw.epilog_crit_edge, %do.end42.sw.epilog_crit_edge94, %do.end42.sw.epilog_crit_edge95, %do.end42.sw.epilog_crit_edge96, %do.end42.sw.epilog_crit_edge97, %do.end42.sw.epilog_crit_edge98, %do.end42.sw.epilog_crit_edge99, %do.end42.sw.epilog_crit_edge100
  %status.0 = phi i32 [ -11, %do.end53 ], [ %retval.0.i, %do.end42.sw.epilog_crit_edge ], [ %retval.0.i, %do.end42.sw.epilog_crit_edge94 ], [ %retval.0.i, %do.end42.sw.epilog_crit_edge95 ], [ %retval.0.i, %do.end42.sw.epilog_crit_edge96 ], [ %retval.0.i, %do.end42.sw.epilog_crit_edge97 ], [ %retval.0.i, %do.end42.sw.epilog_crit_edge98 ], [ %retval.0.i, %do.end42.sw.epilog_crit_edge99 ], [ %retval.0.i, %do.end42.sw.epilog_crit_edge100 ], [ -11, %sw.bb49 ]
  tail call void @xprt_wake_pending_tasks(ptr noundef %add.ptr, i32 noundef %status.0) #11
  tail call void @xprt_force_disconnect(ptr noundef %add.ptr) #11
  br label %out

out:                                              ; preds = %sw.epilog, %if.then5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !438
  %state.i93 = getelementptr i8, ptr %work, i32 -540
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i93) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !439
  br label %out_unlock

out_unlock:                                       ; preds = %out, %if.then45, %sw.bb43.out_unlock_crit_edge, %do.end42.out_unlock_crit_edge
  call void @xprt_unlock_connect(ptr noundef %add.ptr, ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xs_tcp_send_request(ptr noundef %req) #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %sent = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %or.i = or i32 %3, -2147483648
  %retval.0.i = select i1 %tobool.not.i, i32 0, i32 %or.i
  %add = add i32 %3, 4
  %cond = select i1 %tobool.not.i, i32 0, i32 %add
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #11
  %4 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %5 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.37, %union.anon.38 }, %union.anon.40, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg, i32 0, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16448, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sent) #11
  %7 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %sent, align 4, !annotation !437
  %xmit.i = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xmit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %entry.if.end8_crit_edge, label %xs_send_request_was_aborted.exit

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

xs_send_request_was_aborted.exit:                 ; preds = %entry
  %rq_bytes_sent.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 28
  %10 = ptrtoint ptr %rq_bytes_sent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rq_bytes_sent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i = icmp eq i32 %11, 0
  br i1 %cmp1.i, label %if.then, label %xs_send_request_was_aborted.exit.if.end8_crit_edge

xs_send_request_was_aborted.exit.if.end8_crit_edge: ; preds = %xs_send_request_was_aborted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %xs_send_request_was_aborted.exit
  %sock = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sock, align 8
  %cmp.not = icmp eq ptr %13, null
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @kernel_sock_shutdown(ptr noundef nonnull %13, i32 noundef 2) #11
  br label %cleanup

if.end8:                                          ; preds = %xs_send_request_was_aborted.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %inet = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %inet to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inet, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %sock_state = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %sock_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sock_state, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.end11.if.end20_crit_edge, label %if.then18

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %sock19 = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %sock19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sock19, align 8
  tail call fastcc void @xs_tcp_set_socket_timeouts(ptr noundef %1, ptr noundef %20)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end11.if.end20_crit_edge
  %call21 = tail call i64 @ktime_get() #11
  %rq_xtime = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 29
  %21 = ptrtoint ptr %rq_xtime to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call21, ptr %rq_xtime, align 8
  %22 = ptrtoint ptr %inet to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inet, align 4
  tail call void @tcp_sock_set_cork(ptr noundef %23, i1 noundef zeroext true) #11
  %sock23 = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 1
  %rq_bytes_sent = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 28
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end20
  %vm_wait.0.off0 = phi i1 [ false, %if.end20 ], [ %vm_wait.0.off0.be, %while.cond.backedge ]
  %24 = ptrtoint ptr %sock23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sock23, align 8
  %26 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xmit.i, align 4
  %call24 = call i32 @xprt_sock_sendmsg(ptr noundef %25, ptr noundef nonnull %msg, ptr noundef %rq_snd_buf, i32 noundef %27, i32 noundef %retval.0.i, ptr noundef nonnull %sent) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %28 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %while.cond.do.end37_crit_edge, label %do.end, !prof !432

while.cond.do.end37_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end37

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  %31 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xmit.i, align 4
  %sub = sub i32 %30, %32
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %sub, i32 noundef %call24) #14
  br label %do.end37

do.end37:                                         ; preds = %do.end, %while.cond.do.end37_crit_edge
  %33 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sent, align 4
  %35 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xmit.i, align 4
  %add40 = add i32 %36, %34
  store i32 %add40, ptr %xmit.i, align 4
  %37 = ptrtoint ptr %rq_bytes_sent to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add40, ptr %rq_bytes_sent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add40, i32 %cond)
  %cmp44.not = icmp ult i32 %add40, %cond
  br i1 %cmp44.not, label %if.end62, label %if.then51, !prof !440

if.then51:                                        ; preds = %do.end37
  %38 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xmit.i, align 4
  %rq_xmit_bytes_sent = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 18
  %40 = ptrtoint ptr %rq_xmit_bytes_sent to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rq_xmit_bytes_sent, align 8
  %add54 = add i32 %41, %39
  store i32 %add54, ptr %rq_xmit_bytes_sent, align 8
  store i32 0, ptr %xmit.i, align 4
  %xmit_queuelen = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 39
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %xmit_queuelen, i32 noundef 4) #11
  %42 = ptrtoint ptr %xmit_queuelen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %xmit_queuelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp58 = icmp eq i32 %43, 1
  br i1 %cmp58, label %if.then59, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then59:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %inet to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %inet, align 4
  call void @tcp_sock_set_cork(ptr noundef %45, i1 noundef zeroext false) #11
  br label %cleanup

if.end62:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp63 = icmp eq i32 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp64 = icmp eq i32 %call24, 0
  %spec.select = select i1 %cmp63, i1 %cmp64, i1 false
  br i1 %spec.select, label %land.rhs70, label %if.end107

land.rhs70:                                       ; preds = %if.end62
  %.b202 = load i1, ptr @xs_tcp_send_request.__already_done, align 1
  br i1 %.b202, label %land.rhs70.while.cond.backedge_crit_edge, label %if.then81, !prof !432

land.rhs70.while.cond.backedge_crit_edge:         ; preds = %land.rhs70
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then81:                                        ; preds = %land.rhs70
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xs_tcp_send_request.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1052, i32 noundef 9, ptr noundef null) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end128.while.cond.backedge_crit_edge, %if.end121.while.cond.backedge_crit_edge, %if.then81, %land.rhs70.while.cond.backedge_crit_edge
  %vm_wait.0.off0.be = phi i1 [ false, %if.end128.while.cond.backedge_crit_edge ], [ %vm_wait.0.off0.mux, %if.end121.while.cond.backedge_crit_edge ], [ false, %land.rhs70.while.cond.backedge_crit_edge ], [ false, %if.then81 ]
  br label %while.cond

if.end107:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call24)
  %cmp115 = icmp eq i32 %call24, -11
  br i1 %cmp115, label %if.then116, label %if.end128

if.then116:                                       ; preds = %if.end107
  %46 = ptrtoint ptr %sock23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sock23, align 8
  %flags = getelementptr inbounds %struct.socket, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags, align 4
  %50 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool119.not = icmp eq i32 %50, 0
  br i1 %tobool119.not, label %if.end121, label %if.then116.sw.bb132_crit_edge

if.then116.sw.bb132_crit_edge:                    ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb132

if.end121:                                        ; preds = %if.then116
  %51 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp122 = icmp ne i32 %52, 0
  %vm_wait.0.off0.not = xor i1 %vm_wait.0.off0, true
  %brmerge = select i1 %cmp122, i1 true, i1 %vm_wait.0.off0.not
  %not.cmp122 = xor i1 %cmp122, true
  %vm_wait.0.off0.mux = select i1 %not.cmp122, i1 true, i1 %vm_wait.0.off0
  br i1 %brmerge, label %if.end121.while.cond.backedge_crit_edge, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end121.while.cond.backedge_crit_edge:          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end128:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp129 = icmp slt i32 %call24, 0
  br i1 %cmp129, label %while.end, label %if.end128.while.cond.backedge_crit_edge

if.end128.while.cond.backedge_crit_edge:          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

while.end:                                        ; preds = %if.end128
  %53 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %call24, label %do.body135 [
    i32 -88, label %sw.bb
    i32 -11, label %while.end.sw.bb132_crit_edge
    i32 -104, label %while.end.cleanup_crit_edge
    i32 -111, label %while.end.cleanup_crit_edge228
    i32 -107, label %while.end.cleanup_crit_edge229
    i32 -98, label %while.end.cleanup_crit_edge230
    i32 -105, label %while.end.cleanup_crit_edge231
    i32 -32, label %while.end.cleanup_crit_edge232
  ]

while.end.cleanup_crit_edge232:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end.cleanup_crit_edge231:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end.cleanup_crit_edge230:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end.cleanup_crit_edge229:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end.cleanup_crit_edge228:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end.sw.bb132_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb132

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb132:                                         ; preds = %while.end.sw.bb132_crit_edge, %if.then116.sw.bb132_crit_edge
  %call133 = call fastcc i32 @xs_nospace(ptr noundef %req)
  br label %cleanup

do.body135:                                       ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %54 = load i32, ptr @rpc_debug, align 4
  %and136 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %do.body135.cleanup_crit_edge, label %do.end147, !prof !432

do.body135.cleanup_crit_edge:                     ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end147:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  %sub149 = sub i32 0, %call24
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %sub149) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end147, %do.body135.cleanup_crit_edge, %sw.bb132, %sw.bb, %while.end.cleanup_crit_edge, %while.end.cleanup_crit_edge228, %while.end.cleanup_crit_edge229, %while.end.cleanup_crit_edge230, %while.end.cleanup_crit_edge231, %while.end.cleanup_crit_edge232, %if.end121.cleanup_crit_edge, %if.then59, %if.then51.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %if.then5 ], [ -107, %if.then.cleanup_crit_edge ], [ -107, %if.end8.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %if.then51.cleanup_crit_edge ], [ %call24, %do.end147 ], [ %call24, %do.body135.cleanup_crit_edge ], [ %call24, %while.end.cleanup_crit_edge ], [ %call24, %while.end.cleanup_crit_edge228 ], [ %call24, %while.end.cleanup_crit_edge229 ], [ %call24, %while.end.cleanup_crit_edge230 ], [ %call24, %while.end.cleanup_crit_edge231 ], [ %call24, %while.end.cleanup_crit_edge232 ], [ %call133, %sw.bb132 ], [ -107, %sw.bb ], [ -105, %if.end121.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sent) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_tcp_shutdown(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sock1 = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %sock1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock1, align 8
  %inet = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 2
  %2 = ptrtoint ptr %inet to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inet, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i8 [ %5, %cond.true ], [ 7, %entry.cond.end_crit_edge ]
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %reuseport = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 19
  %6 = ptrtoint ptr %reuseport to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %reuseport, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %8 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then5.xs_close.exit_crit_edge, label %do.end.i, !prof !432

if.then5.xs_close.exit_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %xs_close.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %xprt) #14
  br label %xs_close.exit

xs_close.exit:                                    ; preds = %do.end.i, %if.then5.xs_close.exit_crit_edge
  tail call fastcc void @xs_reset_transport(ptr noundef %xprt) #11
  %reestablish_timeout.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 24
  %9 = ptrtoint ptr %reestablish_timeout.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %reestablish_timeout.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = zext i8 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.178)
  switch i8 %cond, label %sw.default [
    i8 4, label %if.end6.cleanup_crit_edge
    i8 5, label %if.end6.cleanup_crit_edge19
    i8 1, label %if.end6.sw.bb7_crit_edge
    i8 8, label %if.end6.sw.bb7_crit_edge20
  ]

if.end6.sw.bb7_crit_edge20:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end6.sw.bb7_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end6.cleanup_crit_edge19:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb7:                                           ; preds = %if.end6.sw.bb7_crit_edge, %if.end6.sw.bb7_crit_edge20
  %call = tail call i32 @kernel_sock_shutdown(ptr noundef nonnull %1, i32 noundef 2) #11
  tail call fastcc void @trace_rpc_socket_shutdown(ptr noundef %xprt, ptr noundef nonnull %1)
  br label %cleanup

sw.default:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @xs_reset_transport(ptr noundef %xprt)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb7, %if.end6.cleanup_crit_edge, %if.end6.cleanup_crit_edge19, %xs_close.exit, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_tcp_set_connect_timeout(ptr noundef %xprt, i32 noundef %connect_timeout, i32 noundef %reconnect_timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_lock = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %transport_lock) #11
  %max_reconnect_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 31
  %0 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_reconnect_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %reconnect_timeout)
  %cmp = icmp ugt i32 %1, %reconnect_timeout
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %reconnect_timeout, ptr %max_reconnect_timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %connect_timeout2 = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 30
  %3 = ptrtoint ptr %connect_timeout2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %connect_timeout2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %connect_timeout)
  %cmp3 = icmp ugt i32 %4, %connect_timeout
  br i1 %cmp3, label %if.then4, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %timeout = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 3
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timeout, align 4
  %to.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 8
  %7 = ptrtoint ptr %to.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %to.sroa.7.0.copyload22 = load i32, ptr %to.sroa.7.0..sroa_idx, align 4
  %to.sroa.724.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 12
  %8 = ptrtoint ptr %to.sroa.724.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %to.sroa.724.0.copyload25 = load i32, ptr %to.sroa.724.0..sroa_idx, align 4
  %to.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 16
  %9 = ptrtoint ptr %to.sroa.9.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %to.sroa.9.0.copyload28 = load i32, ptr %to.sroa.9.0..sroa_idx, align 4
  %add = add i32 %to.sroa.724.0.copyload25, 1
  %sub = add i32 %to.sroa.724.0.copyload25, %connect_timeout
  %div = udiv i32 %sub, %add
  %10 = tail call i32 @llvm.umax.i32(i32 %div, i32 600)
  %tcp_timeout = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 16
  %11 = ptrtoint ptr %tcp_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tcp_timeout, align 4
  %to.sroa.6.0.tcp_timeout.sroa_idx = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %to.sroa.6.0.tcp_timeout.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %to.sroa.6.0.tcp_timeout.sroa_idx, align 4
  %to.sroa.7.0.tcp_timeout.sroa_idx = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 16, i32 2
  %13 = ptrtoint ptr %to.sroa.7.0.tcp_timeout.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %to.sroa.7.0.copyload22, ptr %to.sroa.7.0.tcp_timeout.sroa_idx, align 4
  %to.sroa.724.0.tcp_timeout.sroa_idx = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 16, i32 3
  %14 = ptrtoint ptr %to.sroa.724.0.tcp_timeout.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %to.sroa.724.0.copyload25, ptr %to.sroa.724.0.tcp_timeout.sroa_idx, align 4
  %to.sroa.9.0.tcp_timeout.sroa_idx = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 16, i32 4
  %15 = ptrtoint ptr %to.sroa.9.0.tcp_timeout.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %to.sroa.9.0.copyload28, ptr %to.sroa.9.0.tcp_timeout.sroa_idx, align 4
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tcp_timeout, ptr %timeout, align 4
  %17 = ptrtoint ptr %connect_timeout2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %connect_timeout, ptr %connect_timeout2, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %if.end.if.end14_crit_edge
  %sock_state = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %sock_state) #11
  tail call void @_raw_spin_unlock(ptr noundef %transport_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_tcp_print_stats(ptr noundef %xprt, ptr noundef %seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 18
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 28
  %4 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_used, align 8
  %sub = sub i32 %3, %5
  %div = sdiv i32 %sub, 100
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %idle_time.0 = phi i32 [ %div, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %srcport = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 12
  %6 = ptrtoint ptr %srcport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %srcport, align 4
  %conv = zext i16 %7 to i32
  %stat = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat, align 8
  %connect_count = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 1
  %10 = ptrtoint ptr %connect_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %connect_count, align 4
  %connect_time = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 3
  %12 = ptrtoint ptr %connect_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %connect_time, align 4
  %div3 = udiv i32 %13, 100
  %sends = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 4
  %14 = ptrtoint ptr %sends to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sends, align 8
  %recvs = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 5
  %16 = ptrtoint ptr %recvs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %recvs, align 4
  %bad_xids = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 6
  %18 = ptrtoint ptr %bad_xids to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bad_xids, align 8
  %req_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 8
  %20 = ptrtoint ptr %req_u to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %req_u, align 8
  %bklog_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 9
  %22 = ptrtoint ptr %bklog_u to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bklog_u, align 8
  %max_slots = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 7
  %24 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_slots, align 4
  %sending_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 10
  %26 = ptrtoint ptr %sending_u to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sending_u, align 8
  %pending_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 11
  %28 = ptrtoint ptr %pending_u to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pending_u, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.142, i32 noundef %conv, i32 noundef %9, i32 noundef %11, i32 noundef %div3, i32 noundef %idle_time.0, i32 noundef %15, i32 noundef %17, i32 noundef %19, i64 noundef %21, i64 noundef %23, i32 noundef %25, i64 noundef %27, i64 noundef %29) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_setup_bc(ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xs_tcp_bc_maxpayload(ptr nocapture noundef readnone %xprt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4096
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_bc_max_slots(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free_bc_rqst(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_destroy_bc(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xs_tcp_set_socket_timeouts(ptr noundef %xprt, ptr nocapture noundef readonly %sock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_lock = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %transport_lock) #11
  %timeout = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 3
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeout, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %sub = add i32 %3, 99
  %div = udiv i32 %sub, 100
  %to_retries = getelementptr inbounds %struct.rpc_timeout, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %to_retries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %to_retries, align 4
  %add2 = add i32 %5, 1
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %3) #11
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timeout, align 4
  %to_retries6 = getelementptr inbounds %struct.rpc_timeout, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %to_retries6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to_retries6, align 4
  %add7 = add i32 %9, 1
  %mul = mul i32 %add7, %call
  %sock_state = getelementptr inbounds %struct.sock_xprt, ptr %xprt, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %sock_state) #11
  tail call void @_raw_spin_unlock(ptr noundef %transport_lock) #11
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %10 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk, align 16
  tail call void @sock_set_keepalive(ptr noundef %11) #11
  %12 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk, align 16
  %call10 = tail call i32 @tcp_sock_set_keepidle(ptr noundef %13, i32 noundef %div) #11
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %call12 = tail call i32 @tcp_sock_set_keepintvl(ptr noundef %15, i32 noundef %div) #11
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 16
  %call14 = tail call i32 @tcp_sock_set_keepcnt(ptr noundef %17, i32 noundef %add2) #11
  %18 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk, align 16
  tail call void @tcp_sock_set_user_timeout(ptr noundef %19, i32 noundef %mul) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_cork(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_keepalive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sock_set_keepidle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sock_set_keepintvl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sock_set_keepcnt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_user_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpc_socket_shutdown(ptr noundef %xprt, ptr noundef %socket) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_shutdown, i32 0, i32 1), ptr blockaddress(@trace_rpc_socket_shutdown, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !449

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !432

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !467
  %call42 = tail call i32 @__traceiter_rpc_socket_shutdown(ptr noundef null, ptr noundef %xprt, ptr noundef %socket) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !468
  %13 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !432

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_shutdown, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_shutdown, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpc_socket_shutdown.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_rpc_socket_shutdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 924, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !453
  %31 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
declare dso_local i32 @__traceiter_rpc_socket_shutdown(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_tcp_state_change(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %2 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.body10_crit_edge, label %do.end, !prof !432

do.body.do.body10_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull %1) #14
  br label %do.body10

do.body10:                                        ; preds = %do.end, %do.body.do.body10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %3 = load i32, ptr @rpc_debug, align 4
  %and11 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end33_crit_edge, label %do.end22, !prof !432

do.body10.do.end33_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.end22:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %5 to i32
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %shr.i.i = lshr i32 %7, 1
  %and1.i.i = and i32 %shr.i.i, 1
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 1
  %12 = load volatile i32, ptr %8, align 4
  %13 = lshr i32 %12, 8
  %.lobit = and i32 %13, 1
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %14 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sk_shutdown, align 2
  %conv29 = zext i8 %15 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %conv, i32 noundef %and1.i.i, i32 noundef %11, i32 noundef %.lobit, i32 noundef %conv29) #14
  br label %do.end33

do.end33:                                         ; preds = %do.end22, %do.body10.do.end33_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %16 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk_socket, align 8
  tail call fastcc void @trace_rpc_socket_state_change(ptr noundef nonnull %1, ptr noundef %17)
  %skc_state36 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state36 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state36, align 2
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %19, label %do.end33.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 4, label %sw.bb45
    i8 8, label %sw.bb62
    i8 11, label %do.end33.sw.bb66_crit_edge
    i8 9, label %sw.bb72
    i8 7, label %sw.bb87
  ]

do.end33.sw.bb66_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb66

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end33
  %state.i128 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state.i128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %if.then40, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then40:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %connect_cookie = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 25
  %21 = ptrtoint ptr %connect_cookie to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %connect_cookie, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %connect_cookie, align 8
  %sock_state = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %sock_state) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !438
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i128) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !439
  %connect_count = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 48, i32 1
  %23 = ptrtoint ptr %connect_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %connect_count, align 4
  %inc41 = add i32 %24, 1
  store i32 %inc41, ptr %connect_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %connect_start = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 48, i32 2
  %26 = ptrtoint ptr %connect_start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %connect_start, align 8
  %sub = sub i32 %25, %27
  %connect_time = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 48, i32 3
  %28 = ptrtoint ptr %connect_time to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %connect_time, align 4
  %add = add i32 %sub, %29
  store i32 %add, ptr %connect_time, align 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %sock_state) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %30 = load ptr, ptr @xprtiod_workqueue, align 4
  %error_worker.i = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %error_worker.i) #11
  br label %cleanup

sw.bb45:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %connect_cookie46 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 25
  %31 = ptrtoint ptr %connect_cookie46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %connect_cookie46, align 8
  %inc47 = add i32 %32, 1
  store i32 %inc47, ptr %connect_cookie46, align 8
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 24
  %33 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %reestablish_timeout, align 4
  %state = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !469
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !470
  br label %cleanup

sw.bb62:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %connect_cookie63 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 25
  %34 = ptrtoint ptr %connect_cookie63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %connect_cookie63, align 8
  %inc64 = add i32 %35, 1
  store i32 %inc64, ptr %connect_cookie63, align 8
  %state65 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state65) #11
  %sock_state.i130 = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 7, ptr noundef %sock_state.i130) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %36 = load ptr, ptr @xprtiod_workqueue, align 4
  %error_worker.i131 = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 8
  %call.i.i132 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %error_worker.i131) #11
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb62, %do.end33.sw.bb66_crit_edge
  %reestablish_timeout67 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 24
  %37 = ptrtoint ptr %reestablish_timeout67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reestablish_timeout67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %38)
  %cmp = icmp ult i32 %38, 300
  br i1 %cmp, label %if.then69, label %sw.bb66.cleanup_crit_edge

sw.bb66.cleanup_crit_edge:                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then69:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %reestablish_timeout67 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 300, ptr %reestablish_timeout67, align 4
  br label %cleanup

sw.bb72:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %state73 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state73) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !471
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state73) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !472
  br label %cleanup

sw.bb87:                                          ; preds = %do.end33
  %sock_state88 = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 6
  %call89 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %sock_state88) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %sw.bb87.if.end92_crit_edge, label %if.then91

sw.bb87.if.end92_crit_edge:                       ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then91:                                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !438
  %state.i133 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i133) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !439
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %sw.bb87.if.end92_crit_edge
  %state93 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state93) #11
  tail call void @_set_bit(i32 noundef 7, ptr noundef %sock_state88) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %40 = load ptr, ptr @xprtiod_workqueue, align 4
  %error_worker.i135 = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 8
  %call.i.i136 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %error_worker.i135) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %sw.bb72, %if.then69, %sw.bb66.cleanup_crit_edge, %sw.bb45, %if.then40, %sw.bb.cleanup_crit_edge, %do.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xs_tcp_write_space(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_sndbuf.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %0 = ptrtoint ptr %sk_sndbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_sndbuf.i.i.i, align 4
  %sk_wmem_queued.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %2 = ptrtoint ptr %sk_wmem_queued.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %sub.i.i.i = sub i32 %1, %3
  %4 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %shr.i.i.i = ashr i32 %4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %shr.i.i.i)
  %cmp.not.i.i = icmp slt i32 %sub.i.i.i, %shr.i.i.i
  br i1 %cmp.not.i.i, label %entry.if.end_crit_edge, label %land.rhs.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.i.i:                                     ; preds = %entry
  %5 = ptrtoint ptr %sk_wmem_queued.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %7 = ptrtoint ptr %sk_sndbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sk_sndbuf.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i.i.i = icmp slt i32 %6, %8
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %land.rhs.i.i.if.end_crit_edge

land.rhs.i.i.if.end_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i.i:                                     ; preds = %land.rhs.i.i
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %9 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_prot.i.i.i, align 8
  %stream_memory_free.i.i.i = getelementptr inbounds %struct.proto, ptr %10, i32 0, i32 28
  %11 = ptrtoint ptr %stream_memory_free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stream_memory_free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.then_crit_edge, label %sk_stream_is_writeable.exit

if.end.i.i.i.if.then_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sk_stream_is_writeable.exit:                      ; preds = %if.end.i.i.i
  %call.i.i.i = tail call zeroext i1 %12(ptr noundef %sk, i32 noundef 0) #11
  br i1 %call.i.i.i, label %sk_stream_is_writeable.exit.if.then_crit_edge, label %sk_stream_is_writeable.exit.if.end_crit_edge

sk_stream_is_writeable.exit.if.end_crit_edge:     ; preds = %sk_stream_is_writeable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sk_stream_is_writeable.exit.if.then_crit_edge:    ; preds = %sk_stream_is_writeable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %sk_stream_is_writeable.exit.if.then_crit_edge, %if.end.i.i.i.if.then_crit_edge
  tail call fastcc void @xs_write_space(ptr noundef %sk)
  br label %if.end

if.end:                                           ; preds = %if.then, %sk_stream_is_writeable.exit.if.end_crit_edge, %land.rhs.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpc_socket_state_change(ptr noundef %xprt, ptr noundef %socket) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_state_change, i32 0, i32 1), ptr blockaddress(@trace_rpc_socket_state_change, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !449

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !432

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !473
  %call42 = tail call i32 @__traceiter_rpc_socket_state_change(ptr noundef null, ptr noundef %xprt, ptr noundef %socket) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !474
  %13 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !432

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !422) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_state_change, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_state_change, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpc_socket_state_change.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_rpc_socket_state_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 919, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !453
  %31 = tail call i32 @llvm.read_register.i32(metadata !422) #11
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
declare dso_local i32 @__traceiter_rpc_socket_state_change(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xs_setup_bc_tcp(ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dstaddr = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 3
  %0 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dstaddr, align 4
  %2 = load i32, ptr @xprt_tcp_slot_table_entries, align 4
  %call = tail call fastcc ptr @xs_setup_xprt(ptr noundef %args, i32 noundef %2, i32 noundef %2)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %prot = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %prot to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %prot, align 4
  %xprt_class = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 54
  %4 = ptrtoint ptr %xprt_class to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xs_bc_tcp_transport, ptr %xprt_class, align 4
  %max_payload = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %max_payload to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2147483647, ptr %max_payload, align 8
  %timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xs_tcp_default_timeout, ptr %timeout, align 4
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 18
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i) #11
  %bind_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 23
  %7 = ptrtoint ptr %bind_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bind_timeout, align 8
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 24
  %8 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %reestablish_timeout, align 4
  %idle_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 29
  %9 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idle_timeout, align 4
  %ops = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bc_tcp_ops, ptr %ops, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.180)
  switch i16 %12, label %if.end.out_err_crit_edge [
    i16 2, label %if.end.do.body_crit_edge
    i16 10, label %sw.bb2
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %sw.bb2, %if.end.do.body_crit_edge
  %.str.129.sink = phi ptr [ @.str.130, %sw.bb2 ], [ @.str.129, %if.end.do.body_crit_edge ]
  tail call fastcc void @xs_format_peer_addresses(ptr noundef %call, ptr noundef nonnull @.str.129, ptr noundef nonnull %.str.129.sink)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %14 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end16_crit_edge, label %do.end, !prof !432

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %address_strings = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 51
  %15 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %address_strings, align 8
  %arrayidx10 = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 1
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 2
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx12, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %16, ptr noundef %18, ptr noundef %20) #14
  br label %do.end16

do.end16:                                         ; preds = %do.end, %do.body.do.end16_crit_edge
  %call17 = tail call ptr @xprt_get(ptr noundef %call) #11
  %bc_xprt = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 6
  %21 = ptrtoint ptr %bc_xprt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bc_xprt, align 4
  %xpt_bc_xprt = getelementptr inbounds %struct.svc_xprt, ptr %22, i32 0, i32 21
  %23 = ptrtoint ptr %xpt_bc_xprt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call, ptr %xpt_bc_xprt, align 4
  %24 = load ptr, ptr %bc_xprt, align 4
  %bc_xprt19 = getelementptr inbounds %struct.rpc_xprt, ptr %call, i32 0, i32 40
  %25 = ptrtoint ptr %bc_xprt19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %bc_xprt19, align 4
  %26 = load ptr, ptr %bc_xprt, align 4
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_sock, align 4
  %sock = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 1
  %29 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %sock, align 8
  %sk_sk = getelementptr inbounds %struct.svc_sock, ptr %26, i32 0, i32 2
  %30 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk_sk, align 4
  %inet = getelementptr inbounds %struct.sock_xprt, ptr %call, i32 0, i32 2
  %32 = ptrtoint ptr %inet to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %inet, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #11
  %call24 = tail call zeroext i1 @try_module_get(ptr noundef null) #11
  br i1 %call24, label %do.end16.cleanup_crit_edge, label %if.end26

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %bc_xprt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bc_xprt, align 4
  %xpt_bc_xprt28 = getelementptr inbounds %struct.svc_xprt, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %xpt_bc_xprt28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %xpt_bc_xprt28, align 4
  %36 = load ptr, ptr %bc_xprt, align 4
  %xpt_bc_xps = getelementptr inbounds %struct.svc_xprt, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %xpt_bc_xps to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %xpt_bc_xps, align 4
  tail call void @xprt_put(ptr noundef %call) #11
  br label %out_err

out_err:                                          ; preds = %if.end26, %if.end.out_err_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end26 ], [ inttoptr (i32 -97 to ptr), %if.end.out_err_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 0
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %39) #11
  %arrayidx.1.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 1
  %40 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.1.i.i, align 4
  tail call void @kfree(ptr noundef %41) #11
  %arrayidx.3.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 3
  %42 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.3.i.i, align 4
  tail call void @kfree(ptr noundef %43) #11
  %arrayidx.4.i.i = getelementptr %struct.rpc_xprt, ptr %call, i32 0, i32 51, i32 4
  %44 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.4.i.i, align 4
  tail call void @kfree(ptr noundef %45) #11
  tail call void @xprt_free(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out_err, %do.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %out_err ], [ %call, %entry.cleanup_crit_edge ], [ %call, %do.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bc_malloc(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_callsize = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %rq_callsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_callsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %3)
  %cmp = icmp ugt i32 %3, 4092
  br i1 %cmp, label %land.end, label %if.end34

land.end:                                         ; preds = %entry
  %.b53 = load i1, ptr @bc_malloc.__already_done, align 1
  br i1 %.b53, label %land.end.cleanup_crit_edge, label %if.then5, !prof !432

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @bc_malloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2486, i32 noundef 9, ptr noundef nonnull @.str.157, i32 noundef %3) #11
  br label %cleanup

if.end34:                                         ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool35.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.end37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #11
  %4 = ptrtoint ptr %call38 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %call38, align 4
  %data = getelementptr inbounds %struct.rpc_buffer, ptr %call38, i32 0, i32 1
  %rq_buffer = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %rq_buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %rq_buffer, align 8
  %6 = ptrtoint ptr %rq_callsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_callsize, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %7
  %rq_rbuffer = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %rq_rbuffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %rq_rbuffer, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end34.cleanup_crit_edge, %if.then5, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -22, %if.then5 ], [ -22, %land.end.cleanup_crit_edge ], [ -12, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bc_free(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_buffer = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rq_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_buffer, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %add.ptr to i32
  tail call void @free_pages(i32 noundef %4, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bc_send_request(ptr noundef %req) #0 align 64 {
entry:
  %msg.i = alloca %struct.msghdr, align 8
  %sent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %bc_xprt = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %bc_xprt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_xprt, align 4
  %xpt_mutex = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %xpt_mutex, i32 noundef 0) #11
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %xpt_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %xpt_flags, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  %rq_snd_buf.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %9 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %len.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %or.i = or i32 %11, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sent.i) #11
  %12 = ptrtoint ptr %sent.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sent.i, align 4
  %call.i = tail call i64 @ktime_get() #11
  %rq_xtime.i = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 29
  %13 = ptrtoint ptr %rq_xtime.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i, ptr %rq_xtime.i, align 8
  %sock.i = getelementptr inbounds %struct.sock_xprt, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sock.i, align 8
  %call1.i = call i32 @xprt_sock_sendmsg(ptr noundef %15, ptr noundef nonnull %msg.i, ptr noundef %rq_snd_buf.i, i32 noundef 0, i32 noundef %or.i, ptr noundef nonnull %sent.i) #11
  call void @xdr_free_bvec(ptr noundef %rq_snd_buf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.else.bc_sendto.exit_crit_edge, label %lor.lhs.false.i

if.else.bc_sendto.exit_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %bc_sendto.exit

lor.lhs.false.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %sent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sent.i, align 4
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  %add.i = add i32 %19, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add.i)
  %cmp3.not.i = icmp eq i32 %17, %add.i
  %spec.select.i = select i1 %cmp3.not.i, i32 %17, i32 -11
  br label %bc_sendto.exit

bc_sendto.exit:                                   ; preds = %lor.lhs.false.i, %if.else.bc_sendto.exit_crit_edge
  %retval.0.i = phi i32 [ -11, %if.else.bc_sendto.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sent.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  br label %if.end

if.end:                                           ; preds = %bc_sendto.exit, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %retval.0.i, %bc_sendto.exit ], [ -107, %entry.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %xpt_mutex) #11
  %20 = call i32 @llvm.smin.i32(i32 %len.0, i32 0)
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bc_close(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xprt_disconnect_done(ptr noundef %xprt) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bc_destroy(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !432

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %xprt) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %arrayidx.i.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 0
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %2) #11
  %arrayidx.1.i.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 1
  %3 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1.i.i, align 4
  tail call void @kfree(ptr noundef %4) #11
  %arrayidx.3.i.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 3
  %5 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.3.i.i, align 4
  tail call void @kfree(ptr noundef %6) #11
  %arrayidx.4.i.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 4
  %7 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.4.i.i, align 4
  tail call void @kfree(ptr noundef %8) #11
  tail call void @xprt_free(ptr noundef %xprt) #11
  tail call void @module_put(ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_portnr(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_uint_minmax(ptr noundef %val, ptr noundef %kp, i32 noundef 1, i32 noundef 65535) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint_minmax(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_slot_table_size(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_uint_minmax(ptr noundef %val, ptr noundef %kp, i32 noundef 2, i32 noundef 65536) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_max_slot_table_size(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_uint_minmax(ptr noundef %val, ptr noundef %kp, i32 noundef 2, i32 noundef 65536) #11
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 199)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 199)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !70, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !90, !92, !94, !95, !96, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !132, !134, !135, !137, !138, !139, !140, !142, !144, !146, !148, !149, !150, !151, !153, !155, !156, !157, !159, !160, !162, !163, !165, !167, !169, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !200, !201, !202, !203, !204, !205, !207, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !228, !229, !230, !231, !233, !234, !236, !237, !239, !241, !243, !245, !247, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !263, !264, !265, !266, !268, !270, !271, !272, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !287, !289, !290, !291, !292, !294, !296, !297, !298, !299, !301, !303, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !316, !317, !318, !320, !321, !322, !324, !326, !328, !330, !332, !334, !335, !337, !338, !339, !341, !342, !344, !346, !347, !348, !349, !351, !353, !354, !356, !357, !359, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !378, !380, !381, !382, !384, !385, !387, !389, !390, !391, !393, !395, !396, !398, !399, !400, !401, !402, !404, !406, !407, !409, !410, !412, !414, !415, !417, !419, !420}
!llvm.named.register.sp = !{!422}
!llvm.module.flags = !{!423, !424, !425, !426, !427, !428, !429, !430}
!llvm.ident = !{!431}

!0 = !{ptr @__ksymtab_get_srcport, !1, !"__ksymtab_get_srcport", i1 false, i1 false}
!1 = !{!"../net/sunrpc/xprtsock.c", i32 1651, i32 1}
!2 = !{ptr @__param_min_resvport, !3, !"__param_min_resvport", i1 false, i1 false}
!3 = !{!"../net/sunrpc/xprtsock.c", i32 3152, i32 1}
!4 = !{ptr @__UNIQUE_ID_min_resvporttype867, !3, !"__UNIQUE_ID_min_resvporttype867", i1 false, i1 false}
!5 = !{ptr @__param_max_resvport, !6, !"__param_max_resvport", i1 false, i1 false}
!6 = !{!"../net/sunrpc/xprtsock.c", i32 3153, i32 1}
!7 = !{ptr @__UNIQUE_ID_max_resvporttype868, !6, !"__UNIQUE_ID_max_resvporttype868", i1 false, i1 false}
!8 = !{ptr @__param_tcp_slot_table_entries, !9, !"__param_tcp_slot_table_entries", i1 false, i1 false}
!9 = !{!"../net/sunrpc/xprtsock.c", i32 3187, i32 1}
!10 = !{ptr @__UNIQUE_ID_tcp_slot_table_entriestype869, !9, !"__UNIQUE_ID_tcp_slot_table_entriestype869", i1 false, i1 false}
!11 = !{ptr @__param_tcp_max_slot_table_entries, !12, !"__param_tcp_max_slot_table_entries", i1 false, i1 false}
!12 = !{!"../net/sunrpc/xprtsock.c", i32 3189, i32 1}
!13 = !{ptr @__UNIQUE_ID_tcp_max_slot_table_entriestype870, !12, !"__UNIQUE_ID_tcp_max_slot_table_entriestype870", i1 false, i1 false}
!14 = !{ptr @__param_udp_slot_table_entries, !15, !"__param_udp_slot_table_entries", i1 false, i1 false}
!15 = !{!"../net/sunrpc/xprtsock.c", i32 3191, i32 1}
!16 = !{ptr @__UNIQUE_ID_udp_slot_table_entriestype871, !15, !"__UNIQUE_ID_udp_slot_table_entriestype871", i1 false, i1 false}
!17 = !{ptr @sunrpc_table_header, !18, !"sunrpc_table_header", i1 false, i1 false}
!18 = !{!"../net/sunrpc/xprtsock.c", i32 92, i32 33}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/sunrpc/xprtsock.c", i32 161, i32 15}
!21 = !{ptr @sunrpc_table, !22, !"sunrpc_table", i1 false, i1 false}
!22 = !{!"../net/sunrpc/xprtsock.c", i32 159, i32 25}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/sunrpc/xprtsock.c", i32 105, i32 15}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/sunrpc/xprtsock.c", i32 114, i32 15}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/sunrpc/xprtsock.c", i32 123, i32 15}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/sunrpc/xprtsock.c", i32 132, i32 15}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/sunrpc/xprtsock.c", i32 141, i32 15}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/sunrpc/xprtsock.c", i32 150, i32 15}
!35 = !{ptr @xs_tunables_table, !36, !"xs_tunables_table", i1 false, i1 false}
!36 = !{!"../net/sunrpc/xprtsock.c", i32 103, i32 25}
!37 = !{ptr @min_slot_table_size, !38, !"min_slot_table_size", i1 false, i1 false}
!38 = !{!"../net/sunrpc/xprtsock.c", i32 86, i32 21}
!39 = !{ptr @max_slot_table_size, !40, !"max_slot_table_size", i1 false, i1 false}
!40 = !{!"../net/sunrpc/xprtsock.c", i32 87, i32 21}
!41 = !{ptr @max_tcp_slot_table_limit, !42, !"max_tcp_slot_table_limit", i1 false, i1 false}
!42 = !{!"../net/sunrpc/xprtsock.c", i32 88, i32 21}
!43 = !{ptr @xprt_min_resvport_limit, !44, !"xprt_min_resvport_limit", i1 false, i1 false}
!44 = !{!"../net/sunrpc/xprtsock.c", i32 89, i32 21}
!45 = !{ptr @xprt_max_resvport_limit, !46, !"xprt_max_resvport_limit", i1 false, i1 false}
!46 = !{!"../net/sunrpc/xprtsock.c", i32 90, i32 21}
!47 = !{ptr @xs_tcp_fin_timeout, !48, !"xs_tcp_fin_timeout", i1 false, i1 false}
!48 = !{!"../net/sunrpc/xprtsock.c", i32 75, i32 21}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/sunrpc/xprtsock.c", i32 3073, i32 14}
!51 = !{ptr @xs_local_transport, !52, !"xs_local_transport", i1 false, i1 false}
!52 = !{!"../net/sunrpc/xprtsock.c", i32 3067, i32 26}
!53 = !{ptr @xs_setup_local.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../net/sunrpc/xprtsock.c", i32 2790, i32 2}
!55 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @xs_setup_local.__key.10, !57, !"__key", i1 false, i1 false}
!57 = !{!"../net/sunrpc/xprtsock.c", i32 2791, i32 2}
!58 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @xs_setup_local.__key.12, !60, !"__key", i1 false, i1 false}
!60 = !{!"../net/sunrpc/xprtsock.c", i32 2792, i32 2}
!61 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @xs_setup_local.__key.14, !60, !"__key", i1 false, i1 false}
!63 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/sunrpc/xprtsock.c", i32 2797, i32 4}
!66 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @xs_setup_local._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @xs_setup_local._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/sunrpc/xprtsock.c", i32 2803, i32 34}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/sunrpc/xprtsock.c", i32 2813, i32 2}
!74 = !{ptr @xs_setup_local._entry.20, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @xs_setup_local._entry_ptr.22, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/sunrpc/xprtsock.c", i32 2723, i32 3}
!78 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @xs_setup_xprt._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @xs_setup_xprt._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/sunrpc/xprtsock.c", i32 2730, i32 3}
!83 = !{ptr @xs_setup_xprt._entry.25, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @xs_setup_xprt._entry_ptr.27, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @xs_setup_xprt.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../net/sunrpc/xprtsock.c", i32 2736, i32 2}
!87 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @xs_init_anyaddr.sin, !89, !"sin", i1 false, i1 false}
!89 = !{!"../net/sunrpc/xprtsock.c", i32 2690, i32 34}
!90 = !{ptr @xs_init_anyaddr.sin6, !91, !"sin6", i1 false, i1 false}
!91 = !{!"../net/sunrpc/xprtsock.c", i32 2694, i32 35}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/sunrpc/xprtsock.c", i32 2709, i32 3}
!94 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @xs_init_anyaddr._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @xs_init_anyaddr._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @xs_local_ops, !98, !"xs_local_ops", i1 false, i1 false}
!98 = !{!"../net/sunrpc/xprtsock.c", i32 2595, i32 34}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/sunrpc/xprtsock.c", i32 863, i32 13}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/sunrpc/xprtsock.c", i32 869, i32 2}
!103 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @xs_local_send_request._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @xs_local_send_request._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/sunrpc/xprtsock.c", i32 893, i32 3}
!108 = !{ptr @xs_local_send_request._entry.34, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @xs_local_send_request._entry_ptr.36, !107, !"_entry_ptr", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../net/sunrpc/xprtsock.c", i32 795, i32 8}
!112 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../include/trace/events/sunrpc.h", i32 926, i32 1}
!115 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!119 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!122 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!126 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/sunrpc/xprtsock.c", i32 1224, i32 2}
!129 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @xs_close._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @xs_close._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../include/trace/events/sunrpc.h", i32 923, i32 1}
!134 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/sunrpc/xprtsock.c", i32 1252, i32 2}
!137 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @xs_destroy._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @xs_destroy._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/sunrpc/xprtsock.c", i32 2401, i32 18}
!142 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/linux/wait_bit.h", i32 181, i32 2}
!144 = !{ptr @xs_local_default_timeout, !145, !"xs_local_default_timeout", i1 false, i1 false}
!145 = !{!"../net/sunrpc/xprtsock.c", i32 2754, i32 33}
!146 = !{ptr @.str.49, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/sunrpc/xprtsock.c", i32 573, i32 3}
!148 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @xs_read_stream_call._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @xs_read_stream_call._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = distinct !{null, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!155 = !{ptr @.str.52, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.53, !154, !"<string literal>", i1 false, i1 false}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../include/trace/events/sunrpc.h", i32 1298, i32 1}
!159 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!160 = distinct !{null, !161, !"__already_done", i1 false, i1 false}
!161 = !{!"../include/trace/events/sunrpc.h", i32 1271, i32 1}
!162 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!163 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/sunrpc/xprtsock.c", i32 272, i32 30}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/sunrpc/xprtsock.c", i32 279, i32 30}
!167 = !{ptr @.str.56, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/sunrpc/xprtsock.c", i32 293, i32 29}
!169 = !{ptr @.str.57, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/sunrpc/xprtsock.c", i32 296, i32 29}
!171 = !{ptr @.str.58, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/sunrpc/xprtsock.c", i32 1864, i32 3}
!173 = !{ptr @.str.59, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @xs_local_setup_socket._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @xs_local_setup_socket._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/sunrpc/xprtsock.c", i32 1877, i32 2}
!178 = !{ptr @xs_local_setup_socket._entry.60, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @xs_local_setup_socket._entry_ptr.62, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.64, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/sunrpc/xprtsock.c", i32 1884, i32 3}
!182 = !{ptr @xs_local_setup_socket._entry.63, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @xs_local_setup_socket._entry_ptr.65, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/sunrpc/xprtsock.c", i32 1894, i32 3}
!186 = !{ptr @xs_local_setup_socket._entry.66, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @xs_local_setup_socket._entry_ptr.68, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/sunrpc/xprtsock.c", i32 1898, i32 3}
!190 = !{ptr @xs_local_setup_socket._entry.69, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @xs_local_setup_socket._entry_ptr.71, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.73, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/sunrpc/xprtsock.c", i32 1902, i32 3}
!194 = !{ptr @xs_local_setup_socket._entry.72, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @xs_local_setup_socket._entry_ptr.74, !193, !"_entry_ptr", i1 false, i1 false}
!196 = distinct !{null, !197, !"__already_done", i1 false, i1 false}
!197 = !{!"../net/sunrpc/xprtsock.c", i32 1757, i32 6}
!198 = !{ptr @xs_reclassify_socketu.__key, !199, !"__key", i1 false, i1 false}
!199 = !{!"../net/sunrpc/xprtsock.c", i32 1735, i32 2}
!200 = !{ptr @.str.75, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @xs_reclassify_socketu.__key.76, !199, !"__key", i1 false, i1 false}
!202 = !{ptr @.str.77, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.78, !199, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.79, !199, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @xs_slock_key, !206, !"xs_slock_key", i1 false, i1 false}
!206 = !{!"../net/sunrpc/xprtsock.c", i32 1729, i32 30}
!207 = !{ptr @xs_key, !208, !"xs_key", i1 false, i1 false}
!208 = !{!"../net/sunrpc/xprtsock.c", i32 1728, i32 30}
!209 = !{ptr @xs_reclassify_socket4.__key, !210, !"__key", i1 false, i1 false}
!210 = !{!"../net/sunrpc/xprtsock.c", i32 1743, i32 2}
!211 = !{ptr @xs_reclassify_socket4.__key.80, !210, !"__key", i1 false, i1 false}
!212 = !{ptr @.str.81, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.82, !210, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @xs_reclassify_socket6.__key, !215, !"__key", i1 false, i1 false}
!215 = !{!"../net/sunrpc/xprtsock.c", i32 1751, i32 2}
!216 = !{ptr @xs_reclassify_socket6.__key.83, !215, !"__key", i1 false, i1 false}
!217 = !{ptr @.str.84, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.85, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.86, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../net/sunrpc/xprtsock.c", i32 1365, i32 2}
!221 = !{ptr @.str.87, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @xs_data_ready._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @xs_data_ready._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = distinct !{null, !225, !"__warned", i1 false, i1 false}
!225 = !{!"../net/sunrpc/xprtsock.c", i32 1485, i32 7}
!226 = !{ptr @.str.88, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../net/sunrpc/xprtsock.c", i32 1164, i32 2}
!228 = !{ptr @.str.89, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @xs_error_report._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @xs_error_report._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = distinct !{null, !232, !"__already_done", i1 false, i1 false}
!232 = !{!"../include/trace/events/sunrpc.h", i32 921, i32 1}
!233 = distinct !{null, !232, !"__warned", i1 false, i1 false}
!234 = distinct !{null, !235, !"__already_done", i1 false, i1 false}
!235 = !{!"../include/trace/events/sunrpc.h", i32 920, i32 1}
!236 = distinct !{null, !235, !"__warned", i1 false, i1 false}
!237 = !{ptr @.str.90, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../net/sunrpc/xprtsock.c", i32 3082, i32 14}
!239 = !{ptr @.str.91, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../net/sunrpc/xprtsock.c", i32 3082, i32 21}
!241 = !{ptr @xs_udp_transport, !242, !"xs_udp_transport", i1 false, i1 false}
!242 = !{!"../net/sunrpc/xprtsock.c", i32 3076, i32 26}
!243 = !{ptr @xs_setup_udp.__key, !244, !"__key", i1 false, i1 false}
!244 = !{!"../net/sunrpc/xprtsock.c", i32 2862, i32 2}
!245 = !{ptr @xs_setup_udp.__key.93, !246, !"__key", i1 false, i1 false}
!246 = !{!"../net/sunrpc/xprtsock.c", i32 2863, i32 2}
!247 = !{ptr @xs_setup_udp.__key.94, !248, !"__key", i1 false, i1 false}
!248 = !{!"../net/sunrpc/xprtsock.c", i32 2864, i32 2}
!249 = !{ptr @xs_setup_udp.__key.95, !248, !"__key", i1 false, i1 false}
!250 = !{ptr @.str.96, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../net/sunrpc/xprtsock.c", i32 2885, i32 3}
!252 = !{ptr @.str.97, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @xs_setup_udp._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @xs_setup_udp._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.99, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../net/sunrpc/xprtsock.c", i32 2890, i32 3}
!257 = !{ptr @xs_setup_udp._entry.98, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @xs_setup_udp._entry_ptr.100, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @xs_udp_ops, !260, !"xs_udp_ops", i1 false, i1 false}
!260 = !{!"../net/sunrpc/xprtsock.c", i32 2615, i32 34}
!261 = !{ptr @.str.101, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../net/sunrpc/xprtsock.c", i32 1620, i32 2}
!263 = !{ptr @.str.102, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @xs_set_port._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @xs_set_port._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = distinct !{null, !267, !"__already_done", i1 false, i1 false}
!267 = !{!"../net/sunrpc/xprtsock.c", i32 2320, i32 2}
!268 = !{ptr @.str.103, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../net/sunrpc/xprtsock.c", i32 2323, i32 3}
!270 = !{ptr @.str.104, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @xs_connect._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @xs_connect._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.106, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../net/sunrpc/xprtsock.c", i32 2334, i32 3}
!275 = !{ptr @xs_connect._entry.105, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @xs_connect._entry_ptr.107, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.108, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../net/sunrpc/xprtsock.c", i32 941, i32 2}
!279 = !{ptr @.str.109, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @xs_udp_send_request._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @xs_udp_send_request._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @xs_udp_send_request._entry.110, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../net/sunrpc/xprtsock.c", i32 977, i32 3}
!284 = !{ptr @xs_udp_send_request._entry_ptr.111, !283, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.112, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../net/sunrpc/xprtsock.c", i32 2427, i32 18}
!287 = !{ptr @.str.113, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../net/sunrpc/xprtsock.c", i32 1232, i32 2}
!289 = !{ptr @.str.114, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @xs_inject_disconnect._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @xs_inject_disconnect._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @xs_udp_default_timeout, !293, !"xs_udp_default_timeout", i1 false, i1 false}
!293 = !{!"../net/sunrpc/xprtsock.c", i32 2824, i32 33}
!294 = !{ptr @.str.115, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../net/sunrpc/xprtsock.c", i32 1281, i32 3}
!296 = !{ptr @.str.116, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @xs_udp_data_read_skb._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @xs_udp_data_read_skb._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = distinct !{null, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../net/sunrpc/xprtsock.c", i32 1306, i32 3}
!301 = !{ptr @.str.118, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../net/sunrpc/xprtsock.c", i32 2062, i32 2}
!303 = !{ptr @.str.119, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @xs_udp_setup_socket._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @xs_udp_setup_socket._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.120, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../net/sunrpc/xprtsock.c", i32 1792, i32 3}
!308 = !{ptr @.str.121, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @xs_create_sock._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @xs_create_sock._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.122, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../net/sunrpc/xprtsock.c", i32 1705, i32 3}
!313 = !{ptr @.str.123, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @xs_bind._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @xs_bind._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.124, !312, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.125, !312, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.127, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../net/sunrpc/xprtsock.c", i32 1709, i32 3}
!320 = !{ptr @xs_bind._entry.126, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @xs_bind._entry_ptr.128, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.129, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../net/sunrpc/xprtsock.c", i32 3091, i32 14}
!324 = !{ptr @.str.130, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../net/sunrpc/xprtsock.c", i32 3091, i32 21}
!326 = !{ptr @xs_tcp_transport, !327, !"xs_tcp_transport", i1 false, i1 false}
!327 = !{!"../net/sunrpc/xprtsock.c", i32 3085, i32 26}
!328 = !{ptr @xs_setup_tcp.__key, !329, !"__key", i1 false, i1 false}
!329 = !{!"../net/sunrpc/xprtsock.c", i32 2945, i32 2}
!330 = !{ptr @xs_setup_tcp.__key.132, !331, !"__key", i1 false, i1 false}
!331 = !{!"../net/sunrpc/xprtsock.c", i32 2946, i32 2}
!332 = !{ptr @xs_setup_tcp.__key.133, !333, !"__key", i1 false, i1 false}
!333 = !{!"../net/sunrpc/xprtsock.c", i32 2947, i32 2}
!334 = !{ptr @xs_setup_tcp.__key.134, !333, !"__key", i1 false, i1 false}
!335 = !{ptr @.str.135, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../net/sunrpc/xprtsock.c", i32 2968, i32 3}
!337 = !{ptr @xs_setup_tcp._entry, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @xs_setup_tcp._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @xs_setup_tcp._entry.136, !340, !"_entry", i1 false, i1 false}
!340 = !{!"../net/sunrpc/xprtsock.c", i32 2973, i32 3}
!341 = !{ptr @xs_setup_tcp._entry_ptr.137, !340, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @xs_tcp_ops, !343, !"xs_tcp_ops", i1 false, i1 false}
!343 = !{!"../net/sunrpc/xprtsock.c", i32 2638, i32 34}
!344 = !{ptr @.str.138, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../net/sunrpc/xprtsock.c", i32 1037, i32 3}
!346 = !{ptr @.str.139, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @xs_tcp_send_request._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @xs_tcp_send_request._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = distinct !{null, !350, !"__already_done", i1 false, i1 false}
!350 = !{!"../net/sunrpc/xprtsock.c", i32 1052, i32 3}
!351 = !{ptr @xs_tcp_send_request._entry.140, !352, !"_entry", i1 false, i1 false}
!352 = !{!"../net/sunrpc/xprtsock.c", i32 1096, i32 3}
!353 = !{ptr @xs_tcp_send_request._entry_ptr.141, !352, !"_entry_ptr", i1 false, i1 false}
!354 = distinct !{null, !355, !"__already_done", i1 false, i1 false}
!355 = !{!"../include/trace/events/sunrpc.h", i32 924, i32 1}
!356 = distinct !{null, !355, !"__warned", i1 false, i1 false}
!357 = !{ptr @.str.142, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../net/sunrpc/xprtsock.c", i32 2455, i32 18}
!359 = !{ptr @xs_tcp_default_timeout, !360, !"xs_tcp_default_timeout", i1 false, i1 false}
!360 = !{!"../net/sunrpc/xprtsock.c", i32 2902, i32 33}
!361 = !{ptr @.str.143, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../net/sunrpc/xprtsock.c", i32 2245, i32 2}
!363 = !{ptr @xs_tcp_setup_socket._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @xs_tcp_setup_socket._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.145, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../net/sunrpc/xprtsock.c", i32 2253, i32 2}
!367 = !{ptr @xs_tcp_setup_socket._entry.144, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @xs_tcp_setup_socket._entry_ptr.146, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.148, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../net/sunrpc/xprtsock.c", i32 2285, i32 3}
!371 = !{ptr @xs_tcp_setup_socket._entry.147, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @xs_tcp_setup_socket._entry_ptr.149, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.150, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../net/sunrpc/xprtsock.c", i32 1409, i32 2}
!375 = !{ptr @.str.151, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @xs_tcp_state_change._entry, !374, !"_entry", i1 false, i1 false}
!377 = !{ptr @xs_tcp_state_change._entry_ptr, !374, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.153, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../net/sunrpc/xprtsock.c", i32 1410, i32 2}
!380 = !{ptr @xs_tcp_state_change._entry.152, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @xs_tcp_state_change._entry_ptr.154, !379, !"_entry_ptr", i1 false, i1 false}
!382 = distinct !{null, !383, !"__already_done", i1 false, i1 false}
!383 = !{!"../include/trace/events/sunrpc.h", i32 919, i32 1}
!384 = distinct !{null, !383, !"__warned", i1 false, i1 false}
!385 = !{ptr @xs_bc_tcp_transport, !386, !"xs_bc_tcp_transport", i1 false, i1 false}
!386 = !{!"../net/sunrpc/xprtsock.c", i32 3094, i32 26}
!387 = !{ptr @.str.156, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../net/sunrpc/xprtsock.c", i32 3031, i32 2}
!389 = !{ptr @xs_setup_bc_tcp._entry, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @xs_setup_bc_tcp._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @bc_tcp_ops, !392, !"bc_tcp_ops", i1 false, i1 false}
!392 = !{!"../net/sunrpc/xprtsock.c", i32 2671, i32 34}
!393 = distinct !{null, !394, !"__already_done", i1 false, i1 false}
!394 = !{!"../net/sunrpc/xprtsock.c", i32 2485, i32 3}
!395 = !{ptr @.str.157, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @.str.158, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../net/sunrpc/xprtsock.c", i32 2589, i32 2}
!398 = !{ptr @.str.159, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @bc_destroy._entry, !397, !"_entry", i1 false, i1 false}
!400 = !{ptr @bc_destroy._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @__param_str_min_resvport, !3, !"__param_str_min_resvport", i1 false, i1 false}
!402 = !{ptr @param_ops_portnr, !403, !"param_ops_portnr", i1 false, i1 false}
!403 = !{!"../net/sunrpc/xprtsock.c", i32 3144, i32 38}
!404 = !{ptr @xprt_min_resvport, !405, !"xprt_min_resvport", i1 false, i1 false}
!405 = !{!"../net/sunrpc/xprtsock.c", i32 71, i32 21}
!406 = !{ptr @__param_str_max_resvport, !6, !"__param_str_max_resvport", i1 false, i1 false}
!407 = !{ptr @xprt_max_resvport, !408, !"xprt_max_resvport", i1 false, i1 false}
!408 = !{!"../net/sunrpc/xprtsock.c", i32 72, i32 21}
!409 = !{ptr @__param_str_tcp_slot_table_entries, !9, !"__param_str_tcp_slot_table_entries", i1 false, i1 false}
!410 = !{ptr @param_ops_slot_table_size, !411, !"param_ops_slot_table_size", i1 false, i1 false}
!411 = !{!"../net/sunrpc/xprtsock.c", i32 3163, i32 38}
!412 = !{ptr @xprt_tcp_slot_table_entries, !413, !"xprt_tcp_slot_table_entries", i1 false, i1 false}
!413 = !{!"../net/sunrpc/xprtsock.c", i32 68, i32 21}
!414 = !{ptr @__param_str_tcp_max_slot_table_entries, !12, !"__param_str_tcp_max_slot_table_entries", i1 false, i1 false}
!415 = !{ptr @param_ops_max_slot_table_size, !416, !"param_ops_max_slot_table_size", i1 false, i1 false}
!416 = !{!"../net/sunrpc/xprtsock.c", i32 3179, i32 38}
!417 = !{ptr @xprt_max_tcp_slot_table_entries, !418, !"xprt_max_tcp_slot_table_entries", i1 false, i1 false}
!418 = !{!"../net/sunrpc/xprtsock.c", i32 69, i32 21}
!419 = !{ptr @__param_str_udp_slot_table_entries, !15, !"__param_str_udp_slot_table_entries", i1 false, i1 false}
!420 = !{ptr @xprt_udp_slot_table_entries, !421, !"xprt_udp_slot_table_entries", i1 false, i1 false}
!421 = !{!"../net/sunrpc/xprtsock.c", i32 67, i32 21}
!422 = !{!"sp"}
!423 = !{i32 1, !"wchar_size", i32 2}
!424 = !{i32 1, !"min_enum_size", i32 4}
!425 = !{i32 8, !"branch-target-enforcement", i32 0}
!426 = !{i32 8, !"sign-return-address", i32 0}
!427 = !{i32 8, !"sign-return-address-all", i32 0}
!428 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!429 = !{i32 7, !"uwtable", i32 1}
!430 = !{i32 7, !"frame-pointer", i32 2}
!431 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!432 = !{!"branch_weights", i32 2000, i32 1}
!433 = !{i64 2161630657}
!434 = !{i64 1184267, i64 1184284, i64 1184308, i64 1184334, i64 1184352}
!435 = !{i64 2161631000}
!436 = !{i64 2161424218, i64 2161424704, i64 2161424255, i64 2161424311, i64 2161424345, i64 2161424369, i64 2161424410, i64 2161424431, i64 2161424459, i64 2161424493}
!437 = !{!"auto-init"}
!438 = !{i64 2157197362}
!439 = !{i64 2157197641}
!440 = !{!"branch_weights", i32 1, i32 2000}
!441 = !{i64 2148762934}
!442 = !{i64 2148678219, i64 2148678251, i64 2148678280, i64 2148678314, i64 2148678345, i64 2148678368}
!443 = !{i64 2148763163}
!444 = !{i64 2148765975}
!445 = !{i64 2148680684, i64 2148680716, i64 2148680745, i64 2148680779, i64 2148680810, i64 2148680833}
!446 = !{i64 2148766204}
!447 = !{i64 2149999021}
!448 = !{i64 2149999287}
!449 = !{i64 2148305487, i64 2148305492, i64 2148305505, i64 2148305549, i64 2148305583, i64 2148305604}
!450 = !{i64 2160150517}
!451 = !{i64 2160150746}
!452 = !{i64 2150007580}
!453 = !{i64 2150008616}
!454 = !{i64 2161484201}
!455 = !{i64 2161484582}
!456 = !{i64 2160112255}
!457 = !{i64 2160112474}
!458 = !{i64 2160503664}
!459 = !{i64 2160503897}
!460 = !{i64 2160520306}
!461 = !{i64 2160520517}
!462 = !{i64 2160055457}
!463 = !{i64 2160055694}
!464 = !{i64 2161487904}
!465 = !{i64 2160072877}
!466 = !{i64 2160073110}
!467 = !{i64 2160129264}
!468 = !{i64 2160129489}
!469 = !{i64 2161561682}
!470 = !{i64 2161562063}
!471 = !{i64 2161562524}
!472 = !{i64 2161562803}
!473 = !{i64 2160037779}
!474 = !{i64 2160038012}
