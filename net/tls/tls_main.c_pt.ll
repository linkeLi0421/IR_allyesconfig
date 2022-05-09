; ModuleID = '/llk/IR_all_yes/net/tls/tls_main.c_pt.bc'
source_filename = "../net/tls/tls_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.135 }
%struct.atomic_t = type { i32 }
%union.anon.135 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.158 = type { i32 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%union.tls_crypto_context = type { %union.anon.179 }
%union.anon.179 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.125, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.125 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.150, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.150 = type { %struct.atomic_t }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.153, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.151 }
%union.anon.4 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.153 = type { ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.193, %struct.anon.194, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.193 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.194 = type { i32, i32, i32, i32 }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tls12_crypto_info_aes_gcm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.tls12_crypto_info_aes_ccm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.tls12_crypto_info_chacha20_poly1305 = type { %struct.tls_crypto_info, [12 x i8], [32 x i8], [0 x i8], [8 x i8] }
%struct.tls12_crypto_info_sm4_gcm = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.tls12_crypto_info_sm4_ccm = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }

@__UNIQUE_ID_author608 = internal constant [33 x i8] c"tls.author=Mellanox Technologies\00", section ".modinfo", align 1
@__UNIQUE_ID_description609 = internal constant [49 x i8] c"tls.description=Transport Layer Security Support\00", section ".modinfo", align 1
@__UNIQUE_ID_file610 = internal constant [21 x i8] c"tls.file=net/tls/tls\00", section ".modinfo", align 1
@__UNIQUE_ID_license611 = internal constant [25 x i8] c"tls.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace612 = internal constant [14 x i8] c"tls.alias=tls\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_tcp_ulp613 = internal constant [22 x i8] c"tls.alias=tcp-ulp-tls\00", section ".modinfo", align 1
@tls_prots = internal global { [2 x [4 x [4 x %struct.proto]]], [2016 x i8] } zeroinitializer, align 32
@tls_proto_ops = internal global { [2 x [4 x [4 x %struct.proto_ops]]], [864 x i8] } zeroinitializer, align 32
@tls_ctx_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ctx->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@tcp_tls_ulp_ops = internal global %struct.tcp_ulp_ops { %struct.list_head zeroinitializer, ptr @tls_init, ptr @tls_update, ptr null, ptr @tls_get_info, ptr @tls_get_info_size, ptr null, [16 x i8] c"tls\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, section ".data..read_mostly", align 4
@tls_proc_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @tls_init_net, ptr null, ptr @tls_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_tls__637_1012_tls_register6 = internal global ptr @tls_register, section ".initcall6.init", align 4
@__exitcall_tls_unregister = internal global ptr @tls_unregister, section ".exitcall.exit", align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@saved_tcpv6_prot = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tcpv6_prot_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tcpv6_prot_mutex, i64 52), ptr getelementptr (i8, ptr @tcpv6_prot_mutex, i64 52) }, ptr @tcpv6_prot_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@saved_tcpv4_prot = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tcpv4_prot_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tcpv4_prot_mutex, i64 52), ptr getelementptr (i8, ptr @tcpv4_prot_mutex, i64 52) }, ptr @tcpv4_prot_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tcpv6_prot_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcpv6_prot_mutex\00", [47 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/tls/tls_main.c\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tcpv4_prot_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcpv4_prot_mutex\00", [47 x i8] zeroinitializer }, align 32
@tls_get_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@switch.table.tls_setsockopt = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 40, i32 56, i32 40, i32 56, i32 40, i32 40], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"tls_prots\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 63, i32 21 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"tls_proto_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 64, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 724, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"tls_proc_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 977, i32 33 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 717, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"saved_tcpv6_prot\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 59, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"tcpv6_prot_mutex\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"saved_tcpv4_prot\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 61, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"tcpv4_prot_mutex\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 60, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 230, i32 6 }
@___asan_gen_.57 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 214, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 156, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 344, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 62, i32 8 }
@___asan_gen_.72 = private constant [22 x i8] c"../net/tls/tls_main.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 904, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 695, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 723, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 991, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [28 x i8] c"switch.table.tls_setsockopt\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias_tcp_ulp613, ptr @__UNIQUE_ID_alias_userspace612, ptr @__UNIQUE_ID_author608, ptr @__UNIQUE_ID_description609, ptr @__UNIQUE_ID_file610, ptr @__UNIQUE_ID_license611, ptr @__exitcall_tls_unregister, ptr @__initcall__kmod_tls__637_1012_tls_register6, ptr @tls_unregister, ptr @tls_prots, ptr @tls_proto_ops, ptr @tls_ctx_create.__key, ptr @.str, ptr @tls_proc_ops, ptr @.str.1, ptr @saved_tcpv6_prot, ptr @tcpv6_prot_mutex, ptr @saved_tcpv4_prot, ptr @tcpv4_prot_mutex, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.tls_setsockopt], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_prots to i32), i32 8064, i32 10080, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_proto_ops to i32), i32 3456, i32 4320, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_ctx_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_proc_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_tcpv6_prot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv6_prot_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_tcpv4_prot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv4_prot_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tls_setsockopt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_sk_prot(ptr noundef %sk, ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp = icmp eq i16 %1, 10
  %cond = zext i1 %cmp to i32
  %tx_conf = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %tx_conf, align 4
  %bf.lshr = lshr i8 %bf.load, 5
  %idxprom = zext i8 %bf.lshr to i32
  %bf.lshr6 = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr6, 7
  %idxprom7 = zext i8 %bf.clear to i32
  %arrayidx8 = getelementptr [2 x [4 x [4 x %struct.proto]]], ptr @tls_prots, i32 0, i32 %cond, i32 %idxprom, i32 %idxprom7
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %3 = ptrtoint ptr %skc_prot to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx8, ptr %skc_prot, align 8
  %bf.load21 = load i8, ptr %tx_conf, align 4
  %bf.lshr22 = lshr i8 %bf.load21, 5
  %idxprom23 = zext i8 %bf.lshr22 to i32
  %bf.lshr27 = lshr i8 %bf.load21, 2
  %bf.clear28 = and i8 %bf.lshr27, 7
  %idxprom29 = zext i8 %bf.clear28 to i32
  %arrayidx30 = getelementptr [2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 %cond, i32 %idxprom23, i32 %idxprom29
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %4 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_socket, align 8
  %ops = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %arrayidx30, ptr %ops, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_on_pending_writer(ptr noundef %sk, ptr nocapture noundef %timeo) local_unnamed_addr #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  call void @add_wait_queue(ptr noundef %15, ptr noundef nonnull %wait) #13
  %sk_write_pending = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 28
  br label %while.cond

while.cond:                                       ; preds = %if.end16.while.cond_crit_edge, %entry
  %16 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.cond
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stack.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end.if.then9_crit_edge, !prof !70

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

signal_pending.exit:                              ; preds = %if.end
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %21, align 4
  %and1.i.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool8.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool8.not, label %if.end11, label %signal_pending.exit.if.then9_crit_edge

signal_pending.exit.if.then9_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %signal_pending.exit.if.then9_crit_edge, %if.end.if.then9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %17)
  %cmp.i = icmp eq i32 %17, 2147483647
  %cond.i = select i1 %cmp.i, i32 -512, i32 -4
  br label %while.end

if.end11:                                         ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %sk) #13
  %27 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_write_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.not = icmp eq i32 %28, 0
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timeo, align 4
  %call15 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %30) #13
  %31 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call15, ptr %timeo, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 212
  %34 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  %35 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sk_write_pending, align 4
  %tobool20.not = icmp eq i32 %36, 0
  br i1 %tobool20.not, label %if.end16.while.end_crit_edge, label %if.end16.while.cond_crit_edge

if.end16.while.cond_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %if.then9, %while.cond.while.end_crit_edge
  %rc.0 = phi i32 [ %cond.i, %if.then9 ], [ -11, %while.cond.while.end_crit_edge ], [ 0, %if.end16.while.end_crit_edge ]
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %13, align 8
  call void @remove_wait_queue(ptr noundef %38, ptr noundef nonnull %wait) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_push_sg(ptr noundef %sk, ptr nocapture noundef writeonly %ctx, ptr noundef %sg, i16 noundef zeroext %first_offset, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %offset1 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %2 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset1, align 4
  %in_tcp_sendpages = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 11
  %4 = ptrtoint ptr %in_tcp_sendpages to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %in_tcp_sendpages, align 2
  %5 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg, align 4
  tail call void @tcp_rate_check_app_limited(ptr noundef %sk) #13
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sg, align 4
  %and.i.i79 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i79)
  %tobool.i.not.i80 = icmp eq i32 %and.i.i79, 0
  br i1 %tobool.i.not.i80, label %sg_page.exit.lr.ph, label %entry.do.body2.i_crit_edge, !prof !70

entry.do.body2.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

sg_page.exit.lr.ph:                               ; preds = %entry
  %and.i76 = shl i32 %6, 16
  %9 = and i32 %and.i76, 131072
  %10 = xor i32 %9, 131072
  %11 = or i32 %10, %flags
  %conv = zext i16 %first_offset to i32
  %add = add i32 %3, %conv
  %sub = sub i32 %1, %conv
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %sk_reserved_mem.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 12
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  br label %sg_page.exit

do.body2.i:                                       ; preds = %if.end20.do.body2.i_crit_edge, %entry.do.body2.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !71
  unreachable

sg_page.exit:                                     ; preds = %if.end20.sg_page.exit_crit_edge, %sg_page.exit.lr.ph
  %12 = phi i32 [ %8, %sg_page.exit.lr.ph ], [ %47, %if.end20.sg_page.exit_crit_edge ]
  %spec.select85 = phi i32 [ %11, %sg_page.exit.lr.ph ], [ %spec.select, %if.end20.sg_page.exit_crit_edge ]
  %offset.084 = phi i32 [ %add, %sg_page.exit.lr.ph ], [ %41, %if.end20.sg_page.exit_crit_edge ]
  %size.083 = phi i32 [ %sub, %sg_page.exit.lr.ph ], [ %43, %if.end20.sg_page.exit_crit_edge ]
  %sg.addr.081 = phi ptr [ %sg, %sg_page.exit.lr.ph ], [ %call18, %if.end20.sg_page.exit_crit_edge ]
  %and.i57 = and i32 %12, -4
  %13 = inttoptr i32 %and.i57 to ptr
  %call371 = tail call i32 @do_tcp_sendpages(ptr noundef %sk, ptr noundef %13, i32 noundef %offset.084, i32 noundef %size.083, i32 noundef %spec.select85) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %size.083, i32 %call371)
  %cmp.not72 = icmp eq i32 %size.083, %call371
  br i1 %cmp.not72, label %sg_page.exit.if.end16_crit_edge, label %sg_page.exit.if.then5_crit_edge

sg_page.exit.if.then5_crit_edge:                  ; preds = %sg_page.exit
  br label %if.then5

sg_page.exit.if.end16_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then5:                                         ; preds = %if.then8.if.then5_crit_edge, %sg_page.exit.if.then5_crit_edge
  %call375 = phi i32 [ %call3, %if.then8.if.then5_crit_edge ], [ %call371, %sg_page.exit.if.then5_crit_edge ]
  %offset.174 = phi i32 [ %add9, %if.then8.if.then5_crit_edge ], [ %offset.084, %sg_page.exit.if.then5_crit_edge ]
  %size.173 = phi i32 [ %sub10, %if.then8.if.then5_crit_edge ], [ %size.083, %sg_page.exit.if.then5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call375)
  %cmp6 = icmp sgt i32 %call375, 0
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then5
  %add9 = add i32 %call375, %offset.174
  %sub10 = sub i32 %size.173, %call375
  %call3 = tail call i32 @do_tcp_sendpages(ptr noundef %sk, ptr noundef %13, i32 noundef %add9, i32 noundef %sub10, i32 noundef %spec.select85) #13
  %cmp.not = icmp eq i32 %sub10, %call3
  br i1 %cmp.not, label %if.then8.if.end16_crit_edge, label %if.then8.if.then5_crit_edge

if.then8.if.then5_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %offset12 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.081, i32 0, i32 1
  %14 = ptrtoint ptr %offset12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset12, align 4
  %sub13 = sub i32 %offset.174, %15
  %conv14 = trunc i32 %sub13 to i16
  %partially_sent_offset = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 10
  %16 = ptrtoint ptr %partially_sent_offset to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv14, ptr %partially_sent_offset, align 4
  %partially_sent_record = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 9
  %17 = ptrtoint ptr %partially_sent_record to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sg.addr.081, ptr %partially_sent_record, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.then8.if.end16_crit_edge, %sg_page.exit.if.end16_crit_edge
  %18 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i58 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58)
  %tobool.not.i.i = icmp eq i32 %and.i.i58, 0
  br i1 %tobool.not.i.i, label %if.end16._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !70

if.end16._compound_head.exit.i_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %20, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.end16._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %13, %if.end16._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %21 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.1) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !73
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@tls_push_sg, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !77

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %.pre-phi) #13
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %24 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i59 = icmp eq ptr %27, null
  br i1 %tobool.i.not.i59, label %put_page.exit.sk_mem_uncharge.exit_crit_edge, label %if.end.i

put_page.exit.sk_mem_uncharge.exit_crit_edge:     ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_mem_uncharge.exit

if.end.i:                                         ; preds = %put_page.exit
  %length17 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.081, i32 0, i32 2
  %28 = ptrtoint ptr %length17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length17, align 4
  %30 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk_forward_alloc.i, align 8
  %add.i = add i32 %31, %29
  store i32 %add.i, ptr %sk_forward_alloc.i, align 8
  %32 = ptrtoint ptr %sk_reserved_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_reserved_mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i60 = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i60, label %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge, label %if.end.i.i61, !prof !70

if.end.i.sk_unused_reserved_mem.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_unused_reserved_mem.exit.i

if.end.i.i61:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sk_wmem_queued.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #13
  %36 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %38 = add i32 %35, %37
  %sub5.i.i = sub i32 %33, %38
  %39 = tail call i32 @llvm.smax.i32(i32 %sub5.i.i, i32 0) #13
  br label %sk_unused_reserved_mem.exit.i

sk_unused_reserved_mem.exit.i:                    ; preds = %if.end.i.i61, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge
  %retval.0.i.i62 = phi i32 [ %39, %if.end.i.i61 ], [ 0, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge ]
  %sub.i = sub i32 %add.i, %retval.0.i.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 2097151
  br i1 %cmp.i, label %if.then4.i, label %sk_unused_reserved_mem.exit.i.sk_mem_uncharge.exit_crit_edge, !prof !72

sk_unused_reserved_mem.exit.i.sk_mem_uncharge.exit_crit_edge: ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_mem_uncharge.exit

if.then4.i:                                       ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__sk_mem_reclaim(ptr noundef %sk, i32 noundef 1048576) #13
  br label %sk_mem_uncharge.exit

sk_mem_uncharge.exit:                             ; preds = %if.then4.i, %sk_unused_reserved_mem.exit.i.sk_mem_uncharge.exit_crit_edge, %put_page.exit.sk_mem_uncharge.exit_crit_edge
  %call18 = tail call ptr @sg_next(ptr noundef %sg.addr.081) #13
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %sk_mem_uncharge.exit.cleanup_crit_edge, label %if.end20

sk_mem_uncharge.exit.cleanup_crit_edge:           ; preds = %sk_mem_uncharge.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %sk_mem_uncharge.exit
  %offset21 = getelementptr inbounds %struct.scatterlist, ptr %call18, i32 0, i32 1
  %40 = ptrtoint ptr %offset21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset21, align 4
  %length22 = getelementptr inbounds %struct.scatterlist, ptr %call18, i32 0, i32 2
  %42 = ptrtoint ptr %length22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length22, align 4
  %44 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call18, align 4
  %and.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i32 %spec.select85, i32 %flags
  tail call void @tcp_rate_check_app_limited(ptr noundef %sk) #13
  %46 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call18, align 4
  %and.i.i = and i32 %47, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end20.sg_page.exit_crit_edge, label %if.end20.do.body2.i_crit_edge, !prof !70

if.end20.do.body2.i_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

if.end20.sg_page.exit_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sg_page.exit

cleanup:                                          ; preds = %sk_mem_uncharge.exit.cleanup_crit_edge, %if.end11
  %retval.0 = phi i32 [ %call375, %if.end11 ], [ 0, %sk_mem_uncharge.exit.cleanup_crit_edge ]
  %48 = ptrtoint ptr %in_tcp_sendpages to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %in_tcp_sendpages, align 2
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rate_check_app_limited(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_tcp_sendpages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_proccess_cmsg(ptr noundef %sk, ptr nocapture noundef readonly %msg, ptr nocapture noundef writeonly %record_type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %0 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ugt i32 %1, 11
  br i1 %cmp, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end:                                         ; preds = %entry
  %2 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %tobool.not40 = icmp eq ptr %4, null
  br i1 %tobool.not40, label %cond.end.cleanup_crit_edge, label %for.body.lr.ph

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %cond.end
  %5 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %icsk_ulp_data.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rc.042 = phi i32 [ -22, %for.body.lr.ph ], [ %rc.1, %for.inc.for.body_crit_edge ]
  %cmsg.041 = phi ptr [ %4, %for.body.lr.ph ], [ %add.ptr.i.i, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %cmsg.041 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmsg.041, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp1 = icmp ugt i32 %7, 11
  br i1 %cmp1, label %land.lhs.true, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_controllen, align 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %cmsg.041 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub.neg = sub i32 %9, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp4.not = icmp ugt i32 %7, %sub
  br i1 %cmp4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.041, i32 0, i32 1
  %12 = ptrtoint ptr %cmsg_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmsg_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %13)
  %cmp5.not = icmp eq i32 %13, 282
  br i1 %cmp5.not, label %if.end7, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.041, i32 0, i32 2
  %14 = ptrtoint ptr %cmsg_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cond21 = icmp ne i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %7)
  %cmp9 = icmp ult i32 %7, 13
  %or.cond = select i1 %cond21, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %16 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_flags, align 4
  %and = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  %pending_open_record_frags.i.i = getelementptr inbounds %struct.tls_context, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %pending_open_record_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pending_open_record_frags.i.i, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.i.not.i = icmp eq i8 %21, 0
  br i1 %tobool.i.not.i, label %if.end14.if.end18_crit_edge, label %tls_handle_open_record.exit

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

tls_handle_open_record.exit:                      ; preds = %if.end14
  %push_pending_record.i = getelementptr inbounds %struct.tls_context, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %push_pending_record.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %push_pending_record.i, align 4
  %call2.i = tail call i32 %23(ptr noundef %sk, i32 noundef %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool16.not = icmp eq i32 %call2.i, 0
  br i1 %tobool16.not, label %tls_handle_open_record.exit.if.end18_crit_edge, label %tls_handle_open_record.exit.cleanup_crit_edge

tls_handle_open_record.exit.cleanup_crit_edge:    ; preds = %tls_handle_open_record.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

tls_handle_open_record.exit.if.end18_crit_edge:   ; preds = %tls_handle_open_record.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end18:                                         ; preds = %tls_handle_open_record.exit.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  %add.ptr = getelementptr i8, ptr %cmsg.041, i32 12
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr, align 1
  %26 = ptrtoint ptr %record_type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %record_type, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.end.for.inc_crit_edge
  %rc.1 = phi i32 [ %rc.042, %if.end.for.inc_crit_edge ], [ 0, %if.end18 ]
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_controllen, align 8
  %31 = ptrtoint ptr %cmsg.041 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmsg.041, align 4
  %sub.i.i = add i32 %32, 3
  %and.i.i = and i32 %sub.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %cmsg.041, i32 %and.i.i
  %add.ptr1.i.i = getelementptr %struct.cmsghdr, ptr %add.ptr.i.i, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %30)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i.i, %30
  %tobool.not51 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not51
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %tls_handle_open_record.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %cond.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %rc.1, %for.inc.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call2.i, %tls_handle_open_record.exit.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_push_partial_record(ptr noundef %sk, ptr nocapture noundef %ctx, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %partially_sent_record = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %partially_sent_record to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %partially_sent_record, align 4
  %partially_sent_offset = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 10
  %2 = ptrtoint ptr %partially_sent_offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %partially_sent_offset, align 4
  store ptr null, ptr %partially_sent_record, align 4
  %call = tail call i32 @tls_push_sg(ptr noundef %sk, ptr noundef %ctx, ptr noundef %1, i16 noundef zeroext %3, i32 noundef %flags)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_free_partial_record(ptr noundef %sk, ptr nocapture noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %partially_sent_record = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %partially_sent_record to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %partially_sent_record, align 4
  %tobool.not14 = icmp eq ptr %1, null
  br i1 %tobool.not14, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %sk_reserved_mem.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 12
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %sk_mem_uncharge.exit.for.body_crit_edge, %for.body.lr.ph
  %sg.015 = phi ptr [ %1, %for.body.lr.ph ], [ %call1, %sk_mem_uncharge.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %sg.015 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg.015, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !70

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !71
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %3, -4
  %4 = inttoptr i32 %and.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i7 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %tobool.not.i.i = icmp eq i32 %and.i.i7, 0
  br i1 %tobool.not.i.i, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !70

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %7, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %4, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %8 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.1) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !73
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@tls_free_partial_record, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !77

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %.pre-phi) #13
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %11 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i8 = icmp eq ptr %14, null
  br i1 %tobool.i.not.i8, label %put_page.exit.sk_mem_uncharge.exit_crit_edge, label %if.end.i

put_page.exit.sk_mem_uncharge.exit_crit_edge:     ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_mem_uncharge.exit

if.end.i:                                         ; preds = %put_page.exit
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.015, i32 0, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %17 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_forward_alloc.i, align 8
  %add.i = add i32 %18, %16
  store i32 %add.i, ptr %sk_forward_alloc.i, align 8
  %19 = ptrtoint ptr %sk_reserved_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_reserved_mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i9 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i9, label %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge, label %if.end.i.i10, !prof !70

if.end.i.sk_unused_reserved_mem.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_unused_reserved_mem.exit.i

if.end.i.i10:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sk_wmem_queued.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #13
  %23 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %25 = add i32 %22, %24
  %sub5.i.i = sub i32 %20, %25
  %26 = tail call i32 @llvm.smax.i32(i32 %sub5.i.i, i32 0) #13
  br label %sk_unused_reserved_mem.exit.i

sk_unused_reserved_mem.exit.i:                    ; preds = %if.end.i.i10, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge
  %retval.0.i.i11 = phi i32 [ %26, %if.end.i.i10 ], [ 0, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge ]
  %sub.i = sub i32 %add.i, %retval.0.i.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 2097151
  br i1 %cmp.i, label %if.then4.i, label %sk_unused_reserved_mem.exit.i.sk_mem_uncharge.exit_crit_edge, !prof !72

sk_unused_reserved_mem.exit.i.sk_mem_uncharge.exit_crit_edge: ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_mem_uncharge.exit

if.then4.i:                                       ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__sk_mem_reclaim(ptr noundef %sk, i32 noundef 1048576) #13
  br label %sk_mem_uncharge.exit

sk_mem_uncharge.exit:                             ; preds = %if.then4.i, %sk_unused_reserved_mem.exit.i.sk_mem_uncharge.exit_crit_edge, %put_page.exit.sk_mem_uncharge.exit_crit_edge
  %call1 = tail call ptr @sg_next(ptr noundef nonnull %sg.015) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %sk_mem_uncharge.exit.for.end_crit_edge, label %sk_mem_uncharge.exit.for.body_crit_edge

sk_mem_uncharge.exit.for.body_crit_edge:          ; preds = %sk_mem_uncharge.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sk_mem_uncharge.exit.for.end_crit_edge:           ; preds = %sk_mem_uncharge.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %sk_mem_uncharge.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %27 = ptrtoint ptr %partially_sent_record to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %partially_sent_record, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_ctx_free(ptr noundef readnone %sk, ptr noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end:                                           ; preds = %entry
  %crypto_send = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 18
  %0 = call ptr @memset(ptr %crypto_send, i32 0, i32 56)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %crypto_send) #13, !srcloc !79
  %crypto_recv = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 19
  %1 = call ptr @memset(ptr %crypto_recv, i32 0, i32 56)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %crypto_recv) #13, !srcloc !79
  %tx_lock = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %tx_lock) #13
  %tobool1.not = icmp eq ptr %sk, null
  br i1 %tobool1.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %rcu = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 22
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 300 to ptr)) #13
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %ctx) #13
  br label %if.end9

if.end9:                                          ; preds = %if.else, %do.end, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tls_ctx_create(ptr noundef %sk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 308) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tx_lock = getelementptr inbounds %struct.tls_context, ptr %call7.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %tx_lock, ptr noundef nonnull @.str, ptr noundef nonnull @tls_ctx_create.__key) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !80
  %icsk_ulp_data26 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %icsk_ulp_data26 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %icsk_ulp_data26, align 8
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %skc_prot, align 8
  %sk_proto = getelementptr inbounds %struct.tls_context, ptr %call7.i.i, i32 0, i32 15
  %4 = ptrtoint ptr %sk_proto to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sk_proto, align 4
  %sk41 = getelementptr inbounds %struct.tls_context, ptr %call7.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %sk41 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sk, ptr %sk41, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tls_unregister() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @tcp_unregister_ulp(ptr noundef nonnull @tcp_tls_ulp_ops) #13
  tail call void @tls_device_cleanup() #13
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @tls_proc_ops) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_ulp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_device_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tls_register() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @tls_proc_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @tls_device_init() #13
  %call1 = tail call i32 @tcp_register_ulp(ptr noundef nonnull @tcp_tls_ulp_ops) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tls_init(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp.i = icmp eq i16 %1, 10
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %skc_prot.i, align 8
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true49.critedge.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = load volatile ptr, ptr @saved_tcpv6_prot, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !81
  %cmp13.not.i = icmp eq ptr %3, %4
  br i1 %cmp13.not.i, label %land.lhs.true.i.tls_build_proto.exit_crit_edge, label %if.then.i, !prof !70

land.lhs.true.i.tls_build_proto.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tls_build_proto.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @tcpv6_prot_mutex, i32 noundef 0) #13
  %5 = load ptr, ptr @saved_tcpv6_prot, align 4
  %cmp16.not.i = icmp eq ptr %3, %5
  br i1 %cmp16.not.i, label %if.then.i.if.end101.sink.split.i_crit_edge, label %if.then24.i, !prof !72

if.then.i.if.end101.sink.split.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101.sink.split.i

if.then24.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @build_protos(ptr noundef getelementptr inbounds ([2 x [4 x [4 x %struct.proto]]], ptr @tls_prots, i32 0, i32 1), ptr noundef %3) #13
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %6 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_socket.i, align 8
  %ops.i = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1), ptr %9, i32 108)
  %11 = call ptr @memmove(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 1), ptr %9, i32 108)
  store ptr @tls_sw_sendpage_locked, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 1, i32 0, i32 24), align 4
  %12 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 0, i32 1), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1), i32 108)
  store ptr @tls_sw_splice_read, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 0, i32 1, i32 20), align 4
  %13 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 1, i32 1), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 1), i32 108)
  store ptr @tls_sw_splice_read, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 1, i32 1, i32 20), align 4
  %14 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 2), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1), i32 108)
  store ptr null, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 2, i32 0, i32 24), align 4
  %15 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 2, i32 1), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 0, i32 1), i32 108)
  store ptr null, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 2, i32 1, i32 24), align 4
  %16 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 0, i32 2), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 0, i32 1), i32 108)
  %17 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 1, i32 2), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 1, i32 1), i32 108)
  %18 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 2, i32 2), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 2, i32 1), i32 108)
  store ptr null, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 2, i32 2, i32 24), align 4
  %19 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 1, i32 3, i32 3), ptr %9, i32 108)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  br label %if.end101.sink.split.sink.split.i

land.lhs.true49.critedge.i:                       ; preds = %entry
  %20 = load volatile ptr, ptr @saved_tcpv4_prot, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !83
  %cmp59.not.i = icmp eq ptr %3, %20
  br i1 %cmp59.not.i, label %land.lhs.true49.critedge.i.tls_build_proto.exit_crit_edge, label %if.then67.i, !prof !70

land.lhs.true49.critedge.i.tls_build_proto.exit_crit_edge: ; preds = %land.lhs.true49.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tls_build_proto.exit

if.then67.i:                                      ; preds = %land.lhs.true49.critedge.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @tcpv4_prot_mutex, i32 noundef 0) #13
  %21 = load ptr, ptr @saved_tcpv4_prot, align 4
  %cmp68.not.i = icmp eq ptr %3, %21
  br i1 %cmp68.not.i, label %if.then67.i.if.end101.sink.split.i_crit_edge, label %if.then76.i, !prof !72

if.then67.i.if.end101.sink.split.i_crit_edge:     ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101.sink.split.i

if.then76.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @build_protos(ptr noundef nonnull @tls_prots, ptr noundef %3) #13
  %sk_socket77.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %22 = ptrtoint ptr %sk_socket77.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk_socket77.i, align 8
  %ops78.i = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %ops78.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops78.i, align 4
  %26 = call ptr @memcpy(ptr @tls_proto_ops, ptr %25, i32 108)
  %27 = call ptr @memmove(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 1), ptr %25, i32 108)
  store ptr @tls_sw_sendpage_locked, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 1, i32 0, i32 24), align 4
  %28 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 0, i32 1), ptr @tls_proto_ops, i32 108)
  store ptr @tls_sw_splice_read, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 0, i32 1, i32 20), align 4
  %29 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 1, i32 1), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 1), i32 108)
  store ptr @tls_sw_splice_read, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 1, i32 1, i32 20), align 4
  %30 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 2), ptr @tls_proto_ops, i32 108)
  store ptr null, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 2, i32 0, i32 24), align 4
  %31 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 2, i32 1), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 0, i32 1), i32 108)
  store ptr null, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 2, i32 1, i32 24), align 4
  %32 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 0, i32 2), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 0, i32 1), i32 108)
  %33 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 1, i32 2), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 1, i32 1), i32 108)
  %34 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 2, i32 2), ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 2, i32 1), i32 108)
  store ptr null, ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 2, i32 2, i32 24), align 4
  %35 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 0, i32 3, i32 3), ptr %25, i32 108)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  br label %if.end101.sink.split.sink.split.i

if.end101.sink.split.sink.split.i:                ; preds = %if.then76.i, %if.then24.i
  %saved_tcpv4_prot.sink.i = phi ptr [ @saved_tcpv4_prot, %if.then76.i ], [ @saved_tcpv6_prot, %if.then24.i ]
  %tcpv6_prot_mutex.sink.ph.i = phi ptr [ @tcpv4_prot_mutex, %if.then76.i ], [ @tcpv6_prot_mutex, %if.then24.i ]
  %36 = ptrtoint ptr %saved_tcpv4_prot.sink.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %3, ptr %saved_tcpv4_prot.sink.i, align 4
  br label %if.end101.sink.split.i

if.end101.sink.split.i:                           ; preds = %if.end101.sink.split.sink.split.i, %if.then67.i.if.end101.sink.split.i_crit_edge, %if.then.i.if.end101.sink.split.i_crit_edge
  %tcpv6_prot_mutex.sink.i = phi ptr [ @tcpv6_prot_mutex, %if.then.i.if.end101.sink.split.i_crit_edge ], [ @tcpv4_prot_mutex, %if.then67.i.if.end101.sink.split.i_crit_edge ], [ %tcpv6_prot_mutex.sink.ph.i, %if.end101.sink.split.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef nonnull %tcpv6_prot_mutex.sink.i) #13
  br label %tls_build_proto.exit

tls_build_proto.exit:                             ; preds = %if.end101.sink.split.i, %land.lhs.true49.critedge.i.tls_build_proto.exit_crit_edge, %land.lhs.true.i.tls_build_proto.exit_crit_edge
  %call = tail call i32 @tls_toe_bypass(ptr noundef %sk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %tls_build_proto.exit.cleanup_crit_edge

tls_build_proto.exit.cleanup_crit_edge:           ; preds = %tls_build_proto.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %tls_build_proto.exit
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %37 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp.not = icmp eq i8 %38, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 2848, i32 noundef 308) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %tx_lock.i = getelementptr inbounds %struct.tls_context, ptr %call7.i.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %tx_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @tls_ctx_create.__key) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !80
  %icsk_ulp_data26.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %40 = ptrtoint ptr %icsk_ulp_data26.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i.i.i, ptr %icsk_ulp_data26.i, align 8
  %41 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %skc_prot.i, align 8
  %sk_proto.i = getelementptr inbounds %struct.tls_context, ptr %call7.i.i.i, i32 0, i32 15
  %43 = ptrtoint ptr %sk_proto.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %sk_proto.i, align 4
  %sk41.i = getelementptr inbounds %struct.tls_context, ptr %call7.i.i.i, i32 0, i32 16
  %44 = ptrtoint ptr %sk41.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %sk, ptr %sk41.i, align 8
  %tx_conf = getelementptr inbounds %struct.tls_context, ptr %call7.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %tx_conf, align 4
  %bf.clear9 = and i8 %bf.load, 3
  store i8 %bf.clear9, ptr %tx_conf, align 4
  %46 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %47)
  %cmp.i24 = icmp eq i16 %47, 10
  %cond.i = zext i1 %cmp.i24 to i32
  %arrayidx8.i = getelementptr [2 x [4 x [4 x %struct.proto]]], ptr @tls_prots, i32 0, i32 %cond.i, i32 0, i32 0
  %48 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %arrayidx8.i, ptr %skc_prot.i, align 8
  %arrayidx30.i = getelementptr [2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 %cond.i, i32 0, i32 0
  %sk_socket.i26 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %49 = ptrtoint ptr %sk_socket.i26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk_socket.i26, align 8
  %ops.i27 = getelementptr inbounds %struct.socket, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %arrayidx30.i, ptr %ops.i27, align 4
  br label %out

out:                                              ; preds = %if.end7, %if.end3.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end7 ], [ -12, %if.end3.out_crit_edge ]
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %tls_build_proto.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %tls_build_proto.exit.cleanup_crit_edge ], [ -107, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_update(ptr noundef %sk, ptr noundef %p, ptr noundef %write_space) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %if.then, !prof !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk_write_space = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %write_space, ptr %sk_write_space, align 4
  %sk_proto = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %sk_proto to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %p, ptr %sk_proto, align 4
  br label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %4 = ptrtoint ptr %skc_prot to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %p, ptr %skc_prot, align 8
  %sk_write_space9 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %5 = ptrtoint ptr %sk_write_space9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %write_space, ptr %sk_write_space9, align 4
  br label %if.end

if.end:                                           ; preds = %do.body4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tls_get_info(ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i88 = alloca i16, align 2
  %tmp.i74 = alloca i16, align 2
  %tmp.i72 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i70 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %cmp.i = icmp slt i32 %call1.i70, 0
  %tobool.not111 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not111
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %icsk_ulp_data = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %6 = ptrtoint ptr %icsk_ulp_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %icsk_ulp_data, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b69 = load i1, ptr @tls_get_info.__warned, align 1
  br i1 %.b69, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tls_get_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 904, ptr noundef nonnull @.str.10) #13
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %do.end12.nla_failure_crit_edge, label %if.end16

do.end12.nla_failure_crit_edge:                   ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_failure

if.end16:                                         ; preds = %do.end12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool18.not = icmp eq i16 %9, 0
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %if.then19

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then19:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #13
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %tmp.i, align 2
  %call.i71 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool21.not = icmp eq i32 %call.i71, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.nla_failure_crit_edge

if.then19.nla_failure_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_failure

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %cipher_type26 = getelementptr inbounds %struct.tls_prot_info, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %cipher_type26 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cipher_type26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool27.not = icmp eq i16 %12, 0
  br i1 %tobool27.not, label %if.end24.if.end33_crit_edge, label %if.then28

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then28:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i72) #13
  %13 = ptrtoint ptr %tmp.i72 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %tmp.i72, align 2
  %call.i73 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i72) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i72) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool30.not = icmp eq i32 %call.i73, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then28.nla_failure_crit_edge

if.then28.nla_failure_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_failure

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  %tx_conf.i = getelementptr inbounds %struct.tls_context, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %tx_conf.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %tx_conf.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %narrow = add nuw nsw i8 %bf.lshr.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %.inv = icmp slt i8 %bf.load.i, 0
  %narrow115 = select i1 %.inv, i8 0, i8 %narrow
  %retval.0.i = zext i8 %narrow115 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i74) #13
  %15 = ptrtoint ptr %tmp.i74 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %retval.0.i, ptr %tmp.i74, align 2
  %call.i75 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i74) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i74) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool36.not = icmp eq i32 %call.i75, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.nla_failure_crit_edge

if.end33.nla_failure_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_failure

if.end38:                                         ; preds = %if.end33
  %16 = ptrtoint ptr %tx_conf.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i77 = load i8, ptr %tx_conf.i, align 4
  %bf.lshr2.i79 = lshr i8 %bf.load.i77, 2
  %bf.clear.i80 = and i8 %bf.lshr2.i79, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear.i80)
  %17 = icmp ult i8 %bf.clear.i80, 4
  %narrow116 = add nuw nsw i8 %bf.clear.i80, 1
  %narrow117 = select i1 %17, i8 %narrow116, i8 0
  %retval.0.i86 = zext i8 %narrow117 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i88) #13
  %18 = ptrtoint ptr %tmp.i88 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %retval.0.i86, ptr %tmp.i88, align 2
  %call.i89 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i88) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i88) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool41.not = icmp eq i32 %call.i89, 0
  br i1 %tobool41.not, label %if.end43, label %if.end38.nla_failure_crit_edge

if.end38.nla_failure_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_failure

if.end43:                                         ; preds = %if.end38
  %call.i90 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i90, label %if.end43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i93

if.end43.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i93:                                ; preds = %if.end43
  %call1.i91 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, label %if.then.i96

land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i96, %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, %if.end43.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  %19 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i97 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i97 to ptr
  %preempt_count.i.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i98, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i98, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

nla_failure:                                      ; preds = %if.end38.nla_failure_crit_edge, %if.end33.nla_failure_crit_edge, %if.then28.nla_failure_crit_edge, %if.then19.nla_failure_crit_edge, %do.end12.nla_failure_crit_edge
  %err.0 = phi i32 [ %call.i71, %if.then19.nla_failure_crit_edge ], [ %call.i73, %if.then28.nla_failure_crit_edge ], [ %call.i75, %if.end33.nla_failure_crit_edge ], [ %call.i89, %if.end38.nla_failure_crit_edge ], [ 0, %do.end12.nla_failure_crit_edge ]
  %call.i100 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i100, label %nla_failure.if.then.i.i_crit_edge, label %land.lhs.true.i103

nla_failure.if.then.i.i_crit_edge:                ; preds = %nla_failure
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

land.lhs.true.i103:                               ; preds = %nla_failure
  %call1.i101 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool.not.i102, label %land.lhs.true.i103.if.then.i.i_crit_edge, label %land.lhs.true2.i105

land.lhs.true.i103.if.then.i.i_crit_edge:         ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

land.lhs.true2.i105:                              ; preds = %land.lhs.true.i103
  %.b4.i104 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104, label %land.lhs.true2.i105.if.then.i.i_crit_edge, label %if.then.i106

land.lhs.true2.i105.if.then.i.i_crit_edge:        ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i106:                                     ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i106, %land.lhs.true2.i105.if.then.i.i_crit_edge, %land.lhs.true.i103.if.then.i.i_crit_edge, %nla_failure.if.then.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  %26 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i107 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i107 to ptr
  %preempt_count.i.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i108, align 4
  %sub.i.i.i109 = add i32 %29, -1
  store volatile i32 %sub.i.i.i109, ptr %preempt_count.i.i.i.i108, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %31, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !72

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %nla_nest_cancel.exit ], [ 0, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tls_get_info_size(ptr nocapture noundef readnone %sk) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_toe_bypass(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @build_protos(ptr noundef %prot, ptr nocapture noundef readonly %base) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %prot, ptr %base, i32 252)
  %setsockopt = getelementptr inbounds %struct.proto, ptr %prot, i32 0, i32 9
  %1 = ptrtoint ptr %setsockopt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tls_setsockopt, ptr %setsockopt, align 4
  %getsockopt = getelementptr inbounds %struct.proto, ptr %prot, i32 0, i32 10
  %2 = ptrtoint ptr %getsockopt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tls_getsockopt, ptr %getsockopt, align 4
  %3 = ptrtoint ptr %prot to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tls_sk_proto_close, ptr %prot, align 4
  %arrayidx8 = getelementptr [4 x %struct.proto], ptr %prot, i32 1
  %4 = call ptr @memcpy(ptr %arrayidx8, ptr %prot, i32 252)
  %sendmsg = getelementptr [4 x %struct.proto], ptr %prot, i32 1, i32 0, i32 12
  %5 = ptrtoint ptr %sendmsg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tls_sw_sendmsg, ptr %sendmsg, align 4
  %sendpage = getelementptr [4 x %struct.proto], ptr %prot, i32 1, i32 0, i32 14
  %6 = ptrtoint ptr %sendpage to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tls_sw_sendpage, ptr %sendpage, align 4
  %arrayidx17 = getelementptr [4 x %struct.proto], ptr %prot, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %arrayidx17, ptr %prot, i32 252)
  %recvmsg = getelementptr [4 x %struct.proto], ptr %prot, i32 0, i32 1, i32 13
  %8 = ptrtoint ptr %recvmsg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tls_sw_recvmsg, ptr %recvmsg, align 4
  %sock_is_readable = getelementptr [4 x %struct.proto], ptr %prot, i32 0, i32 1, i32 29
  %9 = ptrtoint ptr %sock_is_readable to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tls_sw_sock_is_readable, ptr %sock_is_readable, align 4
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tls_sk_proto_close, ptr %arrayidx17, align 4
  %arrayidx28 = getelementptr [4 x %struct.proto], ptr %prot, i32 1, i32 1
  %11 = call ptr @memcpy(ptr %arrayidx28, ptr %arrayidx8, i32 252)
  %recvmsg33 = getelementptr [4 x %struct.proto], ptr %prot, i32 1, i32 1, i32 13
  %12 = ptrtoint ptr %recvmsg33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tls_sw_recvmsg, ptr %recvmsg33, align 4
  %sock_is_readable36 = getelementptr [4 x %struct.proto], ptr %prot, i32 1, i32 1, i32 29
  %13 = ptrtoint ptr %sock_is_readable36 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tls_sw_sock_is_readable, ptr %sock_is_readable36, align 4
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tls_sk_proto_close, ptr %arrayidx28, align 4
  %arrayidx40 = getelementptr [4 x %struct.proto], ptr %prot, i32 2
  %15 = call ptr @memcpy(ptr %arrayidx40, ptr %prot, i32 252)
  %sendmsg46 = getelementptr [4 x %struct.proto], ptr %prot, i32 2, i32 0, i32 12
  %16 = ptrtoint ptr %sendmsg46 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tls_device_sendmsg, ptr %sendmsg46, align 4
  %sendpage49 = getelementptr [4 x %struct.proto], ptr %prot, i32 2, i32 0, i32 14
  %17 = ptrtoint ptr %sendpage49 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tls_device_sendpage, ptr %sendpage49, align 4
  %arrayidx51 = getelementptr [4 x %struct.proto], ptr %prot, i32 2, i32 1
  %18 = call ptr @memcpy(ptr %arrayidx51, ptr %arrayidx17, i32 252)
  %sendmsg56 = getelementptr [4 x %struct.proto], ptr %prot, i32 2, i32 1, i32 12
  %19 = ptrtoint ptr %sendmsg56 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tls_device_sendmsg, ptr %sendmsg56, align 4
  %sendpage59 = getelementptr [4 x %struct.proto], ptr %prot, i32 2, i32 1, i32 14
  %20 = ptrtoint ptr %sendpage59 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tls_device_sendpage, ptr %sendpage59, align 4
  %arrayidx61 = getelementptr [4 x %struct.proto], ptr %prot, i32 0, i32 2
  %21 = call ptr @memcpy(ptr %arrayidx61, ptr %arrayidx17, i32 252)
  %arrayidx65 = getelementptr [4 x %struct.proto], ptr %prot, i32 1, i32 2
  %22 = call ptr @memcpy(ptr %arrayidx65, ptr %arrayidx28, i32 252)
  %arrayidx69 = getelementptr [4 x %struct.proto], ptr %prot, i32 2, i32 2
  %23 = call ptr @memcpy(ptr %arrayidx69, ptr %arrayidx51, i32 252)
  %arrayidx73 = getelementptr [4 x %struct.proto], ptr %prot, i32 3, i32 3
  %24 = call ptr @memcpy(ptr %arrayidx73, ptr %base, i32 252)
  %hash = getelementptr [4 x %struct.proto], ptr %prot, i32 3, i32 3, i32 20
  %25 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tls_toe_hash, ptr %hash, align 4
  %unhash = getelementptr [4 x %struct.proto], ptr %prot, i32 3, i32 3, i32 21
  %26 = ptrtoint ptr %unhash to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @tls_toe_unhash, ptr %unhash, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tls_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %level)
  %cmp.not = icmp eq i32 %level, 282
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %sk_proto = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_proto, align 4
  %setsockopt = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %setsockopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setsockopt, align 4
  %call1 = tail call i32 %5(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %optname.off.i = add i32 %optname, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %optname.off.i)
  %switch.i = icmp ult i32 %optname.off.i, 2
  br i1 %switch.i, label %sw.bb.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  %6 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %icsk_ulp_data.i, align 8
  %sockptr.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.0.extract.i.i.i)
  %retval.0.i.i.i = icmp eq i32 %sockptr.coerce.fca.0.extract.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp.i.i = icmp ult i32 %optlen, 4
  %or.cond.i.i = or i1 %retval.0.i.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %sw.bb.i.do_tls_setsockopt_conf.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.do_tls_setsockopt_conf.exit.i_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_tls_setsockopt_conf.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cmp.not.i = icmp eq i32 %optname, 1
  %crypto_send.i.i = getelementptr inbounds %struct.tls_context, ptr %7, i32 0, i32 18
  %crypto_recv.i.i = getelementptr inbounds %struct.tls_context, ptr %7, i32 0, i32 19
  %alt_crypto_info.0.i.i = select i1 %cmp.not.i, ptr %crypto_recv.i.i, ptr %crypto_send.i.i
  %crypto_info.0.i.i = select i1 %cmp.not.i, ptr %crypto_send.i.i, ptr %crypto_recv.i.i
  %cipher_type.i.i = getelementptr inbounds %struct.tls_crypto_info, ptr %crypto_info.0.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %cipher_type.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cipher_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6.not.i.i = icmp eq i16 %9, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i.i.do_tls_setsockopt_conf.exit.i_crit_edge

if.end.i.i.do_tls_setsockopt_conf.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_tls_setsockopt_conf.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %10 = inttoptr i32 %sockptr.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i.i)
  %bf.cast.i.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i.i, label %if.end.i.i.i.i, label %if.end59.i.i.i.i.i.i

if.end59.i.i.i.i.i.i:                             ; preds = %if.end8.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i.i.i, label %if.end59.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

if.end59.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge: ; preds = %if.end59.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %if.end59.i.i.i.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 4, i32 -1226833920) #17, !srcloc !87
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i6.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge, !prof !70

land.lhs.true.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %crypto_info.0.i.i, i32 noundef 4) #13
  %12 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i.i) #5, !srcloc !88
  %and.i.i.i.i.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i.i) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %call1.i.i.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %crypto_info.0.i.i, ptr noundef %10, i32 noundef 4) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.if.end12.i.i_crit_edge, label %if.end.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge, !prof !70

if.end.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i.i

if.end.i.i.i.i.i.i.if.end12.i.i_crit_edge:        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i.i

if.then11.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge, %if.end59.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge
  %res.0.i.i.i3.i.i.i = phi i32 [ %call1.i.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge ], [ 4, %if.end59.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i.i = sub i32 4, %res.0.i.i.i3.i.i.i
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %crypto_info.0.i.i, i32 %sub.i.i.i.i.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 %res.0.i.i.i3.i.i.i)
  br label %err_crypto_info.i.i

if.end.i.i.i.i:                                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %10, align 1
  %18 = ptrtoint ptr %crypto_info.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %crypto_info.0.i.i, align 1
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end.i.i.i.i, %if.end.i.i.i.i.i.i.if.end12.i.i_crit_edge
  %19 = ptrtoint ptr %crypto_info.0.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %crypto_info.0.i.i, align 2
  %.off.i.i = add i16 %20, -771
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i.i)
  %switch.i.i = icmp ult i16 %.off.i.i, 2
  br i1 %switch.i.i, label %if.end20.i.i, label %if.end12.i.i.err_crypto_info.i.i_crit_edge

if.end12.i.i.err_crypto_info.i.i_crit_edge:       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_crypto_info.i.i

if.end20.i.i:                                     ; preds = %if.end12.i.i
  %cipher_type21.i.i = getelementptr inbounds %struct.tls_crypto_info, ptr %alt_crypto_info.0.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %cipher_type21.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cipher_type21.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool22.not.i.i = icmp eq i16 %22, 0
  br i1 %tobool22.not.i.i, label %if.end39thread-pre-split.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  %23 = ptrtoint ptr %alt_crypto_info.0.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %alt_crypto_info.0.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %20)
  %cmp28.not.i.i = icmp eq i16 %24, %20
  br i1 %cmp28.not.i.i, label %lor.lhs.false30.i.i, label %if.then23.i.i.err_crypto_info.i.i_crit_edge

if.then23.i.i.err_crypto_info.i.i_crit_edge:      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_crypto_info.i.i

lor.lhs.false30.i.i:                              ; preds = %if.then23.i.i
  %25 = ptrtoint ptr %cipher_type.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cipher_type.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %26)
  %cmp35.not.i.i = icmp eq i16 %22, %26
  br i1 %cmp35.not.i.i, label %lor.lhs.false30.i.i.if.end39.i.i_crit_edge, label %lor.lhs.false30.i.i.err_crypto_info.i.i_crit_edge

lor.lhs.false30.i.i.err_crypto_info.i.i_crit_edge: ; preds = %lor.lhs.false30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_crypto_info.i.i

lor.lhs.false30.i.i.if.end39.i.i_crit_edge:       ; preds = %lor.lhs.false30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i.i

if.end39thread-pre-split.i.i:                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %cipher_type.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %.pr.i.i = load i16, ptr %cipher_type.i.i, align 2
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.end39thread-pre-split.i.i, %lor.lhs.false30.i.i.if.end39.i.i_crit_edge
  %28 = phi i16 [ %.pr.i.i, %if.end39thread-pre-split.i.i ], [ %22, %lor.lhs.false30.i.i.if.end39.i.i_crit_edge ]
  %switch.tableidx = add i16 %28, -51
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %29 = icmp ult i16 %switch.tableidx, 6
  br i1 %29, label %switch.lookup, label %if.end39.i.i.err_crypto_info.i.i_crit_edge

if.end39.i.i.err_crypto_info.i.i_crit_edge:       ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_crypto_info.i.i

switch.lookup:                                    ; preds = %if.end39.i.i
  %30 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.tls_setsockopt, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %optlen)
  %cmp47.not.i.i = icmp eq i32 %switch.load, %optlen
  br i1 %cmp47.not.i.i, label %if.end50.i.i, label %switch.lookup.err_crypto_info.i.i_crit_edge

switch.lookup.err_crypto_info.i.i_crit_edge:      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_crypto_info.i.i

if.end50.i.i:                                     ; preds = %switch.lookup
  %add.ptr.i.i = getelementptr %struct.tls_crypto_info, ptr %crypto_info.0.i.i, i32 1
  %sub.i.i = add i32 %optlen, -4
  %add.ptr2.i.i = getelementptr i8, ptr %10, i32 4
  br i1 %bf.cast.i.i.i.i.i, label %if.end.i32.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end50.i.i
  tail call void @__check_object_size(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #13
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i31.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.i.i.if.end.i.i.i31.i_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i31.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr2.i.i, i32 %sub.i.i, i32 -1226833920) #17, !srcloc !87
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i31.i_crit_edge, !prof !70

land.lhs.true.i.i.i.i.if.end.i.i.i31.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i31.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #13
  %33 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i.i30.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i.i30.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #5, !srcloc !88
  %and.i.i.i.i.i.i = and i32 %35, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %call1.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr2.i.i, i32 noundef %sub.i.i) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  br label %if.end.i.i.i31.i

if.end.i.i.i31.i:                                 ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i.i.if.end.i.i.i31.i_crit_edge, %if.then.i.i.i.i.i.if.end.i.i.i31.i_crit_edge
  %res.0.i.i.i.i = phi i32 [ %sub.i.i, %if.then.i.i.i.i.i.if.end.i.i.i31.i_crit_edge ], [ %call1.i.i.i.i.i, %if.then.i7.i.i.i ], [ %sub.i.i, %land.lhs.true.i.i.i.i.if.end.i.i.i31.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i31.i.if.end54.i.i_crit_edge, label %if.then11.i.i.i.i, !prof !70

if.end.i.i.i31.i.if.end54.i.i_crit_edge:          ; preds = %if.end.i.i.i31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i31.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i = sub i32 %sub.i.i, %res.0.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub.i.i.i.i
  %36 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i)
  br label %err_crypto_info.i.i

if.end.i32.i:                                     ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 %sub.i.i)
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.end.i32.i, %if.end.i.i.i31.i.if.end54.i.i_crit_edge
  br i1 %cmp.not.i, label %if.then56.i.i, label %if.else298.i.i

if.then56.i.i:                                    ; preds = %if.end54.i.i
  %call57.i.i = tail call i32 @tls_set_device_offload(ptr noundef %sk, ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %tobool58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %tobool58.not.i.i, label %do.body60.i.i, label %if.else166.i.i

do.body60.i.i:                                    ; preds = %if.then56.i.i
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %skc_net.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %39 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skc_net.i.i.i, align 4
  %tls_statistics.i.i = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 30, i32 7
  %41 = ptrtoint ptr %tls_statistics.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tls_statistics.i.i, align 4
  %arrayidx.i.i = getelementptr [11 x i32], ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i, align 4
  %arrayidx77.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx77.i.i, align 4
  %add.i.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add78.i.i = add i32 %52, 1
  store i32 %add78.i.i, ptr %50, align 4
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool89.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool89.not.i.i, label %if.then93.i.i, label %do.body60.i.i.do.end96.i.i_crit_edge, !prof !72

do.body60.i.i.do.end96.i.i_crit_edge:             ; preds = %do.body60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end96.i.i

if.then93.i.i:                                    ; preds = %do.body60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end96.i.i

do.end96.i.i:                                     ; preds = %if.then93.i.i, %do.body60.i.i.do.end96.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #13, !srcloc !93
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %55 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skc_net.i.i.i, align 4
  %tls_statistics128.i.i = getelementptr inbounds %struct.net, ptr %56, i32 0, i32 30, i32 7
  %57 = ptrtoint ptr %tls_statistics128.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tls_statistics128.i.i, align 4
  %arrayidx130.i.i = getelementptr [11 x i32], ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx130.i.i to i32
  %60 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i.i, align 4
  %arrayidx134.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx134.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx134.i.i, align 4
  %add135.i.i = add i32 %63, %59
  %64 = inttoptr i32 %add135.i.i to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %add136.i.i = add i32 %66, 1
  store i32 %add136.i.i, ptr %64, align 4
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i644.i.i = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i644.i.i)
  %tobool147.not.i.i = icmp eq i32 %and.i.i644.i.i, 0
  br i1 %tobool147.not.i.i, label %if.then156.i.i, label %do.end96.i.i.do.end159.i.i_crit_edge, !prof !72

do.end96.i.i.do.end159.i.i_crit_edge:             ; preds = %do.end96.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end159.i.i

if.then156.i.i:                                   ; preds = %do.end96.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end159.i.i

do.end159.i.i:                                    ; preds = %if.then156.i.i, %do.end96.i.i.do.end159.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #13, !srcloc !93
  br label %if.then562.i.i

if.else166.i.i:                                   ; preds = %if.then56.i.i
  %call167.i.i = tail call i32 @tls_set_sw_offload(ptr noundef %sk, ptr noundef %7, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167.i.i)
  %tobool168.not.i.i = icmp eq i32 %call167.i.i, 0
  br i1 %tobool168.not.i.i, label %do.body172.i.i, label %if.else166.i.i.err_crypto_info.i.i_crit_edge

if.else166.i.i.err_crypto_info.i.i_crit_edge:     ; preds = %if.else166.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_crypto_info.i.i

do.body172.i.i:                                   ; preds = %if.else166.i.i
  %68 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %skc_net.i645.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %69 = ptrtoint ptr %skc_net.i645.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %skc_net.i645.i.i, align 4
  %tls_statistics196.i.i = getelementptr inbounds %struct.net, ptr %70, i32 0, i32 30, i32 7
  %71 = ptrtoint ptr %tls_statistics196.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tls_statistics196.i.i, align 4
  %arrayidx198.i.i = getelementptr [11 x i32], ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %arrayidx198.i.i to i32
  %74 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i646.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i646.i.i to ptr
  %cpu201.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu201.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu201.i.i, align 4
  %arrayidx202.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx202.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx202.i.i, align 4
  %add203.i.i = add i32 %79, %73
  %80 = inttoptr i32 %add203.i.i to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add204.i.i = add i32 %82, 1
  store i32 %add204.i.i, ptr %80, align 4
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i647.i.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i647.i.i)
  %tobool215.not.i.i = icmp eq i32 %and.i.i647.i.i, 0
  br i1 %tobool215.not.i.i, label %if.then224.i.i, label %do.body172.i.i.do.end227.i.i_crit_edge, !prof !72

do.body172.i.i.do.end227.i.i_crit_edge:           ; preds = %do.body172.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end227.i.i

if.then224.i.i:                                   ; preds = %do.body172.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end227.i.i

do.end227.i.i:                                    ; preds = %if.then224.i.i, %do.body172.i.i.do.end227.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %68) #13, !srcloc !93
  %84 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %85 = ptrtoint ptr %skc_net.i645.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %skc_net.i645.i.i, align 4
  %tls_statistics259.i.i = getelementptr inbounds %struct.net, ptr %86, i32 0, i32 30, i32 7
  %87 = ptrtoint ptr %tls_statistics259.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tls_statistics259.i.i, align 4
  %arrayidx261.i.i = getelementptr [11 x i32], ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %arrayidx261.i.i to i32
  %90 = ptrtoint ptr %cpu201.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cpu201.i.i, align 4
  %arrayidx265.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx265.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx265.i.i, align 4
  %add266.i.i = add i32 %93, %89
  %94 = inttoptr i32 %add266.i.i to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %add267.i.i = add i32 %96, 1
  store i32 %add267.i.i, ptr %94, align 4
  %97 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i649.i.i = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i649.i.i)
  %tobool278.not.i.i = icmp eq i32 %and.i.i649.i.i, 0
  br i1 %tobool278.not.i.i, label %if.then287.i.i, label %do.end227.i.i.do.end290.i.i_crit_edge, !prof !72

do.end227.i.i.do.end290.i.i_crit_edge:            ; preds = %do.end227.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end290.i.i

if.then287.i.i:                                   ; preds = %do.end227.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end290.i.i

do.end290.i.i:                                    ; preds = %if.then287.i.i, %do.end227.i.i.do.end290.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %84) #13, !srcloc !93
  br label %if.then562.i.i

if.else298.i.i:                                   ; preds = %if.end54.i.i
  %call299.i.i = tail call i32 @tls_set_device_offload_rx(ptr noundef %sk, ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299.i.i)
  %tobool300.not.i.i = icmp eq i32 %call299.i.i, 0
  br i1 %tobool300.not.i.i, label %do.body303.i.i, label %if.else428.i.i

do.body303.i.i:                                   ; preds = %if.else298.i.i
  %98 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %skc_net.i650.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %99 = ptrtoint ptr %skc_net.i650.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %skc_net.i650.i.i, align 4
  %tls_statistics327.i.i = getelementptr inbounds %struct.net, ptr %100, i32 0, i32 30, i32 7
  %101 = ptrtoint ptr %tls_statistics327.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tls_statistics327.i.i, align 4
  %arrayidx329.i.i = getelementptr [11 x i32], ptr %102, i32 0, i32 8
  %103 = ptrtoint ptr %arrayidx329.i.i to i32
  %104 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i651.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i651.i.i to ptr
  %cpu332.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %cpu332.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cpu332.i.i, align 4
  %arrayidx333.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %107
  %108 = ptrtoint ptr %arrayidx333.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx333.i.i, align 4
  %add334.i.i = add i32 %109, %103
  %110 = inttoptr i32 %add334.i.i to ptr
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %add335.i.i = add i32 %112, 1
  store i32 %add335.i.i, ptr %110, align 4
  %113 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i652.i.i = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i652.i.i)
  %tobool346.not.i.i = icmp eq i32 %and.i.i652.i.i, 0
  br i1 %tobool346.not.i.i, label %if.then355.i.i, label %do.body303.i.i.do.end358.i.i_crit_edge, !prof !72

do.body303.i.i.do.end358.i.i_crit_edge:           ; preds = %do.body303.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end358.i.i

if.then355.i.i:                                   ; preds = %do.body303.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end358.i.i

do.end358.i.i:                                    ; preds = %if.then355.i.i, %do.body303.i.i.do.end358.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %98) #13, !srcloc !93
  %114 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %115 = ptrtoint ptr %skc_net.i650.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %skc_net.i650.i.i, align 4
  %tls_statistics390.i.i = getelementptr inbounds %struct.net, ptr %116, i32 0, i32 30, i32 7
  %117 = ptrtoint ptr %tls_statistics390.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tls_statistics390.i.i, align 4
  %arrayidx392.i.i = getelementptr [11 x i32], ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %arrayidx392.i.i to i32
  %120 = ptrtoint ptr %cpu332.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cpu332.i.i, align 4
  %arrayidx396.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx396.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx396.i.i, align 4
  %add397.i.i = add i32 %123, %119
  %124 = inttoptr i32 %add397.i.i to ptr
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  %add398.i.i = add i32 %126, 1
  store i32 %add398.i.i, ptr %124, align 4
  %127 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i654.i.i = and i32 %127, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i654.i.i)
  %tobool409.not.i.i = icmp eq i32 %and.i.i654.i.i, 0
  br i1 %tobool409.not.i.i, label %if.then418.i.i, label %do.end358.i.i.do.end421.i.i_crit_edge, !prof !72

do.end358.i.i.do.end421.i.i_crit_edge:            ; preds = %do.end358.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end421.i.i

if.then418.i.i:                                   ; preds = %do.end358.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end421.i.i

do.end421.i.i:                                    ; preds = %if.then418.i.i, %do.end358.i.i.do.end421.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %114) #13, !srcloc !93
  br label %if.else564.i.i

if.else428.i.i:                                   ; preds = %if.else298.i.i
  %call429.i.i = tail call i32 @tls_set_sw_offload(ptr noundef %sk, ptr noundef %7, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call429.i.i)
  %tobool430.not.i.i = icmp eq i32 %call429.i.i, 0
  br i1 %tobool430.not.i.i, label %do.body434.i.i, label %if.else428.i.i.err_crypto_info.i.i_crit_edge

if.else428.i.i.err_crypto_info.i.i_crit_edge:     ; preds = %if.else428.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_crypto_info.i.i

do.body434.i.i:                                   ; preds = %if.else428.i.i
  %128 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %skc_net.i655.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %129 = ptrtoint ptr %skc_net.i655.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %skc_net.i655.i.i, align 4
  %tls_statistics458.i.i = getelementptr inbounds %struct.net, ptr %130, i32 0, i32 30, i32 7
  %131 = ptrtoint ptr %tls_statistics458.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tls_statistics458.i.i, align 4
  %arrayidx460.i.i = getelementptr [11 x i32], ptr %132, i32 0, i32 6
  %133 = ptrtoint ptr %arrayidx460.i.i to i32
  %134 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i656.i.i = and i32 %134, -16384
  %135 = inttoptr i32 %and.i656.i.i to ptr
  %cpu463.i.i = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %cpu463.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cpu463.i.i, align 4
  %arrayidx464.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %137
  %138 = ptrtoint ptr %arrayidx464.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx464.i.i, align 4
  %add465.i.i = add i32 %139, %133
  %140 = inttoptr i32 %add465.i.i to ptr
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %add466.i.i = add i32 %142, 1
  store i32 %add466.i.i, ptr %140, align 4
  %143 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i657.i.i = and i32 %143, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i657.i.i)
  %tobool477.not.i.i = icmp eq i32 %and.i.i657.i.i, 0
  br i1 %tobool477.not.i.i, label %if.then486.i.i, label %do.body434.i.i.do.end489.i.i_crit_edge, !prof !72

do.body434.i.i.do.end489.i.i_crit_edge:           ; preds = %do.body434.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end489.i.i

if.then486.i.i:                                   ; preds = %do.body434.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end489.i.i

do.end489.i.i:                                    ; preds = %if.then486.i.i, %do.body434.i.i.do.end489.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %128) #13, !srcloc !93
  %144 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %145 = ptrtoint ptr %skc_net.i655.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %skc_net.i655.i.i, align 4
  %tls_statistics521.i.i = getelementptr inbounds %struct.net, ptr %146, i32 0, i32 30, i32 7
  %147 = ptrtoint ptr %tls_statistics521.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tls_statistics521.i.i, align 4
  %arrayidx523.i.i = getelementptr [11 x i32], ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %arrayidx523.i.i to i32
  %150 = ptrtoint ptr %cpu463.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cpu463.i.i, align 4
  %arrayidx527.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %151
  %152 = ptrtoint ptr %arrayidx527.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx527.i.i, align 4
  %add528.i.i = add i32 %153, %149
  %154 = inttoptr i32 %add528.i.i to ptr
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %add529.i.i = add i32 %156, 1
  store i32 %add529.i.i, ptr %154, align 4
  %157 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i659.i.i = and i32 %157, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i659.i.i)
  %tobool540.not.i.i = icmp eq i32 %and.i.i659.i.i, 0
  br i1 %tobool540.not.i.i, label %if.then549.i.i, label %do.end489.i.i.do.end552.i.i_crit_edge, !prof !72

do.end489.i.i.do.end552.i.i_crit_edge:            ; preds = %do.end489.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end552.i.i

if.then549.i.i:                                   ; preds = %do.end489.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end552.i.i

do.end552.i.i:                                    ; preds = %if.then549.i.i, %do.end489.i.i.do.end552.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %144) #13, !srcloc !93
  br label %if.else564.i.i

if.then562.i.i:                                   ; preds = %do.end290.i.i, %do.end159.i.i
  %conf.1.ph.i.i = phi i8 [ 64, %do.end159.i.i ], [ 32, %do.end290.i.i ]
  %tx_conf.i.i = getelementptr inbounds %struct.tls_context, ptr %7, i32 0, i32 1
  %158 = ptrtoint ptr %tx_conf.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load.i.i = load i8, ptr %tx_conf.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 31
  %bf.set.i.i = or i8 %bf.clear.i.i, %conf.1.ph.i.i
  store i8 %bf.set.i.i, ptr %tx_conf.i.i, align 4
  %skc_family.i8.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %159 = ptrtoint ptr %skc_family.i8.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %skc_family.i8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %160)
  %cmp.i9.i = icmp eq i16 %160, 10
  %cond.i10.i = zext i1 %cmp.i9.i to i32
  %bf.lshr.i13.i = lshr exact i8 %conf.1.ph.i.i, 5
  %idxprom.i14.i = zext i8 %bf.lshr.i13.i to i32
  %bf.lshr6.i15.i = lshr i8 %bf.load.i.i, 2
  %bf.clear.i16.i = and i8 %bf.lshr6.i15.i, 7
  %idxprom7.i17.i = zext i8 %bf.clear.i16.i to i32
  %arrayidx8.i18.i = getelementptr [2 x [4 x [4 x %struct.proto]]], ptr @tls_prots, i32 0, i32 %cond.i10.i, i32 %idxprom.i14.i, i32 %idxprom7.i17.i
  %skc_prot.i19.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %161 = ptrtoint ptr %skc_prot.i19.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %arrayidx8.i18.i, ptr %skc_prot.i19.i, align 8
  %162 = ptrtoint ptr %tx_conf.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %bf.load21.i20.i = load i8, ptr %tx_conf.i.i, align 4
  %bf.lshr22.i21.i = lshr i8 %bf.load21.i20.i, 5
  %idxprom23.i22.i = zext i8 %bf.lshr22.i21.i to i32
  %bf.lshr27.i23.i = lshr i8 %bf.load21.i20.i, 2
  %bf.clear28.i24.i = and i8 %bf.lshr27.i23.i, 7
  %idxprom29.i25.i = zext i8 %bf.clear28.i24.i to i32
  %arrayidx30.i26.i = getelementptr [2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 %cond.i10.i, i32 %idxprom23.i22.i, i32 %idxprom29.i25.i
  %sk_socket.i27.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %163 = ptrtoint ptr %sk_socket.i27.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %sk_socket.i27.i, align 8
  %ops.i28.i = getelementptr inbounds %struct.socket, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %ops.i28.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %arrayidx30.i26.i, ptr %ops.i28.i, align 4
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %166 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sk_write_space.i.i, align 4
  %sk_write_space574.i.i = getelementptr inbounds %struct.tls_context, ptr %7, i32 0, i32 3
  %168 = ptrtoint ptr %sk_write_space574.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %167, ptr %sk_write_space574.i.i, align 4
  store ptr @tls_write_space, ptr %sk_write_space.i.i, align 4
  br label %do_tls_setsockopt_conf.exit.i

if.else564.i.i:                                   ; preds = %do.end552.i.i, %do.end421.i.i
  %conf.0.i.i = phi i8 [ 4, %do.end552.i.i ], [ 8, %do.end421.i.i ]
  tail call void @tls_sw_strparser_arm(ptr noundef %sk, ptr noundef %7) #13
  %rx_conf.i.i = getelementptr inbounds %struct.tls_context, ptr %7, i32 0, i32 1
  %169 = ptrtoint ptr %rx_conf.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %bf.load566.i.i = load i8, ptr %rx_conf.i.i, align 4
  %bf.clear569.i.i = and i8 %bf.load566.i.i, -29
  %bf.set570.i.i = or i8 %bf.clear569.i.i, %conf.0.i.i
  store i8 %bf.set570.i.i, ptr %rx_conf.i.i, align 4
  %skc_family.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %170 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %skc_family.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %171)
  %cmp.i4.i = icmp eq i16 %171, 10
  %cond.i.i = zext i1 %cmp.i4.i to i32
  %bf.lshr.i.i = lshr i8 %bf.load566.i.i, 5
  %idxprom.i.i = zext i8 %bf.lshr.i.i to i32
  %bf.lshr6.i.i = lshr exact i8 %conf.0.i.i, 2
  %idxprom7.i.i = zext i8 %bf.lshr6.i.i to i32
  %arrayidx8.i.i = getelementptr [2 x [4 x [4 x %struct.proto]]], ptr @tls_prots, i32 0, i32 %cond.i.i, i32 %idxprom.i.i, i32 %idxprom7.i.i
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %172 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %arrayidx8.i.i, ptr %skc_prot.i.i, align 8
  %173 = ptrtoint ptr %rx_conf.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %bf.load21.i.i = load i8, ptr %rx_conf.i.i, align 4
  %bf.lshr22.i.i = lshr i8 %bf.load21.i.i, 5
  %idxprom23.i.i = zext i8 %bf.lshr22.i.i to i32
  %bf.lshr27.i.i = lshr i8 %bf.load21.i.i, 2
  %bf.clear28.i.i = and i8 %bf.lshr27.i.i, 7
  %idxprom29.i.i = zext i8 %bf.clear28.i.i to i32
  %arrayidx30.i.i = getelementptr [2 x [4 x [4 x %struct.proto_ops]]], ptr @tls_proto_ops, i32 0, i32 %cond.i.i, i32 %idxprom23.i.i, i32 %idxprom29.i.i
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %174 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %sk_socket.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.socket, ptr %175, i32 0, i32 5
  %176 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %arrayidx30.i.i, ptr %ops.i.i, align 4
  br label %do_tls_setsockopt_conf.exit.i

err_crypto_info.i.i:                              ; preds = %if.else428.i.i.err_crypto_info.i.i_crit_edge, %if.else166.i.i.err_crypto_info.i.i_crit_edge, %if.then11.i.i.i.i, %switch.lookup.err_crypto_info.i.i_crit_edge, %if.end39.i.i.err_crypto_info.i.i_crit_edge, %lor.lhs.false30.i.i.err_crypto_info.i.i_crit_edge, %if.then23.i.i.err_crypto_info.i.i_crit_edge, %if.end12.i.i.err_crypto_info.i.i_crit_edge, %if.then11.i.i.i.i.i.i
  %rc.2.i.i = phi i32 [ %call167.i.i, %if.else166.i.i.err_crypto_info.i.i_crit_edge ], [ %call429.i.i, %if.else428.i.i.err_crypto_info.i.i_crit_edge ], [ -22, %if.end12.i.i.err_crypto_info.i.i_crit_edge ], [ -22, %lor.lhs.false30.i.i.err_crypto_info.i.i_crit_edge ], [ -22, %if.then23.i.i.err_crypto_info.i.i_crit_edge ], [ -22, %if.end39.i.i.err_crypto_info.i.i_crit_edge ], [ -22, %switch.lookup.err_crypto_info.i.i_crit_edge ], [ -14, %if.then11.i.i.i.i.i.i ], [ -14, %if.then11.i.i.i.i ]
  %177 = call ptr @memset(ptr %crypto_info.0.i.i, i32 0, i32 56)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %crypto_info.0.i.i) #13, !srcloc !79
  br label %do_tls_setsockopt_conf.exit.i

do_tls_setsockopt_conf.exit.i:                    ; preds = %err_crypto_info.i.i, %if.else564.i.i, %if.then562.i.i, %if.end.i.i.do_tls_setsockopt_conf.exit.i_crit_edge, %sw.bb.i.do_tls_setsockopt_conf.exit.i_crit_edge
  %rc.3.i.i = phi i32 [ %rc.2.i.i, %err_crypto_info.i.i ], [ 0, %if.then562.i.i ], [ -22, %sw.bb.i.do_tls_setsockopt_conf.exit.i_crit_edge ], [ -16, %if.end.i.i.do_tls_setsockopt_conf.exit.i_crit_edge ], [ 0, %if.else564.i.i ]
  tail call void @release_sock(ptr noundef %sk) #13
  br label %cleanup

cleanup:                                          ; preds = %do_tls_setsockopt_conf.exit.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %rc.3.i.i, %do_tls_setsockopt_conf.exit.i ], [ -92, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tls_getsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %level)
  %cmp.not = icmp eq i32 %level, 282
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk_proto = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_proto, align 4
  %getsockopt = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %getsockopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getsockopt, align 4
  %call1 = tail call i32 %5(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %optname.off.i = add i32 %optname, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %optname.off.i)
  %switch.i = icmp ult i32 %optname.off.i, 2
  br i1 %switch.i, label %sw.bb.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cmp.not.i = icmp eq i32 %optname, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 344) #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #5, !srcloc !88
  %and.i.i.i = and i32 %8, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #13, !srcloc !94
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  %asmresult2.i.i = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #13, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb.i
  %tobool4.not.i.i = icmp eq ptr %optval, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult2.i.i)
  %cmp.i.i = icmp ult i32 %asmresult2.i.i, 4
  %or.cond.i.i = select i1 %tobool4.not.i.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end6.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %tobool7.not.i.i = icmp eq ptr %1, null
  br i1 %tobool7.not.i.i, label %if.end6.i.i.cleanup_crit_edge, label %if.end9.i.i

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9.i.i:                                      ; preds = %if.end6.i.i
  %crypto_send.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 18
  %tx12.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 7
  %crypto_recv.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 19
  %rx.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 8
  %cctx.0.i.i = select i1 %cmp.not.i, ptr %tx12.i.i, ptr %rx.i.i
  %crypto_info.0.i.i = select i1 %cmp.not.i, ptr %crypto_send.i.i, ptr %crypto_recv.i.i
  %cipher_type.i.i = getelementptr inbounds %struct.tls_crypto_info, ptr %crypto_info.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %cipher_type.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cipher_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool14.not.i.i = icmp eq i16 %11, 0
  br i1 %tobool14.not.i.i, label %if.end9.i.i.cleanup_crit_edge, label %if.end16.i.i

if.end9.i.i.cleanup_crit_edge:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult2.i.i)
  %cmp17.i.i = icmp eq i32 %asmresult2.i.i, 4
  br i1 %cmp17.i.i, label %if.end59.i.i.i.i, label %if.end23.i.i

if.end59.i.i.i.i:                                 ; preds = %if.end16.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #13
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.cleanup_crit_edge, label %if.end.i.i.i.i

if.end59.i.i.i.i.cleanup_crit_edge:               ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %if.end59.i.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %optval, i32 4, i32 -1226833920) #17, !srcloc !95
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.cleanup_crit_edge

if.end.i.i.i.i.cleanup_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %crypto_info.0.i.i, i32 noundef 4) #13
  %call.i12.i.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %optval, ptr noundef %crypto_info.0.i.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool20.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  %spec.select.i.i = select i1 %tobool20.not.i.i, i32 0, i32 -14
  br label %cleanup

if.end23.i.i:                                     ; preds = %if.end16.i.i
  %13 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %if.end23.i.i.cleanup_crit_edge [
    i16 51, label %sw.bb.i.i
    i16 52, label %sw.bb38.i.i
    i16 53, label %sw.bb59.i.i
    i16 54, label %sw.bb80.i.i
    i16 55, label %sw.bb101.i.i
    i16 56, label %sw.bb122.i.i
  ]

if.end23.i.i.cleanup_crit_edge:                   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %asmresult2.i.i)
  %cmp26.not.i.i = icmp eq i32 %asmresult2.i.i, 40
  br i1 %cmp26.not.i.i, label %if.end29.i.i, label %sw.bb.i.i.cleanup_crit_edge

sw.bb.i.i.cleanup_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29.i.i:                                     ; preds = %sw.bb.i.i
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  %iv.i.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info.0.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %cctx.0.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cctx.0.i.i, align 4
  %add.ptr31.i.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr31.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %add.ptr31.i.i, align 1
  %18 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %iv.i.i, align 2
  %rec_seq.i.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info.0.i.i, i32 0, i32 4
  %rec_seq33.i.i = getelementptr inbounds %struct.cipher_context, ptr %cctx.0.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %rec_seq33.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rec_seq33.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %20, align 1
  %23 = ptrtoint ptr %rec_seq.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %rec_seq.i.i, align 2
  tail call void @release_sock(ptr noundef %sk) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #13
  %call.i.i229.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i229.i.i, label %if.end29.i.i.cleanup_crit_edge, label %if.end.i.i232.i.i

if.end29.i.i.cleanup_crit_edge:                   ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i232.i.i:                                ; preds = %if.end29.i.i
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %optval, i32 40, i32 -1226833920) #17, !srcloc !95
  %asmresult.i.i230.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i230.i.i)
  %cmp.i6.i231.i.i = icmp eq i32 %asmresult.i.i230.i.i, 0
  br i1 %cmp.i6.i231.i.i, label %copy_to_user.exit237.i.i, label %if.end.i.i232.i.i.cleanup_crit_edge

if.end.i.i232.i.i.cleanup_crit_edge:              ; preds = %if.end.i.i232.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit237.i.i:                         ; preds = %if.end.i.i232.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i233.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %crypto_info.0.i.i, i32 noundef 40) #13
  %call.i12.i.i234.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %optval, ptr noundef %crypto_info.0.i.i, i32 noundef 40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i234.i.i)
  %tobool35.not.i.i = icmp eq i32 %call.i12.i.i234.i.i, 0
  %spec.select317.i.i = select i1 %tobool35.not.i.i, i32 0, i32 -14
  br label %cleanup

sw.bb38.i.i:                                      ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %asmresult2.i.i)
  %cmp42.not.i.i = icmp eq i32 %asmresult2.i.i, 56
  br i1 %cmp42.not.i.i, label %if.end45.i.i, label %sw.bb38.i.i.cleanup_crit_edge

sw.bb38.i.i.cleanup_crit_edge:                    ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45.i.i:                                     ; preds = %sw.bb38.i.i
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  %iv46.i.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_256, ptr %crypto_info.0.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %cctx.0.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cctx.0.i.i, align 4
  %add.ptr49.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr49.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %add.ptr49.i.i, align 1
  %29 = ptrtoint ptr %iv46.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %iv46.i.i, align 2
  %rec_seq50.i.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_256, ptr %crypto_info.0.i.i, i32 0, i32 4
  %rec_seq52.i.i = getelementptr inbounds %struct.cipher_context, ptr %cctx.0.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %rec_seq52.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rec_seq52.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %31, align 1
  %34 = ptrtoint ptr %rec_seq50.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %rec_seq50.i.i, align 2
  tail call void @release_sock(ptr noundef %sk) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #13
  %call.i.i242.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i242.i.i, label %if.end45.i.i.cleanup_crit_edge, label %if.end.i.i245.i.i

if.end45.i.i.cleanup_crit_edge:                   ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i245.i.i:                                ; preds = %if.end45.i.i
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %optval, i32 56, i32 -1226833920) #17, !srcloc !95
  %asmresult.i.i243.i.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i243.i.i)
  %cmp.i6.i244.i.i = icmp eq i32 %asmresult.i.i243.i.i, 0
  br i1 %cmp.i6.i244.i.i, label %copy_to_user.exit250.i.i, label %if.end.i.i245.i.i.cleanup_crit_edge

if.end.i.i245.i.i.cleanup_crit_edge:              ; preds = %if.end.i.i245.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit250.i.i:                         ; preds = %if.end.i.i245.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i246.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %crypto_info.0.i.i, i32 noundef 56) #13
  %call.i12.i.i247.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %optval, ptr noundef %crypto_info.0.i.i, i32 noundef 56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i247.i.i)
  %tobool54.not.i.i = icmp eq i32 %call.i12.i.i247.i.i, 0
  %spec.select318.i.i = select i1 %tobool54.not.i.i, i32 0, i32 -14
  br label %cleanup

sw.bb59.i.i:                                      ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %asmresult2.i.i)
  %cmp63.not.i.i = icmp eq i32 %asmresult2.i.i, 40
  br i1 %cmp63.not.i.i, label %if.end66.i.i, label %sw.bb59.i.i.cleanup_crit_edge

sw.bb59.i.i.cleanup_crit_edge:                    ; preds = %sw.bb59.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end66.i.i:                                     ; preds = %sw.bb59.i.i
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  %iv67.i.i = getelementptr inbounds %struct.tls12_crypto_info_aes_ccm_128, ptr %crypto_info.0.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %cctx.0.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cctx.0.i.i, align 4
  %add.ptr70.i.i = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr70.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %add.ptr70.i.i, align 1
  %40 = ptrtoint ptr %iv67.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %iv67.i.i, align 2
  %rec_seq71.i.i = getelementptr inbounds %struct.tls12_crypto_info_aes_ccm_128, ptr %crypto_info.0.i.i, i32 0, i32 4
  %rec_seq73.i.i = getelementptr inbounds %struct.cipher_context, ptr %cctx.0.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %rec_seq73.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rec_seq73.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %42, align 1
  %45 = ptrtoint ptr %rec_seq71.i.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %rec_seq71.i.i, align 2
  tail call void @release_sock(ptr noundef %sk) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #13
  %call.i.i255.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i255.i.i, label %if.end66.i.i.cleanup_crit_edge, label %if.end.i.i258.i.i

if.end66.i.i.cleanup_crit_edge:                   ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i258.i.i:                                ; preds = %if.end66.i.i
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %optval, i32 40, i32 -1226833920) #17, !srcloc !95
  %asmresult.i.i256.i.i = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i256.i.i)
  %cmp.i6.i257.i.i = icmp eq i32 %asmresult.i.i256.i.i, 0
  br i1 %cmp.i6.i257.i.i, label %copy_to_user.exit263.i.i, label %if.end.i.i258.i.i.cleanup_crit_edge

if.end.i.i258.i.i.cleanup_crit_edge:              ; preds = %if.end.i.i258.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit263.i.i:                         ; preds = %if.end.i.i258.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i259.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %crypto_info.0.i.i, i32 noundef 40) #13
  %call.i12.i.i260.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %optval, ptr noundef %crypto_info.0.i.i, i32 noundef 40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i260.i.i)
  %tobool75.not.i.i = icmp eq i32 %call.i12.i.i260.i.i, 0
  %spec.select319.i.i = select i1 %tobool75.not.i.i, i32 0, i32 -14
  br label %cleanup

sw.bb80.i.i:                                      ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %asmresult2.i.i)
  %cmp84.not.i.i = icmp eq i32 %asmresult2.i.i, 56
  br i1 %cmp84.not.i.i, label %if.end87.i.i, label %sw.bb80.i.i.cleanup_crit_edge

sw.bb80.i.i.cleanup_crit_edge:                    ; preds = %sw.bb80.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end87.i.i:                                     ; preds = %sw.bb80.i.i
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  %iv88.i.i = getelementptr inbounds %struct.tls12_crypto_info_chacha20_poly1305, ptr %crypto_info.0.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %cctx.0.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cctx.0.i.i, align 4
  %49 = call ptr @memcpy(ptr %iv88.i.i, ptr %48, i32 12)
  %rec_seq92.i.i = getelementptr inbounds %struct.tls12_crypto_info_chacha20_poly1305, ptr %crypto_info.0.i.i, i32 0, i32 4
  %rec_seq94.i.i = getelementptr inbounds %struct.cipher_context, ptr %cctx.0.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %rec_seq94.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rec_seq94.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %51, align 1
  %54 = ptrtoint ptr %rec_seq92.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %53, ptr %rec_seq92.i.i, align 2
  tail call void @release_sock(ptr noundef %sk) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #13
  %call.i.i268.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i268.i.i, label %if.end87.i.i.cleanup_crit_edge, label %if.end.i.i271.i.i

if.end87.i.i.cleanup_crit_edge:                   ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i271.i.i:                                ; preds = %if.end87.i.i
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %optval, i32 56, i32 -1226833920) #17, !srcloc !95
  %asmresult.i.i269.i.i = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i269.i.i)
  %cmp.i6.i270.i.i = icmp eq i32 %asmresult.i.i269.i.i, 0
  br i1 %cmp.i6.i270.i.i, label %copy_to_user.exit276.i.i, label %if.end.i.i271.i.i.cleanup_crit_edge

if.end.i.i271.i.i.cleanup_crit_edge:              ; preds = %if.end.i.i271.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit276.i.i:                         ; preds = %if.end.i.i271.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i272.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %crypto_info.0.i.i, i32 noundef 56) #13
  %call.i12.i.i273.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %optval, ptr noundef %crypto_info.0.i.i, i32 noundef 56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i273.i.i)
  %tobool96.not.i.i = icmp eq i32 %call.i12.i.i273.i.i, 0
  %spec.select320.i.i = select i1 %tobool96.not.i.i, i32 0, i32 -14
  br label %cleanup

sw.bb101.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %asmresult2.i.i)
  %cmp105.not.i.i = icmp eq i32 %asmresult2.i.i, 40
  br i1 %cmp105.not.i.i, label %if.end108.i.i, label %sw.bb101.i.i.cleanup_crit_edge

sw.bb101.i.i.cleanup_crit_edge:                   ; preds = %sw.bb101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end108.i.i:                                    ; preds = %sw.bb101.i.i
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  %iv109.i.i = getelementptr inbounds %struct.tls12_crypto_info_sm4_gcm, ptr %crypto_info.0.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %cctx.0.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cctx.0.i.i, align 4
  %add.ptr112.i.i = getelementptr i8, ptr %57, i32 4
  %58 = ptrtoint ptr %add.ptr112.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %add.ptr112.i.i, align 1
  %60 = ptrtoint ptr %iv109.i.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %iv109.i.i, align 2
  %rec_seq113.i.i = getelementptr inbounds %struct.tls12_crypto_info_sm4_gcm, ptr %crypto_info.0.i.i, i32 0, i32 4
  %rec_seq115.i.i = getelementptr inbounds %struct.cipher_context, ptr %cctx.0.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %rec_seq115.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rec_seq115.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %62, align 1
  %65 = ptrtoint ptr %rec_seq113.i.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %64, ptr %rec_seq113.i.i, align 2
  tail call void @release_sock(ptr noundef %sk) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #13
  %call.i.i281.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i281.i.i, label %if.end108.i.i.cleanup_crit_edge, label %if.end.i.i284.i.i

if.end108.i.i.cleanup_crit_edge:                  ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i284.i.i:                                ; preds = %if.end108.i.i
  %66 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %optval, i32 40, i32 -1226833920) #17, !srcloc !95
  %asmresult.i.i282.i.i = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i282.i.i)
  %cmp.i6.i283.i.i = icmp eq i32 %asmresult.i.i282.i.i, 0
  br i1 %cmp.i6.i283.i.i, label %copy_to_user.exit289.i.i, label %if.end.i.i284.i.i.cleanup_crit_edge

if.end.i.i284.i.i.cleanup_crit_edge:              ; preds = %if.end.i.i284.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit289.i.i:                         ; preds = %if.end.i.i284.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i285.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %crypto_info.0.i.i, i32 noundef 40) #13
  %call.i12.i.i286.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %optval, ptr noundef %crypto_info.0.i.i, i32 noundef 40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i286.i.i)
  %tobool117.not.i.i = icmp eq i32 %call.i12.i.i286.i.i, 0
  %spec.select321.i.i = select i1 %tobool117.not.i.i, i32 0, i32 -14
  br label %cleanup

sw.bb122.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %asmresult2.i.i)
  %cmp126.not.i.i = icmp eq i32 %asmresult2.i.i, 40
  br i1 %cmp126.not.i.i, label %if.end129.i.i, label %sw.bb122.i.i.cleanup_crit_edge

sw.bb122.i.i.cleanup_crit_edge:                   ; preds = %sw.bb122.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end129.i.i:                                    ; preds = %sw.bb122.i.i
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  %iv130.i.i = getelementptr inbounds %struct.tls12_crypto_info_sm4_ccm, ptr %crypto_info.0.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %cctx.0.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cctx.0.i.i, align 4
  %add.ptr133.i.i = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %add.ptr133.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %add.ptr133.i.i, align 1
  %71 = ptrtoint ptr %iv130.i.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 %70, ptr %iv130.i.i, align 2
  %rec_seq134.i.i = getelementptr inbounds %struct.tls12_crypto_info_sm4_ccm, ptr %crypto_info.0.i.i, i32 0, i32 4
  %rec_seq136.i.i = getelementptr inbounds %struct.cipher_context, ptr %cctx.0.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %rec_seq136.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rec_seq136.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %73, align 1
  %76 = ptrtoint ptr %rec_seq134.i.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %75, ptr %rec_seq134.i.i, align 2
  tail call void @release_sock(ptr noundef %sk) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #13
  %call.i.i294.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i294.i.i, label %if.end129.i.i.cleanup_crit_edge, label %if.end.i.i297.i.i

if.end129.i.i.cleanup_crit_edge:                  ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i297.i.i:                                ; preds = %if.end129.i.i
  %77 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %optval, i32 40, i32 -1226833920) #17, !srcloc !95
  %asmresult.i.i295.i.i = extractvalue { i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i295.i.i)
  %cmp.i6.i296.i.i = icmp eq i32 %asmresult.i.i295.i.i, 0
  br i1 %cmp.i6.i296.i.i, label %copy_to_user.exit302.i.i, label %if.end.i.i297.i.i.cleanup_crit_edge

if.end.i.i297.i.i.cleanup_crit_edge:              ; preds = %if.end.i.i297.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit302.i.i:                         ; preds = %if.end.i.i297.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i298.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %crypto_info.0.i.i, i32 noundef 40) #13
  %call.i12.i.i299.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %optval, ptr noundef %crypto_info.0.i.i, i32 noundef 40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i299.i.i)
  %tobool138.not.i.i = icmp eq i32 %call.i12.i.i299.i.i, 0
  %spec.select322.i.i = select i1 %tobool138.not.i.i, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit302.i.i, %if.end.i.i297.i.i.cleanup_crit_edge, %if.end129.i.i.cleanup_crit_edge, %sw.bb122.i.i.cleanup_crit_edge, %copy_to_user.exit289.i.i, %if.end.i.i284.i.i.cleanup_crit_edge, %if.end108.i.i.cleanup_crit_edge, %sw.bb101.i.i.cleanup_crit_edge, %copy_to_user.exit276.i.i, %if.end.i.i271.i.i.cleanup_crit_edge, %if.end87.i.i.cleanup_crit_edge, %sw.bb80.i.i.cleanup_crit_edge, %copy_to_user.exit263.i.i, %if.end.i.i258.i.i.cleanup_crit_edge, %if.end66.i.i.cleanup_crit_edge, %sw.bb59.i.i.cleanup_crit_edge, %copy_to_user.exit250.i.i, %if.end.i.i245.i.i.cleanup_crit_edge, %if.end45.i.i.cleanup_crit_edge, %sw.bb38.i.i.cleanup_crit_edge, %copy_to_user.exit237.i.i, %if.end.i.i232.i.i.cleanup_crit_edge, %if.end29.i.i.cleanup_crit_edge, %sw.bb.i.i.cleanup_crit_edge, %if.end23.i.i.cleanup_crit_edge, %copy_to_user.exit.i.i, %if.end.i.i.i.i.cleanup_crit_edge, %if.end59.i.i.i.i.cleanup_crit_edge, %if.end9.i.i.cleanup_crit_edge, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -92, %if.end.cleanup_crit_edge ], [ -14, %sw.bb.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -16, %if.end6.i.i.cleanup_crit_edge ], [ -16, %if.end9.i.i.cleanup_crit_edge ], [ -22, %if.end23.i.i.cleanup_crit_edge ], [ -22, %sw.bb.i.i.cleanup_crit_edge ], [ -22, %sw.bb38.i.i.cleanup_crit_edge ], [ -22, %sw.bb59.i.i.cleanup_crit_edge ], [ -22, %sw.bb80.i.i.cleanup_crit_edge ], [ -22, %sw.bb101.i.i.cleanup_crit_edge ], [ -22, %sw.bb122.i.i.cleanup_crit_edge ], [ -14, %if.end59.i.i.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.i.i.cleanup_crit_edge ], [ -14, %if.end29.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i232.i.i.cleanup_crit_edge ], [ -14, %if.end45.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i245.i.i.cleanup_crit_edge ], [ -14, %if.end66.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i258.i.i.cleanup_crit_edge ], [ -14, %if.end87.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i271.i.i.cleanup_crit_edge ], [ -14, %if.end108.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i284.i.i.cleanup_crit_edge ], [ -14, %if.end129.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i297.i.i.cleanup_crit_edge ], [ %spec.select.i.i, %copy_to_user.exit.i.i ], [ %spec.select317.i.i, %copy_to_user.exit237.i.i ], [ %spec.select318.i.i, %copy_to_user.exit250.i.i ], [ %spec.select319.i.i, %copy_to_user.exit263.i.i ], [ %spec.select320.i.i, %copy_to_user.exit276.i.i ], [ %spec.select321.i.i, %copy_to_user.exit289.i.i ], [ %spec.select322.i.i, %copy_to_user.exit302.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_sk_proto_close(ptr noundef %sk, i32 noundef %timeout) #2 align 64 {
entry:
  %timeo.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %2 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_sndtimeo.i, align 8
  %tx_conf = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %tx_conf, align 4
  %bf.lshr.mask = and i8 %bf.load, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, 32
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @tls_sw_cancel_work_tx(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  %5 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load5 = load i8, ptr %tx_conf, align 4
  %bf.lshr6.mask = and i8 %bf.load5, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr6.mask)
  %cmp8.not = icmp ne i8 %bf.lshr6.mask, 64
  %6 = and i8 %bf.load5, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp13 = icmp ne i8 %6, 8
  %7 = and i1 %cmp8.not, %cmp13
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.load5)
  %8 = icmp ult i8 %bf.load5, 4
  br i1 %8, label %if.end.if.end29_crit_edge, label %if.then28

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then28:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo.addr.i)
  %9 = ptrtoint ptr %timeo.addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %timeo.addr.i, align 4
  %sk_write_pending.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 28
  %10 = ptrtoint ptr %sk_write_pending.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_write_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then28.if.end.i_crit_edge, label %land.lhs.true.i, !prof !70

if.then28.if.end.i_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then28
  %call.i = call i32 @wait_on_pending_writer(ptr noundef %sk, ptr noundef nonnull %timeo.addr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %icsk_ulp_data.i, align 8
  %pending_open_record_frags.i.i.i = getelementptr inbounds %struct.tls_context, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %pending_open_record_frags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pending_open_record_frags.i.i.i, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %push_pending_record.i.i = getelementptr inbounds %struct.tls_context, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %push_pending_record.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %push_pending_record.i.i, align 4
  %call2.i.i = tail call i32 %17(ptr noundef %sk, i32 noundef 0) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then28.if.end.i_crit_edge
  %18 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %tx_conf, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %trunc.i = trunc i8 %bf.lshr.i to i3
  %19 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.15)
  switch i3 %trunc.i, label %if.end.i.if.end126.i_crit_edge [
    i3 1, label %if.then6.i
    i3 2, label %if.then61.i
  ]

if.end.i.if.end126.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126.i

if.then6.i:                                       ; preds = %if.end.i
  %tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 7
  %rec_seq.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %rec_seq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rec_seq.i, align 4
  tail call void @kfree(ptr noundef %21) #13
  %22 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx.i, align 4
  tail call void @kfree(ptr noundef %23) #13
  tail call void @tls_sw_release_resources_tx(ptr noundef %sk) #13
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %25 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skc_net.i.i, align 4
  %tls_statistics.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 30, i32 7
  %27 = ptrtoint ptr %tls_statistics.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tls_statistics.i, align 4
  %arrayidx.i = getelementptr [11 x i32], ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.i to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i, align 4
  %arrayidx24.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx24.i, align 4
  %add.i = add i32 %35, %29
  %36 = inttoptr i32 %add.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add25.i = add i32 %38, -1
  store i32 %add25.i, ptr %36, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool36.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool36.not.i, label %if.then45.i, label %if.then6.i.do.end48.i_crit_edge, !prof !72

if.then6.i.do.end48.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end48.i

if.then45.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then45.i, %if.then6.i.do.end48.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #13, !srcloc !93
  br label %if.end126.i

if.then61.i:                                      ; preds = %if.end.i
  tail call void @tls_device_free_resources_tx(ptr noundef %sk) #13
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %skc_net.i285.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %41 = ptrtoint ptr %skc_net.i285.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skc_net.i285.i, align 4
  %tls_statistics87.i = getelementptr inbounds %struct.net, ptr %42, i32 0, i32 30, i32 7
  %43 = ptrtoint ptr %tls_statistics87.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tls_statistics87.i, align 4
  %arrayidx89.i = getelementptr [11 x i32], ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx89.i to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i286.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i286.i to ptr
  %cpu92.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu92.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu92.i, align 4
  %arrayidx93.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx93.i, align 4
  %add94.i = add i32 %51, %45
  %52 = inttoptr i32 %add94.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add95.i = add i32 %54, -1
  store i32 %add95.i, ptr %52, align 4
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i287.i = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i287.i)
  %tobool106.not.i = icmp eq i32 %and.i.i287.i, 0
  br i1 %tobool106.not.i, label %if.then115.i, label %if.then61.i.do.end118.i_crit_edge, !prof !72

if.then61.i.do.end118.i_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end118.i

if.then115.i:                                     ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end118.i

do.end118.i:                                      ; preds = %if.then115.i, %if.then61.i.do.end118.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #13, !srcloc !93
  br label %if.end126.i

if.end126.i:                                      ; preds = %do.end118.i, %do.end48.i, %if.end.i.if.end126.i_crit_edge
  %56 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load127.i = load i8, ptr %tx_conf, align 4
  %bf.lshr128.i = lshr i8 %bf.load127.i, 2
  %trunc294.i = trunc i8 %bf.lshr128.i to i3
  %57 = zext i3 %trunc294.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.16)
  switch i3 %trunc294.i, label %if.end126.i.tls_sk_proto_cleanup.exit_crit_edge [
    i3 1, label %if.then132.i
    i3 2, label %if.then204.i
  ]

if.end126.i.tls_sk_proto_cleanup.exit_crit_edge:  ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tls_sk_proto_cleanup.exit

if.then132.i:                                     ; preds = %if.end126.i
  tail call void @tls_sw_release_resources_rx(ptr noundef %sk) #13
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %skc_net.i288.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %59 = ptrtoint ptr %skc_net.i288.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skc_net.i288.i, align 4
  %tls_statistics158.i = getelementptr inbounds %struct.net, ptr %60, i32 0, i32 30, i32 7
  %61 = ptrtoint ptr %tls_statistics158.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tls_statistics158.i, align 4
  %arrayidx160.i = getelementptr [11 x i32], ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx160.i to i32
  %64 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i289.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i289.i to ptr
  %cpu163.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu163.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu163.i, align 4
  %arrayidx164.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx164.i, align 4
  %add165.i = add i32 %69, %63
  %70 = inttoptr i32 %add165.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add166.i = add i32 %72, -1
  store i32 %add166.i, ptr %70, align 4
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i290.i = and i32 %73, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i290.i)
  %tobool177.not.i = icmp eq i32 %and.i.i290.i, 0
  br i1 %tobool177.not.i, label %if.then186.i, label %if.then132.i.do.end189.i_crit_edge, !prof !72

if.then132.i.do.end189.i_crit_edge:               ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end189.i

if.then186.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end189.i

do.end189.i:                                      ; preds = %if.then186.i, %if.then132.i.do.end189.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #13, !srcloc !93
  br label %tls_sk_proto_cleanup.exit

if.then204.i:                                     ; preds = %if.end126.i
  tail call void @tls_device_offload_cleanup_rx(ptr noundef %sk) #13
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !91
  %skc_net.i291.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %75 = ptrtoint ptr %skc_net.i291.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skc_net.i291.i, align 4
  %tls_statistics230.i = getelementptr inbounds %struct.net, ptr %76, i32 0, i32 30, i32 7
  %77 = ptrtoint ptr %tls_statistics230.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tls_statistics230.i, align 4
  %arrayidx232.i = getelementptr [11 x i32], ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %arrayidx232.i to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i292.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i292.i to ptr
  %cpu235.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %cpu235.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu235.i, align 4
  %arrayidx236.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx236.i, align 4
  %add237.i = add i32 %85, %79
  %86 = inttoptr i32 %add237.i to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %add238.i = add i32 %88, -1
  store i32 %add238.i, ptr %86, align 4
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !92
  %and.i.i293.i = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i293.i)
  %tobool249.not.i = icmp eq i32 %and.i.i293.i, 0
  br i1 %tobool249.not.i, label %if.then258.i, label %if.then204.i.do.end261.i_crit_edge, !prof !72

if.then204.i.do.end261.i_crit_edge:               ; preds = %if.then204.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end261.i

if.then258.i:                                     ; preds = %if.then204.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end261.i

do.end261.i:                                      ; preds = %if.then258.i, %if.then204.i.do.end261.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %74) #13, !srcloc !93
  br label %tls_sk_proto_cleanup.exit

tls_sk_proto_cleanup.exit:                        ; preds = %do.end261.i, %do.end189.i, %if.end126.i.tls_sk_proto_cleanup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.addr.i)
  br label %if.end29

if.end29:                                         ; preds = %tls_sk_proto_cleanup.exit, %if.end.if.end29_crit_edge
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #13
  br i1 %7, label %do.body36, label %if.end29.do.body71_crit_edge

if.end29.do.body71_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body71

do.body36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr null, ptr %icsk_ulp_data.i, align 8
  br label %do.body71

do.body71:                                        ; preds = %do.body36, %if.end29.do.body71_crit_edge
  %sk_proto = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 15
  %91 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sk_proto, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %93 = ptrtoint ptr %skc_prot to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %92, ptr %skc_prot, align 8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %94 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sk_write_space, align 4
  %cmp76 = icmp eq ptr %95, @tls_write_space
  br i1 %cmp76, label %if.then78, label %do.body71.if.end81_crit_edge

do.body71.if.end81_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then78:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  %sk_write_space79 = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %sk_write_space79 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sk_write_space79, align 4
  %98 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %sk_write_space, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %do.body71.if.end81_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #13
  tail call void @release_sock(ptr noundef %sk) #13
  %99 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load84 = load i8, ptr %tx_conf, align 4
  %bf.lshr85.mask = and i8 %bf.load84, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr85.mask)
  %cmp87 = icmp eq i8 %bf.lshr85.mask, 32
  br i1 %cmp87, label %if.then89, label %if.end81.if.end90_crit_edge

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @tls_sw_free_ctx_tx(ptr noundef %1) #13
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end81.if.end90_crit_edge
  %100 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load92 = load i8, ptr %tx_conf, align 4
  %bf.lshr93 = lshr i8 %bf.load92, 2
  %bf.clear94 = and i8 %bf.lshr93, 7
  %bf.clear94.off = add nsw i8 %bf.clear94, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear94.off)
  %switch = icmp ult i8 %bf.clear94.off, 2
  br i1 %switch, label %if.then106, label %if.end90.if.end107_crit_edge

if.end90.if.end107_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then106:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @tls_sw_strparser_done(ptr noundef %1) #13
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end90.if.end107_crit_edge
  %101 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load109 = load i8, ptr %tx_conf, align 4
  %102 = and i8 %bf.load109, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %102)
  %cmp113 = icmp eq i8 %102, 4
  br i1 %cmp113, label %if.then115, label %if.end107.if.end116_crit_edge

if.end107.if.end116_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.then115:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @tls_sw_free_ctx_rx(ptr noundef %1) #13
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end107.if.end116_crit_edge
  %103 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sk_proto, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  tail call void %106(ptr noundef %sk, i32 noundef %timeout) #13
  %.not.demorgan = and i1 %cmp8.not, %cmp13
  %.not = xor i1 %.not.demorgan, true
  %tobool.not.i154 = icmp eq ptr %1, null
  %or.cond156 = select i1 %.not, i1 true, i1 %tobool.not.i154
  br i1 %or.cond156, label %if.end116.if.end120_crit_edge, label %if.end.i155

if.end116.if.end120_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.end.i155:                                      ; preds = %if.end116
  %crypto_send.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 18
  %107 = call ptr @memset(ptr %crypto_send.i, i32 0, i32 56)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %crypto_send.i) #13, !srcloc !79
  %crypto_recv.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 19
  %108 = call ptr @memset(ptr %crypto_recv.i, i32 0, i32 56)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %crypto_recv.i) #13, !srcloc !79
  %tx_lock.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %tx_lock.i) #13
  %tobool1.not.i = icmp eq ptr %sk, null
  br i1 %tobool1.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #15
  %rcu.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 22
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 300 to ptr)) #13
  br label %if.end120

if.else.i:                                        ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %if.end120

if.end120:                                        ; preds = %if.else.i, %do.end.i, %if.end116.if.end120_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_sw_sendmsg(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_sw_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_sw_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tls_sw_sock_is_readable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_device_sendmsg(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_device_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_toe_hash(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_toe_unhash(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_set_device_offload(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_set_sw_offload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_set_device_offload_rx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_sw_strparser_arm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_write_space(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %in_tcp_sendpages = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %in_tcp_sendpages to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_tcp_sendpages, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_conf = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %tx_conf, align 4
  %bf.lshr.mask = and i8 %bf.load, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @tls_device_write_space(ptr noundef %sk, ptr noundef %1) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @tls_sw_write_space(ptr noundef %sk, ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %sk_write_space4 = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %sk_write_space4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_write_space4, align 4
  tail call void %6(ptr noundef %sk) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_device_write_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_sw_write_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_sw_cancel_work_tx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_sw_free_ctx_tx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_sw_strparser_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_sw_free_ctx_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_sw_release_resources_tx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_device_free_resources_tx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_sw_release_resources_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_device_offload_cleanup_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_sw_sendpage_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_sw_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tls_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 44, i32 noundef 4) #18
  %tls_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 7
  %0 = ptrtoint ptr %tls_statistics to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %tls_statistics, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @tls_proc_init(ptr noundef %net) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %err_free_stats

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_free_stats:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %tls_statistics to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tls_statistics, align 4
  tail call void @free_percpu(ptr noundef %2) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free_stats, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %err_free_stats ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_exit_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tls_proc_fini(ptr noundef %net) #13
  %tls_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 7
  %0 = ptrtoint ptr %tls_statistics to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tls_statistics, align 4
  tail call void @free_percpu(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_proc_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_proc_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_device_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_ulp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__UNIQUE_ID_author608, !1, !"__UNIQUE_ID_author608", i1 false, i1 false}
!1 = !{!"../net/tls/tls_main.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_description609, !3, !"__UNIQUE_ID_description609", i1 false, i1 false}
!3 = !{!"../net/tls/tls_main.c", i32 49, i32 1}
!4 = !{ptr @__UNIQUE_ID_file610, !5, !"__UNIQUE_ID_file610", i1 false, i1 false}
!5 = !{!"../net/tls/tls_main.c", i32 50, i32 1}
!6 = !{ptr @__UNIQUE_ID_license611, !5, !"__UNIQUE_ID_license611", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias_userspace612, !8, !"__UNIQUE_ID_alias_userspace612", i1 false, i1 false}
!8 = !{!"../net/tls/tls_main.c", i32 51, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_tcp_ulp613, !8, !"__UNIQUE_ID_alias_tcp_ulp613", i1 false, i1 false}
!10 = !{ptr @tls_ctx_create.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../net/tls/tls_main.c", i32 724, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_tls__637_1012_tls_register6, !14, !"__initcall__kmod_tls__637_1012_tls_register6", i1 false, i1 false}
!14 = !{!"../net/tls/tls_main.c", i32 1012, i32 1}
!15 = !{ptr @__exitcall_tls_unregister, !16, !"__exitcall_tls_unregister", i1 false, i1 false}
!16 = !{!"../net/tls/tls_main.c", i32 1013, i32 1}
!17 = !{ptr @tls_prots, !18, !"tls_prots", i1 false, i1 false}
!18 = !{!"../net/tls/tls_main.c", i32 63, i32 21}
!19 = !{ptr @tls_proto_ops, !20, !"tls_proto_ops", i1 false, i1 false}
!20 = !{!"../net/tls/tls_main.c", i32 64, i32 25}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/mm.h", i32 717, i32 2}
!23 = !{ptr @tcp_tls_ulp_ops, !24, !"tcp_tls_ulp_ops", i1 false, i1 false}
!24 = !{!"../net/tls/tls_main.c", i32 982, i32 27}
!25 = !{ptr @saved_tcpv6_prot, !26, !"saved_tcpv6_prot", i1 false, i1 false}
!26 = !{!"../net/tls/tls_main.c", i32 59, i32 28}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/tls/tls_main.c", i32 60, i32 8}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tcpv6_prot_mutex, !28, !"tcpv6_prot_mutex", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/tls/tls_main.c", i32 344, i32 6}
!40 = !{ptr @saved_tcpv4_prot, !41, !"saved_tcpv4_prot", i1 false, i1 false}
!41 = !{!"../net/tls/tls_main.c", i32 61, i32 28}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/tls/tls_main.c", i32 62, i32 8}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tcpv4_prot_mutex, !43, !"tcpv4_prot_mutex", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../net/tls/tls_main.c", i32 904, i32 8}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!51 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!55 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/net/netlink.h", i32 991, i32 3}
!58 = !{ptr @tls_proc_ops, !59, !"tls_proc_ops", i1 false, i1 false}
!59 = !{!"../net/tls/tls_main.c", i32 977, i32 33}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2154451271, i64 2154451763, i64 2154451308, i64 2154451364, i64 2154451398, i64 2154451422, i64 2154451463, i64 2154451484, i64 2154451512, i64 2154451546}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2153605963, i64 2153606446, i64 2153606000, i64 2153606056, i64 2153606090, i64 2153606114, i64 2153606155, i64 2153606176, i64 2153606204, i64 2153606238}
!74 = !{i64 2148451923}
!75 = !{i64 2148366632, i64 2148366664, i64 2148366693, i64 2148366727, i64 2148366758, i64 2148366781}
!76 = !{i64 2148452152}
!77 = !{i64 2148976824, i64 2148976829, i64 2148976842, i64 2148976886, i64 2148976920, i64 2148976941}
!78 = !{i8 0, i8 2}
!79 = !{i64 2149033960}
!80 = !{i64 2159008030}
!81 = !{i64 2159025151}
!82 = !{i64 2159027465}
!83 = !{i64 2159037814}
!84 = !{i64 2159040128}
!85 = !{i64 2149379606}
!86 = !{i64 2149379872}
!87 = !{i64 2152677463, i64 2152677488}
!88 = !{i64 5173018}
!89 = !{i64 5173215}
!90 = !{i64 2152658448}
!91 = !{i64 767147, i64 767208}
!92 = !{i64 769879}
!93 = !{i64 770164}
!94 = !{i64 2158893220, i64 2158893500, i64 2158893834, i64 2158894168}
!95 = !{i64 2152678144, i64 2152678169}
