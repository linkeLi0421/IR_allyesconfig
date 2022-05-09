; ModuleID = '/llk/IR_all_yes/net/tls/tls_sw.c_pt.bc'
source_filename = "../net/tls/tls_sw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.135 }
%struct.atomic_t = type { i32 }
%union.anon.135 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
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
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.195, %struct.anon.196, i32, i32, [13 x i64] }
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
%struct.anon.195 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.196 = type { i32, i32, i32, i32 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.tls_crypto_context = type { %union.anon.179 }
%union.anon.179 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.tls_sw_context_tx = type { ptr, %struct.crypto_wait, %struct.tx_work, ptr, %struct.list_head, %struct.atomic_t, %struct.spinlock, i32, i8, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tx_work = type { %struct.delayed_work, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tls_rec = type { %struct.list_head, i32, i32, %struct.sk_msg, %struct.sk_msg, [2 x %struct.scatterlist], [2 x %struct.scatterlist], i8, %struct.scatterlist, [13 x i8], [16 x i8], [115 x i8], %struct.aead_request, [0 x i8] }
%struct.sk_msg = type { %struct.sk_msg_sg, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head }
%struct.sk_msg_sg = type { i32, i32, i32, i32, i32, i32, [19 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.153, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.151 }
%union.anon.4 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.153 = type { ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.5, %union.anon.150, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.150 = type { %struct.atomic_t }
%struct.sk_psock = type { ptr, ptr, i32, i32, i32, ptr, %struct.sk_psock_progs, %struct.strparser, %struct.sk_buff_head, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.sk_psock_work_state, %struct.work_struct, %struct.rcu_work }
%struct.sk_psock_progs = type { ptr, ptr, ptr, ptr }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_psock_work_state = type { ptr, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
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
%struct.tls_sw_context_rx = type { ptr, %struct.crypto_wait, %struct.strparser, %struct.sk_buff_head, ptr, ptr, i8, i8, %struct.atomic_t, %struct.spinlock, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sk_buff_list = type { ptr, ptr }
%struct.tls12_crypto_info_aes_gcm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.tls12_crypto_info_aes_ccm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.tls12_crypto_info_chacha20_poly1305 = type { %struct.tls_crypto_info, [12 x i8], [32 x i8], [0 x i8], [8 x i8] }
%struct.tls12_crypto_info_sm4_gcm = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.tls12_crypto_info_sm4_ccm = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.190, ptr, ptr, ptr, ptr, %union.anon.191, [120 x i8] }
%union.anon.190 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.191 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@tls_err_abort.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/tls/tls_sw.c\00", [47 x i8] zeroinitializer }, align 32
@tls_set_sw_offload.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&sw_ctx_tx->encrypt_compl_lock\00", [33 x i8] zeroinitializer }, align 32
@tls_set_sw_offload.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&sw_ctx_tx->tx_work.work)->work)\00", [43 x i8] zeroinitializer }, align 32
@tls_set_sw_offload.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&sw_ctx_tx->tx_work.work)->timer\00", [61 x i8] zeroinitializer }, align 32
@tls_set_sw_offload.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&sw_ctx_rx->decrypt_compl_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rfc7539(chacha20,poly1305)\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(sm4)\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(sm4)\00", [23 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sk_psock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/skmsg.h\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967285]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967284]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967181, i64 4294967268, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967181, i64 4294967268, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 53, i64 56]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967222]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 16, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 53, i64 56]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 49, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 2377, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 2382, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 2386, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 2408, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 2442, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 2459, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 2476, i32 17 }
@___asan_gen_.74 = private constant [20 x i8] c"../net/tls/tls_sw.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 2493, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1160, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 717, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 695, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"../include/linux/skmsg.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 286, i32 9 }
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 723, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1984, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @tls_set_sw_offload.__key, ptr @.str.1, ptr @tls_set_sw_offload.__key.2, ptr @.str.3, ptr @tls_set_sw_offload.__key.4, ptr @.str.5, ptr @tls_set_sw_offload.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20, ptr @skb_queue_head_init.__key, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_set_sw_offload.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_set_sw_offload.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_set_sw_offload.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_set_sw_offload.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_err_abort(ptr noundef %sk, i32 noundef %err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %err)
  %cmp = icmp sgt i32 %err, -1
  br i1 %cmp, label %land.rhs, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b39 = load i1, ptr @tls_err_abort.__already_done, align 1
  br i1 %.b39, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !55

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tls_err_abort.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %sub = sub i32 0, %err
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %0 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sub, ptr %sk_err, align 4
  tail call void @sk_error_report(ptr noundef %sk) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_tx_records(ptr noundef %sk, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx.i, align 4
  %partially_sent_record.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %partially_sent_record.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %partially_sent_record.i, align 4
  %tobool.i.not = icmp eq ptr %5, null
  br i1 %tobool.i.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %tx_list = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %flags)
  %cmp = icmp eq i32 %flags, -1
  br i1 %cmp, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %tx_flags5 = getelementptr inbounds %struct.tls_rec, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %tx_flags5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_flags5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %tx_flags.0 = phi i32 [ %9, %if.then4 ], [ %flags, %if.then.if.end_crit_edge ]
  %call6 = tail call i32 @tls_push_partial_record(ptr noundef %sk, ptr noundef %1, i32 noundef %tx_flags.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.tx_err_crit_edge

if.end.tx_err_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_err

if.end8:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end8.list_del.exit_crit_edge
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %msg_plaintext = getelementptr inbounds %struct.tls_rec, ptr %7, i32 0, i32 3
  %call9 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_plaintext) #10
  tail call void @kfree(ptr noundef %7) #10
  br label %if.end10

if.end10:                                         ; preds = %list_del.exit, %entry.if.end10_crit_edge
  %tx_list12 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %tx_list12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_list12, align 4
  %cmp23.not94 = icmp eq ptr %19, %tx_list12
  br i1 %cmp23.not94, label %if.end10.if.end50_crit_edge, label %do.end.lr.ph

if.end10.if.end50_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.end.lr.ph:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %flags)
  %cmp27 = icmp eq i32 %flags, -1
  br label %do.end

do.end:                                           ; preds = %list_del.exit87.do.end_crit_edge, %do.end.lr.ph
  %rec.095 = phi ptr [ %19, %do.end.lr.ph ], [ %tmp.097, %list_del.exit87.do.end_crit_edge ]
  %20 = ptrtoint ptr %rec.095 to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.097 = load ptr, ptr %rec.095, align 128
  %tx_ready = getelementptr inbounds %struct.tls_rec, ptr %rec.095, i32 0, i32 1
  %21 = ptrtoint ptr %tx_ready to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %tx_ready, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool25.not = icmp eq i32 %22, 0
  br i1 %tobool25.not, label %do.end.if.end50_crit_edge, label %if.then26

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then26:                                        ; preds = %do.end
  br i1 %cmp27, label %if.then28, label %if.then26.if.end31_crit_edge

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %tx_flags29 = getelementptr inbounds %struct.tls_rec, ptr %rec.095, i32 0, i32 2
  %23 = ptrtoint ptr %tx_flags29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_flags29, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then26.if.end31_crit_edge
  %tx_flags.1 = phi i32 [ %24, %if.then28 ], [ %flags, %if.then26.if.end31_crit_edge ]
  %curr = getelementptr inbounds %struct.tls_rec, ptr %rec.095, i32 0, i32 4, i32 0, i32 1
  %25 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %curr, align 4
  %arrayidx = getelementptr %struct.tls_rec, ptr %rec.095, i32 0, i32 4, i32 0, i32 6, i32 %26
  %call33 = tail call i32 @tls_push_sg(ptr noundef %sk, ptr noundef %1, ptr noundef %arrayidx, i16 noundef zeroext 0, i32 noundef %tx_flags.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.tx_err_crit_edge

if.end31.tx_err_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_err

if.end36:                                         ; preds = %if.end31
  %call.i.i82 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rec.095) #10
  br i1 %call.i.i82, label %if.end.i.i85, label %if.end36.list_del.exit87_crit_edge

if.end36.list_del.exit87_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit87

if.end.i.i85:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i83 = getelementptr inbounds %struct.list_head, ptr %rec.095, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i83, align 4
  %29 = ptrtoint ptr %rec.095 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rec.095, align 4
  %prev1.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i84, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit87

list_del.exit87:                                  ; preds = %if.end.i.i85, %if.end36.list_del.exit87_crit_edge
  %33 = ptrtoint ptr %rec.095 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %rec.095, align 4
  %prev.i86 = getelementptr inbounds %struct.list_head, ptr %rec.095, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i86, align 4
  %msg_plaintext38 = getelementptr inbounds %struct.tls_rec, ptr %rec.095, i32 0, i32 3
  %call39 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_plaintext38) #10
  tail call void @kfree(ptr noundef %rec.095) #10
  %cmp23.not = icmp eq ptr %tmp.097, %tx_list12
  br i1 %cmp23.not, label %list_del.exit87.if.end50_crit_edge, label %list_del.exit87.do.end_crit_edge

list_del.exit87.do.end_crit_edge:                 ; preds = %list_del.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

list_del.exit87.if.end50_crit_edge:               ; preds = %list_del.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

tx_err:                                           ; preds = %if.end31.tx_err_crit_edge, %if.end.tx_err_crit_edge
  %rc.2 = phi i32 [ %call6, %if.end.tx_err_crit_edge ], [ %call33, %if.end31.tx_err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.2)
  %cmp47 = icmp sgt i32 %rc.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rc.2)
  %cmp48.not = icmp eq i32 %rc.2, -11
  %or.cond = or i1 %cmp47, %cmp48.not
  br i1 %or.cond, label %tx_err.if.end50_crit_edge, label %if.then49

tx_err.if.end50_crit_edge:                        ; preds = %tx_err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then49:                                        ; preds = %tx_err
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tls_err_abort(ptr noundef %sk, i32 noundef -74)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %tx_err.if.end50_crit_edge, %list_del.exit87.if.end50_crit_edge, %do.end.if.end50_crit_edge, %if.end10.if.end50_crit_edge
  %rc.292 = phi i32 [ %rc.2, %if.then49 ], [ %rc.2, %tx_err.if.end50_crit_edge ], [ 0, %if.end10.if.end50_crit_edge ], [ 0, %list_del.exit87.if.end50_crit_edge ], [ 0, %do.end.if.end50_crit_edge ]
  ret i32 %rc.292
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_push_partial_record(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_push_sg(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_sw_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  %timeo = alloca i32, align 4
  %record_type = alloca i8, align 1
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #10
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_flags, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_sndtimeo.exit_crit_edge

entry.sock_sndtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %2 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.false.i ], [ 0, %entry.sock_sndtimeo.exit_crit_edge ]
  %4 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %timeo, align 4
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %5 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv_ctx_tx.i, align 4
  %async_capable3 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %async_capable3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %async_capable3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool4.not = icmp slt i8 %bf.load, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %record_type) #10
  %10 = ptrtoint ptr %record_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 23, ptr %record_type, align 1
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %msg_iter to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msg_iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp eq i8 %12, 1
  %and8 = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #10
  %13 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %copied, align 4
  %and12 = and i32 %1, -49217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end, label %sock_sndtimeo.exit.cleanup241_crit_edge

sock_sndtimeo.exit.cleanup241_crit_edge:          ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup241

if.end:                                           ; preds = %sock_sndtimeo.exit
  %tx_lock = getelementptr inbounds %struct.tls_context, ptr %6, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #10
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %14 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %if.end.if.end28_crit_edge, label %if.then18, !prof !55

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then18:                                        ; preds = %if.end
  %call19 = call i32 @tls_proccess_cmsg(ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %record_type) #10
  %16 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call19, label %if.then18.send_end_crit_edge [
    i32 0, label %if.then18.if.end28_crit_edge
    i32 -115, label %if.end28.thread
    i32 -11, label %if.end28.fold.split
  ]

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then18.send_end_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_end

if.end28.fold.split:                              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %if.end28.fold.split, %if.then18.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %ret.0 = phi i32 [ %call19, %if.then18.if.end28_crit_edge ], [ 0, %if.end.if.end28_crit_edge ], [ -11, %if.end28.fold.split ]
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not459 = icmp eq i32 %18, 0
  br i1 %tobool30.not459, label %if.end28.send_end_crit_edge, label %if.end28.while.body.lr.ph_crit_edge

if.end28.while.body.lr.ph_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

if.end28.send_end_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_end

if.end28.thread:                                  ; preds = %if.then18
  %count.i.i485 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %count.i.i485 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i.i485, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool30.not459486 = icmp eq i32 %20, 0
  br i1 %tobool30.not459486, label %if.end28.thread.if.end228_crit_edge, label %if.end28.thread.while.body.lr.ph_crit_edge

if.end28.thread.while.body.lr.ph_crit_edge:       ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

if.end28.thread.if.end228_crit_edge:              ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

while.body.lr.ph:                                 ; preds = %if.end28.thread.while.body.lr.ph_crit_edge, %if.end28.while.body.lr.ph_crit_edge
  %count.i.i490 = phi ptr [ %count.i.i485, %if.end28.thread.while.body.lr.ph_crit_edge ], [ %count.i.i, %if.end28.while.body.lr.ph_crit_edge ]
  %num_async.0487 = phi i32 [ 1, %if.end28.thread.while.body.lr.ph_crit_edge ], [ 0, %if.end28.while.body.lr.ph_crit_edge ]
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %open_rec = getelementptr inbounds %struct.tls_sw_context_tx, ptr %8, i32 0, i32 3
  %overhead_size = getelementptr inbounds %struct.tls_prot_info, ptr %6, i32 0, i32 4
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %pending_open_record_frags = getelementptr inbounds %struct.tls_context, ptr %6, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %num_zc.0462 = phi i32 [ 0, %while.body.lr.ph ], [ %num_zc.0.be, %while.cond.backedge.while.body_crit_edge ]
  %num_async.1460 = phi i32 [ %num_async.0487, %while.body.lr.ph ], [ %num_async.1.be, %while.cond.backedge.while.body_crit_edge ]
  %21 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool31.not = icmp eq i32 %22, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 0, %22
  br label %send_end

if.end34:                                         ; preds = %while.body
  %23 = ptrtoint ptr %open_rec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %open_rec, align 4
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %if.end41, label %if.end34.if.end44_crit_edge

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end41:                                         ; preds = %if.end34
  %call39 = call fastcc ptr @tls_get_rec(ptr noundef %sk)
  %25 = ptrtoint ptr %open_rec to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call39, ptr %open_rec, align 4
  %tobool42.not = icmp eq ptr %call39, null
  br i1 %tobool42.not, label %if.end41.send_end.loopexit_crit_edge, label %if.end41.if.end44_crit_edge

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end41.send_end.loopexit_crit_edge:             ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_end.loopexit

if.end44:                                         ; preds = %if.end41.if.end44_crit_edge, %if.end34.if.end44_crit_edge
  %rec.0424 = phi ptr [ %call39, %if.end41.if.end44_crit_edge ], [ %24, %if.end34.if.end44_crit_edge ]
  %msg_plaintext = getelementptr inbounds %struct.tls_rec, ptr %rec.0424, i32 0, i32 3
  %msg_encrypted = getelementptr inbounds %struct.tls_rec, ptr %rec.0424, i32 0, i32 4
  %size45 = getelementptr inbounds %struct.tls_rec, ptr %rec.0424, i32 0, i32 3, i32 0, i32 3
  %26 = ptrtoint ptr %size45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size45, align 4
  %28 = ptrtoint ptr %count.i.i490 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count.i.i490, align 8
  %sub49 = sub i32 16384, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %sub49)
  %cmp50.not = icmp uge i32 %29, %sub49
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 %sub49)
  %add = add i32 %30, %27
  %31 = ptrtoint ptr %overhead_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %overhead_size, align 2
  %conv = zext i16 %32 to i32
  %add55 = add i32 %add, %conv
  %33 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %35 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp.not.i.i = icmp slt i32 %34, %36
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end44.wait_for_sndbuf_crit_edge

if.end44.wait_for_sndbuf_crit_edge:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_sndbuf

if.end.i.i:                                       ; preds = %if.end44
  %37 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skc_prot.i.i, align 8
  %stream_memory_free.i.i = getelementptr inbounds %struct.proto, ptr %38, i32 0, i32 28
  %39 = ptrtoint ptr %stream_memory_free.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stream_memory_free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i.alloc_encrypted_crit_edge, label %cond.true.i.i

if.end.i.i.alloc_encrypted_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_encrypted

cond.true.i.i:                                    ; preds = %if.end.i.i
  %call.i.i397 = call zeroext i1 %40(ptr noundef %sk, i32 noundef 0) #10
  br i1 %call.i.i397, label %cond.true.i.i.alloc_encrypted_crit_edge, label %cond.true.i.i.wait_for_sndbuf_crit_edge

cond.true.i.i.wait_for_sndbuf_crit_edge:          ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_sndbuf

cond.true.i.i.alloc_encrypted_crit_edge:          ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_encrypted

alloc_encrypted:                                  ; preds = %land.lhs.true194.alloc_encrypted_crit_edge, %cond.true.i.i.alloc_encrypted_crit_edge, %if.end.i.i.alloc_encrypted_crit_edge
  %try_to_copy.1 = phi i32 [ %try_to_copy.4, %land.lhs.true194.alloc_encrypted_crit_edge ], [ %30, %cond.true.i.i.alloc_encrypted_crit_edge ], [ %30, %if.end.i.i.alloc_encrypted_crit_edge ]
  %required_size.0 = phi i32 [ %required_size.1, %land.lhs.true194.alloc_encrypted_crit_edge ], [ %add55, %cond.true.i.i.alloc_encrypted_crit_edge ], [ %add55, %if.end.i.i.alloc_encrypted_crit_edge ]
  %num_async.2 = phi i32 [ %num_async.7, %land.lhs.true194.alloc_encrypted_crit_edge ], [ %num_async.1460, %cond.true.i.i.alloc_encrypted_crit_edge ], [ %num_async.1460, %if.end.i.i.alloc_encrypted_crit_edge ]
  %full_record.1.off0 = phi i1 [ %full_record.4.off0, %land.lhs.true194.alloc_encrypted_crit_edge ], [ %cmp50.not, %cond.true.i.i.alloc_encrypted_crit_edge ], [ %cmp50.not, %if.end.i.i.alloc_encrypted_crit_edge ]
  %num_zc.1 = phi i32 [ %num_zc.5, %land.lhs.true194.alloc_encrypted_crit_edge ], [ %num_zc.0462, %cond.true.i.i.alloc_encrypted_crit_edge ], [ %num_zc.0462, %if.end.i.i.alloc_encrypted_crit_edge ]
  %41 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %open_rec.i = getelementptr inbounds %struct.tls_sw_context_tx, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %open_rec.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %open_rec.i, align 4
  %msg_encrypted.i = getelementptr inbounds %struct.tls_rec, ptr %46, i32 0, i32 4
  %call2.i = call i32 @sk_msg_alloc(ptr noundef %sk, ptr noundef %msg_encrypted.i, i32 noundef %required_size.0, i32 noundef 0) #10
  %47 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call2.i, label %alloc_encrypted.wait_for_memory_crit_edge [
    i32 0, label %alloc_encrypted.if.end70_crit_edge
    i32 -28, label %if.end65
  ]

alloc_encrypted.if.end70_crit_edge:               ; preds = %alloc_encrypted
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

alloc_encrypted.wait_for_memory_crit_edge:        ; preds = %alloc_encrypted
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.end65:                                         ; preds = %alloc_encrypted
  call void @__sanitizer_cov_trace_pc() #12
  %size67 = getelementptr inbounds %struct.tls_rec, ptr %rec.0424, i32 0, i32 4, i32 0, i32 3
  %48 = ptrtoint ptr %size67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size67, align 4
  %sub68.neg = sub i32 %try_to_copy.1, %required_size.0
  %sub69 = add i32 %sub68.neg, %49
  br label %if.end70

if.end70:                                         ; preds = %if.end65, %alloc_encrypted.if.end70_crit_edge
  %try_to_copy.2 = phi i32 [ %sub69, %if.end65 ], [ %try_to_copy.1, %alloc_encrypted.if.end70_crit_edge ]
  %full_record.2.off0 = phi i1 [ true, %if.end65 ], [ %full_record.1.off0, %alloc_encrypted.if.end70_crit_edge ]
  br i1 %cmp.i, label %if.end70.if.end121_crit_edge, label %land.lhs.true

if.end70.if.end121_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

land.lhs.true:                                    ; preds = %if.end70
  %brmerge = select i1 %full_record.2.off0, i1 true, i1 %tobool9.not
  %brmerge.not = xor i1 %brmerge, true
  %brmerge394 = select i1 %brmerge.not, i1 true, i1 %tobool4.not
  br i1 %brmerge394, label %land.lhs.true.if.end121_crit_edge, label %if.then78

land.lhs.true.if.end121_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then78:                                        ; preds = %land.lhs.true
  %end = getelementptr inbounds %struct.tls_rec, ptr %rec.0424, i32 0, i32 3, i32 0, i32 2
  %50 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %end, align 4
  %call81 = call i32 @sk_msg_zerocopy_from_iter(ptr noundef %sk, ptr noundef %msg_iter, ptr noundef %msg_plaintext, i32 noundef %try_to_copy.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.then78.cleanup.thread_crit_edge

if.then78.cleanup.thread_crit_edge:               ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end84:                                         ; preds = %if.then78
  %52 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %copied, align 4
  %add86 = add i32 %53, %try_to_copy.2
  store i32 %add86, ptr %copied, align 4
  %54 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %end, align 4
  %copy2.i.i = getelementptr inbounds %struct.tls_rec, ptr %rec.0424, i32 0, i32 3, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end84
  %i.addr.0.i.i = phi i32 [ %51, %if.end84 ], [ %spec.store.select.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %rem.i.i.i = and i32 %i.addr.0.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %i.addr.0.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %copy2.i.i, i32 %div2.i.i.i
  %56 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %57
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %inc.i.i = add i32 %i.addr.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc.i.i)
  %cmp.i.i = icmp eq i32 %inc.i.i, 18
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %cmp7.i.i = icmp eq i32 %spec.store.select.i.i, %55
  br i1 %cmp7.i.i, label %sk_msg_sg_copy_set.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

sk_msg_sg_copy_set.exit:                          ; preds = %do.body.i.i
  %inc85 = add i32 %num_zc.1, 1
  %58 = ptrtoint ptr %record_type to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %record_type, align 1
  %60 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msg_flags, align 4
  %call89 = call fastcc i32 @bpf_exec_tx_verdict(ptr noundef %msg_plaintext, ptr noundef %sk, i1 noundef zeroext %full_record.2.off0, i8 noundef zeroext %59, ptr noundef nonnull %copied, i32 noundef %61)
  %62 = zext i32 %call89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call89, label %if.else100 [
    i32 0, label %sk_msg_sg_copy_set.exit.while.cond.backedge_crit_edge
    i32 -115, label %if.then94
    i32 -12, label %sk_msg_sg_copy_set.exit.wait_for_memory_crit_edge
  ]

sk_msg_sg_copy_set.exit.wait_for_memory_crit_edge: ; preds = %sk_msg_sg_copy_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

sk_msg_sg_copy_set.exit.while.cond.backedge_crit_edge: ; preds = %sk_msg_sg_copy_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then94:                                        ; preds = %sk_msg_sg_copy_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  %inc95 = add i32 %num_async.2, 1
  br label %while.cond.backedge

if.else100:                                       ; preds = %sk_msg_sg_copy_set.exit
  %63 = ptrtoint ptr %open_rec to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %open_rec, align 4
  %tobool102.not = icmp ne ptr %64, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call89)
  %cmp104 = icmp eq i32 %call89, -28
  %or.cond = select i1 %tobool102.not, i1 %cmp104, i1 false
  br i1 %or.cond, label %rollback_iter, label %if.else107

if.else107:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call89)
  %cmp108.not = icmp eq i32 %call89, -11
  br i1 %cmp108.not, label %if.else107.while.cond.backedge_crit_edge, label %if.else107.send_end.loopexit_crit_edge

if.else107.send_end.loopexit_crit_edge:           ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_end.loopexit

if.else107.while.cond.backedge_crit_edge:         ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

rollback_iter:                                    ; preds = %if.else100
  %65 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %copied, align 4
  %sub116 = sub i32 %66, %try_to_copy.2
  store i32 %sub116, ptr %copied, align 4
  %67 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %end, align 4
  br label %do.body.i.i409

do.body.i.i409:                                   ; preds = %do.body.i.i409.do.body.i.i409_crit_edge, %rollback_iter
  %i.addr.0.i.i400 = phi i32 [ %51, %rollback_iter ], [ %spec.store.select.i.i407, %do.body.i.i409.do.body.i.i409_crit_edge ]
  %rem.i.i.i401 = and i32 %i.addr.0.i.i400, 31
  %shl.i.i.i402 = shl nuw i32 1, %rem.i.i.i401
  %div2.i.i.i403 = lshr i32 %i.addr.0.i.i400, 5
  %add.ptr.i.i.i404 = getelementptr i32, ptr %copy2.i.i, i32 %div2.i.i.i403
  %neg.i.i.i = xor i32 %shl.i.i.i402, -1
  %69 = ptrtoint ptr %add.ptr.i.i.i404 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i.i404, align 4
  %and.i.i.i = and i32 %70, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i404, align 4
  %inc.i.i405 = add i32 %i.addr.0.i.i400, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc.i.i405)
  %cmp.i.i406 = icmp eq i32 %inc.i.i405, 18
  %spec.store.select.i.i407 = select i1 %cmp.i.i406, i32 0, i32 %inc.i.i405
  %cmp7.i.i408 = icmp eq i32 %spec.store.select.i.i407, %68
  br i1 %cmp7.i.i408, label %sk_msg_sg_copy_clear.exit, label %do.body.i.i409.do.body.i.i409_crit_edge

do.body.i.i409.do.body.i.i409_crit_edge:          ; preds = %do.body.i.i409
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i409

sk_msg_sg_copy_clear.exit:                        ; preds = %do.body.i.i409
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %size45 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size45, align 4
  %sub120 = sub i32 %72, %27
  call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %sub120) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %sk_msg_sg_copy_clear.exit, %if.then78.cleanup.thread_crit_edge
  %num_zc.2 = phi i32 [ %num_zc.1, %if.then78.cleanup.thread_crit_edge ], [ %inc85, %sk_msg_sg_copy_clear.exit ]
  call void @sk_msg_trim(ptr noundef %sk, ptr noundef %msg_plaintext, i32 noundef %27) #10
  br label %if.end121

if.end121:                                        ; preds = %cleanup.thread, %land.lhs.true.if.end121_crit_edge, %if.end70.if.end121_crit_edge
  %num_zc.4 = phi i32 [ %num_zc.1, %if.end70.if.end121_crit_edge ], [ %num_zc.1, %land.lhs.true.if.end121_crit_edge ], [ %num_zc.2, %cleanup.thread ]
  %73 = ptrtoint ptr %size45 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size45, align 4
  %add124 = add i32 %74, %try_to_copy.2
  %75 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i411 = getelementptr inbounds %struct.tls_context, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %priv_ctx_tx.i.i411 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv_ctx_tx.i.i411, align 4
  %open_rec.i412 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %open_rec.i412 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %open_rec.i412, align 4
  %msg_plaintext.i = getelementptr inbounds %struct.tls_rec, ptr %80, i32 0, i32 3
  %msg_encrypted.i413 = getelementptr inbounds %struct.tls_rec, ptr %80, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.tls_rec, ptr %80, i32 0, i32 3, i32 0, i32 3
  %81 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %size.i, align 4
  %sub.i = sub i32 %add124, %82
  %prepend_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %76, i32 0, i32 2
  %83 = ptrtoint ptr %prepend_size.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %prepend_size.i, align 2
  %conv.i = zext i16 %84 to i32
  %add.i = add i32 %82, %conv.i
  %call4.i = call i32 @sk_msg_clone(ptr noundef %sk, ptr noundef %msg_plaintext.i, ptr noundef %msg_encrypted.i413, i32 noundef %add.i, i32 noundef %sub.i) #10
  %85 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call4.i, label %if.end121.send_end.loopexit_crit_edge [
    i32 0, label %if.end121.if.end141_crit_edge
    i32 -28, label %if.end131
  ]

if.end121.if.end141_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.end121.send_end.loopexit_crit_edge:            ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_end.loopexit

if.end131:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %size45 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %size45, align 4
  %sub135 = sub i32 %87, %74
  %88 = ptrtoint ptr %overhead_size to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %overhead_size, align 2
  %conv139 = zext i16 %89 to i32
  %add140 = add i32 %87, %conv139
  call void @sk_msg_trim(ptr noundef %sk, ptr noundef %msg_encrypted, i32 noundef %add140) #10
  br label %if.end141

if.end141:                                        ; preds = %if.end131, %if.end121.if.end141_crit_edge
  %try_to_copy.3 = phi i32 [ %sub135, %if.end131 ], [ %try_to_copy.2, %if.end121.if.end141_crit_edge ]
  %full_record.3.off0 = phi i1 [ true, %if.end131 ], [ %full_record.2.off0, %if.end121.if.end141_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try_to_copy.3)
  %tobool142.not = icmp eq i32 %try_to_copy.3, 0
  br i1 %tobool142.not, label %if.end141.if.end150_crit_edge, label %if.then143

if.end141.if.end150_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then143:                                       ; preds = %if.end141
  %call145 = call i32 @sk_msg_memcopy_from_iter(ptr noundef %sk, ptr noundef %msg_iter, ptr noundef %msg_plaintext, i32 noundef %try_to_copy.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.then143.trim_sgl_crit_edge, label %if.then143.if.end150_crit_edge

if.then143.if.end150_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then143.trim_sgl_crit_edge:                    ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  br label %trim_sgl

if.end150:                                        ; preds = %if.then143.if.end150_crit_edge, %if.end141.if.end150_crit_edge
  %ret.4 = phi i32 [ %call145, %if.then143.if.end150_crit_edge ], [ %call4.i, %if.end141.if.end150_crit_edge ]
  %90 = ptrtoint ptr %pending_open_record_frags to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %pending_open_record_frags, align 1
  %91 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %copied, align 4
  %add151 = add i32 %92, %try_to_copy.3
  store i32 %add151, ptr %copied, align 4
  %brmerge395 = select i1 %full_record.3.off0, i1 true, i1 %tobool9.not
  br i1 %brmerge395, label %if.then157, label %if.end150.while.cond.backedge_crit_edge

if.end150.while.cond.backedge_crit_edge:          ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then157:                                       ; preds = %if.end150
  %93 = ptrtoint ptr %record_type to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %record_type, align 1
  %95 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msg_flags, align 4
  %call160 = call fastcc i32 @bpf_exec_tx_verdict(ptr noundef %msg_plaintext, ptr noundef %sk, i1 noundef zeroext %full_record.3.off0, i8 noundef zeroext %94, ptr noundef nonnull %copied, i32 noundef %96)
  %97 = zext i32 %call160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call160, label %if.then157.send_end.loopexit_crit_edge [
    i32 0, label %if.then157.while.cond.backedge_crit_edge
    i32 -115, label %if.then165
    i32 -12, label %if.then157.wait_for_memory_crit_edge
    i32 -11, label %if.end183.fold.split
    i32 -28, label %if.then157.send_end_crit_edge
  ]

if.then157.send_end_crit_edge:                    ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_end

if.then157.wait_for_memory_crit_edge:             ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.then157.while.cond.backedge_crit_edge:         ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then157.send_end.loopexit_crit_edge:           ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_end.loopexit

if.then165:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  %inc166 = add i32 %num_async.2, 1
  br label %while.cond.backedge

if.end183.fold.split:                             ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %land.lhs.true194.while.cond.backedge_crit_edge, %if.end191.while.cond.backedge_crit_edge, %if.end183.fold.split, %if.then165, %if.then157.while.cond.backedge_crit_edge, %if.end150.while.cond.backedge_crit_edge, %if.else107.while.cond.backedge_crit_edge, %if.then94, %sk_msg_sg_copy_set.exit.while.cond.backedge_crit_edge
  %num_async.1.be = phi i32 [ %inc95, %if.then94 ], [ %num_async.2, %if.else107.while.cond.backedge_crit_edge ], [ %num_async.2, %sk_msg_sg_copy_set.exit.while.cond.backedge_crit_edge ], [ %inc166, %if.then165 ], [ %num_async.2, %if.then157.while.cond.backedge_crit_edge ], [ %num_async.2, %if.end150.while.cond.backedge_crit_edge ], [ %num_async.2, %if.end183.fold.split ], [ %num_async.7, %land.lhs.true194.while.cond.backedge_crit_edge ], [ %num_async.7, %if.end191.while.cond.backedge_crit_edge ]
  %num_zc.0.be = phi i32 [ %inc85, %if.then94 ], [ %inc85, %if.else107.while.cond.backedge_crit_edge ], [ %inc85, %sk_msg_sg_copy_set.exit.while.cond.backedge_crit_edge ], [ %num_zc.4, %if.then165 ], [ %num_zc.4, %if.then157.while.cond.backedge_crit_edge ], [ %num_zc.4, %if.end150.while.cond.backedge_crit_edge ], [ %num_zc.4, %if.end183.fold.split ], [ %num_zc.5, %land.lhs.true194.while.cond.backedge_crit_edge ], [ %num_zc.5, %if.end191.while.cond.backedge_crit_edge ]
  %ret.1.be = phi i32 [ -115, %if.then94 ], [ -11, %if.else107.while.cond.backedge_crit_edge ], [ %call89, %sk_msg_sg_copy_set.exit.while.cond.backedge_crit_edge ], [ -115, %if.then165 ], [ %call160, %if.then157.while.cond.backedge_crit_edge ], [ %ret.4, %if.end150.while.cond.backedge_crit_edge ], [ -11, %if.end183.fold.split ], [ 0, %land.lhs.true194.while.cond.backedge_crit_edge ], [ 0, %if.end191.while.cond.backedge_crit_edge ]
  %98 = ptrtoint ptr %count.i.i490 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count.i.i490, align 8
  %tobool30.not = icmp eq i32 %99, 0
  br i1 %tobool30.not, label %while.end, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

wait_for_sndbuf:                                  ; preds = %cond.true.i.i.wait_for_sndbuf_crit_edge, %if.end44.wait_for_sndbuf_crit_edge
  %100 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sk_socket, align 8
  %flags = getelementptr inbounds %struct.socket, ptr %101, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  br label %wait_for_memory

wait_for_memory:                                  ; preds = %wait_for_sndbuf, %if.then157.wait_for_memory_crit_edge, %sk_msg_sg_copy_set.exit.wait_for_memory_crit_edge, %alloc_encrypted.wait_for_memory_crit_edge
  %try_to_copy.4 = phi i32 [ %30, %wait_for_sndbuf ], [ %try_to_copy.1, %alloc_encrypted.wait_for_memory_crit_edge ], [ %try_to_copy.3, %if.then157.wait_for_memory_crit_edge ], [ %try_to_copy.2, %sk_msg_sg_copy_set.exit.wait_for_memory_crit_edge ]
  %required_size.1 = phi i32 [ %add55, %wait_for_sndbuf ], [ %required_size.0, %alloc_encrypted.wait_for_memory_crit_edge ], [ %add124, %if.then157.wait_for_memory_crit_edge ], [ %required_size.0, %sk_msg_sg_copy_set.exit.wait_for_memory_crit_edge ]
  %num_async.7 = phi i32 [ %num_async.1460, %wait_for_sndbuf ], [ %num_async.2, %alloc_encrypted.wait_for_memory_crit_edge ], [ %num_async.2, %if.then157.wait_for_memory_crit_edge ], [ %num_async.2, %sk_msg_sg_copy_set.exit.wait_for_memory_crit_edge ]
  %full_record.4.off0 = phi i1 [ %cmp50.not, %wait_for_sndbuf ], [ %full_record.1.off0, %alloc_encrypted.wait_for_memory_crit_edge ], [ %full_record.3.off0, %if.then157.wait_for_memory_crit_edge ], [ %full_record.2.off0, %sk_msg_sg_copy_set.exit.wait_for_memory_crit_edge ]
  %num_zc.5 = phi i32 [ %num_zc.0462, %wait_for_sndbuf ], [ %num_zc.1, %alloc_encrypted.wait_for_memory_crit_edge ], [ %num_zc.4, %if.then157.wait_for_memory_crit_edge ], [ %inc85, %sk_msg_sg_copy_set.exit.wait_for_memory_crit_edge ]
  %call184 = call i32 @sk_stream_wait_memory(ptr noundef %sk, ptr noundef nonnull %timeo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end191, label %wait_for_memory.trim_sgl_crit_edge

wait_for_memory.trim_sgl_crit_edge:               ; preds = %wait_for_memory
  call void @__sanitizer_cov_trace_pc() #12
  br label %trim_sgl

trim_sgl:                                         ; preds = %wait_for_memory.trim_sgl_crit_edge, %if.then143.trim_sgl_crit_edge
  %ret.6 = phi i32 [ %call184, %wait_for_memory.trim_sgl_crit_edge ], [ %call145, %if.then143.trim_sgl_crit_edge ]
  %102 = ptrtoint ptr %open_rec to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %open_rec, align 4
  %tobool188.not = icmp eq ptr %103, null
  br i1 %tobool188.not, label %trim_sgl.send_end_crit_edge, label %if.then189

trim_sgl.send_end_crit_edge:                      ; preds = %trim_sgl
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_end

if.then189:                                       ; preds = %trim_sgl
  %104 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i415 = getelementptr inbounds %struct.tls_context, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %priv_ctx_tx.i.i415 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %priv_ctx_tx.i.i415, align 4
  %open_rec.i416 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %open_rec.i416 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %open_rec.i416, align 4
  %msg_plaintext.i417 = getelementptr inbounds %struct.tls_rec, ptr %109, i32 0, i32 3
  call void @sk_msg_trim(ptr noundef %sk, ptr noundef %msg_plaintext.i417, i32 noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i418 = icmp sgt i32 %27, 0
  br i1 %cmp.i418, label %if.then.i, label %if.then189.tls_trim_both_msgs.exit_crit_edge

if.then189.tls_trim_both_msgs.exit_crit_edge:     ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_trim_both_msgs.exit

if.then.i:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #12
  %overhead_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %105, i32 0, i32 4
  %110 = ptrtoint ptr %overhead_size.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %overhead_size.i, align 2
  %conv.i419 = zext i16 %111 to i32
  %add.i420 = add nuw i32 %27, %conv.i419
  br label %tls_trim_both_msgs.exit

tls_trim_both_msgs.exit:                          ; preds = %if.then.i, %if.then189.tls_trim_both_msgs.exit_crit_edge
  %target_size.addr.0.i = phi i32 [ %add.i420, %if.then.i ], [ %27, %if.then189.tls_trim_both_msgs.exit_crit_edge ]
  %msg_encrypted.i421 = getelementptr inbounds %struct.tls_rec, ptr %109, i32 0, i32 4
  call void @sk_msg_trim(ptr noundef %sk, ptr noundef %msg_encrypted.i421, i32 noundef %target_size.addr.0.i) #10
  br label %send_end

if.end191:                                        ; preds = %wait_for_memory
  %112 = ptrtoint ptr %open_rec to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %open_rec, align 4
  %tobool193.not = icmp eq ptr %113, null
  br i1 %tobool193.not, label %if.end191.while.cond.backedge_crit_edge, label %land.lhs.true194

if.end191.while.cond.backedge_crit_edge:          ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

land.lhs.true194:                                 ; preds = %if.end191
  %size196 = getelementptr inbounds %struct.tls_rec, ptr %rec.0424, i32 0, i32 4, i32 0, i32 3
  %114 = ptrtoint ptr %size196 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %size196, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %required_size.1)
  %cmp197 = icmp ult i32 %115, %required_size.1
  br i1 %cmp197, label %land.lhs.true194.alloc_encrypted_crit_edge, label %land.lhs.true194.while.cond.backedge_crit_edge

land.lhs.true194.while.cond.backedge_crit_edge:   ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

land.lhs.true194.alloc_encrypted_crit_edge:       ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_encrypted

while.end:                                        ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_async.1.be)
  %tobool201.not = icmp eq i32 %num_async.1.be, 0
  br i1 %tobool201.not, label %while.end.send_end_crit_edge, label %if.else203

while.end.send_end_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_end

if.else203:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_zc.0.be)
  %tobool204.not = icmp eq i32 %num_zc.0.be, 0
  br i1 %tobool204.not, label %if.else203.if.end228_crit_edge, label %if.then205

if.else203.if.end228_crit_edge:                   ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.then205:                                       ; preds = %if.else203
  %encrypt_compl_lock = getelementptr inbounds %struct.tls_sw_context_tx, ptr %8, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %encrypt_compl_lock) #10
  %async_notify = getelementptr inbounds %struct.tls_sw_context_tx, ptr %8, i32 0, i32 7
  %116 = ptrtoint ptr %async_notify to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %async_notify, align 4
  %encrypt_pending = getelementptr inbounds %struct.tls_sw_context_tx, ptr %8, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %encrypt_pending, i32 noundef 4) #10
  %117 = ptrtoint ptr %encrypt_pending to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %encrypt_pending, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %encrypt_compl_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool208.not = icmp eq i32 %118, 0
  %async_wait212 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %8, i32 0, i32 1
  br i1 %tobool208.not, label %if.then205.do.body215_crit_edge, label %if.then209

if.then205.do.body215_crit_edge:                  ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body215

if.then209:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #12
  call void @wait_for_completion(ptr noundef %async_wait212) #10
  br label %do.body215

do.body215:                                       ; preds = %if.then209, %if.then205.do.body215_crit_edge
  %119 = ptrtoint ptr %async_wait212 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %async_wait212, align 4
  %120 = ptrtoint ptr %async_notify to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 0, ptr %async_notify, align 4
  %err = getelementptr inbounds %struct.tls_sw_context_tx, ptr %8, i32 0, i32 1, i32 1
  %121 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool222.not = icmp eq i32 %122, 0
  br i1 %tobool222.not, label %do.body215.if.end228_crit_edge, label %if.then223

do.body215.if.end228_crit_edge:                   ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.then223:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %copied, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.then223, %do.body215.if.end228_crit_edge, %if.else203.if.end228_crit_edge, %if.end28.thread.if.end228_crit_edge
  %ret.7 = phi i32 [ %122, %if.then223 ], [ %ret.1.be, %do.body215.if.end228_crit_edge ], [ %ret.1.be, %if.else203.if.end228_crit_edge ], [ -115, %if.end28.thread.if.end228_crit_edge ]
  %tx_bitmask = getelementptr inbounds %struct.tls_sw_context_tx, ptr %8, i32 0, i32 9
  %call229 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %tx_bitmask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end228.send_end_crit_edge, label %if.then231

if.end228.send_end_crit_edge:                     ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_end

if.then231:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  %tx_work = getelementptr inbounds %struct.tls_sw_context_tx, ptr %8, i32 0, i32 2
  %call232 = call zeroext i1 @cancel_delayed_work(ptr noundef %tx_work) #10
  %124 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %msg_flags, align 4
  %call234 = call i32 @tls_tx_records(ptr noundef %sk, i32 noundef %125)
  br label %send_end

send_end.loopexit:                                ; preds = %if.then157.send_end.loopexit_crit_edge, %if.end121.send_end.loopexit_crit_edge, %if.else107.send_end.loopexit_crit_edge, %if.end41.send_end.loopexit_crit_edge
  %ret.8.ph = phi i32 [ %call89, %if.else107.send_end.loopexit_crit_edge ], [ %call160, %if.then157.send_end.loopexit_crit_edge ], [ %call4.i, %if.end121.send_end.loopexit_crit_edge ], [ -12, %if.end41.send_end.loopexit_crit_edge ]
  br label %send_end

send_end:                                         ; preds = %send_end.loopexit, %if.then231, %if.end228.send_end_crit_edge, %while.end.send_end_crit_edge, %tls_trim_both_msgs.exit, %trim_sgl.send_end_crit_edge, %if.then157.send_end_crit_edge, %if.then32, %if.end28.send_end_crit_edge, %if.then18.send_end_crit_edge
  %ret.8 = phi i32 [ %sub, %if.then32 ], [ %ret.6, %tls_trim_both_msgs.exit ], [ %ret.6, %trim_sgl.send_end_crit_edge ], [ %ret.7, %if.then231 ], [ %ret.7, %if.end228.send_end_crit_edge ], [ %ret.1.be, %while.end.send_end_crit_edge ], [ %call19, %if.then18.send_end_crit_edge ], [ %ret.0, %if.end28.send_end_crit_edge ], [ %ret.8.ph, %send_end.loopexit ], [ 0, %if.then157.send_end_crit_edge ]
  %126 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %msg_flags, align 4
  %call237 = call i32 @sk_stream_error(ptr noundef %sk, i32 noundef %127, i32 noundef %ret.8) #10
  call void @release_sock(ptr noundef %sk) #10
  call void @mutex_unlock(ptr noundef %tx_lock) #10
  %128 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %copied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp239 = icmp sgt i32 %129, 0
  %.call237 = select i1 %cmp239, i32 %129, i32 %call237
  br label %cleanup241

cleanup241:                                       ; preds = %send_end, %sock_sndtimeo.exit.cleanup241_crit_edge
  %retval.0 = phi i32 [ %.call237, %send_end ], [ -95, %sock_sndtimeo.exit.cleanup241_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %record_type) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_proccess_cmsg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tls_get_rec(ptr nocapture noundef readonly %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %2 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_allocation, align 8
  %or.i = or i32 %3, 256
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_ctx_tx.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %9, 1280
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %or.i) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_plaintext = getelementptr inbounds %struct.tls_rec, ptr %call9.i.i, i32 0, i32 3
  %msg_encrypted = getelementptr inbounds %struct.tls_rec, ptr %call9.i.i, i32 0, i32 4
  %10 = call ptr @memset(ptr %msg_plaintext, i32 0, i32 444)
  %arrayidx.i.i = getelementptr %struct.tls_rec, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 6, i32 17
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %arrayidx.i.i, align 4
  %12 = call ptr @memset(ptr %msg_encrypted, i32 0, i32 444)
  %arrayidx.i.i37 = getelementptr %struct.tls_rec, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 6, i32 17
  %13 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %arrayidx.i.i37, align 8
  %sg_aead_in = getelementptr inbounds %struct.tls_rec, ptr %call9.i.i, i32 0, i32 5
  tail call void @sg_init_table(ptr noundef %sg_aead_in, i32 noundef 2) #10
  %aad_space = getelementptr inbounds %struct.tls_rec, ptr %call9.i.i, i32 0, i32 9
  %aad_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %aad_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %aad_size, align 2
  %conv = zext i16 %15 to i32
  %16 = ptrtoint ptr %aad_space to i32
  %cmp.i = icmp ugt ptr %aad_space, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.do.body5.i_crit_edge, !prof !55

if.end.do.body5.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %17 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %17, %aad_space
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !55

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %18, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !56

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !57
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %20 = ptrtoint ptr %sg_aead_in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg_aead_in, align 8
  %22 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i38 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i38)
  %tobool.not.i.i.i39 = icmp eq i32 %and2.i.i.i38, 0
  br i1 %tobool.not.i.i.i39, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !55

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %land.lhs.true.i44, label %do.body19.i.i.i, !prof !55

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

land.lhs.true.i44:                                ; preds = %do.body11.i.i.i
  %and.i = and i32 %16, 4080
  %and.i.i.i40 = and i32 %21, 3
  %or.i.i.i = or i32 %and.i.i.i40, %22
  %23 = ptrtoint ptr %sg_aead_in to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i.i, ptr %sg_aead_in, align 8
  %offset1.i.i = getelementptr inbounds %struct.tls_rec, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.tls_rec, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 2
  %25 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %length.i.i, align 16
  %arrayidx7 = getelementptr %struct.tls_rec, ptr %call9.i.i, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx7, align 4
  %and.i41 = and i32 %27, -3
  store i32 %and.i41, ptr %arrayidx7, align 4
  %sg_aead_out = getelementptr inbounds %struct.tls_rec, ptr %call9.i.i, i32 0, i32 6
  tail call void @sg_init_table(ptr noundef %sg_aead_out, i32 noundef 2) #10
  %28 = ptrtoint ptr %aad_size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %aad_size, align 2
  %conv14 = zext i16 %29 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %30 = load ptr, ptr @high_memory, align 4
  %cmp1.i43 = icmp ugt ptr %30, %aad_space
  br i1 %cmp1.i43, label %land.rhs.i50, label %land.lhs.true.i44.do.body5.i51_crit_edge, !prof !55

land.lhs.true.i44.do.body5.i51_crit_edge:         ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i51

land.rhs.i50:                                     ; preds = %land.lhs.true.i44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i47 = add i32 %31, %shr.i
  %call.i48 = tail call i32 @pfn_valid(i32 noundef %add.i47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.i49, label %land.rhs.i50.do.body5.i51_crit_edge, label %do.end8.i55, !prof !56

land.rhs.i50.do.body5.i51_crit_edge:              ; preds = %land.rhs.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i51

do.body5.i51:                                     ; preds = %land.rhs.i50.do.body5.i51_crit_edge, %land.lhs.true.i44.do.body5.i51_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !57
  unreachable

do.end8.i55:                                      ; preds = %land.rhs.i50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %add.ptr.i52 = getelementptr %struct.page, ptr %32, i32 %shr.i
  %33 = ptrtoint ptr %sg_aead_out to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sg_aead_out, align 16
  %35 = ptrtoint ptr %add.ptr.i52 to i32
  %and2.i.i.i53 = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i53)
  %tobool.not.i.i.i54 = icmp eq i32 %and2.i.i.i53, 0
  br i1 %tobool.not.i.i.i54, label %do.body11.i.i.i59, label %do.body5.i.i.i56, !prof !55

do.body5.i.i.i56:                                 ; preds = %do.end8.i55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

do.body11.i.i.i59:                                ; preds = %do.end8.i55
  %and.i.i.i.i57 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i57)
  %tobool.i.not.i.i.i58 = icmp eq i32 %and.i.i.i.i57, 0
  br i1 %tobool.i.not.i.i.i58, label %sg_set_buf.exit66, label %do.body19.i.i.i60, !prof !55

do.body19.i.i.i60:                                ; preds = %do.body11.i.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

sg_set_buf.exit66:                                ; preds = %do.body11.i.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i.i62 = and i32 %34, 3
  %or.i.i.i63 = or i32 %and.i.i.i62, %35
  %36 = ptrtoint ptr %sg_aead_out to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.i.i63, ptr %sg_aead_out, align 16
  %offset1.i.i64 = getelementptr inbounds %struct.tls_rec, ptr %call9.i.i, i32 0, i32 6, i32 0, i32 1
  %37 = ptrtoint ptr %offset1.i.i64 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i, ptr %offset1.i.i64, align 4
  %length.i.i65 = getelementptr inbounds %struct.tls_rec, ptr %call9.i.i, i32 0, i32 6, i32 0, i32 2
  %38 = ptrtoint ptr %length.i.i65 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv14, ptr %length.i.i65, align 8
  %arrayidx16 = getelementptr %struct.tls_rec, ptr %call9.i.i, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx16, align 4
  %and.i67 = and i32 %40, -3
  store i32 %and.i67, ptr %arrayidx16, align 4
  br label %cleanup

cleanup:                                          ; preds = %sg_set_buf.exit66, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %sg_set_buf.exit66 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_zerocopy_from_iter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_exec_tx_verdict(ptr noundef %msg, ptr noundef %sk, i1 noundef zeroext %full_record, i8 noundef zeroext %record_type, ptr nocapture noundef %copied, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  %msg_redir = alloca %struct.sk_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx.i, align 4
  call void @llvm.lifetime.start.p0(i64 444, ptr nonnull %msg_redir) #10
  %4 = call ptr @memset(ptr %msg_redir, i32 0, i32 444)
  %call3 = tail call fastcc ptr @sk_psock_get(ptr noundef %sk)
  %tobool4.not = icmp eq ptr %call3, null
  %and = and i32 %flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %5 = or i1 %tobool.not, %tobool4.not
  br i1 %5, label %if.then, label %more_data.preheader

more_data.preheader:                              ; preds = %entry
  %eval = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 4
  %sk_redir61 = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 1
  %open_rec = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 3
  br label %more_data

if.then:                                          ; preds = %entry
  %call6 = tail call fastcc i32 @tls_push_record(ptr noundef %sk, i32 noundef %flags, i8 noundef zeroext %record_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %6 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %7)
  %cmp = icmp eq i32 %7, 74
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then8:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg) #10
  %8 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %copied, align 4
  %sub = sub i32 %9, %call9
  store i32 %sub, ptr %copied, align 4
  %10 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %open_rec.i = getelementptr inbounds %struct.tls_sw_context_tx, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %open_rec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %open_rec.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then8.tls_free_open_rec.exit_crit_edge, label %if.then.i

if.then8.tls_free_open_rec.exit_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_free_open_rec.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %msg_encrypted.i.i = getelementptr inbounds %struct.tls_rec, ptr %15, i32 0, i32 4
  %call.i.i = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_encrypted.i.i) #10
  %msg_plaintext.i.i = getelementptr inbounds %struct.tls_rec, ptr %15, i32 0, i32 3
  %call1.i.i = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_plaintext.i.i) #10
  tail call void @kfree(ptr noundef nonnull %15) #10
  %16 = ptrtoint ptr %open_rec.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %open_rec.i, align 4
  br label %tls_free_open_rec.exit

tls_free_open_rec.exit:                           ; preds = %if.then.i, %if.then8.tls_free_open_rec.exit_crit_edge
  %17 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_err, align 4
  %sub11 = sub i32 0, %18
  br label %if.end

if.end:                                           ; preds = %tls_free_open_rec.exit, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %err.0 = phi i32 [ %sub11, %tls_free_open_rec.exit ], [ %call6, %land.lhs.true.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  br i1 %tobool4.not, label %if.end.cleanup132_crit_edge, label %if.then13

if.end.cleanup132_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.then13:                                        ; preds = %if.end
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i237, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup132_crit_edge, label %if.then10.i.i.i.i, !prof !55

if.end5.i.i.i.i.cleanup132_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %cleanup132

if.then.i237:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %call3) #10
  br label %cleanup132

more_data:                                        ; preds = %if.end127.more_data_crit_edge, %more_data.preheader
  %msg.addr.0 = phi ptr [ %msg.addr.1293, %if.end127.more_data_crit_edge ], [ %msg, %more_data.preheader ]
  %delta.0 = phi i32 [ %delta.1, %if.end127.more_data_crit_edge ], [ 0, %more_data.preheader ]
  %20 = ptrtoint ptr %msg.addr.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg.addr.0, align 4
  %end.i = getelementptr inbounds %struct.sk_msg_sg, ptr %msg.addr.0, i32 0, i32 2
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp.not.i.i = icmp ult i32 %23, %21
  %cond.p.v.i.i = select i1 %cmp.not.i.i, i32 18, i32 0
  %cond.p.i.i = sub i32 %23, %21
  %cond.i.i = add i32 %cond.p.i.i, %cond.p.v.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %cond.i.i)
  %cmp.i = icmp eq i32 %cond.i.i, 17
  %24 = ptrtoint ptr %eval to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eval, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp18 = icmp eq i32 %25, 3
  br i1 %cmp18, label %if.then19, label %more_data.if.end25_crit_edge

more_data.if.end25_crit_edge:                     ; preds = %more_data
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then19:                                        ; preds = %more_data
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.sk_msg_sg, ptr %msg.addr.0, i32 0, i32 3
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %call20 = call i32 @sk_psock_msg_verdict(ptr noundef %sk, ptr noundef nonnull %call3, ptr noundef %msg.addr.0) #10
  %28 = ptrtoint ptr %eval to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call20, ptr %eval, align 8
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  %sub24 = sub i32 %27, %30
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %more_data.if.end25_crit_edge
  %delta.1 = phi i32 [ %sub24, %if.then19 ], [ %delta.0, %more_data.if.end25_crit_edge ]
  %cork_bytes = getelementptr inbounds %struct.sk_msg, ptr %msg.addr.0, i32 0, i32 4
  %31 = ptrtoint ptr %cork_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cork_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool26.not = icmp eq i32 %32, 0
  br i1 %tobool26.not, label %if.end25.if.end37_crit_edge, label %land.lhs.true27

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true27:                                  ; preds = %if.end25
  %size30 = getelementptr inbounds %struct.sk_msg_sg, ptr %msg.addr.0, i32 0, i32 3
  %33 = ptrtoint ptr %size30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp31 = icmp ule i32 %32, %34
  %brmerge = select i1 %cmp31, i1 true, i1 %cmp.i
  %brmerge235 = or i1 %brmerge, %full_record
  br i1 %brmerge235, label %land.lhs.true27.if.end37_crit_edge, label %land.lhs.true27.out_err_crit_edge

land.lhs.true27.out_err_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

land.lhs.true27.if.end37_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true27.if.end37_crit_edge, %if.end25.if.end37_crit_edge
  %35 = ptrtoint ptr %cork_bytes to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cork_bytes, align 4
  %size40 = getelementptr inbounds %struct.sk_msg_sg, ptr %msg.addr.0, i32 0, i32 3
  %36 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size40, align 4
  %apply_bytes = getelementptr inbounds %struct.sk_msg, ptr %msg.addr.0, i32 0, i32 3
  %38 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %apply_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool41.not = icmp ne i32 %39, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp44 = icmp ult i32 %39, %37
  %or.cond236 = select i1 %tobool41.not, i1 %cmp44, i1 false
  %send.0 = select i1 %or.cond236, i32 %39, i32 %37
  %40 = ptrtoint ptr %eval to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %eval, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %41, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end37
  %call49 = call fastcc i32 @tls_push_record(ptr noundef %sk, i32 noundef %flags, i8 noundef zeroext %record_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %sw.bb.if.then105_crit_edge, label %land.lhs.true51

sw.bb.if.then105_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then105

land.lhs.true51:                                  ; preds = %sw.bb
  %sk_err52 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %43 = ptrtoint ptr %sk_err52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sk_err52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %44)
  %cmp53 = icmp eq i32 %44, 74
  br i1 %cmp53, label %if.then54, label %land.lhs.true51.out_err_crit_edge

land.lhs.true51.out_err_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.then54:                                        ; preds = %land.lhs.true51
  %call55 = call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg.addr.0) #10
  %45 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %copied, align 4
  %sub56 = sub i32 %46, %call55
  store i32 %sub56, ptr %copied, align 4
  %47 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i239 = getelementptr inbounds %struct.tls_context, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %priv_ctx_tx.i.i239 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv_ctx_tx.i.i239, align 4
  %open_rec.i240 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %open_rec.i240 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %open_rec.i240, align 4
  %tobool.not.i241 = icmp eq ptr %52, null
  br i1 %tobool.not.i241, label %if.then54.tls_free_open_rec.exit247_crit_edge, label %if.then.i246

if.then54.tls_free_open_rec.exit247_crit_edge:    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_free_open_rec.exit247

if.then.i246:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %msg_encrypted.i.i242 = getelementptr inbounds %struct.tls_rec, ptr %52, i32 0, i32 4
  %call.i.i243 = call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_encrypted.i.i242) #10
  %msg_plaintext.i.i244 = getelementptr inbounds %struct.tls_rec, ptr %52, i32 0, i32 3
  %call1.i.i245 = call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_plaintext.i.i244) #10
  call void @kfree(ptr noundef nonnull %52) #10
  %53 = ptrtoint ptr %open_rec.i240 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %open_rec.i240, align 4
  br label %tls_free_open_rec.exit247

tls_free_open_rec.exit247:                        ; preds = %if.then.i246, %if.then54.tls_free_open_rec.exit247_crit_edge
  %54 = ptrtoint ptr %sk_err52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sk_err52, align 4
  %sub58 = sub i32 0, %55
  br label %out_err

sw.bb60:                                          ; preds = %if.end37
  %56 = ptrtoint ptr %sk_redir61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sk_redir61, align 4
  %58 = call ptr @memcpy(ptr %msg_redir, ptr %msg.addr.0, i32 444)
  %59 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %apply_bytes, align 4
  %61 = call i32 @llvm.usub.sat.i32(i32 %60, i32 %send.0)
  %62 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %apply_bytes, align 4
  call void @sk_msg_return_zero(ptr noundef %sk, ptr noundef %msg.addr.0, i32 noundef %send.0) #10
  %63 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size40, align 4
  %sub71 = sub i32 %64, %send.0
  store i32 %sub71, ptr %size40, align 4
  call void @release_sock(ptr noundef %sk) #10
  %call72 = call i32 @tcp_bpf_sendmsg_redir(ptr noundef %57, ptr noundef nonnull %msg_redir, i32 noundef %send.0, i32 noundef %flags) #10
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end79.thread, label %if.end79

if.end79.thread:                                  ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = call i32 @sk_msg_free_nocharge(ptr noundef %sk, ptr noundef nonnull %msg_redir) #10
  %65 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %copied, align 4
  %sub76 = sub i32 %66, %call75
  store i32 %sub76, ptr %copied, align 4
  %67 = ptrtoint ptr %size40 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %size40, align 4
  br label %if.then83

if.end79:                                         ; preds = %sw.bb60
  %68 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %size40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp82 = icmp eq i32 %.pr, 0
  br i1 %cmp82, label %if.end79.if.then83_crit_edge, label %if.end79.sw.epilog_crit_edge

if.end79.sw.epilog_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end79.if.then83_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

if.then83:                                        ; preds = %if.end79.if.then83_crit_edge, %if.end79.thread
  %69 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i249 = getelementptr inbounds %struct.tls_context, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %priv_ctx_tx.i.i249 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv_ctx_tx.i.i249, align 4
  %open_rec.i250 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %open_rec.i250 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %open_rec.i250, align 4
  %tobool.not.i251 = icmp eq ptr %74, null
  br i1 %tobool.not.i251, label %if.then83.sw.epilog_crit_edge, label %if.then.i256

if.then83.sw.epilog_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i256:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  %msg_encrypted.i.i252 = getelementptr inbounds %struct.tls_rec, ptr %74, i32 0, i32 4
  %call.i.i253 = call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_encrypted.i.i252) #10
  %msg_plaintext.i.i254 = getelementptr inbounds %struct.tls_rec, ptr %74, i32 0, i32 3
  %call1.i.i255 = call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_plaintext.i.i254) #10
  call void @kfree(ptr noundef nonnull %74) #10
  %75 = ptrtoint ptr %open_rec.i250 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %open_rec.i250, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end37
  call void @sk_msg_free_partial(ptr noundef %sk, ptr noundef %msg.addr.0, i32 noundef %send.0) #10
  %76 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %apply_bytes, align 4
  %78 = call i32 @llvm.usub.sat.i32(i32 %77, i32 %send.0)
  %79 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %apply_bytes, align 4
  %80 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp96 = icmp eq i32 %81, 0
  br i1 %cmp96, label %if.then97, label %sw.default.if.end98_crit_edge

sw.default.if.end98_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then97:                                        ; preds = %sw.default
  %82 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i259 = getelementptr inbounds %struct.tls_context, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %priv_ctx_tx.i.i259 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv_ctx_tx.i.i259, align 4
  %open_rec.i260 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %open_rec.i260 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %open_rec.i260, align 4
  %tobool.not.i261 = icmp eq ptr %87, null
  br i1 %tobool.not.i261, label %if.then97.if.end98_crit_edge, label %if.then.i266

if.then97.if.end98_crit_edge:                     ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then.i266:                                     ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  %msg_encrypted.i.i262 = getelementptr inbounds %struct.tls_rec, ptr %87, i32 0, i32 4
  %call.i.i263 = call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_encrypted.i.i262) #10
  %msg_plaintext.i.i264 = getelementptr inbounds %struct.tls_rec, ptr %87, i32 0, i32 3
  %call1.i.i265 = call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_plaintext.i.i264) #10
  call void @kfree(ptr noundef nonnull %87) #10
  %88 = ptrtoint ptr %open_rec.i260 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %open_rec.i260, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then.i266, %if.then97.if.end98_crit_edge, %sw.default.if.end98_crit_edge
  %89 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %copied, align 4
  %91 = add i32 %send.0, %delta.1
  %sub99 = sub i32 %90, %91
  store i32 %sub99, ptr %copied, align 4
  br label %out_err

sw.epilog:                                        ; preds = %if.then.i256, %if.then83.sw.epilog_crit_edge, %if.end79.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool100.not = icmp eq i32 %call72, 0
  br i1 %tobool100.not, label %sw.epilog.if.then105_crit_edge, label %sw.epilog.out_err_crit_edge, !prof !55

sw.epilog.out_err_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

sw.epilog.if.then105_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then105

if.then105:                                       ; preds = %sw.epilog.if.then105_crit_edge, %sw.bb.if.then105_crit_edge
  %92 = ptrtoint ptr %open_rec to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %open_rec, align 4
  %tobool106.not = icmp eq ptr %93, null
  br i1 %tobool106.not, label %if.then105.if.then119_crit_edge, label %if.end117

if.then105.if.then119_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

if.end117:                                        ; preds = %if.then105
  %msg_plaintext = getelementptr inbounds %struct.tls_rec, ptr %93, i32 0, i32 3
  %apply_bytes113 = getelementptr inbounds %struct.tls_rec, ptr %93, i32 0, i32 3, i32 3
  %94 = ptrtoint ptr %apply_bytes113 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %apply_bytes113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool114.not = icmp eq i32 %95, 0
  br i1 %tobool114.not, label %if.end117.if.then119_crit_edge, label %if.end117.if.end127_crit_edge

if.end117.if.end127_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.end117.if.then119_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

if.then119:                                       ; preds = %if.end117.if.then119_crit_edge, %if.then105.if.then119_crit_edge
  %msg.addr.1294 = phi ptr [ %msg_plaintext, %if.end117.if.then119_crit_edge ], [ %msg.addr.0, %if.then105.if.then119_crit_edge ]
  %96 = ptrtoint ptr %eval to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 3, ptr %eval, align 8
  %97 = ptrtoint ptr %sk_redir61 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sk_redir61, align 4
  %tobool122.not = icmp eq ptr %98, null
  br i1 %tobool122.not, label %if.then119.if.end127_crit_edge, label %if.then123

if.then119.if.end127_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then123:                                       ; preds = %if.then119
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %98, i32 0, i32 19
  %call.i.i.i.i.i.i268 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !61
  %asmresult.i.i.i.i.i.i.i269 = extractvalue { i32, i32, i32 } %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i269)
  %cmp.i.i.i.i270 = icmp eq i32 %asmresult.i.i.i.i.i.i.i269, 1
  br i1 %cmp.i.i.i.i270, label %if.then.i274, label %if.end5.i.i.i.i272

if.end5.i.i.i.i272:                               ; preds = %if.then123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i269)
  %.not.i.i.i.i271 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i269, 0
  br i1 %.not.i.i.i.i271, label %if.end5.i.i.i.i272.sock_put.exit_crit_edge, label %if.then10.i.i.i.i273, !prof !55

if.end5.i.i.i.i272.sock_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i272
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i273:                             ; preds = %if.end5.i.i.i.i272
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i274:                                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  call void @sk_free(ptr noundef nonnull %98) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i274, %if.then10.i.i.i.i273, %if.end5.i.i.i.i272.sock_put.exit_crit_edge
  %100 = ptrtoint ptr %sk_redir61 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %sk_redir61, align 4
  br label %if.end127

if.end127:                                        ; preds = %sock_put.exit, %if.then119.if.end127_crit_edge, %if.end117.if.end127_crit_edge
  %msg.addr.1293 = phi ptr [ %msg.addr.1294, %if.then119.if.end127_crit_edge ], [ %msg.addr.1294, %sock_put.exit ], [ %msg_plaintext, %if.end117.if.end127_crit_edge ]
  br i1 %tobool106.not, label %if.end127.out_err_crit_edge, label %if.end127.more_data_crit_edge

if.end127.more_data_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %more_data

if.end127.out_err_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

out_err:                                          ; preds = %if.end127.out_err_crit_edge, %sw.epilog.out_err_crit_edge, %if.end98, %tls_free_open_rec.exit247, %land.lhs.true51.out_err_crit_edge, %land.lhs.true27.out_err_crit_edge
  %err.2 = phi i32 [ %sub58, %tls_free_open_rec.exit247 ], [ %call49, %land.lhs.true51.out_err_crit_edge ], [ -13, %if.end98 ], [ -28, %land.lhs.true27.out_err_crit_edge ], [ %call72, %sw.epilog.out_err_crit_edge ], [ 0, %if.end127.out_err_crit_edge ]
  %refcnt.i275 = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 14
  %call.i.i.i.i.i.i276 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i275, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @llvm.prefetch.p0(ptr %refcnt.i275, i32 1, i32 3, i32 1) #10
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i275, ptr %refcnt.i275, i32 1, ptr elementtype(i32) %refcnt.i275) #10, !srcloc !61
  %asmresult.i.i.i.i.i.i.i277 = extractvalue { i32, i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i277)
  %cmp.i.i.i.i278 = icmp eq i32 %asmresult.i.i.i.i.i.i.i277, 1
  br i1 %cmp.i.i.i.i278, label %if.then.i282, label %if.end5.i.i.i.i280

if.end5.i.i.i.i280:                               ; preds = %out_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i277)
  %.not.i.i.i.i279 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i277, 0
  br i1 %.not.i.i.i.i279, label %if.end5.i.i.i.i280.cleanup132_crit_edge, label %if.then10.i.i.i.i281, !prof !55

if.end5.i.i.i.i280.cleanup132_crit_edge:          ; preds = %if.end5.i.i.i.i280
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.then10.i.i.i.i281:                             ; preds = %if.end5.i.i.i.i280
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i275, i32 noundef 3) #10
  br label %cleanup132

if.then.i282:                                     ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  call void @sk_psock_drop(ptr noundef %sk, ptr noundef %call3) #10
  br label %cleanup132

cleanup132:                                       ; preds = %if.then.i282, %if.then10.i.i.i.i281, %if.end5.i.i.i.i280.cleanup132_crit_edge, %if.then.i237, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup132_crit_edge, %if.end.cleanup132_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end.cleanup132_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup132_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i237 ], [ %err.2, %if.end5.i.i.i.i280.cleanup132_crit_edge ], [ %err.2, %if.then10.i.i.i.i281 ], [ %err.2, %if.then.i282 ]
  call void @llvm.lifetime.end.p0(i64 444, ptr nonnull %msg_redir) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_msg_trim(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_memcopy_from_iter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_wait_memory(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_sw_sendpage_locked(ptr noundef %sk, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, -770113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @tls_sw_do_sendpage(ptr noundef %sk, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tls_sw_do_sendpage(ptr noundef %sk, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  %timeo = alloca i32, align 4
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #10
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_sndtimeo.exit_crit_edge

entry.sock_sndtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %0 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %1, %cond.false.i ], [ 0, %entry.sock_sndtimeo.exit_crit_edge ]
  %2 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond.i, ptr %timeo, align 4
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %3 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv_ctx_tx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #10
  %7 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %copied, align 4
  %and3 = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge, label %if.end.i

sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge:   ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_clear_bit.exit

if.end.i:                                         ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %14, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #10
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i, %sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not211 = icmp eq i32 %size, 0
  br i1 %cmp.not211, label %sk_clear_bit.exit.cleanup102_crit_edge, label %while.body.lr.ph

sk_clear_bit.exit.cleanup102_crit_edge:           ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102

while.body.lr.ph:                                 ; preds = %sk_clear_bit.exit
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %open_rec = getelementptr inbounds %struct.tls_sw_context_tx, ptr %6, i32 0, i32 3
  %overhead_size = getelementptr inbounds %struct.tls_prot_info, ptr %4, i32 0, i32 4
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %pending_open_record_frags = getelementptr inbounds %struct.tls_context, ptr %4, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %num_async.0216 = phi i32 [ 0, %while.body.lr.ph ], [ %num_async.2, %cleanup.while.body_crit_edge ]
  %size.addr.0214 = phi i32 [ %size, %while.body.lr.ph ], [ %size.addr.3, %cleanup.while.body_crit_edge ]
  %offset.addr.0212 = phi i32 [ %offset, %while.body.lr.ph ], [ %offset.addr.3, %cleanup.while.body_crit_edge ]
  %15 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 0, %16
  br label %cleanup102

if.end:                                           ; preds = %while.body
  %17 = ptrtoint ptr %open_rec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %open_rec, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %if.end12, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end12:                                         ; preds = %if.end
  %call10 = call fastcc ptr @tls_get_rec(ptr noundef %sk)
  %19 = ptrtoint ptr %open_rec to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call10, ptr %open_rec, align 4
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %if.end12.cleanup102.loopexit_crit_edge, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end12.cleanup102.loopexit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102.loopexit

if.end15:                                         ; preds = %if.end12.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %rec.0190 = phi ptr [ %call10, %if.end12.if.end15_crit_edge ], [ %18, %if.end.if.end15_crit_edge ]
  %msg_plaintext = getelementptr inbounds %struct.tls_rec, ptr %rec.0190, i32 0, i32 3
  %size16 = getelementptr inbounds %struct.tls_rec, ptr %rec.0190, i32 0, i32 3, i32 0, i32 3
  %20 = ptrtoint ptr %size16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size16, align 4
  %sub17 = sub i32 16384, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.0214, i32 %sub17)
  %cmp18.not = icmp uge i32 %size.addr.0214, %sub17
  %22 = call i32 @llvm.umin.i32(i32 %size.addr.0214, i32 %sub17)
  %add = add i32 %22, %21
  %23 = ptrtoint ptr %overhead_size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %overhead_size, align 2
  %conv = zext i16 %24 to i32
  %add23 = add i32 %add, %conv
  %25 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %27 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not.i.i = icmp slt i32 %26, %28
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end15.wait_for_sndbuf_crit_edge

if.end15.wait_for_sndbuf_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_sndbuf

if.end.i.i:                                       ; preds = %if.end15
  %29 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skc_prot.i.i, align 8
  %stream_memory_free.i.i = getelementptr inbounds %struct.proto, ptr %30, i32 0, i32 28
  %31 = ptrtoint ptr %stream_memory_free.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stream_memory_free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i.alloc_payload_crit_edge, label %cond.true.i.i

if.end.i.i.alloc_payload_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_payload

cond.true.i.i:                                    ; preds = %if.end.i.i
  %call.i.i = call zeroext i1 %32(ptr noundef %sk, i32 noundef 0) #10
  br i1 %call.i.i, label %cond.true.i.i.alloc_payload_crit_edge, label %cond.true.i.i.wait_for_sndbuf_crit_edge

cond.true.i.i.wait_for_sndbuf_crit_edge:          ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_sndbuf

cond.true.i.i.alloc_payload_crit_edge:            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_payload

alloc_payload:                                    ; preds = %if.end84.alloc_payload_crit_edge, %cond.true.i.i.alloc_payload_crit_edge, %if.end.i.i.alloc_payload_crit_edge
  %offset.addr.1 = phi i32 [ %offset.addr.2, %if.end84.alloc_payload_crit_edge ], [ %offset.addr.0212, %cond.true.i.i.alloc_payload_crit_edge ], [ %offset.addr.0212, %if.end.i.i.alloc_payload_crit_edge ]
  %size.addr.1 = phi i32 [ %size.addr.2, %if.end84.alloc_payload_crit_edge ], [ %size.addr.0214, %cond.true.i.i.alloc_payload_crit_edge ], [ %size.addr.0214, %if.end.i.i.alloc_payload_crit_edge ]
  %full_record.1.off0 = phi i1 [ %full_record.3.off0, %if.end84.alloc_payload_crit_edge ], [ %cmp18.not, %cond.true.i.i.alloc_payload_crit_edge ], [ %cmp18.not, %if.end.i.i.alloc_payload_crit_edge ]
  %copy.1 = phi i32 [ %copy.3, %if.end84.alloc_payload_crit_edge ], [ %22, %cond.true.i.i.alloc_payload_crit_edge ], [ %22, %if.end.i.i.alloc_payload_crit_edge ]
  %33 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %open_rec.i = getelementptr inbounds %struct.tls_sw_context_tx, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %open_rec.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %open_rec.i, align 4
  %msg_encrypted.i = getelementptr inbounds %struct.tls_rec, ptr %38, i32 0, i32 4
  %call2.i = call i32 @sk_msg_alloc(ptr noundef %sk, ptr noundef %msg_encrypted.i, i32 noundef %add23, i32 noundef 0) #10
  %39 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call2.i, label %alloc_payload.wait_for_memory_crit_edge [
    i32 0, label %alloc_payload.if.end38_crit_edge
    i32 -28, label %if.end33
  ]

alloc_payload.if.end38_crit_edge:                 ; preds = %alloc_payload
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

alloc_payload.wait_for_memory_crit_edge:          ; preds = %alloc_payload
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.end33:                                         ; preds = %alloc_payload
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %size16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size16, align 4
  %sub36.neg = sub i32 %copy.1, %add23
  %sub37 = add i32 %sub36.neg, %41
  br label %if.end38

if.end38:                                         ; preds = %if.end33, %alloc_payload.if.end38_crit_edge
  %full_record.2.off0 = phi i1 [ true, %if.end33 ], [ %full_record.1.off0, %alloc_payload.if.end38_crit_edge ]
  %copy.2 = phi i32 [ %sub37, %if.end33 ], [ %copy.1, %alloc_payload.if.end38_crit_edge ]
  call fastcc void @sk_msg_page_add(ptr noundef %msg_plaintext, ptr noundef %page, i32 noundef %copy.2, i32 noundef %offset.addr.1)
  %42 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %43, i32 0, i32 32
  %44 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i179 = icmp eq ptr %45, null
  br i1 %tobool.i.not.i179, label %if.end38.sk_mem_charge.exit_crit_edge, label %if.end.i180

if.end38.sk_mem_charge.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_mem_charge.exit

if.end.i180:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sk_forward_alloc.i, align 8
  %sub.i = sub i32 %47, %copy.2
  store i32 %sub.i, ptr %sk_forward_alloc.i, align 8
  br label %sk_mem_charge.exit

sk_mem_charge.exit:                               ; preds = %if.end.i180, %if.end38.sk_mem_charge.exit_crit_edge
  %add39 = add i32 %copy.2, %offset.addr.1
  %sub40 = sub i32 %size.addr.1, %copy.2
  %48 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %copied, align 4
  %add41 = add i32 %49, %copy.2
  store i32 %add41, ptr %copied, align 4
  %50 = ptrtoint ptr %pending_open_record_frags to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %pending_open_record_frags, align 1
  %brmerge = or i1 %tobool4.not, %full_record.2.off0
  br i1 %brmerge, label %sk_mem_charge.exit.if.then49_crit_edge, label %lor.lhs.false46

sk_mem_charge.exit.if.then49_crit_edge:           ; preds = %sk_mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

lor.lhs.false46:                                  ; preds = %sk_mem_charge.exit
  %51 = ptrtoint ptr %msg_plaintext to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_plaintext, align 4
  %end.i = getelementptr inbounds %struct.tls_rec, ptr %rec.0190, i32 0, i32 3, i32 0, i32 2
  %53 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %52)
  %cmp.not.i.i181 = icmp ult i32 %54, %52
  %cond.p.v.i.i = select i1 %cmp.not.i.i181, i32 18, i32 0
  %cond.p.i.i = sub i32 %54, %52
  %cond.i.i = add i32 %cond.p.i.i, %cond.p.v.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %cond.i.i)
  %cmp.i = icmp eq i32 %cond.i.i, 17
  br i1 %cmp.i, label %lor.lhs.false46.if.then49_crit_edge, label %lor.lhs.false46.cleanup_crit_edge

lor.lhs.false46.cleanup_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false46.if.then49_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.then49:                                        ; preds = %lor.lhs.false46.if.then49_crit_edge, %sk_mem_charge.exit.if.then49_crit_edge
  %call51 = call fastcc i32 @bpf_exec_tx_verdict(ptr noundef %msg_plaintext, ptr noundef %sk, i1 noundef zeroext %full_record.2.off0, i8 noundef zeroext 23, ptr noundef nonnull %copied, i32 noundef %flags)
  %55 = zext i32 %call51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call51, label %if.then49.cleanup102.loopexit_crit_edge [
    i32 0, label %if.then49.cleanup_crit_edge
    i32 -115, label %if.then56
    i32 -12, label %if.then49.wait_for_memory_crit_edge
    i32 -11, label %if.end73.fold.split
    i32 -28, label %if.then49.cleanup102_crit_edge
  ]

if.then49.cleanup102_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102

if.then49.wait_for_memory_crit_edge:              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then49.cleanup102.loopexit_crit_edge:          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102.loopexit

if.then56:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %num_async.0216, 1
  br label %cleanup

if.end73.fold.split:                              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

wait_for_sndbuf:                                  ; preds = %cond.true.i.i.wait_for_sndbuf_crit_edge, %if.end15.wait_for_sndbuf_crit_edge
  %56 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sk_socket, align 8
  %flags74 = getelementptr inbounds %struct.socket, ptr %57, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags74) #10
  br label %wait_for_memory

wait_for_memory:                                  ; preds = %wait_for_sndbuf, %if.then49.wait_for_memory_crit_edge, %alloc_payload.wait_for_memory_crit_edge
  %offset.addr.2 = phi i32 [ %offset.addr.0212, %wait_for_sndbuf ], [ %offset.addr.1, %alloc_payload.wait_for_memory_crit_edge ], [ %add39, %if.then49.wait_for_memory_crit_edge ]
  %size.addr.2 = phi i32 [ %size.addr.0214, %wait_for_sndbuf ], [ %size.addr.1, %alloc_payload.wait_for_memory_crit_edge ], [ %sub40, %if.then49.wait_for_memory_crit_edge ]
  %full_record.3.off0 = phi i1 [ %cmp18.not, %wait_for_sndbuf ], [ %full_record.1.off0, %alloc_payload.wait_for_memory_crit_edge ], [ %full_record.2.off0, %if.then49.wait_for_memory_crit_edge ]
  %copy.3 = phi i32 [ %22, %wait_for_sndbuf ], [ %copy.1, %alloc_payload.wait_for_memory_crit_edge ], [ %copy.2, %if.then49.wait_for_memory_crit_edge ]
  %call75 = call i32 @sk_stream_wait_memory(ptr noundef %sk, ptr noundef nonnull %timeo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  %58 = ptrtoint ptr %open_rec to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %open_rec, align 4
  %tobool86.not = icmp eq ptr %59, null
  br i1 %tobool76.not, label %if.end84, label %if.then77

if.then77:                                        ; preds = %wait_for_memory
  br i1 %tobool86.not, label %if.then77.cleanup102_crit_edge, label %if.then80

if.then77.cleanup102_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102

if.then80:                                        ; preds = %if.then77
  %60 = ptrtoint ptr %size16 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size16, align 4
  %62 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i183 = getelementptr inbounds %struct.tls_context, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %priv_ctx_tx.i.i183 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv_ctx_tx.i.i183, align 4
  %open_rec.i184 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %open_rec.i184 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %open_rec.i184, align 4
  %msg_plaintext.i = getelementptr inbounds %struct.tls_rec, ptr %67, i32 0, i32 3
  call void @sk_msg_trim(ptr noundef %sk, ptr noundef %msg_plaintext.i, i32 noundef %61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i185 = icmp sgt i32 %61, 0
  br i1 %cmp.i185, label %if.then.i, label %if.then80.tls_trim_both_msgs.exit_crit_edge

if.then80.tls_trim_both_msgs.exit_crit_edge:      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_trim_both_msgs.exit

if.then.i:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %overhead_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %63, i32 0, i32 4
  %68 = ptrtoint ptr %overhead_size.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %overhead_size.i, align 2
  %conv.i = zext i16 %69 to i32
  %add.i = add nuw i32 %61, %conv.i
  br label %tls_trim_both_msgs.exit

tls_trim_both_msgs.exit:                          ; preds = %if.then.i, %if.then80.tls_trim_both_msgs.exit_crit_edge
  %target_size.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %61, %if.then80.tls_trim_both_msgs.exit_crit_edge ]
  %msg_encrypted.i186 = getelementptr inbounds %struct.tls_rec, ptr %67, i32 0, i32 4
  call void @sk_msg_trim(ptr noundef %sk, ptr noundef %msg_encrypted.i186, i32 noundef %target_size.addr.0.i) #10
  br label %cleanup102

if.end84:                                         ; preds = %wait_for_memory
  br i1 %tobool86.not, label %if.end84.cleanup_crit_edge, label %if.end84.alloc_payload_crit_edge

if.end84.alloc_payload_crit_edge:                 ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_payload

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end84.cleanup_crit_edge, %if.end73.fold.split, %if.then56, %if.then49.cleanup_crit_edge, %lor.lhs.false46.cleanup_crit_edge
  %offset.addr.3 = phi i32 [ %offset.addr.2, %if.end84.cleanup_crit_edge ], [ %add39, %if.then49.cleanup_crit_edge ], [ %add39, %if.end73.fold.split ], [ %add39, %if.then56 ], [ %add39, %lor.lhs.false46.cleanup_crit_edge ]
  %size.addr.3 = phi i32 [ %size.addr.2, %if.end84.cleanup_crit_edge ], [ %sub40, %if.then49.cleanup_crit_edge ], [ %sub40, %if.end73.fold.split ], [ %sub40, %if.then56 ], [ %sub40, %lor.lhs.false46.cleanup_crit_edge ]
  %num_async.2 = phi i32 [ %num_async.0216, %if.end84.cleanup_crit_edge ], [ %num_async.0216, %if.then49.cleanup_crit_edge ], [ %num_async.0216, %if.end73.fold.split ], [ %inc, %if.then56 ], [ %num_async.0216, %lor.lhs.false46.cleanup_crit_edge ]
  %ret.3 = phi i32 [ 0, %if.end84.cleanup_crit_edge ], [ %call51, %if.then49.cleanup_crit_edge ], [ -11, %if.end73.fold.split ], [ -115, %if.then56 ], [ %call2.i, %lor.lhs.false46.cleanup_crit_edge ]
  %cmp.not = icmp eq i32 %size.addr.3, 0
  br i1 %cmp.not, label %while.end, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_async.2)
  %tobool90.not = icmp eq i32 %num_async.2, 0
  br i1 %tobool90.not, label %while.end.cleanup102_crit_edge, label %if.then91

while.end.cleanup102_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102

if.then91:                                        ; preds = %while.end
  %tx_bitmask = getelementptr inbounds %struct.tls_sw_context_tx, ptr %6, i32 0, i32 9
  %call92 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %tx_bitmask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then91.cleanup102_crit_edge, label %if.then94

if.then91.cleanup102_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  %tx_work = getelementptr inbounds %struct.tls_sw_context_tx, ptr %6, i32 0, i32 2
  %call95 = call zeroext i1 @cancel_delayed_work(ptr noundef %tx_work) #10
  %call96 = call i32 @tls_tx_records(ptr noundef %sk, i32 noundef %flags)
  br label %cleanup102

cleanup102.loopexit:                              ; preds = %if.then49.cleanup102.loopexit_crit_edge, %if.end12.cleanup102.loopexit_crit_edge
  %ret.4.ph = phi i32 [ -12, %if.end12.cleanup102.loopexit_crit_edge ], [ %call51, %if.then49.cleanup102.loopexit_crit_edge ]
  br label %cleanup102

cleanup102:                                       ; preds = %cleanup102.loopexit, %if.then94, %if.then91.cleanup102_crit_edge, %while.end.cleanup102_crit_edge, %tls_trim_both_msgs.exit, %if.then77.cleanup102_crit_edge, %if.then49.cleanup102_crit_edge, %if.then, %sk_clear_bit.exit.cleanup102_crit_edge
  %ret.4 = phi i32 [ %ret.3, %if.then94 ], [ %ret.3, %if.then91.cleanup102_crit_edge ], [ %ret.3, %while.end.cleanup102_crit_edge ], [ %call75, %if.then77.cleanup102_crit_edge ], [ %call75, %tls_trim_both_msgs.exit ], [ %sub, %if.then ], [ 0, %sk_clear_bit.exit.cleanup102_crit_edge ], [ %ret.4.ph, %cleanup102.loopexit ], [ 0, %if.then49.cleanup102_crit_edge ]
  %call99 = call i32 @sk_stream_error(ptr noundef %sk, i32 noundef %flags, i32 noundef %ret.4) #10
  %70 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %copied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp100 = icmp sgt i32 %71, 0
  %.call99 = select i1 %cmp100, i32 %71, i32 %call99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #10
  ret i32 %.call99
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_sw_sendpage(ptr noundef %sk, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, -245825
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %tx_lock = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #10
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %call1 = tail call fastcc i32 @tls_sw_do_sendpage(ptr noundef %sk, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags)
  tail call void @release_sock(ptr noundef %sk) #10
  tail call void @mutex_unlock(ptr noundef %tx_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @decrypt_skb(ptr noundef %sk, ptr noundef %skb, ptr noundef %sgout) local_unnamed_addr #3 align 64 {
entry:
  %zc = alloca i8, align 1
  %chunk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zc) #10
  %0 = ptrtoint ptr %zc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %zc, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chunk) #10
  %1 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %chunk, align 4, !annotation !63
  %call = call fastcc i32 @decrypt_internal(ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %sgout, ptr noundef nonnull %chunk, ptr noundef nonnull %zc, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decrypt_internal(ptr noundef %sk, ptr noundef %skb, ptr noundef %out_iov, ptr noundef %out_sg, ptr nocapture noundef %chunk, ptr nocapture noundef %zc, i1 noundef zeroext %async) unnamed_addr #3 align 64 {
entry:
  %pages.i = alloca [17 x ptr], align 4
  %offset.i = alloca i32, align 4
  %unused = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i, align 4
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused) #10
  %4 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %unused, align 4, !annotation !63
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %overhead_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %overhead_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %overhead_size, align 2
  %conv = zext i16 %8 to i32
  %sub = sub i32 %6, %conv
  %tail_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %tail_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tail_size, align 2
  %conv3 = zext i16 %10 to i32
  %add = add i32 %sub, %conv3
  %11 = ptrtoint ptr %zc to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %zc, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.else19_crit_edge, label %land.lhs.true

entry.if.else19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

land.lhs.true:                                    ; preds = %entry
  %tobool5.not = icmp eq ptr %out_iov, null
  %tobool6.not = icmp eq ptr %out_sg, null
  %or.cond = and i1 %tobool5.not, %tobool6.not
  br i1 %or.cond, label %land.lhs.true.if.else19_crit_edge, label %if.then

land.lhs.true.if.else19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

if.then:                                          ; preds = %land.lhs.true
  br i1 %tobool5.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @iov_iter_npages(ptr noundef nonnull %out_iov, i32 noundef 2147483647) #10
  %add10 = add i32 %call9, 1
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @sg_nents(ptr noundef %out_sg) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %n_sgout.0 = phi i32 [ %add10, %if.then8 ], [ %call11, %if.else ]
  %offset = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %prepend_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %prepend_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %prepend_size, align 2
  %conv12 = zext i16 %16 to i32
  %add13 = add i32 %14, %conv12
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %sub17 = sub i32 %18, %conv12
  %call.i = tail call fastcc i32 @__skb_nsg(ptr noundef %skb, i32 noundef %add13, i32 noundef %sub17, i32 noundef 0) #10
  br label %if.end21

if.else19:                                        ; preds = %land.lhs.true.if.else19_crit_edge, %entry.if.else19_crit_edge
  %19 = ptrtoint ptr %zc to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %zc, align 1
  %call20 = call i32 @skb_cow_data(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %unused) #10
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.end
  %n_sgin.0 = phi i32 [ %call.i, %if.end ], [ %call20, %if.else19 ]
  %n_sgout.1 = phi i32 [ %n_sgout.0, %if.end ], [ 0, %if.else19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_sgin.0)
  %cmp = icmp slt i32 %n_sgin.0, 1
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %add25 = add nuw i32 %n_sgin.0, 1
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reqsize.i, align 4
  %add28 = add i32 %23, 128
  %aad_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 8
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %24 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_allocation, align 8
  %add26 = add i32 %add25, %n_sgout.1
  %mul = mul i32 %add26, 20
  %add29 = add i32 %add28, %mul
  %26 = ptrtoint ptr %aad_size to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %aad_size, align 2
  %conv30 = zext i16 %27 to i32
  %add31 = add i32 %add29, %conv30
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %21, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %29, i32 -104
  %30 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ivsize.i.i, align 8
  %add34 = add i32 %add31, %31
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add34, i32 noundef %25) #13
  %tobool36.not = icmp eq ptr %call9.i, null
  br i1 %tobool36.not, label %if.end24.cleanup_crit_edge, label %if.end38

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end24
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %add28
  %add.ptr39 = getelementptr %struct.scatterlist, ptr %add.ptr, i32 %add25
  %add.ptr40 = getelementptr %struct.scatterlist, ptr %add.ptr39, i32 %n_sgout.1
  %32 = ptrtoint ptr %aad_size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %aad_size, align 2
  %conv42 = zext i16 %33 to i32
  %add.ptr43 = getelementptr i8, ptr %add.ptr40, i32 %conv42
  %cipher_type = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cipher_type, align 2
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %35, label %if.end38.sw.epilog_crit_edge [
    i16 53, label %if.end38.sw.epilog.sink.split_crit_edge
    i16 56, label %if.end38.sw.epilog.sink.split_crit_edge416
  ]

if.end38.sw.epilog.sink.split_crit_edge416:       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end38.sw.epilog.sink.split_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end38.sw.epilog.sink.split_crit_edge, %if.end38.sw.epilog.sink.split_crit_edge416
  %37 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %add.ptr43, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end38.sw.epilog_crit_edge
  %iv_offset.0 = phi i32 [ 0, %if.end38.sw.epilog_crit_edge ], [ 1, %sw.epilog.sink.split ]
  %offset47 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %38 = ptrtoint ptr %offset47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset47, align 4
  %add48 = add i32 %39, 5
  %add.ptr49 = getelementptr i8, ptr %add.ptr43, i32 %iv_offset.0
  %salt_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %salt_size to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %salt_size, align 2
  %conv50 = zext i16 %41 to i32
  %add.ptr51 = getelementptr i8, ptr %add.ptr49, i32 %conv50
  %iv_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %iv_size to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %iv_size, align 2
  %conv52 = zext i16 %43 to i32
  %call53 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %add48, ptr noundef %add.ptr51, i32 noundef %conv52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %sw.epilog.cleanup.sink.split_crit_edge, label %if.end57

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end57:                                         ; preds = %sw.epilog
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %45)
  %cmp59 = icmp eq i16 %45, 772
  br i1 %cmp59, label %if.end57.if.then66_crit_edge, label %lor.lhs.false61

if.end57.if.then66_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

lor.lhs.false61:                                  ; preds = %if.end57
  %46 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cipher_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %47)
  %cmp64 = icmp eq i16 %47, 54
  br i1 %cmp64, label %lor.lhs.false61.if.then66_crit_edge, label %if.else71

lor.lhs.false61.if.then66_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.then66:                                        ; preds = %lor.lhs.false61.if.then66_crit_edge, %if.end57.if.then66_crit_edge
  %rx = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 8
  %48 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx, align 4
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  %__crt_alg.i.i259 = getelementptr inbounds %struct.crypto_aead, ptr %51, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %__crt_alg.i.i259 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__crt_alg.i.i259, align 4
  %ivsize.i.i260 = getelementptr i8, ptr %53, i32 -104
  %54 = ptrtoint ptr %ivsize.i.i260 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ivsize.i.i260, align 8
  %56 = call ptr @memcpy(ptr %add.ptr49, ptr %49, i32 %55)
  br label %if.end77

if.else71:                                        ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  %rx73 = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 8
  %57 = ptrtoint ptr %rx73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx73, align 4
  %59 = ptrtoint ptr %salt_size to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %salt_size, align 2
  %conv76 = zext i16 %60 to i32
  %61 = call ptr @memcpy(ptr %add.ptr49, ptr %58, i32 %conv76)
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %if.then66
  %rec_seq = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 8, i32 1
  %62 = ptrtoint ptr %rec_seq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rec_seq, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %65)
  %cmp.i261 = icmp eq i16 %65, 772
  br i1 %cmp.i261, label %if.end77.if.then.i262_crit_edge, label %lor.lhs.false.i

if.end77.if.then.i262_crit_edge:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i262

lor.lhs.false.i:                                  ; preds = %if.end77
  %66 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %cipher_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %67)
  %cmp3.i = icmp eq i16 %67, 54
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then.i262_crit_edge, label %lor.lhs.false.i.xor_iv_with_seq.exit_crit_edge

lor.lhs.false.i.xor_iv_with_seq.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xor_iv_with_seq.exit

lor.lhs.false.i.if.then.i262_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i262

if.then.i262:                                     ; preds = %lor.lhs.false.i.if.then.i262_crit_edge, %if.end77.if.then.i262_crit_edge
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %63, align 1
  %arrayidx8.i = getelementptr i8, ptr %add.ptr49, i32 4
  %70 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx8.i, align 1
  %xor15.i = xor i8 %71, %69
  store i8 %xor15.i, ptr %arrayidx8.i, align 1
  %arrayidx.1.i = getelementptr i8, ptr %63, i32 1
  %72 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx8.1.i = getelementptr i8, ptr %add.ptr49, i32 5
  %74 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx8.1.i, align 1
  %xor15.1.i = xor i8 %75, %73
  store i8 %xor15.1.i, ptr %arrayidx8.1.i, align 1
  %arrayidx.2.i = getelementptr i8, ptr %63, i32 2
  %76 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx8.2.i = getelementptr i8, ptr %add.ptr49, i32 6
  %78 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx8.2.i, align 1
  %xor15.2.i = xor i8 %79, %77
  store i8 %xor15.2.i, ptr %arrayidx8.2.i, align 1
  %arrayidx.3.i = getelementptr i8, ptr %63, i32 3
  %80 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx8.3.i = getelementptr i8, ptr %add.ptr49, i32 7
  %82 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx8.3.i, align 1
  %xor15.3.i = xor i8 %83, %81
  store i8 %xor15.3.i, ptr %arrayidx8.3.i, align 1
  %arrayidx.4.i = getelementptr i8, ptr %63, i32 4
  %84 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx8.4.i = getelementptr i8, ptr %add.ptr49, i32 8
  %86 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx8.4.i, align 1
  %xor15.4.i = xor i8 %87, %85
  store i8 %xor15.4.i, ptr %arrayidx8.4.i, align 1
  %arrayidx.5.i = getelementptr i8, ptr %63, i32 5
  %88 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx8.5.i = getelementptr i8, ptr %add.ptr49, i32 9
  %90 = ptrtoint ptr %arrayidx8.5.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx8.5.i, align 1
  %xor15.5.i = xor i8 %91, %89
  store i8 %xor15.5.i, ptr %arrayidx8.5.i, align 1
  %arrayidx.6.i = getelementptr i8, ptr %63, i32 6
  %92 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.6.i, align 1
  %arrayidx8.6.i = getelementptr i8, ptr %add.ptr49, i32 10
  %94 = ptrtoint ptr %arrayidx8.6.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx8.6.i, align 1
  %xor15.6.i = xor i8 %95, %93
  store i8 %xor15.6.i, ptr %arrayidx8.6.i, align 1
  %arrayidx.7.i = getelementptr i8, ptr %63, i32 7
  %96 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.7.i, align 1
  %arrayidx8.7.i = getelementptr i8, ptr %add.ptr49, i32 11
  %98 = ptrtoint ptr %arrayidx8.7.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx8.7.i, align 1
  %xor15.7.i = xor i8 %99, %97
  store i8 %xor15.7.i, ptr %arrayidx8.7.i, align 1
  br label %xor_iv_with_seq.exit

xor_iv_with_seq.exit:                             ; preds = %if.then.i262, %lor.lhs.false.i.xor_iv_with_seq.exit_crit_edge
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i, align 4
  %102 = ptrtoint ptr %overhead_size to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %overhead_size, align 2
  %conv82 = zext i16 %103 to i32
  %sub83 = sub i32 %101, %conv82
  %104 = ptrtoint ptr %tail_size to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %tail_size, align 2
  %conv85 = zext i16 %105 to i32
  %add86 = add i32 %sub83, %conv85
  %control = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 6
  %106 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %control, align 8
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %109)
  %cmp.not.i = icmp eq i16 %109, 772
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i265

if.then.i265:                                     ; preds = %xor_iv_with_seq.exit
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %rec_seq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rec_seq, align 4
  %rec_seq_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 7
  %112 = ptrtoint ptr %rec_seq_size.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %rec_seq_size.i, align 2
  %conv2.i = zext i16 %113 to i32
  %114 = call ptr @memcpy(ptr %add.ptr40, ptr %111, i32 %conv2.i)
  %add.ptr.i264 = getelementptr i8, ptr %add.ptr40, i32 8
  br label %tls_make_aad.exit

if.else.i:                                        ; preds = %xor_iv_with_seq.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tag_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 3
  %115 = ptrtoint ptr %tag_size.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %tag_size.i, align 2
  %conv3.i = zext i16 %116 to i32
  %add.i = add i32 %add86, %conv3.i
  br label %tls_make_aad.exit

tls_make_aad.exit:                                ; preds = %if.else.i, %if.then.i265
  %size.addr.0.i = phi i32 [ %add86, %if.then.i265 ], [ %add.i, %if.else.i ]
  %buf.addr.0.i = phi ptr [ %add.ptr.i264, %if.then.i265 ], [ %add.ptr40, %if.else.i ]
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %118)
  %cmp6.i = icmp eq i16 %118, 772
  %spec.select.i = select i1 %cmp6.i, i8 23, i8 %107
  %119 = ptrtoint ptr %buf.addr.0.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %spec.select.i, ptr %buf.addr.0.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %buf.addr.0.i, i32 1
  %120 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 3, ptr %arrayidx10.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %buf.addr.0.i, i32 2
  %121 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 3, ptr %arrayidx11.i, align 1
  %shr.i = lshr i32 %size.addr.0.i, 8
  %conv12.i = trunc i32 %shr.i to i8
  %arrayidx13.i = getelementptr i8, ptr %buf.addr.0.i, i32 3
  %122 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv12.i, ptr %arrayidx13.i, align 1
  %conv14.i = trunc i32 %size.addr.0.i to i8
  %arrayidx15.i = getelementptr i8, ptr %buf.addr.0.i, i32 4
  %123 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv14.i, ptr %arrayidx15.i, align 1
  call void @sg_init_table(ptr noundef %add.ptr, i32 noundef %add25) #10
  %124 = ptrtoint ptr %aad_size to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %aad_size, align 2
  %conv91 = zext i16 %125 to i32
  %126 = ptrtoint ptr %add.ptr40 to i32
  %cmp.i267 = icmp ugt ptr %add.ptr40, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i267, label %land.lhs.true.i, label %tls_make_aad.exit.do.body5.i_crit_edge, !prof !55

tls_make_aad.exit.do.body5.i_crit_edge:           ; preds = %tls_make_aad.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %tls_make_aad.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %127 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %127, %add.ptr40
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !55

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %126, 1073741824
  %shr.i268 = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %128 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i269 = add i32 %128, %shr.i268
  %call.i270 = call i32 @pfn_valid(i32 noundef %add.i269) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool.i = icmp eq i32 %call.i270, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !56

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %tls_make_aad.exit.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !57
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %129 = load ptr, ptr @mem_map, align 4
  %add.ptr.i271 = getelementptr %struct.page, ptr %129, i32 %shr.i268
  %130 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr, align 4
  %132 = ptrtoint ptr %add.ptr.i271 to i32
  %and2.i.i.i = and i32 %132, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !55

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !55

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %126, 4095
  %and.i.i.i = and i32 %131, 3
  %or.i.i.i = or i32 %and.i.i.i, %132
  %133 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %or.i.i.i, ptr %add.ptr, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %add.ptr, i32 0, i32 1
  %134 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %add.ptr, i32 0, i32 2
  %135 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv91, ptr %length.i.i, align 4
  %arrayidx92 = getelementptr %struct.scatterlist, ptr %add.ptr, i32 1
  %136 = ptrtoint ptr %offset47 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %offset47, align 4
  %prepend_size94 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 2
  %138 = ptrtoint ptr %prepend_size94 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %prepend_size94, align 2
  %conv95 = zext i16 %139 to i32
  %add96 = add i32 %137, %conv95
  %140 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %add.ptr.i, align 4
  %sub100 = sub i32 %141, %conv95
  %call101 = call i32 @skb_to_sgvec(ptr noundef %skb, ptr noundef %arrayidx92, i32 noundef %add96, i32 noundef %sub100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %sg_set_buf.exit.cleanup.sink.split_crit_edge, label %if.end105

sg_set_buf.exit.cleanup.sink.split_crit_edge:     ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end105:                                        ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_sgout.1)
  %tobool106.not = icmp eq i32 %n_sgout.1, 0
  br i1 %tobool106.not, label %if.end105.fallback_to_reg_recv_crit_edge, label %if.then107

if.end105.fallback_to_reg_recv_crit_edge:         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %fallback_to_reg_recv

if.then107:                                       ; preds = %if.end105
  %tobool108.not = icmp eq ptr %out_iov, null
  br i1 %tobool108.not, label %if.else120, label %land.lhs.true.i274

land.lhs.true.i274:                               ; preds = %if.then107
  call void @sg_init_table(ptr noundef %add.ptr39, i32 noundef %n_sgout.1) #10
  %142 = ptrtoint ptr %aad_size to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %aad_size, align 2
  %conv112 = zext i16 %143 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %144 = load ptr, ptr @high_memory, align 4
  %cmp1.i273 = icmp ugt ptr %144, %add.ptr40
  br i1 %cmp1.i273, label %land.rhs.i280, label %land.lhs.true.i274.do.body5.i281_crit_edge, !prof !55

land.lhs.true.i274.do.body5.i281_crit_edge:       ; preds = %land.lhs.true.i274
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i281

land.rhs.i280:                                    ; preds = %land.lhs.true.i274
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %145 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i277 = add i32 %145, %shr.i268
  %call.i278 = call i32 @pfn_valid(i32 noundef %add.i277) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278)
  %tobool.i279 = icmp eq i32 %call.i278, 0
  br i1 %tobool.i279, label %land.rhs.i280.do.body5.i281_crit_edge, label %do.end8.i285, !prof !56

land.rhs.i280.do.body5.i281_crit_edge:            ; preds = %land.rhs.i280
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i281

do.body5.i281:                                    ; preds = %land.rhs.i280.do.body5.i281_crit_edge, %land.lhs.true.i274.do.body5.i281_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !57
  unreachable

do.end8.i285:                                     ; preds = %land.rhs.i280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %146 = load ptr, ptr @mem_map, align 4
  %add.ptr.i282 = getelementptr %struct.page, ptr %146, i32 %shr.i268
  %147 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %add.ptr39, align 4
  %149 = ptrtoint ptr %add.ptr.i282 to i32
  %and2.i.i.i283 = and i32 %149, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i283)
  %tobool.not.i.i.i284 = icmp eq i32 %and2.i.i.i283, 0
  br i1 %tobool.not.i.i.i284, label %do.body11.i.i.i289, label %do.body5.i.i.i286, !prof !55

do.body5.i.i.i286:                                ; preds = %do.end8.i285
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

do.body11.i.i.i289:                               ; preds = %do.end8.i285
  %and.i.i.i.i287 = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i287)
  %tobool.i.not.i.i.i288 = icmp eq i32 %and.i.i.i.i287, 0
  br i1 %tobool.i.not.i.i.i288, label %sg_set_buf.exit296, label %do.body19.i.i.i290, !prof !55

do.body19.i.i.i290:                               ; preds = %do.body11.i.i.i289
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

sg_set_buf.exit296:                               ; preds = %do.body11.i.i.i289
  %and.i.i.i292 = and i32 %148, 3
  %or.i.i.i293 = or i32 %and.i.i.i292, %149
  %150 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or.i.i.i293, ptr %add.ptr39, align 4
  %offset1.i.i294 = getelementptr inbounds %struct.scatterlist, ptr %add.ptr39, i32 0, i32 1
  %151 = ptrtoint ptr %offset1.i.i294 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %and.i, ptr %offset1.i.i294, align 4
  %length.i.i295 = getelementptr inbounds %struct.scatterlist, ptr %add.ptr39, i32 0, i32 2
  %152 = ptrtoint ptr %length.i.i295 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv112, ptr %length.i.i295, align 4
  %153 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %chunk, align 4
  %arrayidx113 = getelementptr %struct.scatterlist, ptr %add.ptr39, i32 1
  %sub114 = add i32 %n_sgout.1, -1
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %pages.i) #10
  %154 = call ptr @memset(ptr %pages.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #10
  %155 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 -1, ptr %offset.i, align 4, !annotation !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp19.i = icmp sgt i32 %add, 0
  br i1 %cmp19.i, label %sg_set_buf.exit296.while.body.i_crit_edge, label %sg_set_buf.exit296.tls_setup_from_iter.exit.thread_crit_edge

sg_set_buf.exit296.tls_setup_from_iter.exit.thread_crit_edge: ; preds = %sg_set_buf.exit296
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_setup_from_iter.exit.thread

sg_set_buf.exit296.while.body.i_crit_edge:        ; preds = %sg_set_buf.exit296
  br label %while.body.i

while.cond6.while.cond.loopexit_crit_edge.i:      ; preds = %sg_set_page.exit.i.while.cond6.while.cond.loopexit_crit_edge.i_crit_edge, %sg_set_page.exit.peel.i.while.cond6.while.cond.loopexit_crit_edge.i_crit_edge
  %inc13.lcssa.i = phi i32 [ %inc13.peel.i, %sg_set_page.exit.peel.i.while.cond6.while.cond.loopexit_crit_edge.i_crit_edge ], [ %inc13.i, %sg_set_page.exit.i.while.cond6.while.cond.loopexit_crit_edge.i_crit_edge ]
  %cmp.i297 = icmp sgt i32 %sub5.i, 0
  br i1 %cmp.i297, label %while.cond6.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge, label %while.end14.i

while.cond6.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge: ; preds = %while.cond6.while.cond.loopexit_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond6.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge, %sg_set_buf.exit296.while.body.i_crit_edge
  %length.addr.022.i = phi i32 [ %sub5.i, %while.cond6.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge ], [ %add, %sg_set_buf.exit296.while.body.i_crit_edge ]
  %size.021.i = phi i32 [ %add.i302, %while.cond6.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge ], [ 0, %sg_set_buf.exit296.while.body.i_crit_edge ]
  %num_elem.020.i = phi i32 [ %inc13.lcssa.i, %while.cond6.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge ], [ 0, %sg_set_buf.exit296.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub114, i32 %num_elem.020.i)
  %cmp1.i298 = icmp eq i32 %sub114, %num_elem.020.i
  br i1 %cmp1.i298, label %while.body.i.tls_setup_from_iter.exit_crit_edge, label %if.end.i301

while.body.i.tls_setup_from_iter.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_setup_from_iter.exit

if.end.i301:                                      ; preds = %while.body.i
  %sub.i299 = sub i32 %sub114, %num_elem.020.i
  %call.i300 = call i32 @iov_iter_get_pages(ptr noundef nonnull %out_iov, ptr noundef nonnull %pages.i, i32 noundef %length.addr.022.i, i32 noundef %sub.i299, ptr noundef nonnull %offset.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i300)
  %cmp2.i = icmp slt i32 %call.i300, 1
  br i1 %cmp2.i, label %if.end.i301.tls_setup_from_iter.exit_crit_edge, label %if.end4.i303

if.end.i301.tls_setup_from_iter.exit_crit_edge:   ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_setup_from_iter.exit

if.end4.i303:                                     ; preds = %if.end.i301
  call void @iov_iter_advance(ptr noundef nonnull %out_iov, i32 noundef %call.i300) #10
  %sub5.i = sub nsw i32 %length.addr.022.i, %call.i300
  %add.i302 = add i32 %call.i300, %size.021.i
  %156 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %offset.promoted.i = load i32, ptr %offset.i, align 4
  %sub8.peel.i = sub i32 4096, %offset.promoted.i
  %157 = call i32 @llvm.smin.i32(i32 %call.i300, i32 %sub8.peel.i) #10
  %arrayidx.peel.i = getelementptr %struct.scatterlist, ptr %arrayidx113, i32 %num_elem.020.i
  %158 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pages.i, align 4
  %160 = ptrtoint ptr %159 to i32
  %and2.i.i.peel.i = and i32 %160, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.peel.i)
  %tobool.not.i.i.peel.i = icmp eq i32 %and2.i.i.peel.i, 0
  br i1 %tobool.not.i.i.peel.i, label %do.body11.i.i.peel.i, label %if.end4.i303.do.body5.i.i.i307_crit_edge, !prof !55

if.end4.i303.do.body5.i.i.i307_crit_edge:         ; preds = %if.end4.i303
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i307

do.body11.i.i.peel.i:                             ; preds = %if.end4.i303
  %161 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.peel.i, align 4
  %and.i.i.i.peel.i = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.peel.i)
  %tobool.i.not.i.i.peel.i = icmp eq i32 %and.i.i.i.peel.i, 0
  br i1 %tobool.i.not.i.i.peel.i, label %sg_set_page.exit.peel.i, label %do.body11.i.i.peel.i.do.body19.i.i.i311_crit_edge, !prof !55

do.body11.i.i.peel.i.do.body19.i.i.i311_crit_edge: ; preds = %do.body11.i.i.peel.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i.i.i311

sg_set_page.exit.peel.i:                          ; preds = %do.body11.i.i.peel.i
  %offset1.i.peel.i = getelementptr %struct.scatterlist, ptr %arrayidx113, i32 %num_elem.020.i, i32 1
  %163 = ptrtoint ptr %offset1.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %offset.promoted.i, ptr %offset1.i.peel.i, align 4
  %length.i.peel.i = getelementptr %struct.scatterlist, ptr %arrayidx113, i32 %num_elem.020.i, i32 2
  %164 = ptrtoint ptr %length.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %157, ptr %length.i.peel.i, align 4
  %.masked.i = and i32 %160, -3
  %165 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %.masked.i, ptr %arrayidx.peel.i, align 4
  %166 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %offset.i, align 4
  %sub12.peel.i = sub i32 %call.i300, %157
  %inc13.peel.i = add i32 %num_elem.020.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12.peel.i)
  %tobool.not.peel.i = icmp eq i32 %sub12.peel.i, 0
  br i1 %tobool.not.peel.i, label %sg_set_page.exit.peel.i.while.cond6.while.cond.loopexit_crit_edge.i_crit_edge, label %sg_set_page.exit.peel.i.while.body7.i_crit_edge

sg_set_page.exit.peel.i.while.body7.i_crit_edge:  ; preds = %sg_set_page.exit.peel.i
  br label %while.body7.i

sg_set_page.exit.peel.i.while.cond6.while.cond.loopexit_crit_edge.i_crit_edge: ; preds = %sg_set_page.exit.peel.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond6.while.cond.loopexit_crit_edge.i

while.body7.i:                                    ; preds = %sg_set_page.exit.i.while.body7.i_crit_edge, %sg_set_page.exit.peel.i.while.body7.i_crit_edge
  %copied.018.i = phi i32 [ %sub12.i, %sg_set_page.exit.i.while.body7.i_crit_edge ], [ %sub12.peel.i, %sg_set_page.exit.peel.i.while.body7.i_crit_edge ]
  %num_elem.117.i = phi i32 [ %inc13.i, %sg_set_page.exit.i.while.body7.i_crit_edge ], [ %inc13.peel.i, %sg_set_page.exit.peel.i.while.body7.i_crit_edge ]
  %i.016.i = phi i32 [ %inc.i, %sg_set_page.exit.i.while.body7.i_crit_edge ], [ 1, %sg_set_page.exit.peel.i.while.body7.i_crit_edge ]
  %167 = call i32 @llvm.smin.i32(i32 %copied.018.i, i32 4096) #10
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %arrayidx113, i32 %num_elem.117.i
  %arrayidx10.i304 = getelementptr [17 x ptr], ptr %pages.i, i32 0, i32 %i.016.i
  %168 = ptrtoint ptr %arrayidx10.i304 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx10.i304, align 4
  %170 = ptrtoint ptr %169 to i32
  %and2.i.i.i305 = and i32 %170, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i305)
  %tobool.not.i.i.i306 = icmp eq i32 %and2.i.i.i305, 0
  br i1 %tobool.not.i.i.i306, label %do.body11.i.i.i310, label %while.body7.i.do.body5.i.i.i307_crit_edge, !prof !55

while.body7.i.do.body5.i.i.i307_crit_edge:        ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i307

do.body5.i.i.i307:                                ; preds = %while.body7.i.do.body5.i.i.i307_crit_edge, %if.end4.i303.do.body5.i.i.i307_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

do.body11.i.i.i310:                               ; preds = %while.body7.i
  %171 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i308 = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i308)
  %tobool.i.not.i.i.i309 = icmp eq i32 %and.i.i.i.i308, 0
  br i1 %tobool.i.not.i.i.i309, label %sg_set_page.exit.i, label %do.body11.i.i.i310.do.body19.i.i.i311_crit_edge, !prof !55

do.body11.i.i.i310.do.body19.i.i.i311_crit_edge:  ; preds = %do.body11.i.i.i310
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i.i.i311

do.body19.i.i.i311:                               ; preds = %do.body11.i.i.i310.do.body19.i.i.i311_crit_edge, %do.body11.i.i.peel.i.do.body19.i.i.i311_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i310
  %offset1.i.i313 = getelementptr %struct.scatterlist, ptr %arrayidx113, i32 %num_elem.117.i, i32 1
  %173 = ptrtoint ptr %offset1.i.i313 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %offset1.i.i313, align 4
  %length.i.i314 = getelementptr %struct.scatterlist, ptr %arrayidx113, i32 %num_elem.117.i, i32 2
  %174 = ptrtoint ptr %length.i.i314 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %167, ptr %length.i.i314, align 4
  %.masked48.i = and i32 %170, -3
  %175 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %.masked48.i, ptr %arrayidx.i, align 4
  %176 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %offset.i, align 4
  %sub12.i = sub i32 %copied.018.i, %167
  %inc.i = add i32 %i.016.i, 1
  %inc13.i = add i32 %num_elem.117.i, 1
  %tobool.not.i = icmp eq i32 %sub12.i, 0
  br i1 %tobool.not.i, label %sg_set_page.exit.i.while.cond6.while.cond.loopexit_crit_edge.i_crit_edge, label %sg_set_page.exit.i.while.body7.i_crit_edge, !llvm.loop !65

sg_set_page.exit.i.while.body7.i_crit_edge:       ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body7.i

sg_set_page.exit.i.while.cond6.while.cond.loopexit_crit_edge.i_crit_edge: ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond6.while.cond.loopexit_crit_edge.i

while.end14.i:                                    ; preds = %while.cond6.while.cond.loopexit_crit_edge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc13.lcssa.i)
  %cmp15.i = icmp sgt i32 %inc13.lcssa.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %while.end14.i.tls_setup_from_iter.exit.thread_crit_edge

while.end14.i.tls_setup_from_iter.exit.thread_crit_edge: ; preds = %while.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_setup_from_iter.exit.thread

if.then16.i:                                      ; preds = %while.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub17.i = add nsw i32 %inc13.lcssa.i, -1
  %arrayidx18.i = getelementptr %struct.scatterlist, ptr %arrayidx113, i32 %sub17.i
  %177 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx18.i, align 4
  %or.i.i = and i32 %178, -4
  %and.i1.i = or i32 %or.i.i, 2
  store i32 %and.i1.i, ptr %arrayidx18.i, align 4
  br label %tls_setup_from_iter.exit.thread

tls_setup_from_iter.exit.thread:                  ; preds = %if.then16.i, %while.end14.i.tls_setup_from_iter.exit.thread_crit_edge, %sg_set_buf.exit296.tls_setup_from_iter.exit.thread_crit_edge
  %num_elem.014.i.ph = phi i32 [ %inc13.lcssa.i, %while.end14.i.tls_setup_from_iter.exit.thread_crit_edge ], [ %inc13.lcssa.i, %if.then16.i ], [ 0, %sg_set_buf.exit296.tls_setup_from_iter.exit.thread_crit_edge ]
  %size.010.i.ph = phi i32 [ %add.i302, %while.end14.i.tls_setup_from_iter.exit.thread_crit_edge ], [ %add.i302, %if.then16.i ], [ 0, %sg_set_buf.exit296.tls_setup_from_iter.exit.thread_crit_edge ]
  %179 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %size.010.i.ph, ptr %chunk, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %pages.i) #10
  br label %if.end128

tls_setup_from_iter.exit:                         ; preds = %if.end.i301.tls_setup_from_iter.exit_crit_edge, %while.body.i.tls_setup_from_iter.exit_crit_edge
  %180 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %chunk, align 4
  %sub22.i = sub i32 %size.021.i, %181
  call void @iov_iter_revert(ptr noundef nonnull %out_iov, i32 noundef %sub22.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %pages.i) #10
  br label %fallback_to_reg_recv

if.else120:                                       ; preds = %if.then107
  %tobool121.not = icmp eq ptr %out_sg, null
  br i1 %tobool121.not, label %if.else120.fallback_to_reg_recv_crit_edge, label %if.then122

if.else120.fallback_to_reg_recv_crit_edge:        ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #12
  br label %fallback_to_reg_recv

if.then122:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #12
  %mul123 = mul i32 %n_sgout.1, 20
  %182 = call ptr @memcpy(ptr %add.ptr39, ptr %out_sg, i32 %mul123)
  br label %if.end128

fallback_to_reg_recv:                             ; preds = %if.else120.fallback_to_reg_recv_crit_edge, %tls_setup_from_iter.exit, %if.end105.fallback_to_reg_recv_crit_edge
  %183 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %add, ptr %chunk, align 4
  %184 = ptrtoint ptr %zc to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %zc, align 1
  br label %if.end128

if.end128:                                        ; preds = %fallback_to_reg_recv, %if.then122, %tls_setup_from_iter.exit.thread
  %pages.0 = phi i32 [ 0, %fallback_to_reg_recv ], [ 0, %if.then122 ], [ %num_elem.014.i.ph, %tls_setup_from_iter.exit.thread ]
  %sgout.0 = phi ptr [ %add.ptr, %fallback_to_reg_recv ], [ %add.ptr39, %if.then122 ], [ %add.ptr39, %tls_setup_from_iter.exit.thread ]
  %185 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i.i = getelementptr inbounds %struct.tls_context, ptr %186, i32 0, i32 5
  %187 = ptrtoint ptr %priv_ctx_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %priv_ctx_rx.i.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %190, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i, i32 0, i32 3
  %191 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %aad_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %186, i32 0, i32 8
  %192 = ptrtoint ptr %aad_size.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %aad_size.i, align 2
  %conv.i = zext i16 %193 to i32
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i, i32 0, i32 1
  %194 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv.i, ptr %assoclen1.i.i, align 8
  %tag_size.i316 = getelementptr inbounds %struct.tls_prot_info, ptr %186, i32 0, i32 3
  %195 = ptrtoint ptr %tag_size.i316 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %tag_size.i316, align 2
  %conv2.i317 = zext i16 %196 to i32
  %add.i318 = add i32 %add, %conv2.i317
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i, i32 0, i32 4
  %197 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %add.ptr, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i, i32 0, i32 5
  %198 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %sgout.0, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i, i32 0, i32 2
  %199 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %add.i318, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i, i32 0, i32 3
  %200 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %add.ptr43, ptr %iv4.i.i, align 32
  br i1 %async, label %if.end.i320, label %if.end.thread.i

if.end.i320:                                      ; preds = %if.end128
  %201 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %sk, ptr %201, align 4
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i, i32 0, i32 1
  %203 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @tls_decrypt_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i, i32 0, i32 2
  %204 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %skb, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i, i32 0, i32 4
  %205 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 1024, ptr %flags4.i.i, align 4
  %decrypt_pending.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %188, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %decrypt_pending.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %decrypt_pending.i, i32 1, i32 3, i32 1) #10
  %206 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %decrypt_pending.i, ptr %decrypt_pending.i, i32 1, ptr elementtype(i32) %decrypt_pending.i) #10, !srcloc !67
  %call3.i = call i32 @crypto_aead_decrypt(ptr noundef nonnull %call9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call3.i)
  %cmp.i319 = icmp eq i32 %call3.i, -115
  br i1 %cmp.i319, label %if.end.i320.cleanup_crit_edge, label %if.then13.i

if.end.i320.cleanup_crit_edge:                    ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.thread.i:                                  ; preds = %if.end128
  %async_wait.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %188, i32 0, i32 1
  %complete.i38.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i, i32 0, i32 1
  %207 = ptrtoint ptr %complete.i38.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @crypto_req_done, ptr %complete.i38.i, align 8
  %data2.i39.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i, i32 0, i32 2
  %208 = ptrtoint ptr %data2.i39.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %async_wait.i, ptr %data2.i39.i, align 4
  %flags4.i40.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i, i32 0, i32 4
  %209 = ptrtoint ptr %flags4.i40.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 1024, ptr %flags4.i40.i, align 4
  %call341.i = call i32 @crypto_aead_decrypt(ptr noundef nonnull %call9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call341.i)
  %cmp42.i = icmp eq i32 %call341.i, -115
  br i1 %cmp42.i, label %tls_do_decryption.exit, label %if.end.thread.i.for.cond.preheader_crit_edge

if.end.thread.i.for.cond.preheader_crit_edge:     ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

if.then13.i:                                      ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i37.i = call zeroext i1 @__kasan_check_write(ptr noundef %decrypt_pending.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %decrypt_pending.i, i32 1, i32 3, i32 1) #10
  %210 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %decrypt_pending.i, ptr %decrypt_pending.i, i32 1, ptr elementtype(i32) %decrypt_pending.i) #10, !srcloc !68
  br label %for.cond.preheader

tls_do_decryption.exit:                           ; preds = %if.end.thread.i
  call void @wait_for_completion(ptr noundef %async_wait.i) #10
  %211 = ptrtoint ptr %async_wait.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %async_wait.i, align 4
  %err2.i.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %188, i32 0, i32 1, i32 1
  %212 = ptrtoint ptr %err2.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %err2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %213)
  %cmp131 = icmp eq i32 %213, -115
  br i1 %cmp131, label %tls_do_decryption.exit.cleanup_crit_edge, label %tls_do_decryption.exit.for.cond.preheader_crit_edge

tls_do_decryption.exit.for.cond.preheader_crit_edge: ; preds = %tls_do_decryption.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

tls_do_decryption.exit.cleanup_crit_edge:         ; preds = %tls_do_decryption.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %tls_do_decryption.exit.for.cond.preheader_crit_edge, %if.then13.i, %if.end.thread.i.for.cond.preheader_crit_edge
  %retval.0.i369 = phi i32 [ %213, %tls_do_decryption.exit.for.cond.preheader_crit_edge ], [ %call341.i, %if.end.thread.i.for.cond.preheader_crit_edge ], [ %call3.i, %if.then13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages.0)
  %cmp135353 = icmp sgt i32 %pages.0, 0
  br i1 %cmp135353, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup.sink.split_crit_edge

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pages.1354 = phi i32 [ %dec, %put_page.exit.for.body_crit_edge ], [ %pages.0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx137 = getelementptr %struct.scatterlist, ptr %sgout.0, i32 %pages.1354
  %214 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx137, align 4
  %and.i.i322 = and i32 %215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i322)
  %tobool.i.not.i = icmp eq i32 %and.i.i322, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !55

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i323 = and i32 %215, -4
  %216 = inttoptr i32 %and.i323 to ptr
  %217 = getelementptr inbounds %struct.page, ptr %216, i32 0, i32 1
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %217, align 4
  %and.i.i324 = and i32 %219, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i324)
  %tobool.not.i.i325 = icmp eq i32 %and.i.i324, 0
  br i1 %tobool.not.i.i325, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !55

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %219, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %216, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %220 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp.i.i.i.i = icmp eq i32 %221, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !56

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.14) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %222 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %222, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@decrypt_internal, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !74

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %.pre-phi) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %dec = add nsw i32 %pages.1354, -1
  %cmp135 = icmp sgt i32 %pages.1354, 1
  br i1 %cmp135, label %put_page.exit.for.body_crit_edge, label %put_page.exit.cleanup.sink.split_crit_edge

put_page.exit.cleanup.sink.split_crit_edge:       ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.sink.split:                               ; preds = %put_page.exit.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge, %sg_set_buf.exit.cleanup.sink.split_crit_edge, %sw.epilog.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call53, %sw.epilog.cleanup.sink.split_crit_edge ], [ %call101, %sg_set_buf.exit.cleanup.sink.split_crit_edge ], [ %retval.0.i369, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ %retval.0.i369, %put_page.exit.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %tls_do_decryption.exit.cleanup_crit_edge, %if.end.i320.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %if.end21.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ], [ -115, %tls_do_decryption.exit.cleanup_crit_edge ], [ -115, %if.end.i320.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_sw_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr nocapture noundef readnone %addr_len) local_unnamed_addr #3 align 64 {
entry:
  %control = alloca i8, align 1
  %cmsg = alloca i8, align 1
  %err = alloca i32, align 4
  %zc = alloca i8, align 1
  %chunk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %control) #10
  %4 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %control, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmsg) #10
  %5 = ptrtoint ptr %cmsg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cmsg, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %msg_iter to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msg_iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %or = or i32 %flags, %nonblock
  %and4 = and i32 %or, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end, label %if.then, !prof !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @sock_recv_errqueue(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef 0, i32 noundef 11) #10
  br label %cleanup260

if.end:                                           ; preds = %entry
  %call9 = tail call fastcc ptr @sk_psock_get(ptr noundef %sk)
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call9, null
  br i1 %tobool.not.i, label %if.end.sk_psock_strp_enabled.exit_crit_edge, label %if.end.i

if.end.sk_psock_strp_enabled.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock_strp_enabled.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %saved_data_ready.i = getelementptr inbounds %struct.sk_psock, ptr %call9, i32 0, i32 18
  %8 = ptrtoint ptr %saved_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %saved_data_ready.i, align 4
  %tobool1.i = icmp ne ptr %9, null
  br label %sk_psock_strp_enabled.exit

sk_psock_strp_enabled.exit:                       ; preds = %if.end.i, %if.end.sk_psock_strp_enabled.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool1.i, %if.end.i ], [ false, %if.end.sk_psock_strp_enabled.exit_crit_edge ]
  %call13 = call fastcc i32 @process_rx_list(ptr noundef %3, ptr noundef %msg, ptr noundef nonnull %control, ptr noundef nonnull %cmsg, i32 noundef 0, i32 noundef %len, i1 noundef zeroext false, i1 noundef zeroext %tobool)
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call13, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %sk_psock_strp_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tls_err_abort(ptr noundef %sk, i32 noundef %call13)
  br label %end

if.else:                                          ; preds = %sk_psock_strp_enabled.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %len)
  %cmp16.not = icmp ult i32 %call13, %len
  br i1 %cmp16.not, label %if.end18, label %if.else.if.end254_crit_edge

if.else.if.end254_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

if.end18:                                         ; preds = %if.else
  %and19 = and i32 %or, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not.i412 = icmp eq i32 %and19, 0
  br i1 %tobool.not.i412, label %cond.false.i, label %if.end18.sock_rcvlowat.exit_crit_edge

if.end18.sock_rcvlowat.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvlowat.exit

cond.false.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvlowat.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 6
  %11 = ptrtoint ptr %sk_rcvlowat.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_rcvlowat.i, align 8
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 %len) #10
  br label %sock_rcvlowat.exit

sock_rcvlowat.exit:                               ; preds = %cond.false.i, %if.end18.sock_rcvlowat.exit_crit_edge
  %cond5.i = phi i32 [ %13, %cond.false.i ], [ %len, %if.end18.sock_rcvlowat.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond5.i)
  %tobool6.not.i = icmp eq i32 %cond5.i, 0
  %..i = select i1 %tobool6.not.i, i32 1, i32 %cond5.i
  %sub = sub i32 %len, %call13
  %and21 = and i32 %or, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge, label %cond.false.i413

sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge:  ; preds = %sock_rcvlowat.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvtimeo.exit

cond.false.i413:                                  ; preds = %sock_rcvlowat.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 62
  %14 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i413, %sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %15, %cond.false.i413 ], [ 0, %sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge ]
  %16 = ptrtoint ptr %cmsg to i32
  call void @__asan_load1_noabort(i32 %16)
  %cmsg.promoted = load i8, ptr %cmsg, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool24.not451 = icmp eq i32 %sub, 0
  br i1 %tobool24.not451, label %sock_rcvtimeo.exit.recv_end.loopexit_crit_edge, label %land.rhs.lr.ph

sock_rcvtimeo.exit.recv_end.loopexit_crit_edge:   ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv_end.loopexit

land.rhs.lr.ph:                                   ; preds = %sock_rcvtimeo.exit
  %recv_pkt = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 5
  %control48 = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 6
  %overhead_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 4
  %async_capable81 = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 7
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %strp = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 2
  %rx_list = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup210.land.rhs_crit_edge, %land.rhs.lr.ph
  %num_async.0458 = phi i32 [ 0, %land.rhs.lr.ph ], [ %num_async.2, %cleanup210.land.rhs_crit_edge ]
  %decrypted.0454 = phi i32 [ 0, %land.rhs.lr.ph ], [ %decrypted.3, %cleanup210.land.rhs_crit_edge ]
  %len.addr.0452 = phi i32 [ %sub, %land.rhs.lr.ph ], [ %len.addr.3, %cleanup210.land.rhs_crit_edge ]
  %17 = phi i8 [ %cmsg.promoted, %land.rhs.lr.ph ], [ %103, %cleanup210.land.rhs_crit_edge ]
  %add = add i32 %decrypted.0454, %call13
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %..i)
  %cmp25 = icmp slt i32 %add, %..i
  br i1 %cmp25, label %land.rhs.while.body_crit_edge, label %lor.rhs

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %18 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recv_pkt, align 4
  %tobool26.not = icmp eq ptr %19, null
  br i1 %tobool26.not, label %lor.rhs.recv_end.loopexit_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

lor.rhs.recv_end.loopexit_crit_edge:              ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv_end.loopexit

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zc) #10
  %20 = ptrtoint ptr %zc to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %zc, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chunk) #10
  %21 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %chunk, align 4
  %call29 = call fastcc ptr @tls_wait_data(ptr noundef %sk, ptr noundef %call9, i1 noundef zeroext %tobool22, i32 noundef %cond.i, ptr noundef nonnull %err)
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then31, label %if.else41

if.then31:                                        ; preds = %while.body
  br i1 %tobool.not.i, label %if.then31.cleanup210.thread.loopexit_crit_edge, label %if.then33

if.then31.cleanup210.thread.loopexit_crit_edge:   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup210.thread.loopexit

if.then33:                                        ; preds = %if.then31
  %call34 = call i32 @sk_msg_recvmsg(ptr noundef %sk, ptr noundef nonnull %call9, ptr noundef %msg, i32 noundef %len.addr.0452, i32 noundef %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp sgt i32 %call34, 0
  %add37 = add i32 %call34, %decrypted.0454
  %sub38 = sub i32 %len.addr.0452, %call34
  br i1 %cmp35, label %if.then33.cleanup210_crit_edge, label %if.then33.cleanup210.thread.loopexit_crit_edge

if.then33.cleanup210.thread.loopexit_crit_edge:   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup210.thread.loopexit

if.then33.cleanup210_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup210

if.else41:                                        ; preds = %while.body
  %add.ptr.i.i = getelementptr %struct.sk_buff, ptr %call29, i32 0, i32 3, i32 20
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %23)
  %cmp43 = icmp eq i16 %23, 772
  br i1 %cmp43, label %if.else41.if.end51_crit_edge, label %if.else47

if.else41.if.end51_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.else47:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %control48 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %control48, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else47, %if.else41.if.end51_crit_edge
  %.sink = phi i8 [ %25, %if.else47 ], [ 0, %if.else41.if.end51_crit_edge ]
  %26 = getelementptr %struct.sk_buff, ptr %call29, i32 0, i32 3, i32 28
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink, ptr %26, align 4
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i, align 4
  %30 = ptrtoint ptr %overhead_size to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %overhead_size, align 2
  %conv53 = zext i16 %31 to i32
  %sub54 = sub i32 %29, %conv53
  call void @__sanitizer_cov_trace_cmp4(i32 %sub54, i32 %len.addr.0452)
  %cmp55.not = icmp ugt i32 %sub54, %len.addr.0452
  %brmerge = select i1 %cmp55.not, i1 true, i1 %cmp.i
  %brmerge406 = or i1 %tobool, %brmerge
  br i1 %brmerge406, label %if.end51.if.end73_crit_edge, label %land.lhs.true60

if.end51.if.end73_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true60:                                  ; preds = %if.end51
  %32 = ptrtoint ptr %control48 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %control48, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %33)
  %cmp63 = icmp eq i8 %33, 23
  br i1 %cmp63, label %land.lhs.true65, label %land.lhs.true60.if.end73_crit_edge

land.lhs.true60.if.end73_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %35)
  %cmp68.not = icmp eq i16 %35, 772
  %brmerge407 = select i1 %cmp68.not, i1 true, i1 %retval.0.i
  br i1 %brmerge407, label %land.lhs.true65.if.end73_crit_edge, label %if.then72

land.lhs.true65.if.end73_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then72:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %zc to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %zc, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %land.lhs.true65.if.end73_crit_edge, %land.lhs.true60.if.end73_crit_edge, %if.end51.if.end73_crit_edge
  %37 = ptrtoint ptr %control48 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %control48, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %38)
  %cmp76 = icmp ne i8 %38, 23
  %brmerge408 = select i1 %cmp76, i1 true, i1 %retval.0.i
  br i1 %brmerge408, label %if.end73.if.end85_crit_edge, label %if.then80

if.end73.if.end85_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %async_capable81 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %async_capable81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool82 = icmp slt i8 %bf.load, 0
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.end73.if.end85_crit_edge
  %async_capable.0.off0 = phi i1 [ %tobool82, %if.then80 ], [ false, %if.end73.if.end85_crit_edge ]
  %call88 = call fastcc i32 @decrypt_skb_update(ptr noundef %sk, ptr noundef nonnull %call29, ptr noundef %msg_iter, ptr noundef nonnull %chunk, ptr noundef nonnull %zc, i1 noundef zeroext %async_capable.0.off0)
  %40 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call88, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call88)
  %cmp89 = icmp sgt i32 %call88, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call88)
  %cmp92.not = icmp eq i32 %call88, -115
  %or.cond = or i1 %cmp89, %cmp92.not
  br i1 %or.cond, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %cmsg to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %17, ptr %cmsg, align 1
  call void @tls_err_abort(ptr noundef %sk, i32 noundef -74)
  br label %cleanup210.thread

if.end95:                                         ; preds = %if.end85
  br i1 %cmp92.not, label %if.then98, label %if.else99

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %num_async.0458, 1
  br label %if.end108

if.else99:                                        ; preds = %if.end95
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %43)
  %cmp102 = icmp eq i16 %43, 772
  br i1 %cmp102, label %if.then104, label %if.else99.if.end108_crit_edge

if.else99.if.end108_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then104:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %control48 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %control48, align 8
  %46 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %26, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %if.else99.if.end108_crit_edge, %if.then98
  %num_async.1 = phi i32 [ %inc, %if.then98 ], [ %num_async.0458, %if.then104 ], [ %num_async.0458, %if.else99.if.end108_crit_edge ]
  %47 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %control, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool109.not = icmp eq i8 %48, 0
  %49 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %26, align 4
  br i1 %tobool109.not, label %if.then110, label %if.else112

if.then110:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %control, align 1
  br label %if.end120

if.else112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp116.not = icmp eq i8 %48, %50
  br i1 %cmp116.not, label %if.else112.if.end120_crit_edge, label %if.else112.cleanup210.thread.loopexit_crit_edge

if.else112.cleanup210.thread.loopexit_crit_edge:  ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup210.thread.loopexit

if.else112.if.end120_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.end120:                                        ; preds = %if.else112.if.end120_crit_edge, %if.then110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool121.not = icmp eq i8 %17, 0
  br i1 %tobool121.not, label %if.then122, label %if.end120.if.end137_crit_edge

if.end120.if.end137_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then122:                                       ; preds = %if.end120
  %call123 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 282, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %control) #10
  %52 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %control, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %53)
  %cmp125.not = icmp eq i8 %53, 23
  br i1 %cmp125.not, label %if.then122.if.end137_crit_edge, label %if.then127

if.then122.if.end137_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then127:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool128.not = icmp eq i32 %call123, 0
  br i1 %tobool128.not, label %lor.lhs.false, label %if.then127.cleanup134_crit_edge

if.then127.cleanup134_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup134

lor.lhs.false:                                    ; preds = %if.then127
  %54 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg_flags, align 4
  %and129 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %lor.lhs.false.if.end137_crit_edge, label %lor.lhs.false.cleanup134_crit_edge

lor.lhs.false.cleanup134_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup134

lor.lhs.false.if.end137_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

cleanup134:                                       ; preds = %lor.lhs.false.cleanup134_crit_edge, %if.then127.cleanup134_crit_edge
  %56 = ptrtoint ptr %cmsg to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %cmsg, align 1
  %57 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -5, ptr %err, align 4
  br label %cleanup210.thread

if.end137:                                        ; preds = %lor.lhs.false.if.end137_crit_edge, %if.then122.if.end137_crit_edge, %if.end120.if.end137_crit_edge
  %58 = phi i8 [ 1, %if.then122.if.end137_crit_edge ], [ 1, %lor.lhs.false.if.end137_crit_edge ], [ %17, %if.end120.if.end137_crit_edge ]
  br i1 %cmp92.not, label %if.end137.pick_next_record_crit_edge, label %if.end140

if.end137.pick_next_record_crit_edge:             ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %pick_next_record

if.end140:                                        ; preds = %if.end137
  %59 = ptrtoint ptr %zc to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %zc, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool141.not = icmp eq i8 %60, 0
  br i1 %tobool141.not, label %if.then142, label %if.end140.pick_next_record_crit_edge

if.end140.pick_next_record_crit_edge:             ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %pick_next_record

if.then142:                                       ; preds = %if.end140
  br i1 %retval.0.i, label %if.then144, label %if.then142.if.end159_crit_edge

if.then142.if.end159_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then144:                                       ; preds = %if.then142
  %call145 = call i32 @sk_psock_tls_strp_read(ptr noundef %call9, ptr noundef nonnull %call29) #10
  %61 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call145, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call145)
  %cmp146.not = icmp eq i32 %call145, 1
  br i1 %cmp146.not, label %if.then144.if.end159_crit_edge, label %if.then148

if.then144.if.end159_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then148:                                       ; preds = %if.then144
  %offset = getelementptr %struct.sk_buff, ptr %call29, i32 0, i32 3, i32 24
  %62 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset, align 4
  %64 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i, align 4
  %add150 = add i32 %65, %63
  store i32 %add150, ptr %offset, align 4
  store i32 0, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp153 = icmp eq i32 %call145, 0
  br i1 %cmp153, label %if.then155, label %if.then148.if.end156_crit_edge

if.then148.if.end156_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.then155:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #12
  call void @consume_skb(ptr noundef nonnull %call29) #10
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %if.then148.if.end156_crit_edge
  %66 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %recv_pkt, align 4
  call void @__strp_unpause(ptr noundef %strp) #10
  br label %cleanup210

if.end159:                                        ; preds = %if.then144.if.end159_crit_edge, %if.then142.if.end159_crit_edge
  %67 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %len.addr.0452)
  %cmp161 = icmp ugt i32 %68, %len.addr.0452
  %69 = call i32 @llvm.umin.i32(i32 %68, i32 %len.addr.0452)
  %70 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %chunk, align 4
  %offset167 = getelementptr %struct.sk_buff, ptr %call29, i32 0, i32 3, i32 24
  %71 = ptrtoint ptr %offset167 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %offset167, align 4
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call29, i32 noundef %72, ptr noundef %msg_iter, i32 noundef %69) #10
  %73 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp169 = icmp slt i32 %call.i, 0
  br i1 %cmp169, label %if.end159.cleanup210.thread.loopexit_crit_edge, label %if.end172

if.end159.cleanup210.thread.loopexit_crit_edge:   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup210.thread.loopexit

if.end172:                                        ; preds = %if.end159
  br i1 %tobool, label %if.end172.pick_next_record_crit_edge, label %if.then174

if.end172.pick_next_record_crit_edge:             ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %pick_next_record

if.then174:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %offset167 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset167, align 4
  %add176 = add i32 %75, %69
  store i32 %add176, ptr %offset167, align 4
  %76 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i, align 4
  %sub179 = sub i32 %77, %69
  store i32 %sub179, ptr %add.ptr.i.i, align 4
  br label %pick_next_record

pick_next_record:                                 ; preds = %if.then174, %if.end172.pick_next_record_crit_edge, %if.end140.pick_next_record_crit_edge, %if.end137.pick_next_record_crit_edge
  %retain_skb.1.off0 = phi i1 [ false, %if.end137.pick_next_record_crit_edge ], [ false, %if.end140.pick_next_record_crit_edge ], [ %cmp161, %if.end172.pick_next_record_crit_edge ], [ %cmp161, %if.then174 ]
  %78 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chunk, align 4
  %80 = call i32 @llvm.umin.i32(i32 %79, i32 %len.addr.0452)
  %add187 = add i32 %80, %decrypted.0454
  %sub188 = sub i32 %len.addr.0452, %80
  %brmerge409 = or i1 %tobool, %cmp92.not
  %brmerge410 = select i1 %brmerge409, i1 true, i1 %retain_skb.1.off0
  br i1 %brmerge410, label %if.end198.thread, label %if.then.i

if.end198.thread:                                 ; preds = %pick_next_record
  call void @__sanitizer_cov_trace_pc() #12
  call void @skb_queue_tail(ptr noundef %rx_list, ptr noundef nonnull %call29) #10
  %81 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i.i424 = getelementptr inbounds %struct.tls_context, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %priv_ctx_rx.i.i424 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv_ctx_rx.i.i424, align 4
  br label %if.then200

if.then.i:                                        ; preds = %pick_next_record
  %85 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %80)
  %cmp.i416 = icmp ugt i32 %86, %80
  br i1 %cmp.i416, label %tls_sw_advance_skb.exit, label %if.end.i417

if.end.i417:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i.i = getelementptr inbounds %struct.tls_context, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %priv_ctx_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv_ctx_rx.i.i, align 4
  call void @consume_skb(ptr noundef nonnull %call29) #10
  br label %if.then200

tls_sw_advance_skb.exit:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %cmsg to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %58, ptr %cmsg, align 1
  %offset.i = getelementptr %struct.sk_buff, ptr %call29, i32 0, i32 3, i32 24
  %92 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %93, %80
  store i32 %add.i, ptr %offset.i, align 4
  %sub.i = sub i32 %86, %80
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub.i, ptr %add.ptr.i.i, align 4
  br label %cleanup210.thread

if.then200:                                       ; preds = %if.end.i417, %if.end198.thread
  %95 = phi ptr [ %84, %if.end198.thread ], [ %90, %if.end.i417 ]
  %recv_pkt.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %recv_pkt.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %recv_pkt.i, align 4
  %strp.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %95, i32 0, i32 2
  call void @__strp_unpause(ptr noundef %strp.i) #10
  %97 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_flags, align 4
  %or202 = or i32 %98, 128
  store i32 %or202, ptr %msg_flags, align 4
  %99 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %control, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %100)
  %cmp204.not = icmp eq i8 %100, 23
  br i1 %cmp204.not, label %if.then200.cleanup210_crit_edge, label %if.then200.cleanup210.thread.loopexit_crit_edge

if.then200.cleanup210.thread.loopexit_crit_edge:  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup210.thread.loopexit

if.then200.cleanup210_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup210

cleanup210.thread.loopexit:                       ; preds = %if.then200.cleanup210.thread.loopexit_crit_edge, %if.end159.cleanup210.thread.loopexit_crit_edge, %if.else112.cleanup210.thread.loopexit_crit_edge, %if.then33.cleanup210.thread.loopexit_crit_edge, %if.then31.cleanup210.thread.loopexit_crit_edge
  %101 = phi i8 [ %17, %if.then31.cleanup210.thread.loopexit_crit_edge ], [ %17, %if.then33.cleanup210.thread.loopexit_crit_edge ], [ %17, %if.else112.cleanup210.thread.loopexit_crit_edge ], [ %58, %if.end159.cleanup210.thread.loopexit_crit_edge ], [ %58, %if.then200.cleanup210.thread.loopexit_crit_edge ]
  %decrypted.3.ph.ph = phi i32 [ %decrypted.0454, %if.then31.cleanup210.thread.loopexit_crit_edge ], [ %decrypted.0454, %if.then33.cleanup210.thread.loopexit_crit_edge ], [ %decrypted.0454, %if.else112.cleanup210.thread.loopexit_crit_edge ], [ %decrypted.0454, %if.end159.cleanup210.thread.loopexit_crit_edge ], [ %add187, %if.then200.cleanup210.thread.loopexit_crit_edge ]
  %num_async.2.ph.ph = phi i32 [ %num_async.0458, %if.then31.cleanup210.thread.loopexit_crit_edge ], [ %num_async.0458, %if.then33.cleanup210.thread.loopexit_crit_edge ], [ %num_async.1, %if.else112.cleanup210.thread.loopexit_crit_edge ], [ %num_async.1, %if.end159.cleanup210.thread.loopexit_crit_edge ], [ %num_async.1, %if.then200.cleanup210.thread.loopexit_crit_edge ]
  %102 = ptrtoint ptr %cmsg to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %cmsg, align 1
  br label %cleanup210.thread

cleanup210.thread:                                ; preds = %cleanup210.thread.loopexit, %tls_sw_advance_skb.exit, %cleanup134, %if.then94
  %decrypted.3.ph = phi i32 [ %add187, %tls_sw_advance_skb.exit ], [ %decrypted.0454, %cleanup134 ], [ %decrypted.0454, %if.then94 ], [ %decrypted.3.ph.ph, %cleanup210.thread.loopexit ]
  %num_async.2.ph = phi i32 [ %num_async.1, %tls_sw_advance_skb.exit ], [ %num_async.1, %cleanup134 ], [ %num_async.0458, %if.then94 ], [ %num_async.2.ph.ph, %cleanup210.thread.loopexit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zc) #10
  br label %recv_end

cleanup210:                                       ; preds = %if.then200.cleanup210_crit_edge, %if.end156, %if.then33.cleanup210_crit_edge
  %103 = phi i8 [ %58, %if.end156 ], [ %17, %if.then33.cleanup210_crit_edge ], [ %58, %if.then200.cleanup210_crit_edge ]
  %len.addr.3 = phi i32 [ %len.addr.0452, %if.end156 ], [ %sub38, %if.then33.cleanup210_crit_edge ], [ %sub188, %if.then200.cleanup210_crit_edge ]
  %decrypted.3 = phi i32 [ %decrypted.0454, %if.end156 ], [ %add37, %if.then33.cleanup210_crit_edge ], [ %add187, %if.then200.cleanup210_crit_edge ]
  %num_async.2 = phi i32 [ %num_async.1, %if.end156 ], [ %num_async.0458, %if.then33.cleanup210_crit_edge ], [ %num_async.1, %if.then200.cleanup210_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zc) #10
  %tobool24.not = icmp eq i32 %len.addr.3, 0
  br i1 %tobool24.not, label %cleanup210.recv_end.loopexit_crit_edge, label %cleanup210.land.rhs_crit_edge

cleanup210.land.rhs_crit_edge:                    ; preds = %cleanup210
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup210.recv_end.loopexit_crit_edge:           ; preds = %cleanup210
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv_end.loopexit

recv_end.loopexit:                                ; preds = %cleanup210.recv_end.loopexit_crit_edge, %lor.rhs.recv_end.loopexit_crit_edge, %sock_rcvtimeo.exit.recv_end.loopexit_crit_edge
  %104 = phi i8 [ %cmsg.promoted, %sock_rcvtimeo.exit.recv_end.loopexit_crit_edge ], [ %103, %cleanup210.recv_end.loopexit_crit_edge ], [ %17, %lor.rhs.recv_end.loopexit_crit_edge ]
  %decrypted.0.lcssa = phi i32 [ 0, %sock_rcvtimeo.exit.recv_end.loopexit_crit_edge ], [ %decrypted.3, %cleanup210.recv_end.loopexit_crit_edge ], [ %decrypted.0454, %lor.rhs.recv_end.loopexit_crit_edge ]
  %num_async.0.lcssa = phi i32 [ 0, %sock_rcvtimeo.exit.recv_end.loopexit_crit_edge ], [ %num_async.2, %cleanup210.recv_end.loopexit_crit_edge ], [ %num_async.0458, %lor.rhs.recv_end.loopexit_crit_edge ]
  %105 = ptrtoint ptr %cmsg to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %cmsg, align 1
  br label %recv_end

recv_end:                                         ; preds = %recv_end.loopexit, %cleanup210.thread
  %decrypted.4 = phi i32 [ %decrypted.3.ph, %cleanup210.thread ], [ %decrypted.0.lcssa, %recv_end.loopexit ]
  %num_async.3 = phi i32 [ %num_async.2.ph, %cleanup210.thread ], [ %num_async.0.lcssa, %recv_end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_async.3)
  %tobool218.not = icmp eq i32 %num_async.3, 0
  br i1 %tobool218.not, label %recv_end.if.end254_crit_edge, label %if.then219

recv_end.if.end254_crit_edge:                     ; preds = %recv_end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

if.then219:                                       ; preds = %recv_end
  %decrypt_compl_lock = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %decrypt_compl_lock) #10
  %async_notify = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 10
  %106 = ptrtoint ptr %async_notify to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %async_notify, align 4
  %decrypt_pending = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %decrypt_pending, i32 noundef 4) #10
  %107 = ptrtoint ptr %decrypt_pending to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %decrypt_pending, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %decrypt_compl_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool222.not = icmp eq i32 %108, 0
  %async_wait229 = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 1
  br i1 %tobool222.not, label %if.else228, label %if.then223

if.then223:                                       ; preds = %if.then219
  call void @wait_for_completion(ptr noundef %async_wait229) #10
  %109 = ptrtoint ptr %async_wait229 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %async_wait229, align 4
  %err2.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 1, i32 1
  %110 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %err2.i, align 4
  %112 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool225.not = icmp eq i32 %111, 0
  br i1 %tobool225.not, label %if.then223.do.body232_crit_edge, label %if.then226

if.then223.do.body232_crit_edge:                  ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body232

if.then226:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #12
  call void @tls_err_abort(ptr noundef %sk, i32 noundef %111)
  br label %end

if.else228:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %async_wait229 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %async_wait229, align 4
  br label %do.body232

do.body232:                                       ; preds = %if.else228, %if.then223.do.body232_crit_edge
  %114 = ptrtoint ptr %async_notify to i32
  call void @__asan_store1_noabort(i32 %114)
  store volatile i8 0, ptr %async_notify, align 4
  %brmerge411 = select i1 %tobool, i1 true, i1 %cmp.i
  br i1 %brmerge411, label %if.then243, label %if.else246

if.then243:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #12
  %call245 = call fastcc i32 @process_rx_list(ptr noundef %3, ptr noundef %msg, ptr noundef nonnull %control, ptr noundef nonnull %cmsg, i32 noundef %call13, i32 noundef %decrypted.4, i1 noundef zeroext false, i1 noundef zeroext %tobool)
  br label %if.end249

if.else246:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #12
  %call248 = call fastcc i32 @process_rx_list(ptr noundef %3, ptr noundef %msg, ptr noundef nonnull %control, ptr noundef nonnull %cmsg, i32 noundef 0, i32 noundef %decrypted.4, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end249

if.end249:                                        ; preds = %if.else246, %if.then243
  %storemerge = phi i32 [ %call248, %if.else246 ], [ %call245, %if.then243 ]
  %115 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %storemerge, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %cmp250 = icmp slt i32 %storemerge, 0
  br i1 %cmp250, label %if.then252, label %if.end249.if.end254_crit_edge

if.end249.if.end254_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

if.then252:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #12
  call void @tls_err_abort(ptr noundef %sk, i32 noundef %storemerge)
  br label %end

if.end254:                                        ; preds = %if.end249.if.end254_crit_edge, %recv_end.if.end254_crit_edge, %if.else.if.end254_crit_edge
  %decrypted.4434 = phi i32 [ %decrypted.4, %if.end249.if.end254_crit_edge ], [ %decrypted.4, %recv_end.if.end254_crit_edge ], [ 0, %if.else.if.end254_crit_edge ]
  %add255 = add i32 %decrypted.4434, %call13
  br label %end

end:                                              ; preds = %if.end254, %if.then252, %if.then226, %if.then14
  %copied.0 = phi i32 [ 0, %if.then14 ], [ 0, %if.then226 ], [ 0, %if.then252 ], [ %add255, %if.end254 ]
  call void @release_sock(ptr noundef %sk) #10
  %defer_list.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 10
  %116 = ptrtoint ptr %defer_list.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %defer_list.i, align 4
  %cmp.i.i = icmp eq ptr %117, null
  br i1 %cmp.i.i, label %end.sk_defer_free_flush.exit_crit_edge, label %if.end.i418

end.sk_defer_free_flush.exit_crit_edge:           ; preds = %end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_defer_free_flush.exit

if.end.i418:                                      ; preds = %end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sk_defer_free_flush(ptr noundef %sk) #10
  br label %sk_defer_free_flush.exit

sk_defer_free_flush.exit:                         ; preds = %if.end.i418, %end.sk_defer_free_flush.exit_crit_edge
  br i1 %tobool.not.i, label %sk_defer_free_flush.exit.if.end258_crit_edge, label %if.then257

sk_defer_free_flush.exit.if.end258_crit_edge:     ; preds = %sk_defer_free_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end258

if.then257:                                       ; preds = %sk_defer_free_flush.exit
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %call9, i32 0, i32 14
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %118 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i419, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end258_crit_edge, label %if.then10.i.i.i.i, !prof !55

if.end5.i.i.i.i.if.end258_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end258

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %if.end258

if.then.i419:                                     ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %call9) #10
  br label %if.end258

if.end258:                                        ; preds = %if.then.i419, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end258_crit_edge, %sk_defer_free_flush.exit.if.end258_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool259.not = icmp eq i32 %copied.0, 0
  br i1 %tobool259.not, label %cond.false, label %if.end258.cleanup260_crit_edge

if.end258.cleanup260_crit_edge:                   ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup260

cond.false:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %err, align 4
  br label %cleanup260

cleanup260:                                       ; preds = %cond.false, %if.end258.cleanup260_crit_edge, %if.then
  %retval.0 = phi i32 [ %call8, %if.then ], [ %120, %cond.false ], [ %copied.0, %if.end258.cleanup260_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmsg) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %control) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recv_errqueue(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sk_psock_get(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %4 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i4 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6, label %rcu_read_lock.exit.sk_psock.exit_crit_edge

rcu_read_lock.exit.sk_psock.exit_crit_edge:       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock.exit

land.lhs.true.i6:                                 ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i6.sk_psock.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i6.sk_psock.exit_crit_edge:         ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i6
  %.b10.i = load i1, ptr @sk_psock.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true4.i.sk_psock.exit_crit_edge, label %if.then.i7

land.lhs.true4.i.sk_psock.exit_crit_edge:         ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock.exit

if.then.i7:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sk_psock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 286, ptr noundef nonnull @.str.18) #10
  br label %sk_psock.exit

sk_psock.exit:                                    ; preds = %if.then.i7, %land.lhs.true4.i.sk_psock.exit_crit_edge, %land.lhs.true.i6.sk_psock.exit_crit_edge, %rcu_read_lock.exit.sk_psock.exit_crit_edge
  %6 = ptrtoint ptr %5 to i32
  %and.i = and i32 %6, -4
  %7 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %sk_psock.exit.if.end_crit_edge, label %land.lhs.true

sk_psock.exit.if.end_crit_edge:                   ; preds = %sk_psock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %sk_psock.exit
  %refcnt = getelementptr inbounds %struct.sk_psock, ptr %7, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #10
  %8 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %10 = phi i32 [ %9, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i8 = add i32 %10, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %13, i32 %add.i.i.i8, ptr elementtype(i32) %refcnt) #10, !srcloc !76
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !55

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !55

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #10
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %18 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %7
  br label %if.end

if.end:                                           ; preds = %refcount_inc_not_zero.exit, %sk_psock.exit.if.end_crit_edge
  %psock.0 = phi ptr [ null, %sk_psock.exit.if.end_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ]
  %call.i9 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i9, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.end
  %call1.i10 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  %20 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i.i.i16 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %psock.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_rx_list(ptr noundef %ctx, ptr noundef %msg, ptr nocapture noundef %control, ptr nocapture noundef %cmsg, i32 noundef %skip, i32 noundef %len, i1 noundef zeroext %zc, i1 noundef zeroext %is_peek) unnamed_addr #3 align 64 {
entry:
  %ctrl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_list = getelementptr inbounds %struct.tls_sw_context_rx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_list, align 4
  %cmp.i = icmp eq ptr %1, %rx_list
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl) #10
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %control, align 1
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %ctrl, align 1
  %5 = ptrtoint ptr %cmsg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmsg, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp ne i8 %3, 0
  %tobool3.not = icmp eq ptr %spec.store.select.i, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %control5 = getelementptr %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 28
  %7 = ptrtoint ptr %control5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %control5, align 4
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %ctrl, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip)
  %tobool6.not203 = icmp eq i32 %skip, 0
  br i1 %tobool6.not203, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %skb.0205 = phi ptr [ %spec.store.select.i172, %cleanup.land.rhs_crit_edge ], [ %spec.store.select.i, %if.end.land.rhs_crit_edge ]
  %skip.addr.0204 = phi i32 [ %sub, %cleanup.land.rhs_crit_edge ], [ %skip, %if.end.land.rhs_crit_edge ]
  %tobool7.not = icmp eq ptr %skb.0205, null
  br i1 %tobool7.not, label %land.rhs.while.end108_crit_edge, label %while.body

land.rhs.while.end108_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end108

while.body:                                       ; preds = %land.rhs
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl, align 1
  %control11 = getelementptr %struct.sk_buff, ptr %skb.0205, i32 0, i32 3, i32 28
  %12 = ptrtoint ptr %control11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %control11, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp.not = icmp eq i8 %11, %13
  br i1 %cmp.not, label %if.end15, label %while.body.cleanup109_crit_edge

while.body.cleanup109_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.end15:                                         ; preds = %while.body
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb.0205, i32 0, i32 3, i32 20
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.addr.0204, i32 %15)
  %cmp16 = icmp ult i32 %skip.addr.0204, %15
  br i1 %cmp16, label %if.end15.while.end_crit_edge, label %cleanup

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup:                                          ; preds = %if.end15
  %sub = sub i32 %skip.addr.0204, %15
  %16 = ptrtoint ptr %skb.0205 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb.0205, align 8
  %cmp.i171 = icmp eq ptr %17, %rx_list
  %spec.store.select.i172 = select i1 %cmp.i171, ptr null, ptr %17
  %tobool6.not = icmp eq i32 %sub, 0
  br i1 %tobool6.not, label %cleanup.while.end_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end15.while.end_crit_edge, %if.end.while.end_crit_edge
  %skip.addr.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %skip.addr.0204, %if.end15.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %skb.2 = phi ptr [ %spec.store.select.i, %if.end.while.end_crit_edge ], [ %skb.0205, %if.end15.while.end_crit_edge ], [ %spec.store.select.i172, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool24.not211 = icmp eq i32 %len, 0
  %tobool26.not212 = icmp eq ptr %skb.2, null
  %or.cond169213 = select i1 %tobool24.not211, i1 true, i1 %tobool26.not212
  br i1 %or.cond169213, label %while.end.while.end108_crit_edge, label %while.body28.lr.ph

while.end.while.end108_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end108

while.body28.lr.ph:                               ; preds = %while.end
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %tobool93.not = icmp eq ptr %msg, null
  br label %while.body28

while.body28:                                     ; preds = %cleanup103.while.body28_crit_edge, %while.body28.lr.ph
  %copied.0221 = phi i32 [ 0, %while.body28.lr.ph ], [ %add78, %cleanup103.while.body28_crit_edge ]
  %msgc.0220 = phi i8 [ %6, %while.body28.lr.ph ], [ 1, %cleanup103.while.body28_crit_edge ]
  %skb.3218 = phi ptr [ %skb.2, %while.body28.lr.ph ], [ %41, %cleanup103.while.body28_crit_edge ]
  %skip.addr.3217 = phi i32 [ %skip.addr.0.lcssa, %while.body28.lr.ph ], [ 0, %cleanup103.while.body28_crit_edge ]
  %len.addr.0214 = phi i32 [ %len, %while.body28.lr.ph ], [ %sub77, %cleanup103.while.body28_crit_edge ]
  %add.ptr.i173 = getelementptr %struct.sk_buff, ptr %skb.3218, i32 0, i32 3, i32 20
  %18 = ptrtoint ptr %add.ptr.i173 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i173, align 4
  %sub32 = sub i32 %19, %skip.addr.3217
  %20 = call i32 @llvm.umin.i32(i32 %sub32, i32 %len.addr.0214)
  %21 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl, align 1
  %control37 = getelementptr %struct.sk_buff, ptr %skb.3218, i32 0, i32 3, i32 28
  %23 = ptrtoint ptr %control37 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %control37, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp39.not = icmp eq i8 %22, %24
  br i1 %cmp39.not, label %if.end42, label %while.body28.cleanup109_crit_edge

while.body28.cleanup109_crit_edge:                ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.end42:                                         ; preds = %while.body28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %msgc.0220)
  %tobool43.not = icmp eq i8 %msgc.0220, 0
  br i1 %tobool43.not, label %if.then44, label %if.end42.if.end60_crit_edge

if.end42.if.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then44:                                        ; preds = %if.end42
  %call45 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 282, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %ctrl) #10
  %25 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %26)
  %cmp47.not = icmp eq i8 %26, 23
  br i1 %cmp47.not, label %if.then44.if.end60_crit_edge, label %if.then49

if.then44.if.end60_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool50.not = icmp eq i32 %call45, 0
  br i1 %tobool50.not, label %lor.lhs.false, label %if.then49.cleanup109_crit_edge

if.then49.cleanup109_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

lor.lhs.false:                                    ; preds = %if.then49
  %27 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_flags, align 4
  %and = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.end53, label %lor.lhs.false.cleanup109_crit_edge

lor.lhs.false.cleanup109_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.end53:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %cmsg to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %cmsg, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.end53, %if.then44.if.end60_crit_edge, %if.end42.if.end60_crit_edge
  br i1 %zc, label %lor.lhs.false62, label %if.end60.if.then67_crit_edge

if.end60.if.then67_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

lor.lhs.false62:                                  ; preds = %if.end60
  %30 = ptrtoint ptr %add.ptr.i173 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i173, align 4
  %sub64 = sub i32 %31, %skip.addr.3217
  call void @__sanitizer_cov_trace_cmp4(i32 %sub64, i32 %len.addr.0214)
  %cmp65 = icmp ugt i32 %sub64, %len.addr.0214
  br i1 %cmp65, label %lor.lhs.false62.if.then67_crit_edge, label %lor.lhs.false62.if.end76_crit_edge

lor.lhs.false62.if.end76_crit_edge:               ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

lor.lhs.false62.if.then67_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false62.if.then67_crit_edge, %if.end60.if.then67_crit_edge
  %offset = getelementptr %struct.sk_buff, ptr %skb.3218, i32 0, i32 3, i32 24
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %add = add i32 %33, %skip.addr.3217
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %skb.3218, i32 noundef %add, ptr noundef %msg_iter.i, i32 noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp69 = icmp slt i32 %call.i, 0
  br i1 %cmp69, label %if.then67.cleanup109_crit_edge, label %if.then67.if.end76_crit_edge

if.then67.if.end76_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then67.cleanup109_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.end76:                                         ; preds = %if.then67.if.end76_crit_edge, %lor.lhs.false62.if.end76_crit_edge
  %sub77 = sub i32 %len.addr.0214, %20
  %add78 = add i32 %20, %copied.0221
  br i1 %is_peek, label %if.end76.if.end92_crit_edge, label %if.then80

if.end76.if.end92_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then80:                                        ; preds = %if.end76
  %offset81 = getelementptr %struct.sk_buff, ptr %skb.3218, i32 0, i32 3, i32 24
  %34 = ptrtoint ptr %offset81 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset81, align 4
  %add82 = add i32 %35, %20
  store i32 %add82, ptr %offset81, align 4
  %36 = ptrtoint ptr %add.ptr.i173 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i173, align 4
  %sub85 = sub i32 %37, %20
  store i32 %sub85, ptr %add.ptr.i173, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub85, i32 %skip.addr.3217)
  %tobool89.not = icmp eq i32 %sub85, %skip.addr.3217
  br i1 %tobool89.not, label %if.then80.if.end92_crit_edge, label %if.then80.while.end108_crit_edge

if.then80.while.end108_crit_edge:                 ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end108

if.then80.if.end92_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.end92:                                         ; preds = %if.then80.if.end92_crit_edge, %if.end76.if.end92_crit_edge
  br i1 %tobool93.not, label %if.end92.if.end96_crit_edge, label %if.then94

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_flags, align 4
  %or = or i32 %39, 128
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end92.if.end96_crit_edge
  %40 = ptrtoint ptr %skb.3218 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb.3218, align 8
  %cmp.i175 = icmp eq ptr %41, %rx_list
  br i1 %is_peek, label %if.end96.cleanup103_crit_edge, label %if.then100

if.end96.cleanup103_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103

if.then100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  call void @skb_unlink(ptr noundef nonnull %skb.3218, ptr noundef %rx_list) #10
  call void @consume_skb(ptr noundef nonnull %skb.3218) #10
  br label %cleanup103

cleanup103:                                       ; preds = %if.then100, %if.end96.cleanup103_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub77)
  %tobool24.not = icmp eq i32 %sub77, 0
  %tobool26.not232 = icmp eq ptr %41, null
  %tobool26.not = or i1 %cmp.i175, %tobool26.not232
  %or.cond169 = select i1 %tobool24.not, i1 true, i1 %tobool26.not
  br i1 %or.cond169, label %cleanup103.while.end108_crit_edge, label %cleanup103.while.body28_crit_edge

cleanup103.while.body28_crit_edge:                ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body28

cleanup103.while.end108_crit_edge:                ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end108

while.end108:                                     ; preds = %cleanup103.while.end108_crit_edge, %if.then80.while.end108_crit_edge, %while.end.while.end108_crit_edge, %land.rhs.while.end108_crit_edge
  %copied.2 = phi i32 [ 0, %while.end.while.end108_crit_edge ], [ %add78, %if.then80.while.end108_crit_edge ], [ %add78, %cleanup103.while.end108_crit_edge ], [ 0, %land.rhs.while.end108_crit_edge ]
  %42 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ctrl, align 1
  %44 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %control, align 1
  br label %cleanup109

cleanup109:                                       ; preds = %while.end108, %if.then67.cleanup109_crit_edge, %lor.lhs.false.cleanup109_crit_edge, %if.then49.cleanup109_crit_edge, %while.body28.cleanup109_crit_edge, %while.body.cleanup109_crit_edge
  %retval.9 = phi i32 [ %copied.2, %while.end108 ], [ %call.i, %if.then67.cleanup109_crit_edge ], [ 0, %while.body28.cleanup109_crit_edge ], [ -5, %lor.lhs.false.cleanup109_crit_edge ], [ -5, %if.then49.cleanup109_crit_edge ], [ 0, %while.body.cleanup109_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl) #10
  ret i32 %retval.9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tls_wait_data(ptr noundef %sk, ptr noundef %psock, i1 noundef zeroext %nonblock, i32 noundef %timeo, ptr nocapture noundef writeonly %err) unnamed_addr #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @woken_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %6, ptr %7, align 4
  %recv_pkt = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %psock, null
  %ingress_msg.i = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 9
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %strp = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 2
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %17 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %18 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %entry
  %timeo.addr.0 = phi i32 [ %timeo, %entry ], [ %timeo.addr.1, %signal_pending.exit.while.cond_crit_edge ]
  %19 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %recv_pkt, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %land.rhs, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  br i1 %tobool.not.i, label %land.rhs.while.body_crit_edge, label %sk_psock_queue_empty.exit

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

sk_psock_queue_empty.exit:                        ; preds = %land.rhs
  %21 = ptrtoint ptr %ingress_msg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %ingress_msg.i, align 4
  %cmp.i.i = icmp eq ptr %22, %ingress_msg.i
  br i1 %cmp.i.i, label %sk_psock_queue_empty.exit.while.body_crit_edge, label %sk_psock_queue_empty.exit.cleanup_crit_edge

sk_psock_queue_empty.exit.cleanup_crit_edge:      ; preds = %sk_psock_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sk_psock_queue_empty.exit.while.body_crit_edge:   ; preds = %sk_psock_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %sk_psock_queue_empty.exit.while.body_crit_edge, %land.rhs.while.body_crit_edge
  %23 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool7.not = icmp eq i32 %24, 0
  br i1 %tobool7.not, label %if.end, label %sock_error.exit

sock_error.exit:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #10
  %25 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #10, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  %sub.i = sub i32 0, %asmresult.i.i
  br label %cleanup.sink.split

if.end:                                           ; preds = %while.body
  %26 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %27, %sk_receive_queue
  br i1 %cmp.i.not, label %if.end.if.end17_crit_edge, label %if.then11

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then11:                                        ; preds = %if.end
  call void @__strp_unpause(ptr noundef %strp) #10
  %28 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %recv_pkt, align 4
  %tobool13.not = icmp eq ptr %29, null
  br i1 %tobool13.not, label %if.then11.if.end17_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %30 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sk_shutdown, align 2
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool18.not = icmp eq i8 %32, 0
  br i1 %tobool18.not, label %if.end20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %17, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not = icmp eq i32 %35, 0
  br i1 %tobool.i.not, label %if.end23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.addr.0)
  %tobool26.not = icmp eq i32 %timeo.addr.0, 0
  %or.cond = select i1 %nonblock, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %if.end23.cleanup.sink.split_crit_edge, label %if.end28

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.end23
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %18, align 8
  call void @add_wait_queue(ptr noundef %37, ptr noundef nonnull %wait) #10
  %38 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %17, align 4
  %40 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i, label %if.end28.sk_set_bit.exit_crit_edge, label %if.end.i85

if.end28.sk_set_bit.exit_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_set_bit.exit

if.end.i85:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %18, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %42, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #10
  br label %sk_set_bit.exit

sk_set_bit.exit:                                  ; preds = %if.end.i85, %if.end28.sk_set_bit.exit_crit_edge
  call void @release_sock(ptr noundef %sk) #10
  %43 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %recv_pkt, align 4
  %cmp.not = icmp eq ptr %44, null
  br i1 %cmp.not, label %lor.rhs, label %sk_set_bit.exit.if.end36_crit_edge

sk_set_bit.exit.if.end36_crit_edge:               ; preds = %sk_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

lor.rhs:                                          ; preds = %sk_set_bit.exit
  br i1 %tobool.not.i, label %lor.rhs.if.then34_crit_edge, label %sk_psock_queue_empty.exit91

lor.rhs.if.then34_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

sk_psock_queue_empty.exit91:                      ; preds = %lor.rhs
  %45 = ptrtoint ptr %ingress_msg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %ingress_msg.i, align 4
  %cmp.i.i88.not = icmp eq ptr %46, %ingress_msg.i
  br i1 %cmp.i.i88.not, label %sk_psock_queue_empty.exit91.if.then34_crit_edge, label %sk_psock_queue_empty.exit91.if.end36_crit_edge

sk_psock_queue_empty.exit91.if.end36_crit_edge:   ; preds = %sk_psock_queue_empty.exit91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

sk_psock_queue_empty.exit91.if.then34_crit_edge:  ; preds = %sk_psock_queue_empty.exit91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then34:                                        ; preds = %sk_psock_queue_empty.exit91.if.then34_crit_edge, %lor.rhs.if.then34_crit_edge
  %call35 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeo.addr.0) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %sk_psock_queue_empty.exit91.if.end36_crit_edge, %sk_set_bit.exit.if.end36_crit_edge
  %timeo.addr.1 = phi i32 [ %timeo.addr.0, %sk_psock_queue_empty.exit91.if.end36_crit_edge ], [ %call35, %if.then34 ], [ %timeo.addr.0, %sk_set_bit.exit.if.end36_crit_edge ]
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 212
  %49 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %50 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %recv_pkt, align 4
  %cmp40.not = icmp ne ptr %51, null
  %brmerge = or i1 %tobool.not.i, %cmp40.not
  br i1 %brmerge, label %if.end36.lor.end45_crit_edge, label %cond.true.i95

if.end36.lor.end45_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end45

cond.true.i95:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %ingress_msg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %ingress_msg.i, align 4
  br label %lor.end45

lor.end45:                                        ; preds = %cond.true.i95, %if.end36.lor.end45_crit_edge
  %54 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %17, align 4
  %56 = and i32 %55, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not.i98 = icmp eq i32 %56, 0
  br i1 %tobool.i.not.i98, label %lor.end45.sk_clear_bit.exit_crit_edge, label %if.end.i100

lor.end45.sk_clear_bit.exit_crit_edge:            ; preds = %lor.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_clear_bit.exit

if.end.i100:                                      ; preds = %lor.end45
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %18, align 8
  %flags.i99 = getelementptr inbounds %struct.socket_wq, ptr %58, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i99) #10
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i100, %lor.end45.sk_clear_bit.exit_crit_edge
  %59 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %18, align 8
  call void @remove_wait_queue(ptr noundef %60, ptr noundef nonnull %wait) #10
  %61 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stack.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %67 = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i101 = icmp eq i32 %67, 0
  br i1 %tobool.not.i101, label %signal_pending.exit, label %sk_clear_bit.exit.if.then52_crit_edge, !prof !55

sk_clear_bit.exit.if.then52_crit_edge:            ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

signal_pending.exit:                              ; preds = %sk_clear_bit.exit
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %64, align 4
  %and1.i.i.i.i.i = and i32 %69, 1
  %tobool51.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool51.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.if.then52_crit_edge

signal_pending.exit.if.then52_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then52:                                        ; preds = %signal_pending.exit.if.then52_crit_edge, %sk_clear_bit.exit.if.then52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeo.addr.1)
  %cmp.i104 = icmp eq i32 %timeo.addr.1, 2147483647
  %cond.i105 = select i1 %cmp.i104, i32 -512, i32 -4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then52, %if.end23.cleanup.sink.split_crit_edge, %sock_error.exit
  %cond.i105.sink = phi i32 [ %cond.i105, %if.then52 ], [ %sub.i, %sock_error.exit ], [ -11, %if.end23.cleanup.sink.split_crit_edge ]
  %70 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond.i105.sink, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %sk_psock_queue_empty.exit.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %cleanup.sink.split ], [ null, %sk_psock_queue_empty.exit.cleanup_crit_edge ], [ %20, %while.cond.cleanup_crit_edge ], [ null, %if.end20.cleanup_crit_edge ], [ null, %if.end17.cleanup_crit_edge ], [ %29, %if.then11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decrypt_skb_update(ptr noundef %sk, ptr noundef %skb, ptr noundef %dest, ptr nocapture noundef %chunk, ptr nocapture noundef %zc, i1 noundef zeroext %async) unnamed_addr #3 align 64 {
entry:
  %content_type.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i, align 4
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %decrypted = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %decrypted to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %decrypted, align 1
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else92

if.then:                                          ; preds = %entry
  %rx_conf = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %rx_conf to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load3 = load i8, ptr %rx_conf, align 4
  %7 = and i8 %bf.load3, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %cmp = icmp eq i8 %7, 8
  br i1 %cmp, label %if.then7, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %if.then
  %call8 = tail call i32 @tls_device_decrypted(ptr noundef %sk, ptr noundef %1, ptr noundef %skb, ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then7.cleanup_crit_edge, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %err.0 = phi i32 [ %call8, %if.then7.if.end12_crit_edge ], [ 0, %if.then.if.end12_crit_edge ]
  %8 = ptrtoint ptr %decrypted to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load14 = load i8, ptr %decrypted, align 1
  %9 = and i8 %bf.load14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  br i1 %tobool17.not, label %if.then18, label %if.else76

if.then18:                                        ; preds = %if.end12
  %call20 = tail call fastcc i32 @decrypt_internal(ptr noundef %sk, ptr noundef %skb, ptr noundef %dest, ptr noundef null, ptr noundef %chunk, ptr noundef %zc, i1 noundef zeroext %async)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.then18.if.end77_crit_edge

if.then18.if.end77_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then23:                                        ; preds = %if.then18
  %10 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call20, label %if.then23.cleanup_crit_edge [
    i32 -115, label %if.then26
    i32 -74, label %do.body30
  ]

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.then23
  %rx = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 8
  %rec_seq.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %rec_seq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rec_seq.i, align 4
  %rec_seq_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %rec_seq_size.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rec_seq_size.i, align 2
  %conv.i = zext i16 %14 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then26
  %i.0.in.i.i = phi i32 [ %conv.i, %if.then26 ], [ %i.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i)
  %cmp.i.i = icmp sgt i32 %i.0.in.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %if.then.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %i.0.i.i = add nsw i32 %i.0.in.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %12, i32 %i.0.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %inc.i.i = add i8 %16, 1
  store i8 %inc.i.i, ptr %arrayidx.i.i, align 1
  %cmp2.not.i.i = icmp eq i8 %inc.i.i, 0
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.if.end.i_crit_edge

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.then.i:                                        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tls_err_abort(ptr noundef %sk, i32 noundef -74) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.i.if.end.i_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %18)
  %cmp.not.i = icmp eq i16 %18, 772
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %cipher_type.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %cipher_type.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cipher_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %20)
  %cmp4.not.i = icmp eq i16 %20, 54
  br i1 %cmp4.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then6.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6.i:                                       ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx, align 4
  %salt_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %salt_size.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %salt_size.i, align 2
  %conv7.i = zext i16 %24 to i32
  %add.ptr.i134 = getelementptr i8, ptr %22, i32 %conv7.i
  %iv_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %iv_size.i, align 2
  %conv8.i = zext i16 %26 to i32
  br label %for.cond.i19.i

for.cond.i19.i:                                   ; preds = %for.body.i23.i.for.cond.i19.i_crit_edge, %if.then6.i
  %i.0.in.i16.i = phi i32 [ %conv8.i, %if.then6.i ], [ %i.0.i17.i, %for.body.i23.i.for.cond.i19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i16.i)
  %cmp.i18.i = icmp sgt i32 %i.0.in.i16.i, 0
  br i1 %cmp.i18.i, label %for.body.i23.i, label %for.cond.i19.i.cleanup_crit_edge

for.cond.i19.i.cleanup_crit_edge:                 ; preds = %for.cond.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i23.i:                                   ; preds = %for.cond.i19.i
  %i.0.i17.i = add nsw i32 %i.0.in.i16.i, -1
  %arrayidx.i20.i = getelementptr i8, ptr %add.ptr.i134, i32 %i.0.i17.i
  %27 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i20.i, align 1
  %inc.i21.i = add i8 %28, 1
  store i8 %inc.i21.i, ptr %arrayidx.i20.i, align 1
  %cmp2.not.i22.i = icmp eq i8 %inc.i21.i, 0
  br i1 %cmp2.not.i22.i, label %for.body.i23.i.for.cond.i19.i_crit_edge, label %for.body.i23.i.cleanup_crit_edge

for.body.i23.i.cleanup_crit_edge:                 ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i23.i.for.cond.i19.i_crit_edge:          ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i19.i

do.body30:                                        ; preds = %if.then23
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %30 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_net.i, align 4
  %tls_statistics = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 30, i32 7
  %32 = ptrtoint ptr %tls_statistics to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tls_statistics, align 4
  %arrayidx = getelementptr [11 x i32], ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %arrayidx to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu, align 4
  %arrayidx47 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx47, align 4
  %add = add i32 %40, %34
  %41 = inttoptr i32 %add to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add48 = add i32 %43, 1
  store i32 %add48, ptr %41, align 4
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool59.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool59.not, label %if.then63, label %do.body30.do.end66_crit_edge, !prof !56

do.body30.do.end66_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66

if.then63:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %do.body30.do.end66_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #10, !srcloc !83
  br label %cleanup

if.else76:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %zc to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %zc, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.else76, %if.then18.if.end77_crit_edge
  %err.1 = phi i32 [ %err.0, %if.else76 ], [ %call20, %if.then18.if.end77_crit_edge ]
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %47)
  %cmp.i = icmp eq i16 %47, 772
  br i1 %cmp.i, label %if.then.i135, label %if.end77.if.end82_crit_edge

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then.i135:                                     ; preds = %if.end77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %content_type.i) #10
  %48 = ptrtoint ptr %content_type.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %content_type.i, align 1
  %prepend_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 4
  %51 = ptrtoint ptr %prepend_size.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %prepend_size.i, align 2
  %conv535.i = zext i16 %52 to i32
  %sub636.i = sub i32 %50, %conv535.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub636.i)
  %cmp737.i = icmp slt i32 %sub636.i, 17
  br i1 %cmp737.i, label %if.then.i135.cleanup.thread.i_crit_edge, label %if.end.lr.ph.i

if.then.i135.cleanup.thread.i_crit_edge:          ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end.lr.ph.i:                                   ; preds = %if.then.i135
  %offset.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  br label %if.end.i136

if.end.i136:                                      ; preds = %if.end17.i.if.end.i136_crit_edge, %if.end.lr.ph.i
  %53 = phi i32 [ %50, %if.end.lr.ph.i ], [ %59, %if.end17.i.if.end.i136_crit_edge ]
  %back.039.i = phi i32 [ 17, %if.end.lr.ph.i ], [ %inc18.i, %if.end17.i.if.end.i136_crit_edge ]
  %sub.038.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %inc.i, %if.end17.i.if.end.i136_crit_edge ]
  %54 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset.i, align 4
  %add.i = sub i32 %53, %back.039.i
  %sub11.i = add i32 %add.i, %55
  %call12.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub11.i, ptr noundef nonnull %content_type.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.end.i136.cleanup.thread.i_crit_edge

if.end.i136.cleanup.thread.i_crit_edge:           ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end14.i:                                       ; preds = %if.end.i136
  %56 = ptrtoint ptr %content_type.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %content_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool15.not.i = icmp eq i8 %57, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %cleanup.i

if.end17.i:                                       ; preds = %if.end14.i
  %inc.i = add i32 %sub.038.i, 1
  %inc18.i = add i32 %back.039.i, 1
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i, align 4
  %60 = ptrtoint ptr %prepend_size.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %prepend_size.i, align 2
  %conv5.i = zext i16 %61 to i32
  %sub6.i = sub i32 %59, %conv5.i
  %cmp7.i = icmp sgt i32 %inc18.i, %sub6.i
  br i1 %cmp7.i, label %if.end17.i.cleanup.thread.i_crit_edge, label %if.end17.i.if.end.i136_crit_edge

if.end17.i.if.end.i136_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i136

if.end17.i.cleanup.thread.i_crit_edge:            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end17.i.cleanup.thread.i_crit_edge, %if.end.i136.cleanup.thread.i_crit_edge, %if.then.i135.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ -74, %if.then.i135.cleanup.thread.i_crit_edge ], [ %call12.i, %if.end.i136.cleanup.thread.i_crit_edge ], [ -74, %if.end17.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %content_type.i) #10
  br label %padding_length.exit

cleanup.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %control.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 6
  %62 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %57, ptr %control.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %content_type.i) #10
  br label %padding_length.exit

padding_length.exit:                              ; preds = %cleanup.i, %cleanup.thread.i
  %retval.1.i = phi i32 [ %retval.0.ph.i, %cleanup.thread.i ], [ %sub.038.i, %cleanup.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp79 = icmp slt i32 %retval.1.i, 0
  br i1 %cmp79, label %padding_length.exit.cleanup_crit_edge, label %padding_length.exit.if.end82_crit_edge

padding_length.exit.if.end82_crit_edge:           ; preds = %padding_length.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

padding_length.exit.cleanup_crit_edge:            ; preds = %padding_length.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end82:                                         ; preds = %padding_length.exit.if.end82_crit_edge, %if.end77.if.end82_crit_edge
  %retval.1.i171 = phi i32 [ %retval.1.i, %padding_length.exit.if.end82_crit_edge ], [ 0, %if.end77.if.end82_crit_edge ]
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i, align 4
  %sub = sub i32 %64, %retval.1.i171
  store i32 %sub, ptr %add.ptr.i, align 4
  %prepend_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %prepend_size to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %prepend_size, align 2
  %conv83 = zext i16 %66 to i32
  %offset = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %67 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %offset, align 4
  %add84 = add i32 %68, %conv83
  store i32 %add84, ptr %offset, align 4
  %overhead_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %overhead_size to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %overhead_size, align 2
  %conv85 = zext i16 %70 to i32
  %sub87 = sub i32 %sub, %conv85
  store i32 %sub87, ptr %add.ptr.i, align 4
  %rx88 = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 8
  %rec_seq.i137 = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 8, i32 1
  %71 = ptrtoint ptr %rec_seq.i137 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rec_seq.i137, align 4
  %rec_seq_size.i138 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 7
  %73 = ptrtoint ptr %rec_seq_size.i138 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rec_seq_size.i138, align 2
  %conv.i139 = zext i16 %74 to i32
  br label %for.cond.i.i142

for.cond.i.i142:                                  ; preds = %for.body.i.i147.for.cond.i.i142_crit_edge, %if.end82
  %i.0.in.i.i140 = phi i32 [ %conv.i139, %if.end82 ], [ %i.0.i.i143, %for.body.i.i147.for.cond.i.i142_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i140)
  %cmp.i.i141 = icmp sgt i32 %i.0.in.i.i140, 0
  br i1 %cmp.i.i141, label %for.body.i.i147, label %if.then.i148

for.body.i.i147:                                  ; preds = %for.cond.i.i142
  %i.0.i.i143 = add nsw i32 %i.0.in.i.i140, -1
  %arrayidx.i.i144 = getelementptr i8, ptr %72, i32 %i.0.i.i143
  %75 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i144, align 1
  %inc.i.i145 = add i8 %76, 1
  store i8 %inc.i.i145, ptr %arrayidx.i.i144, align 1
  %cmp2.not.i.i146 = icmp eq i8 %inc.i.i145, 0
  br i1 %cmp2.not.i.i146, label %for.body.i.i147.for.cond.i.i142_crit_edge, label %for.body.i.i147.if.end.i150_crit_edge

for.body.i.i147.if.end.i150_crit_edge:            ; preds = %for.body.i.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i150

for.body.i.i147.for.cond.i.i142_crit_edge:        ; preds = %for.body.i.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i142

if.then.i148:                                     ; preds = %for.cond.i.i142
  call void @__sanitizer_cov_trace_pc() #12
  call void @tls_err_abort(ptr noundef %sk, i32 noundef -74) #10
  br label %if.end.i150

if.end.i150:                                      ; preds = %if.then.i148, %for.body.i.i147.if.end.i150_crit_edge
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %78)
  %cmp.not.i149 = icmp eq i16 %78, 772
  br i1 %cmp.not.i149, label %if.end.i150.tls_advance_record_sn.exit168_crit_edge, label %land.lhs.true.i153

if.end.i150.tls_advance_record_sn.exit168_crit_edge: ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_advance_record_sn.exit168

land.lhs.true.i153:                               ; preds = %if.end.i150
  %cipher_type.i151 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 1
  %79 = ptrtoint ptr %cipher_type.i151 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %cipher_type.i151, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %80)
  %cmp4.not.i152 = icmp eq i16 %80, 54
  br i1 %cmp4.not.i152, label %land.lhs.true.i153.tls_advance_record_sn.exit168_crit_edge, label %if.then6.i159

land.lhs.true.i153.tls_advance_record_sn.exit168_crit_edge: ; preds = %land.lhs.true.i153
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_advance_record_sn.exit168

if.then6.i159:                                    ; preds = %land.lhs.true.i153
  %81 = ptrtoint ptr %rx88 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rx88, align 4
  %salt_size.i154 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 6
  %83 = ptrtoint ptr %salt_size.i154 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %salt_size.i154, align 2
  %conv7.i155 = zext i16 %84 to i32
  %add.ptr.i156 = getelementptr i8, ptr %82, i32 %conv7.i155
  %iv_size.i157 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 5
  %85 = ptrtoint ptr %iv_size.i157 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %iv_size.i157, align 2
  %conv8.i158 = zext i16 %86 to i32
  br label %for.cond.i19.i162

for.cond.i19.i162:                                ; preds = %for.body.i23.i167.for.cond.i19.i162_crit_edge, %if.then6.i159
  %i.0.in.i16.i160 = phi i32 [ %conv8.i158, %if.then6.i159 ], [ %i.0.i17.i163, %for.body.i23.i167.for.cond.i19.i162_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i16.i160)
  %cmp.i18.i161 = icmp sgt i32 %i.0.in.i16.i160, 0
  br i1 %cmp.i18.i161, label %for.body.i23.i167, label %for.cond.i19.i162.tls_advance_record_sn.exit168_crit_edge

for.cond.i19.i162.tls_advance_record_sn.exit168_crit_edge: ; preds = %for.cond.i19.i162
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_advance_record_sn.exit168

for.body.i23.i167:                                ; preds = %for.cond.i19.i162
  %i.0.i17.i163 = add nsw i32 %i.0.in.i16.i160, -1
  %arrayidx.i20.i164 = getelementptr i8, ptr %add.ptr.i156, i32 %i.0.i17.i163
  %87 = ptrtoint ptr %arrayidx.i20.i164 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i20.i164, align 1
  %inc.i21.i165 = add i8 %88, 1
  store i8 %inc.i21.i165, ptr %arrayidx.i20.i164, align 1
  %cmp2.not.i22.i166 = icmp eq i8 %inc.i21.i165, 0
  br i1 %cmp2.not.i22.i166, label %for.body.i23.i167.for.cond.i19.i162_crit_edge, label %for.body.i23.i167.tls_advance_record_sn.exit168_crit_edge

for.body.i23.i167.tls_advance_record_sn.exit168_crit_edge: ; preds = %for.body.i23.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_advance_record_sn.exit168

for.body.i23.i167.for.cond.i19.i162_crit_edge:    ; preds = %for.body.i23.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i19.i162

tls_advance_record_sn.exit168:                    ; preds = %for.body.i23.i167.tls_advance_record_sn.exit168_crit_edge, %for.cond.i19.i162.tls_advance_record_sn.exit168_crit_edge, %land.lhs.true.i153.tls_advance_record_sn.exit168_crit_edge, %if.end.i150.tls_advance_record_sn.exit168_crit_edge
  %89 = ptrtoint ptr %decrypted to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load90 = load i8, ptr %decrypted, align 1
  %bf.set = or i8 %bf.load90, 64
  store i8 %bf.set, ptr %decrypted, align 1
  %saved_data_ready = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 4
  %90 = ptrtoint ptr %saved_data_ready to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %saved_data_ready, align 8
  call void %91(ptr noundef %sk) #10
  br label %cleanup

if.else92:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %zc to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %zc, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else92, %tls_advance_record_sn.exit168, %padding_length.exit.cleanup_crit_edge, %do.end66, %for.body.i23.i.cleanup_crit_edge, %for.cond.i19.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7.cleanup_crit_edge ], [ %call20, %if.then23.cleanup_crit_edge ], [ -74, %do.end66 ], [ %retval.1.i, %padding_length.exit.cleanup_crit_edge ], [ 0, %if.else92 ], [ %err.1, %tls_advance_record_sn.exit168 ], [ -115, %if.end.i.cleanup_crit_edge ], [ -115, %land.lhs.true.i.cleanup_crit_edge ], [ -115, %for.cond.i19.i.cleanup_crit_edge ], [ -115, %for.body.i23.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_psock_tls_strp_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__strp_unpause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_sw_splice_read(ptr nocapture noundef readonly %sock, ptr nocapture noundef readnone %ppos, ptr noundef %pipe, i32 noundef %len, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  %err = alloca i32, align 4
  %chunk = alloca i32, align 4
  %zc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_ctx_rx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chunk) #10
  %7 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %chunk, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zc) #10
  %8 = ptrtoint ptr %zc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %zc, align 1
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %entry.sock_rcvtimeo.exit_crit_edge, label %cond.false.i

entry.sock_rcvtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %9 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.false.i ], [ 0, %entry.sock_rcvtimeo.exit_crit_edge ]
  %rx_list = getelementptr inbounds %struct.tls_sw_context_rx, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_list, align 4
  %cmp.i = icmp eq ptr %12, %rx_list
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %sock_rcvtimeo.exit
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then.if.end18_crit_edge, label %if.then.i

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %qlen.i.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %5, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.46, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %12, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.46, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %prev17.i.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %16, ptr %18, align 8
  br label %if.end18

if.else:                                          ; preds = %sock_rcvtimeo.exit
  %call12 = call fastcc ptr @tls_wait_data(ptr noundef %1, ptr noundef null, i1 noundef zeroext %tobool, i32 noundef %cond.i, ptr noundef nonnull %err)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else.splice_read_end_crit_edge, label %if.end

if.else.splice_read_end_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %splice_read_end

if.end:                                           ; preds = %if.else
  %call15 = call fastcc i32 @decrypt_skb_update(ptr noundef %1, ptr noundef nonnull %call12, ptr noundef null, ptr noundef nonnull %chunk, ptr noundef nonnull %zc, i1 noundef zeroext false)
  %21 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call15, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.then16, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tls_err_abort(ptr noundef %1, i32 noundef -74)
  br label %splice_read_end

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %if.then.i, %if.then.if.end18_crit_edge
  %skb.0 = phi ptr [ %call12, %if.end.if.end18_crit_edge ], [ null, %if.then.if.end18_crit_edge ], [ %12, %if.then.i ]
  %control = getelementptr inbounds %struct.tls_sw_context_rx, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %control, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %23)
  %cmp19.not = icmp eq i8 %23, 23
  br i1 %cmp19.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -22, ptr %err, align 4
  br label %splice_read_end

if.end22:                                         ; preds = %if.end18
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 20
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %len)
  %offset = getelementptr %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 24
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset, align 4
  %call26 = tail call i32 @skb_splice_bits(ptr noundef %skb.0, ptr noundef %1, i32 noundef %29, ptr noundef %pipe, i32 noundef %27, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end22.splice_read_end_crit_edge, label %if.end30

if.end22.splice_read_end_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %splice_read_end

if.end30:                                         ; preds = %if.end22
  br i1 %cmp.i, label %if.then32, label %if.end30.if.end33_crit_edge

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %recv_pkt = getelementptr inbounds %struct.tls_sw_context_rx, ptr %5, i32 0, i32 5
  %30 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %recv_pkt, align 4
  %strp = getelementptr inbounds %struct.tls_sw_context_rx, ptr %5, i32 0, i32 2
  tail call void @__strp_unpause(ptr noundef %strp) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %32)
  %cmp35 = icmp slt i32 %27, %32
  br i1 %cmp35, label %if.then37, label %if.else41

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_list, align 4
  %35 = ptrtoint ptr %skb.0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %skb.0, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.46, ptr %skb.0, i32 0, i32 1
  %36 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %rx_list, ptr %prev10.i.i.i, align 4
  %prev17.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %skb.0, ptr %prev17.i.i.i, align 4
  store volatile ptr %skb.0, ptr %rx_list, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %5, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset, align 4
  %add = add i32 %41, %len
  store i32 %add, ptr %offset, align 4
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 4
  %sub = sub i32 %43, %len
  store i32 %sub, ptr %add.ptr.i, align 4
  br label %splice_read_end

if.else41:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb.0) #10
  br label %splice_read_end

splice_read_end:                                  ; preds = %if.else41, %if.then37, %if.end22.splice_read_end_crit_edge, %if.then21, %if.then16, %if.else.splice_read_end_crit_edge
  %copied.0 = phi i32 [ 0, %if.then21 ], [ %call26, %if.end22.splice_read_end_crit_edge ], [ %call26, %if.then37 ], [ %call26, %if.else41 ], [ 0, %if.then16 ], [ 0, %if.else.splice_read_end_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #10
  %defer_list.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 10
  %44 = ptrtoint ptr %defer_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %defer_list.i, align 4
  %cmp.i.i78 = icmp eq ptr %45, null
  br i1 %cmp.i.i78, label %splice_read_end.sk_defer_free_flush.exit_crit_edge, label %if.end.i

splice_read_end.sk_defer_free_flush.exit_crit_edge: ; preds = %splice_read_end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_defer_free_flush.exit

if.end.i:                                         ; preds = %splice_read_end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__sk_defer_free_flush(ptr noundef %1) #10
  br label %sk_defer_free_flush.exit

sk_defer_free_flush.exit:                         ; preds = %if.end.i, %splice_read_end.sk_defer_free_flush.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool43.not = icmp eq i32 %copied.0, 0
  br i1 %tobool43.not, label %cond.false45, label %sk_defer_free_flush.exit.cond.end46_crit_edge

sk_defer_free_flush.exit.cond.end46_crit_edge:    ; preds = %sk_defer_free_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end46

cond.false45:                                     ; preds = %sk_defer_free_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err, align 4
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %sk_defer_free_flush.exit.cond.end46_crit_edge
  %cond47 = phi i32 [ %47, %cond.false45 ], [ %copied.0, %sk_defer_free_flush.exit.cond.end46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zc) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %cond47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_splice_bits(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tls_sw_sock_is_readable(ptr noundef %sk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %8 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i12 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14, label %rcu_read_lock.exit.sk_psock.exit_crit_edge

rcu_read_lock.exit.sk_psock.exit_crit_edge:       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock.exit

land.lhs.true.i14:                                ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i14.sk_psock.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i14.sk_psock.exit_crit_edge:        ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i14
  %.b10.i = load i1, ptr @sk_psock.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true4.i.sk_psock.exit_crit_edge, label %if.then.i15

land.lhs.true4.i.sk_psock.exit_crit_edge:         ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock.exit

if.then.i15:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sk_psock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 286, ptr noundef nonnull @.str.18) #10
  br label %sk_psock.exit

sk_psock.exit:                                    ; preds = %if.then.i15, %land.lhs.true4.i.sk_psock.exit_crit_edge, %land.lhs.true.i14.sk_psock.exit_crit_edge, %rcu_read_lock.exit.sk_psock.exit_crit_edge
  %10 = ptrtoint ptr %9 to i32
  %and.i = and i32 %10, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false.critedge, label %if.then

if.then:                                          ; preds = %sk_psock.exit
  %11 = inttoptr i32 %and.i to ptr
  %ingress_msg = getelementptr inbounds %struct.sk_psock, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %ingress_msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ingress_msg, align 4
  %cmp.i = icmp eq ptr %13, %ingress_msg
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i16, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.then
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  %14 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i.i.i23 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %cmp.i, label %rcu_read_unlock.exit.lor.lhs.false_crit_edge, label %rcu_read_unlock.exit.lor.end_crit_edge

rcu_read_unlock.exit.lor.end_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

rcu_read_unlock.exit.lor.lhs.false_crit_edge:     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false.critedge:                           ; preds = %sk_psock.exit
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i25, label %lor.lhs.false.critedge.rcu_read_unlock.exit35_crit_edge, label %land.lhs.true.i28

lor.lhs.false.critedge.rcu_read_unlock.exit35_crit_edge: ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit35

land.lhs.true.i28:                                ; preds = %lor.lhs.false.critedge
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit35_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit35_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit35

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit35_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit35_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit35

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit35

rcu_read_unlock.exit35:                           ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit35_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit35_crit_edge, %lor.lhs.false.critedge.rcu_read_unlock.exit35_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  %18 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i.i.i32 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i34 = add i32 %21, -1
  store volatile i32 %sub.i.i.i34, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %rcu_read_unlock.exit35, %rcu_read_unlock.exit.lor.lhs.false_crit_edge
  %recv_pkt = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %recv_pkt, align 4
  %tobool6.not = icmp eq ptr %23, null
  br i1 %tobool6.not, label %lor.rhs, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %rx_list = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_list, align 4
  %cmp.i36 = icmp ne ptr %25, %rx_list
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %rcu_read_unlock.exit.lor.end_crit_edge
  %26 = phi i1 [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %rcu_read_unlock.exit.lor.end_crit_edge ], [ %cmp.i36, %lor.rhs ]
  ret i1 %26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_sw_cancel_work_tx(ptr nocapture noundef readonly %tls_ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 4
  %0 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_tx.i, align 4
  %tx_bitmask = getelementptr inbounds %struct.tls_sw_context_tx, ptr %1, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tx_bitmask) #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %tx_bitmask) #10
  %tx_work = getelementptr inbounds %struct.tls_sw_context_tx, ptr %1, i32 0, i32 2
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tx_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_sw_release_resources_tx(ptr noundef %sk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx.i, align 4
  %encrypt_compl_lock = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %encrypt_compl_lock) #10
  %async_notify = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async_notify to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %async_notify, align 4
  %encrypt_pending = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %encrypt_pending, i32 noundef 4) #10
  %5 = ptrtoint ptr %encrypt_pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %encrypt_pending, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %encrypt_compl_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %async_wait = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %async_wait) #10
  %7 = ptrtoint ptr %async_wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %async_wait, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call i32 @tls_tx_records(ptr noundef %sk, i32 noundef -1)
  %partially_sent_record = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %partially_sent_record to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %partially_sent_record, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.end
  tail call void @tls_free_partial_record(ptr noundef %sk, ptr noundef %1) #10
  %tx_list = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_list, align 4
  %call.i.i57 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #10
  br i1 %call.i.i57, label %if.end.i.i, label %if.then7.list_del.exit_crit_edge

if.then7.list_del.exit_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then7.list_del.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %msg_plaintext = getelementptr inbounds %struct.tls_rec, ptr %11, i32 0, i32 3
  %call9 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_plaintext) #10
  tail call void @kfree(ptr noundef %11) #10
  br label %if.end10

if.end10:                                         ; preds = %list_del.exit, %if.end.if.end10_crit_edge
  %tx_list12 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %tx_list12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_list12, align 4
  %cmp.not65 = icmp eq ptr %21, %tx_list12
  br i1 %cmp.not65, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit63.for.body_crit_edge, %if.end10.for.body_crit_edge
  %rec.066 = phi ptr [ %tmp.0, %list_del.exit63.for.body_crit_edge ], [ %21, %if.end10.for.body_crit_edge ]
  %22 = ptrtoint ptr %rec.066 to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.0 = load ptr, ptr %rec.066, align 128
  %call.i.i58 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rec.066) #10
  br i1 %call.i.i58, label %if.end.i.i61, label %for.body.list_del.exit63_crit_edge

for.body.list_del.exit63_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit63

if.end.i.i61:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i59 = getelementptr inbounds %struct.list_head, ptr %rec.066, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i59, align 4
  %25 = ptrtoint ptr %rec.066 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rec.066, align 4
  %prev1.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i60, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit63

list_del.exit63:                                  ; preds = %if.end.i.i61, %for.body.list_del.exit63_crit_edge
  %29 = ptrtoint ptr %rec.066 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %rec.066, align 4
  %prev.i62 = getelementptr inbounds %struct.list_head, ptr %rec.066, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i62, align 4
  %msg_encrypted = getelementptr inbounds %struct.tls_rec, ptr %rec.066, i32 0, i32 4
  %call24 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_encrypted) #10
  %msg_plaintext25 = getelementptr inbounds %struct.tls_rec, ptr %rec.066, i32 0, i32 3
  %call26 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_plaintext25) #10
  tail call void @kfree(ptr noundef %rec.066) #10
  %cmp.not = icmp eq ptr %tmp.0, %tx_list12
  br i1 %cmp.not, label %list_del.exit63.for.end_crit_edge, label %list_del.exit63.for.body_crit_edge

list_del.exit63.for.body_crit_edge:               ; preds = %list_del.exit63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit63.for.end_crit_edge:                ; preds = %list_del.exit63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit63.for.end_crit_edge, %if.end10.for.end_crit_edge
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %32, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %32, ptr noundef %base.i.i) #10
  %33 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %open_rec.i = getelementptr inbounds %struct.tls_sw_context_tx, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %open_rec.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %open_rec.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %for.end.tls_free_open_rec.exit_crit_edge, label %if.then.i

for.end.tls_free_open_rec.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_free_open_rec.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %msg_encrypted.i.i = getelementptr inbounds %struct.tls_rec, ptr %38, i32 0, i32 4
  %call.i.i64 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_encrypted.i.i) #10
  %msg_plaintext.i.i = getelementptr inbounds %struct.tls_rec, ptr %38, i32 0, i32 3
  %call1.i.i = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_plaintext.i.i) #10
  tail call void @kfree(ptr noundef nonnull %38) #10
  %39 = ptrtoint ptr %open_rec.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %open_rec.i, align 4
  br label %tls_free_open_rec.exit

tls_free_open_rec.exit:                           ; preds = %if.then.i, %for.end.tls_free_open_rec.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_free_partial_record(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_sw_free_ctx_tx(ptr nocapture noundef readonly %tls_ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 4
  %0 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_tx.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_sw_release_resources_rx(ptr noundef %sk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i, align 4
  %rx = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 8
  %rec_seq = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %rec_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rec_seq, align 4
  tail call void @kfree(ptr noundef %5) #10
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %recv_pkt = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %recv_pkt, align 4
  tail call void @kfree_skb_reason(ptr noundef %11, i32 noundef 0) #10
  %12 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %recv_pkt, align 4
  %rx_list = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %rx_list) #10
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %14, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %14, ptr noundef %base.i.i) #10
  %strp = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 2
  tail call void @strp_stop(ptr noundef %strp) #10
  %saved_data_ready = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %saved_data_ready to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %saved_data_ready, align 8
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %if.then.if.end9_crit_edge, label %if.then6

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %17 = ptrtoint ptr %saved_data_ready to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %saved_data_ready, align 8
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %19 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %sk_data_ready, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_sw_strparser_done(ptr nocapture noundef readonly %tls_ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 5
  %0 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_rx.i, align 4
  %strp = getelementptr inbounds %struct.tls_sw_context_rx, ptr %1, i32 0, i32 2
  tail call void @strp_done(ptr noundef %strp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_sw_free_ctx_rx(ptr nocapture noundef readonly %tls_ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 5
  %0 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_rx.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_sw_free_resources_rx(ptr noundef %sk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  tail call void @tls_sw_release_resources_rx(ptr noundef %sk)
  %priv_ctx_rx.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i.i, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_sw_write_space(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_tx.i, align 4
  %tx_list.i = getelementptr inbounds %struct.tls_sw_context_tx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_list.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %is_tx_ready.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

is_tx_ready.exit:                                 ; preds = %entry
  %tx_ready.i = getelementptr inbounds %struct.tls_rec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tx_ready.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tx_ready.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.i.not = icmp eq i32 %5, 0
  br i1 %tobool2.i.not, label %is_tx_ready.exit.if.end_crit_edge, label %land.lhs.true

is_tx_ready.exit.if.end_crit_edge:                ; preds = %is_tx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %is_tx_ready.exit
  %tx_bitmask = getelementptr inbounds %struct.tls_sw_context_tx, ptr %1, i32 0, i32 9
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %tx_bitmask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %tx_work = getelementptr inbounds %struct.tls_sw_context_tx, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %tx_work, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %is_tx_ready.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_sw_strparser_arm(ptr noundef %sk, ptr nocapture noundef readonly %tls_ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 5
  %0 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_rx.i, align 4
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %2 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_data_ready, align 8
  %saved_data_ready = getelementptr inbounds %struct.tls_sw_context_rx, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %saved_data_ready to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %saved_data_ready, align 8
  store ptr @tls_data_ready, ptr %sk_data_ready, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  %strp = getelementptr inbounds %struct.tls_sw_context_rx, ptr %1, i32 0, i32 2
  tail call void @strp_check_rcv(ptr noundef %strp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_data_ready(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i, align 4
  %strp = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 2
  tail call void @strp_data_ready(ptr noundef %strp) #10
  %call2 = tail call fastcc ptr @sk_psock_get(ptr noundef %sk)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %ingress_msg = getelementptr inbounds %struct.sk_psock, ptr %call2, i32 0, i32 9
  %4 = ptrtoint ptr %ingress_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ingress_msg, align 4
  %cmp.i.not = icmp eq ptr %5, %ingress_msg
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %saved_data_ready = getelementptr inbounds %struct.tls_sw_context_rx, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %saved_data_ready to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %saved_data_ready, align 8
  tail call void %7(ptr noundef %sk) #10
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %call2, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i.i, !prof !55

if.end5.i.i.i.i.if.end6_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %if.end6

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %call2) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_check_rcv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_set_sw_offload(ptr noundef %sk, ptr noundef %ctx, i32 noundef %tx) local_unnamed_addr #3 align 64 {
entry:
  %cb = alloca %struct.strp_callbacks, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cb) #10
  %2 = getelementptr inbounds %struct.strp_callbacks, ptr %cb, i32 0, i32 1
  %tobool.not = icmp eq ptr %ctx, null
  %3 = call ptr @memset(ptr %cb, i32 255, i32 24)
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx)
  %tobool1.not = icmp eq i32 %tx, 0
  br i1 %tobool1.not, label %if.else12, label %if.then2

if.then2:                                         ; preds = %if.end
  %priv_ctx_tx = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 4
  %4 = ptrtoint ptr %priv_ctx_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_ctx_tx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then4, label %if.then2.if.then25_crit_edge

if.then2.if.then25_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.then4:                                         ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 240) #14
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.then4.out_crit_edge, label %if.end8

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %priv_ctx_tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %priv_ctx_tx, align 4
  br label %if.then25

if.else12:                                        ; preds = %if.end
  %priv_ctx_rx = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 5
  %8 = ptrtoint ptr %priv_ctx_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv_ctx_rx, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.then14, label %if.else12.if.else55_crit_edge

if.else12.if.else55_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else55

if.then14:                                        ; preds = %if.else12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i336 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 416) #14
  %tobool16.not = icmp eq ptr %call7.i.i336, null
  br i1 %tobool16.not, label %if.then14.out_crit_edge, label %if.end18

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %priv_ctx_rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i336, ptr %priv_ctx_rx, align 4
  br label %if.else55

if.then25:                                        ; preds = %if.end8, %if.then2.if.then25_crit_edge
  %sw_ctx_tx.0 = phi ptr [ %call7.i.i, %if.end8 ], [ %5, %if.then2.if.then25_crit_edge ]
  %async_wait = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 1
  %12 = ptrtoint ptr %async_wait to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %async_wait, align 4
  %wait.i.i = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 1, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #10
  %encrypt_compl_lock = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %encrypt_compl_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tls_set_sw_offload.__key, i16 noundef signext 3) #10
  %crypto_send = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 18
  %tx27 = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 7
  %tx_list = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 4
  %13 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  %prev.i = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tx_list, ptr %prev.i, align 4
  %tx_work = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 2
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #10
  %15 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 2, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @tls_set_sw_offload.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry40 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 2, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry40, ptr %entry40, align 4
  %prev.i337 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 2, i32 0, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i337 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry40, ptr %prev.i337, align 4
  %func = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 2, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tx_work_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 2, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @tls_set_sw_offload.__key.4) #10
  %sk54 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %sw_ctx_tx.0, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %sk54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sk, ptr %sk54, align 4
  br label %if.end61

if.else55:                                        ; preds = %if.end18, %if.else12.if.else55_crit_edge
  %sw_ctx_rx.0.ph = phi ptr [ %9, %if.else12.if.else55_crit_edge ], [ %call7.i.i336, %if.end18 ]
  %async_wait56 = getelementptr inbounds %struct.tls_sw_context_rx, ptr %sw_ctx_rx.0.ph, i32 0, i32 1
  %20 = ptrtoint ptr %async_wait56 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %async_wait56, align 4
  %wait.i.i338 = getelementptr inbounds %struct.tls_sw_context_rx, ptr %sw_ctx_rx.0.ph, i32 0, i32 1, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i338, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #10
  %decrypt_compl_lock = getelementptr inbounds %struct.tls_sw_context_rx, ptr %sw_ctx_rx.0.ph, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %decrypt_compl_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @tls_set_sw_offload.__key.6, i16 noundef signext 3) #10
  %crypto_recv = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 19
  %rx = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 8
  %rx_list = getelementptr inbounds %struct.tls_sw_context_rx, ptr %sw_ctx_rx.0.ph, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %sw_ctx_rx.0.ph, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %21 = ptrtoint ptr %rx_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rx_list, ptr %rx_list, align 4
  %prev.i.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %sw_ctx_rx.0.ph, i32 0, i32 3, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rx_list, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %sw_ctx_rx.0.ph, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %qlen.i.i, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else55, %if.then25
  %sw_ctx_rx.0342 = phi ptr [ null, %if.then25 ], [ %sw_ctx_rx.0.ph, %if.else55 ]
  %aead.0 = phi ptr [ %sw_ctx_tx.0, %if.then25 ], [ %sw_ctx_rx.0.ph, %if.else55 ]
  %cctx.0 = phi ptr [ %tx27, %if.then25 ], [ %rx, %if.else55 ]
  %crypto_info.0 = phi ptr [ %crypto_send, %if.then25 ], [ %crypto_recv, %if.else55 ]
  %cipher_type = getelementptr inbounds %struct.tls_crypto_info, ptr %crypto_info.0, i32 0, i32 1
  %24 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cipher_type, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %25, label %if.end61.free_priv_crit_edge [
    i16 51, label %sw.bb
    i16 52, label %sw.bb69
    i16 53, label %sw.bb78
    i16 54, label %sw.bb87
    i16 55, label %sw.bb96
    i16 56, label %sw.bb105
  ]

if.end61.free_priv_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_priv

sw.bb:                                            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %iv62 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info.0, i32 0, i32 1
  %rec_seq63 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info.0, i32 0, i32 4
  %key65 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info.0, i32 0, i32 2
  %salt67 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info.0, i32 0, i32 3
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %iv70 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_256, ptr %crypto_info.0, i32 0, i32 1
  %rec_seq72 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_256, ptr %crypto_info.0, i32 0, i32 4
  %key74 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_256, ptr %crypto_info.0, i32 0, i32 2
  %salt76 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_256, ptr %crypto_info.0, i32 0, i32 3
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %iv79 = getelementptr inbounds %struct.tls12_crypto_info_aes_ccm_128, ptr %crypto_info.0, i32 0, i32 1
  %rec_seq81 = getelementptr inbounds %struct.tls12_crypto_info_aes_ccm_128, ptr %crypto_info.0, i32 0, i32 4
  %key83 = getelementptr inbounds %struct.tls12_crypto_info_aes_ccm_128, ptr %crypto_info.0, i32 0, i32 2
  %salt85 = getelementptr inbounds %struct.tls12_crypto_info_aes_ccm_128, ptr %crypto_info.0, i32 0, i32 3
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %iv88 = getelementptr inbounds %struct.tls12_crypto_info_chacha20_poly1305, ptr %crypto_info.0, i32 0, i32 1
  %rec_seq90 = getelementptr inbounds %struct.tls12_crypto_info_chacha20_poly1305, ptr %crypto_info.0, i32 0, i32 4
  %key92 = getelementptr inbounds %struct.tls12_crypto_info_chacha20_poly1305, ptr %crypto_info.0, i32 0, i32 2
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %iv97 = getelementptr inbounds %struct.tls12_crypto_info_sm4_gcm, ptr %crypto_info.0, i32 0, i32 1
  %rec_seq99 = getelementptr inbounds %struct.tls12_crypto_info_sm4_gcm, ptr %crypto_info.0, i32 0, i32 4
  %key101 = getelementptr inbounds %struct.tls12_crypto_info_sm4_gcm, ptr %crypto_info.0, i32 0, i32 2
  %salt103 = getelementptr inbounds %struct.tls12_crypto_info_sm4_gcm, ptr %crypto_info.0, i32 0, i32 3
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %iv106 = getelementptr inbounds %struct.tls12_crypto_info_sm4_ccm, ptr %crypto_info.0, i32 0, i32 1
  %rec_seq108 = getelementptr inbounds %struct.tls12_crypto_info_sm4_ccm, ptr %crypto_info.0, i32 0, i32 4
  %key110 = getelementptr inbounds %struct.tls12_crypto_info_sm4_ccm, ptr %crypto_info.0, i32 0, i32 2
  %salt112 = getelementptr inbounds %struct.tls12_crypto_info_sm4_ccm, ptr %crypto_info.0, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb105, %sw.bb96, %sw.bb87, %sw.bb78, %sw.bb69, %sw.bb
  %iv_size.0 = phi i16 [ 8, %sw.bb105 ], [ 8, %sw.bb96 ], [ 12, %sw.bb87 ], [ 8, %sw.bb78 ], [ 8, %sw.bb69 ], [ 8, %sw.bb ]
  %salt_size.0 = phi i16 [ 4, %sw.bb105 ], [ 4, %sw.bb96 ], [ 0, %sw.bb87 ], [ 4, %sw.bb78 ], [ 4, %sw.bb69 ], [ 4, %sw.bb ]
  %iv.0 = phi ptr [ %iv106, %sw.bb105 ], [ %iv97, %sw.bb96 ], [ %iv88, %sw.bb87 ], [ %iv79, %sw.bb78 ], [ %iv70, %sw.bb69 ], [ %iv62, %sw.bb ]
  %rec_seq.0 = phi ptr [ %rec_seq108, %sw.bb105 ], [ %rec_seq99, %sw.bb96 ], [ %rec_seq90, %sw.bb87 ], [ %rec_seq81, %sw.bb78 ], [ %rec_seq72, %sw.bb69 ], [ %rec_seq63, %sw.bb ]
  %key.0 = phi ptr [ %key110, %sw.bb105 ], [ %key101, %sw.bb96 ], [ %key92, %sw.bb87 ], [ %key83, %sw.bb78 ], [ %key74, %sw.bb69 ], [ %key65, %sw.bb ]
  %salt.0 = phi ptr [ %salt112, %sw.bb105 ], [ %salt103, %sw.bb96 ], [ %rec_seq90, %sw.bb87 ], [ %salt85, %sw.bb78 ], [ %salt76, %sw.bb69 ], [ %salt67, %sw.bb ]
  %cipher_name.0 = phi ptr [ @.str.12, %sw.bb105 ], [ @.str.11, %sw.bb96 ], [ @.str.10, %sw.bb87 ], [ @.str.9, %sw.bb78 ], [ @.str.8, %sw.bb69 ], [ @.str.8, %sw.bb ]
  %keysize.0 = phi i32 [ 16, %sw.bb105 ], [ 16, %sw.bb96 ], [ 32, %sw.bb87 ], [ 16, %sw.bb78 ], [ 32, %sw.bb69 ], [ 16, %sw.bb ]
  %nonce_size.0 = phi i16 [ 8, %sw.bb105 ], [ 8, %sw.bb96 ], [ 0, %sw.bb87 ], [ 8, %sw.bb78 ], [ 8, %sw.bb69 ], [ 8, %sw.bb ]
  %conv114 = zext i16 %iv_size.0 to i32
  %27 = ptrtoint ptr %crypto_info.0 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %crypto_info.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %28)
  %cmp126 = icmp eq i16 %28, 772
  %.sink345 = select i1 %cmp126, i16 5, i16 13
  %.sink = zext i1 %cmp126 to i16
  %nonce_size.1 = select i1 %cmp126, i16 0, i16 %nonce_size.0
  %29 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %.sink345, ptr %29, align 2
  %31 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %.sink, ptr %31, align 2
  %33 = ptrtoint ptr %crypto_info.0 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %crypto_info.0, align 2
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %1, align 2
  %36 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cipher_type, align 2
  %cipher_type136 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %cipher_type136 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %cipher_type136, align 2
  %add = or i16 %nonce_size.1, 5
  %prepend_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %prepend_size to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %add, ptr %prepend_size, align 2
  %tag_size139 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %tag_size139 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 16, ptr %tag_size139, align 2
  %add144 = or i16 %nonce_size.1, 21
  %add147 = add nuw nsw i16 %add144, %.sink
  %overhead_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %overhead_size to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %add147, ptr %overhead_size, align 2
  %iv_size149 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %iv_size149 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %iv_size.0, ptr %iv_size149, align 2
  %salt_size150 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %salt_size150 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %salt_size.0, ptr %salt_size150, align 2
  %conv152 = zext i16 %salt_size.0 to i32
  %add153 = add nuw nsw i32 %conv152, %conv114
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add153, i32 noundef 3264) #13
  %44 = ptrtoint ptr %cctx.0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i, ptr %cctx.0, align 4
  %tobool157.not = icmp eq ptr %call9.i, null
  br i1 %tobool157.not, label %sw.epilog.free_priv_crit_edge, label %if.end159

sw.epilog.free_priv_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_priv

if.end159:                                        ; preds = %sw.epilog
  %rec_seq_size160 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %rec_seq_size160 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 8, ptr %rec_seq_size160, align 2
  %46 = ptrtoint ptr %cctx.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cctx.0, align 4
  %48 = call ptr @memcpy(ptr %47, ptr %salt.0, i32 %conv152)
  %49 = load ptr, ptr %cctx.0, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 %conv152
  %50 = call ptr @memcpy(ptr %add.ptr, ptr %iv.0, i32 %conv114)
  %call167 = tail call ptr @kmemdup(ptr noundef %rec_seq.0, i32 noundef 8, i32 noundef 3264) #10
  %rec_seq168 = getelementptr inbounds %struct.cipher_context, ptr %cctx.0, i32 0, i32 1
  %51 = ptrtoint ptr %rec_seq168 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call167, ptr %rec_seq168, align 4
  %tobool170.not = icmp eq ptr %call167, null
  br i1 %tobool170.not, label %if.end159.free_iv_crit_edge, label %if.end172

if.end159.free_iv_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_iv

if.end172:                                        ; preds = %if.end159
  %52 = ptrtoint ptr %aead.0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aead.0, align 4
  %tobool173.not = icmp eq ptr %53, null
  br i1 %tobool173.not, label %if.then174, label %if.end172.if.end180_crit_edge

if.end172.if.end180_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.then174:                                       ; preds = %if.end172
  %call175 = tail call ptr @crypto_alloc_aead(ptr noundef nonnull %cipher_name.0, i32 noundef 0, i32 noundef 0) #10
  %54 = ptrtoint ptr %aead.0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call175, ptr %aead.0, align 4
  %cmp.i339 = icmp ugt ptr %call175, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i339, label %if.then177, label %if.then174.if.end180_crit_edge

if.then174.if.end180_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.then177:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %call175 to i32
  br label %free_rec_seq

if.end180:                                        ; preds = %if.then174.if.end180_crit_edge, %if.end172.if.end180_crit_edge
  %push_pending_record = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 2
  %56 = ptrtoint ptr %push_pending_record to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @tls_sw_push_pending_record, ptr %push_pending_record, align 4
  %57 = ptrtoint ptr %aead.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %aead.0, align 4
  %call181 = tail call i32 @crypto_aead_setkey(ptr noundef %58, ptr noundef %key.0, i32 noundef %keysize.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %if.end180.free_aead_crit_edge

if.end180.free_aead_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_aead

if.end184:                                        ; preds = %if.end180
  %59 = ptrtoint ptr %aead.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %aead.0, align 4
  %61 = ptrtoint ptr %tag_size139 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %tag_size139, align 2
  %conv186 = zext i16 %62 to i32
  %call187 = tail call i32 @crypto_aead_setauthsize(ptr noundef %60, i32 noundef %conv186) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %if.end184.free_aead_crit_edge

if.end184.free_aead_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_aead

if.end190:                                        ; preds = %if.end184
  %tobool191.not = icmp eq ptr %sw_ctx_rx.0342, null
  br i1 %tobool191.not, label %if.end190.out_crit_edge, label %if.then192

if.end190.out_crit_edge:                          ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then192:                                       ; preds = %if.end190
  %63 = ptrtoint ptr %crypto_info.0 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %crypto_info.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %64)
  %cmp197 = icmp eq i16 %64, 772
  br i1 %cmp197, label %if.then199, label %if.else200

if.then199:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #12
  %async_capable = getelementptr inbounds %struct.tls_sw_context_rx, ptr %sw_ctx_rx.0342, i32 0, i32 7
  %65 = ptrtoint ptr %async_capable to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load = load i8, ptr %async_capable, align 1
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %async_capable, align 1
  br label %if.end208

if.else200:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %sw_ctx_rx.0342 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sw_ctx_rx.0342, align 8
  %__crt_alg = getelementptr inbounds %struct.crypto_aead, ptr %67, i32 0, i32 3, i32 3
  %68 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %__crt_alg, align 4
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %cra_flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cra_flags, align 16
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, -128
  %async_capable204 = getelementptr inbounds %struct.tls_sw_context_rx, ptr %sw_ctx_rx.0342, i32 0, i32 7
  %74 = ptrtoint ptr %async_capable204 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load205 = load i8, ptr %async_capable204, align 1
  %bf.clear206 = and i8 %bf.load205, 127
  %bf.set207 = or i8 %bf.clear206, %73
  store i8 %bf.set207, ptr %async_capable204, align 1
  br label %if.end208

if.end208:                                        ; preds = %if.else200, %if.then199
  %75 = getelementptr inbounds i8, ptr %cb, i32 8
  %76 = call ptr @memset(ptr %75, i32 0, i32 16)
  %77 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @tls_queue, ptr %2, align 4
  %78 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @tls_read_size, ptr %cb, align 4
  %strp = getelementptr inbounds %struct.tls_sw_context_rx, ptr %sw_ctx_rx.0342, i32 0, i32 2
  %call209 = call i32 @strp_init(ptr noundef %strp, ptr noundef %sk, ptr noundef nonnull %cb) #10
  br label %out

free_aead:                                        ; preds = %if.end184.free_aead_crit_edge, %if.end180.free_aead_crit_edge
  %rc.0 = phi i32 [ %call181, %if.end180.free_aead_crit_edge ], [ %call187, %if.end184.free_aead_crit_edge ]
  %79 = ptrtoint ptr %aead.0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %aead.0, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %80, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %80, ptr noundef %base.i.i) #10
  br label %free_rec_seq

free_rec_seq:                                     ; preds = %free_aead, %if.then177
  %rc.1 = phi i32 [ %rc.0, %free_aead ], [ %55, %if.then177 ]
  %81 = ptrtoint ptr %aead.0 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %aead.0, align 4
  %82 = ptrtoint ptr %rec_seq168 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rec_seq168, align 4
  tail call void @kfree(ptr noundef %83) #10
  %84 = ptrtoint ptr %rec_seq168 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %rec_seq168, align 4
  br label %free_iv

free_iv:                                          ; preds = %free_rec_seq, %if.end159.free_iv_crit_edge
  %rc.2 = phi i32 [ %rc.1, %free_rec_seq ], [ -12, %if.end159.free_iv_crit_edge ]
  %85 = ptrtoint ptr %cctx.0 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cctx.0, align 4
  tail call void @kfree(ptr noundef %86) #10
  %87 = ptrtoint ptr %cctx.0 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %cctx.0, align 4
  br label %free_priv

free_priv:                                        ; preds = %free_iv, %sw.epilog.free_priv_crit_edge, %if.end61.free_priv_crit_edge
  %rc.3 = phi i32 [ %rc.2, %free_iv ], [ -22, %if.end61.free_priv_crit_edge ], [ -12, %sw.epilog.free_priv_crit_edge ]
  br i1 %tobool1.not, label %if.else219, label %if.then216

if.then216:                                       ; preds = %free_priv
  call void @__sanitizer_cov_trace_pc() #12
  %priv_ctx_tx217 = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 4
  %88 = ptrtoint ptr %priv_ctx_tx217 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv_ctx_tx217, align 4
  tail call void @kfree(ptr noundef %89) #10
  %90 = ptrtoint ptr %priv_ctx_tx217 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %priv_ctx_tx217, align 4
  br label %out

if.else219:                                       ; preds = %free_priv
  call void @__sanitizer_cov_trace_pc() #12
  %priv_ctx_rx220 = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 5
  %91 = ptrtoint ptr %priv_ctx_rx220 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv_ctx_rx220, align 4
  tail call void @kfree(ptr noundef %92) #10
  %93 = ptrtoint ptr %priv_ctx_rx220 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %priv_ctx_rx220, align 4
  br label %out

out:                                              ; preds = %if.else219, %if.then216, %if.end208, %if.end190.out_crit_edge, %if.then14.out_crit_edge, %if.then4.out_crit_edge, %entry.out_crit_edge
  %rc.4 = phi i32 [ %rc.3, %if.then216 ], [ %rc.3, %if.else219 ], [ 0, %if.end208 ], [ 0, %if.end190.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -12, %if.then4.out_crit_edge ], [ -12, %if.then14.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cb) #10
  ret i32 %rc.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_work_handler(ptr nocapture noundef readonly %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.tx_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icsk_ulp_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !56

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_ctx_tx.i, align 4
  %tx_bitmask = getelementptr inbounds %struct.tls_sw_context_tx, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %tx_bitmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tx_bitmask, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %tx_bitmask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %tx_lock = getelementptr inbounds %struct.tls_context, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #10
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %call16 = tail call i32 @tls_tx_records(ptr noundef %1, i32 noundef -1)
  tail call void @release_sock(ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %tx_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tls_sw_push_pending_record(ptr noundef %sk, i32 noundef %flags) #3 align 64 {
entry:
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx.i, align 4
  %open_rec = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %open_rec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %open_rec, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #10
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %copied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %msg_plaintext = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3
  %call5 = call fastcc i32 @bpf_exec_tx_verdict(ptr noundef %msg_plaintext, ptr noundef %sk, i1 noundef zeroext true, i8 noundef zeroext 23, ptr noundef nonnull %copied, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_queue(ptr nocapture noundef %strp, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %strp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %strp, align 8
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_ctx_rx.i, align 4
  %decrypted = getelementptr inbounds %struct.tls_sw_context_rx, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %decrypted to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %decrypted, align 1
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %decrypted, align 1
  %recv_pkt = getelementptr inbounds %struct.tls_sw_context_rx, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %recv_pkt, align 4
  %paused.i = getelementptr inbounds %struct.strparser, ptr %strp, i32 0, i32 1
  %8 = ptrtoint ptr %paused.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %paused.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %paused.i, align 4
  %saved_data_ready = getelementptr inbounds %struct.tls_sw_context_rx, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %saved_data_ready to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %saved_data_ready, align 8
  %11 = load ptr, ptr %strp, align 8
  tail call void %10(ptr noundef %11) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tls_read_size(ptr nocapture noundef readonly %strp, ptr noundef %skb) #3 align 64 {
entry:
  %header = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %strp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %strp, align 8
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_ctx_rx.i, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %header) #10
  %6 = getelementptr inbounds [21 x i8], ptr %header, i32 0, i32 1
  %7 = getelementptr inbounds [21 x i8], ptr %header, i32 0, i32 2
  %8 = getelementptr inbounds [21 x i8], ptr %header, i32 0, i32 3
  %9 = getelementptr inbounds [21 x i8], ptr %header, i32 0, i32 4
  %offset = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %10 = call ptr @memset(ptr %header, i32 255, i32 21)
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %prepend_size = getelementptr inbounds %struct.tls_prot_info, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %prepend_size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %prepend_size, align 2
  %conv = zext i16 %14 to i32
  %add = add i32 %12, %conv
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp = icmp ugt i32 %add, %16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %14)
  %cmp6 = icmp ugt i16 %14, 21
  br i1 %cmp6, label %do.end, label %if.end30, !prof !56

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2099, i32 noundef 9, ptr noundef null) #10
  br label %read_failure

if.end30:                                         ; preds = %if.end
  %call34 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %12, ptr noundef nonnull %header, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end30.read_failure_crit_edge, label %if.end38

if.end30.read_failure_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_failure

if.end38:                                         ; preds = %if.end30
  %17 = ptrtoint ptr %header to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %header, align 1
  %control = getelementptr inbounds %struct.tls_sw_context_rx, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %control, align 8
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %9, align 1
  %conv40 = zext i8 %21 to i32
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %8, align 1
  %conv42 = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv42, 8
  %or = or i32 %shl, %conv40
  %tag_size = getelementptr inbounds %struct.tls_prot_info, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %tag_size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tag_size, align 2
  %conv43 = zext i16 %25 to i32
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %27)
  %cmp45.not = icmp eq i16 %27, 772
  br i1 %cmp45.not, label %if.end38.if.end53_crit_edge, label %land.lhs.true

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end38
  %cipher_type = getelementptr inbounds %struct.tls_prot_info, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cipher_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %29)
  %cmp48.not = icmp eq i16 %29, 54
  br i1 %cmp48.not, label %land.lhs.true.if.end53_crit_edge, label %if.then50

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %iv_size = getelementptr inbounds %struct.tls_prot_info, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %iv_size to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %iv_size, align 2
  %conv51 = zext i16 %31 to i32
  %add52 = add nuw nsw i32 %conv51, %conv43
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %land.lhs.true.if.end53_crit_edge, %if.end38.if.end53_crit_edge
  %cipher_overhead.0 = phi i32 [ %add52, %if.then50 ], [ %conv43, %land.lhs.true.if.end53_crit_edge ], [ %conv43, %if.end38.if.end53_crit_edge ]
  %add54 = add nuw nsw i32 %cipher_overhead.0, 16384
  %tail_size = getelementptr inbounds %struct.tls_prot_info, ptr %3, i32 0, i32 9
  %32 = ptrtoint ptr %tail_size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tail_size, align 2
  %conv55 = zext i16 %33 to i32
  %add56 = add nuw nsw i32 %add54, %conv55
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %add56)
  %cmp57 = icmp ugt i32 %or, %add56
  br i1 %cmp57, label %if.end53.read_failure_crit_edge, label %if.end60

if.end53.read_failure_crit_edge:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_failure

if.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %cipher_overhead.0)
  %cmp61 = icmp ult i32 %or, %cipher_overhead.0
  br i1 %cmp61, label %if.end60.read_failure_crit_edge, label %if.end64

if.end60.read_failure_crit_edge:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_failure

if.end64:                                         ; preds = %if.end60
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp67.not = icmp eq i8 %35, 3
  br i1 %cmp67.not, label %lor.lhs.false, label %if.end64.read_failure_crit_edge

if.end64.read_failure_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_failure

lor.lhs.false:                                    ; preds = %if.end64
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp71.not = icmp eq i8 %37, 3
  br i1 %cmp71.not, label %if.end74, label %lor.lhs.false.read_failure_crit_edge

lor.lhs.false.read_failure_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_failure

if.end74:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %strp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %strp, align 8
  %add76 = add nuw nsw i32 %or, 5
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %40 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cb, align 8
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 4
  %add79 = add i32 %43, %41
  call void @tls_device_rx_resync_new_rec(ptr noundef %39, i32 noundef %add76, i32 noundef %add79) #10
  br label %cleanup

read_failure:                                     ; preds = %lor.lhs.false.read_failure_crit_edge, %if.end64.read_failure_crit_edge, %if.end60.read_failure_crit_edge, %if.end53.read_failure_crit_edge, %if.end30.read_failure_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call34, %if.end30.read_failure_crit_edge ], [ -90, %if.end53.read_failure_crit_edge ], [ -74, %if.end60.read_failure_crit_edge ], [ -22, %lor.lhs.false.read_failure_crit_edge ], [ -22, %if.end64.read_failure_crit_edge ]
  %44 = ptrtoint ptr %strp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %strp, align 8
  call void @tls_err_abort(ptr noundef %45, i32 noundef %ret.0)
  br label %cleanup

cleanup:                                          ; preds = %read_failure, %if.end74, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %read_failure ], [ %add76, %if.end74 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %header) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strp_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tls_push_record(ptr noundef %sk, i32 noundef %flags, i8 noundef zeroext %record_type) unnamed_addr #3 align 64 {
entry:
  %tmp = alloca ptr, align 4
  %orig_end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx.i, align 4
  %open_rec = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %open_rec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %open_rec, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tmp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig_end) #10
  %7 = ptrtoint ptr %orig_end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %orig_end, align 4, !annotation !63
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_plaintext = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3
  %msg_encrypted = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 4
  %apply_bytes = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %apply_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end.land.lhs.true_crit_edge, label %land.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.end:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp ult i32 %9, %11
  br i1 %cmp, label %land.end.if.then28_crit_edge, label %land.end.land.lhs.true_crit_edge

land.end.land.lhs.true_crit_edge:                 ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.end.if.then28_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

land.lhs.true:                                    ; preds = %land.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %size5 = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 3
  %12 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size5, align 4
  %overhead_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %overhead_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %overhead_size, align 2
  %conv = zext i16 %15 to i32
  %add = add i32 %13, %conv
  %size7 = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 4, i32 0, i32 3
  %16 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp8 = icmp ugt i32 %add, %17
  br i1 %cmp8, label %land.lhs.true.if.then28_crit_edge, label %land.lhs.true.if.end48_crit_edge, !prof !56

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %land.lhs.true.if.then28_crit_edge, %land.end.if.then28_crit_edge
  %overhead_size29 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %overhead_size29 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %overhead_size29, align 2
  %conv30 = zext i16 %19 to i32
  %call31 = call fastcc i32 @tls_split_open_record(ptr noundef %sk, ptr noundef nonnull %tmp, ptr noundef %msg_plaintext, i32 noundef %conv30, ptr noundef nonnull %orig_end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then28.cleanup_crit_edge, label %if.end35

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %if.then28
  %size37 = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 3
  %20 = ptrtoint ptr %size37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool38.not = icmp eq i32 %21, 0
  br i1 %tobool38.not, label %if.then39, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tmp, align 4
  %24 = ptrtoint ptr %orig_end to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %orig_end, align 4
  tail call fastcc void @tls_merge_open_record(ptr noundef %sk, ptr noundef nonnull %5, ptr noundef %23, i32 noundef %25)
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end35.if.end42_crit_edge
  %26 = xor i1 %tobool38.not, true
  %27 = ptrtoint ptr %size37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size37, align 4
  %29 = ptrtoint ptr %overhead_size29 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %overhead_size29, align 2
  %conv46 = zext i16 %30 to i32
  %add47 = add i32 %28, %conv46
  tail call void @sk_msg_trim(ptr noundef %sk, ptr noundef %msg_encrypted, i32 noundef %add47) #10
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %land.lhs.true.if.end48_crit_edge
  %split.2.off0 = phi i1 [ %26, %if.end42 ], [ false, %land.lhs.true.if.end48_crit_edge ]
  %tx_flags = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %flags, ptr %tx_flags, align 4
  %aead_req = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 12
  %end = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 2
  %32 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end, align 4
  %content_type = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 7
  %34 = ptrtoint ptr %content_type to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %record_type, ptr %content_type, align 8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %36)
  %cmp55 = icmp eq i16 %36, 772
  br i1 %cmp55, label %if.then57, label %if.else65

if.then57:                                        ; preds = %if.end48
  %sg_content_type = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 8
  %37 = ptrtoint ptr %content_type to i32
  %cmp.i = icmp ugt ptr %content_type, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then57.do.body5.i_crit_edge, !prof !55

if.then57.do.body5.i_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.then57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %38 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %38, %content_type
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !55

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %37, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %39 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %39, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !56

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.then57.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !57
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %40, i32 %shr.i
  %41 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !55

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %42 = ptrtoint ptr %sg_content_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_content_type, align 4
  %and.i.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !55

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %37, 4095
  %offset1.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 8, i32 2
  %45 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %length.i.i, align 4
  %or.i = and i32 %41, -4
  %and.i278 = or i32 %or.i, 2
  %46 = ptrtoint ptr %sg_content_type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i278, ptr %sg_content_type, align 4
  %data = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 6
  %47 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %end, align 4
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %data, i32 %48
  %offset.i.i = getelementptr %struct.scatterlist, ptr %data, i32 %48, i32 1
  %49 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i279 = getelementptr %struct.scatterlist, ptr %data, i32 %48, i32 2
  %50 = ptrtoint ptr %length.i.i279 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %length.i.i279, align 4
  %51 = ptrtoint ptr %sg_content_type to i32
  br label %if.end67

if.else65:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp50 = icmp eq i32 %33, 0
  %dec = add i32 %33, -1
  %i.0 = select i1 %cmp50, i32 17, i32 %dec
  %arrayidx.i280 = getelementptr %struct.sk_msg_sg, ptr %msg_plaintext, i32 0, i32 6, i32 %i.0
  %52 = ptrtoint ptr %arrayidx.i280 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i280, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %sg_set_buf.exit
  %.sink327 = phi i32 [ %53, %if.else65 ], [ %51, %sg_set_buf.exit ]
  %.sink = phi i32 [ 2, %if.else65 ], [ 1, %sg_set_buf.exit ]
  %arrayidx.i280.sink = phi ptr [ %arrayidx.i280, %if.else65 ], [ %arrayidx.i, %sg_set_buf.exit ]
  %or.i281 = and i32 %.sink327, -4
  %and.i282 = or i32 %or.i281, %.sink
  %54 = ptrtoint ptr %arrayidx.i280.sink to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and.i282, ptr %arrayidx.i280.sink, align 4
  %55 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %end, align 4
  %57 = ptrtoint ptr %msg_plaintext to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_plaintext, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp71 = icmp ult i32 %56, %58
  br i1 %cmp71, label %if.then73, label %if.end67.if.end84_crit_edge

if.end67.if.end84_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %data75 = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 6
  %arrayidx.i284 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 6, i32 17
  %offset.i.i285 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 6, i32 17, i32 1
  %59 = ptrtoint ptr %offset.i.i285 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %offset.i.i285, align 4
  %length.i.i286 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 6, i32 17, i32 2
  %60 = ptrtoint ptr %length.i.i286 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %length.i.i286, align 4
  %61 = ptrtoint ptr %data75 to i32
  %or.i.i287 = and i32 %61, -4
  %and.i.i288 = or i32 %or.i.i287, 1
  %62 = ptrtoint ptr %arrayidx.i284 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and.i.i288, ptr %arrayidx.i284, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then73, %if.end67.if.end84_crit_edge
  %63 = ptrtoint ptr %msg_plaintext to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_plaintext, align 4
  %arrayidx90 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 6, i32 %64
  %arrayidx.i289 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 5, i32 1
  %offset.i.i290 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 5, i32 1, i32 1
  %65 = ptrtoint ptr %offset.i.i290 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %offset.i.i290, align 4
  %length.i.i291 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 5, i32 1, i32 2
  %66 = ptrtoint ptr %length.i.i291 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %length.i.i291, align 4
  %67 = ptrtoint ptr %arrayidx90 to i32
  %or.i.i292 = and i32 %67, -4
  %and.i.i293 = or i32 %or.i.i292, 1
  %68 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and.i.i293, ptr %arrayidx.i289, align 4
  %end92 = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 4, i32 0, i32 2
  %69 = ptrtoint ptr %end92 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %end92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp94 = icmp eq i32 %70, 0
  %dec98 = add i32 %70, -1
  %i.1 = select i1 %cmp94, i32 17, i32 %dec98
  %arrayidx.i294 = getelementptr %struct.sk_msg_sg, ptr %msg_encrypted, i32 0, i32 6, i32 %i.1
  %71 = ptrtoint ptr %arrayidx.i294 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i294, align 4
  %or.i295 = and i32 %72, -4
  %and.i296 = or i32 %or.i295, 2
  store i32 %and.i296, ptr %arrayidx.i294, align 4
  %73 = ptrtoint ptr %msg_encrypted to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_encrypted, align 4
  %arrayidx108 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 4, i32 0, i32 6, i32 %74
  %arrayidx.i297 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 6, i32 1
  %offset.i.i298 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 6, i32 1, i32 1
  %75 = ptrtoint ptr %offset.i.i298 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %offset.i.i298, align 4
  %length.i.i299 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 6, i32 1, i32 2
  %76 = ptrtoint ptr %length.i.i299 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %length.i.i299, align 4
  %77 = ptrtoint ptr %arrayidx108 to i32
  %or.i.i300 = and i32 %77, -4
  %and.i.i301 = or i32 %or.i.i300, 1
  %78 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and.i.i301, ptr %arrayidx.i297, align 4
  %aad_space = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 9
  %size111 = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 3, i32 0, i32 3
  %79 = ptrtoint ptr %size111 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size111, align 4
  %tail_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 9
  %81 = ptrtoint ptr %tail_size to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %tail_size, align 2
  %conv112 = zext i16 %82 to i32
  %add113 = add i32 %80, %conv112
  %rec_seq = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 7, i32 1
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %84)
  %cmp.not.i = icmp eq i16 %84, 772
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %rec_seq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rec_seq, align 4
  %rec_seq_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 7
  %87 = ptrtoint ptr %rec_seq_size.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %rec_seq_size.i, align 2
  %conv2.i = zext i16 %88 to i32
  %89 = call ptr @memcpy(ptr %aad_space, ptr %86, i32 %conv2.i)
  %add.ptr.i302 = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 9, i32 8
  br label %tls_make_aad.exit

if.else.i:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %tag_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %tag_size.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %tag_size.i, align 2
  %conv3.i = zext i16 %91 to i32
  %add.i303 = add i32 %add113, %conv3.i
  br label %tls_make_aad.exit

tls_make_aad.exit:                                ; preds = %if.else.i, %if.then.i
  %size.addr.0.i = phi i32 [ %add113, %if.then.i ], [ %add.i303, %if.else.i ]
  %buf.addr.0.i = phi ptr [ %add.ptr.i302, %if.then.i ], [ %aad_space, %if.else.i ]
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %93)
  %cmp6.i = icmp eq i16 %93, 772
  %spec.select.i = select i1 %cmp6.i, i8 23, i8 %record_type
  %94 = ptrtoint ptr %buf.addr.0.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %spec.select.i, ptr %buf.addr.0.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %buf.addr.0.i, i32 1
  %95 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 3, ptr %arrayidx10.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %buf.addr.0.i, i32 2
  %96 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 3, ptr %arrayidx11.i, align 1
  %shr.i304 = lshr i32 %size.addr.0.i, 8
  %conv12.i = trunc i32 %shr.i304 to i8
  %arrayidx13.i = getelementptr i8, ptr %buf.addr.0.i, i32 3
  %97 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv12.i, ptr %arrayidx13.i, align 1
  %conv14.i = trunc i32 %size.addr.0.i to i8
  %arrayidx15.i = getelementptr i8, ptr %buf.addr.0.i, i32 4
  %98 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv14.i, ptr %arrayidx15.i, align 1
  %99 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx108, align 4
  %and.i.i305 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i305)
  %tobool.i.not.i = icmp eq i32 %and.i.i305, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !55

do.body2.i:                                       ; preds = %tls_make_aad.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

sg_page.exit:                                     ; preds = %tls_make_aad.exit
  %and.i306 = and i32 %100, -4
  %101 = inttoptr i32 %and.i306 to ptr
  %call118 = tail call ptr @page_address(ptr noundef %101) #10
  %offset = getelementptr %struct.tls_rec, ptr %5, i32 0, i32 4, i32 0, i32 6, i32 %74, i32 1
  %102 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call118, i32 %103
  %104 = ptrtoint ptr %size111 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %size111, align 4
  %106 = ptrtoint ptr %tail_size to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %tail_size, align 2
  %conv125 = zext i16 %107 to i32
  %add126 = add i32 %105, %conv125
  %iv_size1.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 5
  %108 = ptrtoint ptr %iv_size1.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %iv_size1.i, align 2
  %conv.i = zext i16 %109 to i32
  %tag_size.i307 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 3
  %110 = ptrtoint ptr %tag_size.i307 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %tag_size.i307, align 2
  %conv2.i308 = zext i16 %111 to i32
  %add.i309 = add i32 %add126, %conv2.i308
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %113)
  %cmp.not.i310 = icmp eq i16 %113, 772
  br i1 %cmp.not.i310, label %sg_page.exit.tls_fill_prepend.exit_crit_edge, label %land.lhs.true.i311

sg_page.exit.tls_fill_prepend.exit_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_fill_prepend.exit

land.lhs.true.i311:                               ; preds = %sg_page.exit
  %cipher_type.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 1
  %114 = ptrtoint ptr %cipher_type.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %cipher_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %115)
  %cmp6.not.i = icmp eq i16 %115, 54
  br i1 %cmp6.not.i, label %land.lhs.true.i311.tls_fill_prepend.exit_crit_edge, label %if.then.i313

land.lhs.true.i311.tls_fill_prepend.exit_crit_edge: ; preds = %land.lhs.true.i311
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_fill_prepend.exit

if.then.i313:                                     ; preds = %land.lhs.true.i311
  call void @__sanitizer_cov_trace_pc() #12
  %add8.i = add i32 %add.i309, %conv.i
  %add.ptr.i312 = getelementptr i8, ptr %add.ptr, i32 5
  %tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 7
  %116 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tx.i, align 4
  %salt_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 6
  %118 = ptrtoint ptr %salt_size.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %salt_size.i, align 2
  %conv9.i = zext i16 %119 to i32
  %add.ptr10.i = getelementptr i8, ptr %117, i32 %conv9.i
  %120 = call ptr @memcpy(ptr %add.ptr.i312, ptr %add.ptr10.i, i32 %conv.i)
  br label %tls_fill_prepend.exit

tls_fill_prepend.exit:                            ; preds = %if.then.i313, %land.lhs.true.i311.tls_fill_prepend.exit_crit_edge, %sg_page.exit.tls_fill_prepend.exit_crit_edge
  %pkt_len.0.i = phi i32 [ %add8.i, %if.then.i313 ], [ %add.i309, %land.lhs.true.i311.tls_fill_prepend.exit_crit_edge ], [ %add.i309, %sg_page.exit.tls_fill_prepend.exit_crit_edge ]
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %122)
  %cmp13.i = icmp eq i16 %122, 772
  %spec.select.i314 = select i1 %cmp13.i, i8 23, i8 %record_type
  %123 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %spec.select.i314, ptr %add.ptr, align 1
  %arrayidx17.i = getelementptr i8, ptr %add.ptr, i32 1
  %124 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 3, ptr %arrayidx17.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %add.ptr, i32 2
  %125 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 3, ptr %arrayidx18.i, align 1
  %shr.i315 = lshr i32 %pkt_len.0.i, 8
  %conv19.i = trunc i32 %shr.i315 to i8
  %arrayidx20.i = getelementptr i8, ptr %add.ptr, i32 3
  %126 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv19.i, ptr %arrayidx20.i, align 1
  %conv21.i = trunc i32 %pkt_len.0.i to i8
  %arrayidx22.i = getelementptr i8, ptr %add.ptr, i32 4
  %127 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv21.i, ptr %arrayidx22.i, align 1
  %pending_open_record_frags = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 12
  %128 = ptrtoint ptr %pending_open_record_frags to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %pending_open_record_frags, align 1
  %129 = ptrtoint ptr %size111 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size111, align 4
  %131 = ptrtoint ptr %tail_size to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %tail_size, align 2
  %conv130 = zext i16 %132 to i32
  %add131 = add i32 %130, %conv130
  %133 = ptrtoint ptr %open_rec to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %open_rec, align 4
  %msg_encrypted.i = getelementptr inbounds %struct.tls_rec, ptr %134, i32 0, i32 4
  %cipher_type.i316 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 1
  %135 = ptrtoint ptr %cipher_type.i316 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %cipher_type.i316, align 2
  %137 = zext i16 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %136, label %tls_fill_prepend.exit.sw.epilog.i_crit_edge [
    i16 53, label %tls_fill_prepend.exit.sw.epilog.sink.split.i_crit_edge
    i16 56, label %tls_fill_prepend.exit.sw.epilog.sink.split.i_crit_edge328
  ]

tls_fill_prepend.exit.sw.epilog.sink.split.i_crit_edge328: ; preds = %tls_fill_prepend.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

tls_fill_prepend.exit.sw.epilog.sink.split.i_crit_edge: ; preds = %tls_fill_prepend.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

tls_fill_prepend.exit.sw.epilog.i_crit_edge:      ; preds = %tls_fill_prepend.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %tls_fill_prepend.exit.sw.epilog.sink.split.i_crit_edge, %tls_fill_prepend.exit.sw.epilog.sink.split.i_crit_edge328
  %iv_data2.i = getelementptr inbounds %struct.tls_rec, ptr %134, i32 0, i32 10
  %138 = ptrtoint ptr %iv_data2.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 2, ptr %iv_data2.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %tls_fill_prepend.exit.sw.epilog.i_crit_edge
  %iv_offset.0.i = phi i32 [ 0, %tls_fill_prepend.exit.sw.epilog.i_crit_edge ], [ 1, %sw.epilog.sink.split.i ]
  %iv_data4.i = getelementptr inbounds %struct.tls_rec, ptr %134, i32 0, i32 10
  %arrayidx5.i = getelementptr %struct.tls_rec, ptr %134, i32 0, i32 10, i32 %iv_offset.0.i
  %tx.i317 = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 7
  %139 = ptrtoint ptr %tx.i317 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tx.i317, align 4
  %141 = ptrtoint ptr %iv_size1.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %iv_size1.i, align 2
  %conv6.i = zext i16 %142 to i32
  %salt_size.i318 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 6
  %143 = ptrtoint ptr %salt_size.i318 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %salt_size.i318, align 2
  %conv7.i = zext i16 %144 to i32
  %add.i319 = add nuw nsw i32 %conv7.i, %conv6.i
  %145 = call ptr @memcpy(ptr %arrayidx5.i, ptr %140, i32 %add.i319)
  %add.ptr.i320 = getelementptr i8, ptr %iv_data4.i, i32 %iv_offset.0.i
  %146 = ptrtoint ptr %rec_seq to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rec_seq, align 4
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %149)
  %cmp.i.i = icmp eq i16 %149, 772
  br i1 %cmp.i.i, label %sw.epilog.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

sw.epilog.i.if.then.i.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %sw.epilog.i
  %150 = ptrtoint ptr %cipher_type.i316 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %cipher_type.i316, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %151)
  %cmp3.i.i = icmp eq i16 %151, 54
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.xor_iv_with_seq.exit.i_crit_edge

lor.lhs.false.i.i.xor_iv_with_seq.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xor_iv_with_seq.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %sw.epilog.i.if.then.i.i_crit_edge
  %152 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %147, align 1
  %arrayidx8.i.i = getelementptr i8, ptr %add.ptr.i320, i32 4
  %154 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx8.i.i, align 1
  %xor15.i.i = xor i8 %155, %153
  store i8 %xor15.i.i, ptr %arrayidx8.i.i, align 1
  %arrayidx.1.i.i = getelementptr i8, ptr %147, i32 1
  %156 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx8.1.i.i = getelementptr i8, ptr %add.ptr.i320, i32 5
  %158 = ptrtoint ptr %arrayidx8.1.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx8.1.i.i, align 1
  %xor15.1.i.i = xor i8 %159, %157
  store i8 %xor15.1.i.i, ptr %arrayidx8.1.i.i, align 1
  %arrayidx.2.i.i = getelementptr i8, ptr %147, i32 2
  %160 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.2.i.i, align 1
  %arrayidx8.2.i.i = getelementptr i8, ptr %add.ptr.i320, i32 6
  %162 = ptrtoint ptr %arrayidx8.2.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx8.2.i.i, align 1
  %xor15.2.i.i = xor i8 %163, %161
  store i8 %xor15.2.i.i, ptr %arrayidx8.2.i.i, align 1
  %arrayidx.3.i.i = getelementptr i8, ptr %147, i32 3
  %164 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx8.3.i.i = getelementptr i8, ptr %add.ptr.i320, i32 7
  %166 = ptrtoint ptr %arrayidx8.3.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx8.3.i.i, align 1
  %xor15.3.i.i = xor i8 %167, %165
  store i8 %xor15.3.i.i, ptr %arrayidx8.3.i.i, align 1
  %arrayidx.4.i.i = getelementptr i8, ptr %147, i32 4
  %168 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.4.i.i, align 1
  %arrayidx8.4.i.i = getelementptr i8, ptr %add.ptr.i320, i32 8
  %170 = ptrtoint ptr %arrayidx8.4.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx8.4.i.i, align 1
  %xor15.4.i.i = xor i8 %171, %169
  store i8 %xor15.4.i.i, ptr %arrayidx8.4.i.i, align 1
  %arrayidx.5.i.i = getelementptr i8, ptr %147, i32 5
  %172 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.5.i.i, align 1
  %arrayidx8.5.i.i = getelementptr i8, ptr %add.ptr.i320, i32 9
  %174 = ptrtoint ptr %arrayidx8.5.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx8.5.i.i, align 1
  %xor15.5.i.i = xor i8 %175, %173
  store i8 %xor15.5.i.i, ptr %arrayidx8.5.i.i, align 1
  %arrayidx.6.i.i = getelementptr i8, ptr %147, i32 6
  %176 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.6.i.i, align 1
  %arrayidx8.6.i.i = getelementptr i8, ptr %add.ptr.i320, i32 10
  %178 = ptrtoint ptr %arrayidx8.6.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx8.6.i.i, align 1
  %xor15.6.i.i = xor i8 %179, %177
  store i8 %xor15.6.i.i, ptr %arrayidx8.6.i.i, align 1
  %arrayidx.7.i.i = getelementptr i8, ptr %147, i32 7
  %180 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx.7.i.i, align 1
  %arrayidx8.7.i.i = getelementptr i8, ptr %add.ptr.i320, i32 11
  %182 = ptrtoint ptr %arrayidx8.7.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx8.7.i.i, align 1
  %xor15.7.i.i = xor i8 %183, %181
  store i8 %xor15.7.i.i, ptr %arrayidx8.7.i.i, align 1
  br label %xor_iv_with_seq.exit.i

xor_iv_with_seq.exit.i:                           ; preds = %if.then.i.i, %lor.lhs.false.i.i.xor_iv_with_seq.exit.i_crit_edge
  %prepend_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 2
  %184 = ptrtoint ptr %prepend_size.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %prepend_size.i, align 2
  %conv10.i = zext i16 %185 to i32
  %offset.i = getelementptr %struct.sk_msg_sg, ptr %msg_encrypted.i, i32 0, i32 6, i32 %74, i32 1
  %186 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %offset.i, align 4
  %add11.i = add i32 %187, %conv10.i
  store i32 %add11.i, ptr %offset.i, align 4
  %188 = load i16, ptr %prepend_size.i, align 2
  %conv13.i = zext i16 %188 to i32
  %length.i = getelementptr %struct.sk_msg_sg, ptr %msg_encrypted.i, i32 0, i32 6, i32 %74, i32 2
  %189 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %length.i, align 4
  %sub.i321 = sub i32 %190, %conv13.i
  store i32 %sub.i321, ptr %length.i, align 4
  %curr.i = getelementptr inbounds %struct.tls_rec, ptr %134, i32 0, i32 4, i32 0, i32 1
  %191 = ptrtoint ptr %curr.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %74, ptr %curr.i, align 4
  %192 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %3, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %193, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 12, i32 0, i32 3
  %194 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %aad_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 8
  %195 = ptrtoint ptr %aad_size.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %aad_size.i, align 2
  %conv14.i322 = zext i16 %196 to i32
  %assoclen1.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 12, i32 1
  %197 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %conv14.i322, ptr %assoclen1.i.i, align 8
  %sg_aead_in.i = getelementptr inbounds %struct.tls_rec, ptr %134, i32 0, i32 5
  %sg_aead_out.i = getelementptr inbounds %struct.tls_rec, ptr %134, i32 0, i32 6
  %src1.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 12, i32 4
  %198 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %sg_aead_in.i, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 12, i32 5
  %199 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %sg_aead_out.i, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 12, i32 2
  %200 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %add131, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 12, i32 3
  %201 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %iv_data4.i, ptr %iv4.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 12, i32 0, i32 1
  %202 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @tls_encrypt_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 12, i32 0, i32 2
  %203 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %sk, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.tls_rec, ptr %5, i32 0, i32 12, i32 0, i32 4
  %204 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 1024, ptr %flags4.i.i, align 4
  %tx_list.i = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 4, i32 1
  %205 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %prev.i.i, align 4
  %call.i.i95.i = tail call zeroext i1 @__list_add_valid(ptr noundef %134, ptr noundef %206, ptr noundef %tx_list.i) #10
  br i1 %call.i.i95.i, label %if.end.i.i.i, label %xor_iv_with_seq.exit.i.list_add_tail.exit.i_crit_edge

xor_iv_with_seq.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %xor_iv_with_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %xor_iv_with_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %207 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %134, ptr %prev.i.i, align 4
  %208 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %tx_list.i, ptr %134, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %209 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %206, ptr %prev3.i.i.i, align 4
  %210 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile ptr %134, ptr %206, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %xor_iv_with_seq.exit.i.list_add_tail.exit.i_crit_edge
  %encrypt_pending.i = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %encrypt_pending.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %encrypt_pending.i, i32 1, i32 3, i32 1) #10
  %211 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %encrypt_pending.i, ptr %encrypt_pending.i, i32 1, ptr elementtype(i32) %encrypt_pending.i) #10, !srcloc !67
  %call19.i = tail call i32 @crypto_aead_encrypt(ptr noundef %aead_req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call19.i)
  %cmp.not.i323 = icmp eq i32 %call19.i, -115
  br i1 %cmp.not.i323, label %list_add_tail.exit.i.if.end43.i_crit_edge, label %if.end.thread.i

list_add_tail.exit.i.if.end43.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.end.thread.i:                                  ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not.i = icmp eq i32 %call19.i, 0
  %call.i.i94.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %encrypt_pending.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %encrypt_pending.i, i32 1, i32 3, i32 1) #10
  %212 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %encrypt_pending.i, ptr %encrypt_pending.i, i32 1, ptr elementtype(i32) %encrypt_pending.i) #10, !srcloc !68
  %213 = ptrtoint ptr %prepend_size.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %prepend_size.i, align 2
  %conv23.i = zext i16 %214 to i32
  %215 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %offset.i, align 4
  %sub25.i = sub i32 %216, %conv23.i
  store i32 %sub25.i, ptr %offset.i, align 4
  %217 = load i16, ptr %prepend_size.i, align 2
  %conv27.i = zext i16 %217 to i32
  %218 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %length.i, align 4
  %add29.i = add i32 %219, %conv27.i
  store i32 %add29.i, ptr %length.i, align 4
  br i1 %tobool.not.i, label %do.body33.i, label %if.then40.i

do.body33.i:                                      ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_ready.i = getelementptr inbounds %struct.tls_rec, ptr %134, i32 0, i32 1
  %220 = ptrtoint ptr %tx_ready.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile i32 1, ptr %tx_ready.i, align 8
  br label %if.end43.i

if.then40.i:                                      ; preds = %if.end.thread.i
  %call.i.i96.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %134) #10
  br i1 %call.i.i96.i, label %if.end.i.i97.i, label %if.then40.i.tls_do_encryption.exit.thread_crit_edge

if.then40.i.tls_do_encryption.exit.thread_crit_edge: ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_do_encryption.exit.thread

if.end.i.i97.i:                                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %221 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %prev.i.i.i, align 4
  %223 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %134, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %222, ptr %prev1.i.i.i.i, align 4
  %226 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %226)
  store volatile ptr %224, ptr %222, align 4
  br label %tls_do_encryption.exit.thread

if.end43.i:                                       ; preds = %do.body33.i, %list_add_tail.exit.i.if.end43.i_crit_edge
  %227 = ptrtoint ptr %open_rec to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %open_rec, align 4
  %228 = ptrtoint ptr %rec_seq to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rec_seq, align 4
  %rec_seq_size.i.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 7
  %230 = ptrtoint ptr %rec_seq_size.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %rec_seq_size.i.i, align 2
  %conv.i.i = zext i16 %231 to i32
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end43.i
  %i.0.in.i.i.i = phi i32 [ %conv.i.i, %if.end43.i ], [ %i.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %i.0.in.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %if.then.i99.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %i.0.i.i.i = add nsw i32 %i.0.in.i.i.i, -1
  %arrayidx.i.i.i = getelementptr i8, ptr %229, i32 %i.0.i.i.i
  %232 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx.i.i.i, align 1
  %inc.i.i.i = add i8 %233, 1
  store i8 %inc.i.i.i, ptr %arrayidx.i.i.i, align 1
  %cmp2.not.i.i.i = icmp eq i8 %inc.i.i.i, 0
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge, label %for.body.i.i.i.if.end.i.i_crit_edge

for.body.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i

if.then.i99.i:                                    ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tls_err_abort(ptr noundef %sk, i32 noundef -74) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i99.i, %for.body.i.i.i.if.end.i.i_crit_edge
  %234 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %235)
  %cmp.not.i.i = icmp eq i16 %235, 772
  br i1 %cmp.not.i.i, label %if.end.i.i.tls_do_encryption.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.i.tls_do_encryption.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_do_encryption.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %236 = ptrtoint ptr %cipher_type.i316 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %cipher_type.i316, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %237)
  %cmp4.not.i.i = icmp eq i16 %237, 54
  br i1 %cmp4.not.i.i, label %land.lhs.true.i.i.tls_do_encryption.exit_crit_edge, label %if.then6.i.i

land.lhs.true.i.i.tls_do_encryption.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_do_encryption.exit

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  %238 = ptrtoint ptr %tx.i317 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %tx.i317, align 4
  %240 = ptrtoint ptr %salt_size.i318 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %salt_size.i318, align 2
  %conv7.i.i = zext i16 %241 to i32
  %add.ptr.i.i = getelementptr i8, ptr %239, i32 %conv7.i.i
  %242 = ptrtoint ptr %iv_size1.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %iv_size1.i, align 2
  %conv8.i.i = zext i16 %243 to i32
  br label %for.cond.i19.i.i

for.cond.i19.i.i:                                 ; preds = %for.body.i23.i.i.for.cond.i19.i.i_crit_edge, %if.then6.i.i
  %i.0.in.i16.i.i = phi i32 [ %conv8.i.i, %if.then6.i.i ], [ %i.0.i17.i.i, %for.body.i23.i.i.for.cond.i19.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i16.i.i)
  %cmp.i18.i.i = icmp sgt i32 %i.0.in.i16.i.i, 0
  br i1 %cmp.i18.i.i, label %for.body.i23.i.i, label %for.cond.i19.i.i.tls_do_encryption.exit_crit_edge

for.cond.i19.i.i.tls_do_encryption.exit_crit_edge: ; preds = %for.cond.i19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_do_encryption.exit

for.body.i23.i.i:                                 ; preds = %for.cond.i19.i.i
  %i.0.i17.i.i = add nsw i32 %i.0.in.i16.i.i, -1
  %arrayidx.i20.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %i.0.i17.i.i
  %244 = ptrtoint ptr %arrayidx.i20.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx.i20.i.i, align 1
  %inc.i21.i.i = add i8 %245, 1
  store i8 %inc.i21.i.i, ptr %arrayidx.i20.i.i, align 1
  %cmp2.not.i22.i.i = icmp eq i8 %inc.i21.i.i, 0
  br i1 %cmp2.not.i22.i.i, label %for.body.i23.i.i.for.cond.i19.i.i_crit_edge, label %for.body.i23.i.i.tls_do_encryption.exit_crit_edge

for.body.i23.i.i.tls_do_encryption.exit_crit_edge: ; preds = %for.body.i23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_do_encryption.exit

for.body.i23.i.i.for.cond.i19.i.i_crit_edge:      ; preds = %for.body.i23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i19.i.i

tls_do_encryption.exit:                           ; preds = %for.body.i23.i.i.tls_do_encryption.exit_crit_edge, %for.cond.i19.i.i.tls_do_encryption.exit_crit_edge, %land.lhs.true.i.i.tls_do_encryption.exit_crit_edge, %if.end.i.i.tls_do_encryption.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp133 = icmp slt i32 %call19.i, 0
  br i1 %cmp133, label %if.then135, label %tls_do_encryption.exit.if.else144_crit_edge

tls_do_encryption.exit.if.else144_crit_edge:      ; preds = %tls_do_encryption.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else144

tls_do_encryption.exit.thread:                    ; preds = %if.end.i.i97.i, %if.then40.i.tls_do_encryption.exit.thread_crit_edge
  %246 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr inttoptr (i32 256 to ptr), ptr %134, align 4
  %prev.i98.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %247 = ptrtoint ptr %prev.i98.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i98.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp133326 = icmp slt i32 %call19.i, 0
  br i1 %cmp133326, label %tls_do_encryption.exit.thread.if.then138_crit_edge, label %tls_do_encryption.exit.thread.if.else144_crit_edge

tls_do_encryption.exit.thread.if.else144_crit_edge: ; preds = %tls_do_encryption.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else144

tls_do_encryption.exit.thread.if.then138_crit_edge: ; preds = %tls_do_encryption.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then138

if.then135:                                       ; preds = %tls_do_encryption.exit
  br i1 %cmp.not.i323, label %if.then135.if.end143_crit_edge, label %if.then135.if.then138_crit_edge

if.then135.if.then138_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then138

if.then135.if.end143_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then138:                                       ; preds = %if.then135.if.then138_crit_edge, %tls_do_encryption.exit.thread.if.then138_crit_edge
  tail call void @tls_err_abort(ptr noundef %sk, i32 noundef -74)
  br i1 %split.2.off0, label %if.then140, label %if.then138.if.end143_crit_edge

if.then138.if.end143_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then140:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  %248 = ptrtoint ptr %pending_open_record_frags to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 1, ptr %pending_open_record_frags, align 1
  %249 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %tmp, align 4
  %251 = ptrtoint ptr %orig_end to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %orig_end, align 4
  tail call fastcc void @tls_merge_open_record(ptr noundef %sk, ptr noundef %5, ptr noundef %250, i32 noundef %252)
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.then138.if.end143_crit_edge, %if.then135.if.end143_crit_edge
  %async_capable = getelementptr inbounds %struct.tls_sw_context_tx, ptr %3, i32 0, i32 8
  %253 = ptrtoint ptr %async_capable to i32
  call void @__asan_load1_noabort(i32 %253)
  %bf.load = load i8, ptr %async_capable, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %async_capable, align 4
  br label %cleanup

if.else144:                                       ; preds = %tls_do_encryption.exit.thread.if.else144_crit_edge, %tls_do_encryption.exit.if.else144_crit_edge
  br i1 %split.2.off0, label %if.then146, label %if.else144.if.end157_crit_edge

if.else144.if.end157_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

if.then146:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #12
  %254 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %tmp, align 4
  %msg_encrypted148 = getelementptr inbounds %struct.tls_rec, ptr %255, i32 0, i32 4
  %size150 = getelementptr inbounds %struct.tls_rec, ptr %255, i32 0, i32 3, i32 0, i32 3
  %256 = ptrtoint ptr %size150 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %size150, align 4
  %overhead_size151 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 4
  %258 = ptrtoint ptr %overhead_size151 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %overhead_size151, align 2
  %conv152 = zext i16 %259 to i32
  %add153 = add i32 %257, %conv152
  tail call void @sk_msg_trim(ptr noundef %sk, ptr noundef %msg_encrypted148, i32 noundef %add153) #10
  %260 = ptrtoint ptr %pending_open_record_frags to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 1, ptr %pending_open_record_frags, align 1
  %261 = ptrtoint ptr %open_rec to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %255, ptr %open_rec, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then146, %if.else144.if.end157_crit_edge
  %call158 = tail call i32 @tls_tx_records(ptr noundef %sk, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.end143, %if.then28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19.i, %if.end143 ], [ %call158, %if.end157 ], [ 0, %entry.cleanup_crit_edge ], [ %call31, %if.then28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig_end) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_psock_msg_verdict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_msg_return_zero(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_bpf_sendmsg_redir(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_free_nocharge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_msg_free_partial(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tls_split_open_record(ptr noundef %sk, ptr nocapture noundef writeonly %to, ptr nocapture noundef %msg_opl, i32 noundef %tx_overhead_size, ptr nocapture noundef %orig_end) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %apply_bytes = getelementptr inbounds %struct.sk_msg, ptr %msg_opl, i32 0, i32 3
  %0 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %apply_bytes, align 4
  %size = getelementptr inbounds %struct.sk_msg_sg, ptr %msg_opl, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %call = tail call fastcc ptr @tls_get_rec(ptr noundef %sk)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_encrypted = getelementptr inbounds %struct.tls_rec, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %add = add i32 %5, %tx_overhead_size
  %call3 = tail call i32 @sk_msg_alloc(ptr noundef %sk, ptr noundef %msg_encrypted, i32 noundef %add, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_encrypted) #10
  %msg_plaintext.i = getelementptr inbounds %struct.tls_rec, ptr %call, i32 0, i32 3
  %call1.i = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_plaintext.i) #10
  tail call void @kfree(ptr noundef nonnull %call) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %end = getelementptr inbounds %struct.sk_msg_sg, ptr %msg_opl, i32 0, i32 2
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  %8 = ptrtoint ptr %orig_end to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %orig_end, align 4
  %9 = ptrtoint ptr %msg_opl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_opl, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.body.while.cond_crit_edge, %if.end5
  %tmp.sroa.0.0 = phi i32 [ 0, %if.end5 ], [ %tmp.sroa.0.1, %do.body.while.cond_crit_edge ]
  %tmp.sroa.6.0 = phi i32 [ 0, %if.end5 ], [ %tmp.sroa.6.1, %do.body.while.cond_crit_edge ]
  %tmp.sroa.7.0 = phi i32 [ 0, %if.end5 ], [ %tmp.sroa.7.1, %do.body.while.cond_crit_edge ]
  %i.0 = phi i32 [ %10, %if.end5 ], [ %spec.store.select, %do.body.while.cond_crit_edge ]
  %bytes.0 = phi i32 [ 0, %if.end5 ], [ %bytes.1, %do.body.while.cond_crit_edge ]
  %apply.0 = phi i32 [ %1, %if.end5 ], [ %apply.1, %do.body.while.cond_crit_edge ]
  %sge.0 = getelementptr %struct.sk_msg_sg, ptr %msg_opl, i32 0, i32 6, i32 %i.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %apply.0)
  %tobool9.not = icmp eq i32 %apply.0, 0
  br i1 %tobool9.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %length = getelementptr %struct.sk_msg_sg, ptr %msg_opl, i32 0, i32 6, i32 %i.0, i32 2
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %apply.0)
  %cmp12 = icmp ugt i32 %12, %apply.0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %while.body
  %sub = sub i32 %12, %apply.0
  %13 = ptrtoint ptr %sge.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sge.0, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !55

do.body2.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

sg_page.exit:                                     ; preds = %if.then13
  %and.i = and i32 %14, -4
  %15 = inttoptr i32 %and.i to ptr
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i1 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1)
  %tobool.not.i.i = icmp eq i32 %and.i.i1, 0
  br i1 %tobool.not.i.i, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !55

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %18, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %15, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %19 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %20, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !56

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.13) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !84
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@tls_split_open_record, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !74

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %.pre-phi, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %22 = ptrtoint ptr %sge.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sge.0, align 4
  %and.i.i2 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2)
  %tobool.i.not.i3 = icmp eq i32 %and.i.i2, 0
  br i1 %tobool.i.not.i3, label %sg_page.exit6, label %do.body2.i4, !prof !55

do.body2.i4:                                      ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

sg_page.exit6:                                    ; preds = %get_page.exit
  %and.i.i.i = and i32 %tmp.sroa.0.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !55

do.body19.i.i:                                    ; preds = %sg_page.exit6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit6
  call void @__sanitizer_cov_trace_pc() #12
  %offset = getelementptr %struct.sk_msg_sg, ptr %msg_opl, i32 0, i32 6, i32 %i.0, i32 1
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %add17 = add i32 %25, %apply.0
  %and.i5 = and i32 %23, -4
  %and.i.i7 = and i32 %tmp.sroa.0.0, 3
  %or.i.i = or i32 %and.i5, %and.i.i7
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %apply.0, ptr %length, align 4
  br label %do.body

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub21 = sub i32 %apply.0, %12
  br label %do.body

do.body:                                          ; preds = %if.else, %sg_set_page.exit
  %tmp.sroa.0.1 = phi i32 [ %or.i.i, %sg_set_page.exit ], [ %tmp.sroa.0.0, %if.else ]
  %tmp.sroa.6.1 = phi i32 [ %add17, %sg_set_page.exit ], [ %tmp.sroa.6.0, %if.else ]
  %tmp.sroa.7.1 = phi i32 [ %sub, %sg_set_page.exit ], [ %tmp.sroa.7.0, %if.else ]
  %apply.0.pn = phi i32 [ %apply.0, %sg_set_page.exit ], [ %12, %if.else ]
  %apply.1 = phi i32 [ 0, %sg_set_page.exit ], [ %sub21, %if.else ]
  %bytes.1 = add i32 %apply.0.pn, %bytes.0
  %inc = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc)
  %cmp25 = icmp eq i32 %inc, 18
  %spec.store.select = select i1 %cmp25, i32 0, i32 %inc
  %27 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end, align 4
  %cmp30 = icmp eq i32 %spec.store.select, %28
  br i1 %cmp30, label %do.body.while.end_crit_edge, label %do.body.while.cond_crit_edge

do.body.while.cond_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %tmp.sroa.0.2 = phi i32 [ %tmp.sroa.0.0, %while.cond.while.end_crit_edge ], [ %tmp.sroa.0.0, %land.rhs.while.end_crit_edge ], [ %tmp.sroa.0.1, %do.body.while.end_crit_edge ]
  %tmp.sroa.6.2 = phi i32 [ %tmp.sroa.6.0, %while.cond.while.end_crit_edge ], [ %tmp.sroa.6.0, %land.rhs.while.end_crit_edge ], [ %tmp.sroa.6.1, %do.body.while.end_crit_edge ]
  %tmp.sroa.7.2 = phi i32 [ %tmp.sroa.7.0, %while.cond.while.end_crit_edge ], [ %tmp.sroa.7.0, %land.rhs.while.end_crit_edge ], [ %tmp.sroa.7.1, %do.body.while.end_crit_edge ]
  %i.1 = phi i32 [ %i.0, %while.cond.while.end_crit_edge ], [ %i.0, %land.rhs.while.end_crit_edge ], [ %spec.store.select, %do.body.while.end_crit_edge ]
  %bytes.2 = phi i32 [ %bytes.0, %while.cond.while.end_crit_edge ], [ %bytes.0, %land.rhs.while.end_crit_edge ], [ %bytes.1, %do.body.while.end_crit_edge ]
  %apply.2 = phi i32 [ 0, %while.cond.while.end_crit_edge ], [ %apply.0, %land.rhs.while.end_crit_edge ], [ %apply.1, %do.body.while.end_crit_edge ]
  %29 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.1, ptr %end, align 4
  %curr = getelementptr inbounds %struct.sk_msg_sg, ptr %msg_opl, i32 0, i32 1
  %30 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.1, ptr %curr, align 4
  %copybreak = getelementptr inbounds %struct.sk_msg_sg, ptr %msg_opl, i32 0, i32 4
  %31 = ptrtoint ptr %copybreak to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %copybreak, align 4
  %32 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %apply_bytes, align 4
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %bytes.2, ptr %size, align 4
  %msg_plaintext = getelementptr inbounds %struct.tls_rec, ptr %call, i32 0, i32 3
  %apply_bytes41 = getelementptr inbounds %struct.tls_rec, ptr %call, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %apply_bytes41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %apply.2, ptr %apply_bytes41, align 4
  %sub42 = sub i32 %3, %bytes.2
  %size44 = getelementptr inbounds %struct.tls_rec, ptr %call, i32 0, i32 3, i32 0, i32 3
  %35 = ptrtoint ptr %size44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub42, ptr %size44, align 4
  %36 = ptrtoint ptr %msg_plaintext to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_plaintext, align 4
  %arrayidx.i9 = getelementptr %struct.sk_msg_sg, ptr %msg_plaintext, i32 0, i32 6, i32 %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.sroa.7.2)
  %tobool49.not = icmp eq i32 %tmp.sroa.7.2, 0
  br i1 %tobool49.not, label %while.end.if.end59_crit_edge, label %if.then50

while.end.if.end59_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then50:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %tmp.sroa.0.2, ptr %arrayidx.i9, align 4
  %tmp.sroa.6.0.arrayidx.i9.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i9, i32 4
  %39 = ptrtoint ptr %tmp.sroa.6.0.arrayidx.i9.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %tmp.sroa.6.2, ptr %tmp.sroa.6.0.arrayidx.i9.sroa_idx, align 4
  %tmp.sroa.7.0.arrayidx.i9.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i9, i32 8
  %40 = ptrtoint ptr %tmp.sroa.7.0.arrayidx.i9.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %tmp.sroa.7.2, ptr %tmp.sroa.7.0.arrayidx.i9.sroa_idx, align 4
  %tmp.sroa.9.0.arrayidx.i9.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i9, i32 12
  %41 = ptrtoint ptr %tmp.sroa.9.0.arrayidx.i9.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %tmp.sroa.9.0.arrayidx.i9.sroa_idx, align 4
  %inc52 = add i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc52)
  %cmp53 = icmp eq i32 %inc52, 18
  %spec.store.select103 = select i1 %cmp53, i32 0, i32 %inc52
  %arrayidx.i10 = getelementptr %struct.sk_msg_sg, ptr %msg_plaintext, i32 0, i32 6, i32 %spec.store.select103
  br label %if.end59

if.end59:                                         ; preds = %if.then50, %while.end.if.end59_crit_edge
  %j.0 = phi i32 [ %spec.store.select103, %if.then50 ], [ %37, %while.end.if.end59_crit_edge ]
  %nsge.0 = phi ptr [ %arrayidx.i10, %if.then50 ], [ %arrayidx.i9, %while.end.if.end59_crit_edge ]
  %length6219 = getelementptr %struct.sk_msg_sg, ptr %msg_opl, i32 0, i32 6, i32 %i.1, i32 2
  %42 = ptrtoint ptr %length6219 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length6219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool63.not20 = icmp eq i32 %43, 0
  br i1 %tobool63.not20, label %if.end59.while.end84_crit_edge, label %if.end59.while.body64_crit_edge

if.end59.while.body64_crit_edge:                  ; preds = %if.end59
  br label %while.body64

if.end59.while.end84_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end84

while.body64:                                     ; preds = %if.end81.while.body64_crit_edge, %if.end59.while.body64_crit_edge
  %nsge.123 = phi ptr [ %arrayidx.i14, %if.end81.while.body64_crit_edge ], [ %nsge.0, %if.end59.while.body64_crit_edge ]
  %j.122 = phi i32 [ %spec.store.select102, %if.end81.while.body64_crit_edge ], [ %j.0, %if.end59.while.body64_crit_edge ]
  %i.221 = phi i32 [ %spec.store.select104, %if.end81.while.body64_crit_edge ], [ %i.1, %if.end59.while.body64_crit_edge ]
  %osge.0 = getelementptr %struct.sk_msg_sg, ptr %msg_opl, i32 0, i32 6, i32 %i.221
  %44 = call ptr @memcpy(ptr %nsge.123, ptr %osge.0, i32 20)
  %45 = ptrtoint ptr %nsge.123 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nsge.123, align 4
  %and.i12 = and i32 %46, -3
  store i32 %and.i12, ptr %nsge.123, align 4
  %inc66 = add i32 %i.221, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc66)
  %cmp67 = icmp eq i32 %inc66, 18
  %spec.store.select104 = select i1 %cmp67, i32 0, i32 %inc66
  %inc73 = add i32 %j.122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc73)
  %cmp74 = icmp eq i32 %inc73, 18
  %spec.store.select102 = select i1 %cmp74, i32 0, i32 %inc73
  %47 = ptrtoint ptr %orig_end to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %orig_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select104, i32 %48)
  %cmp79 = icmp eq i32 %spec.store.select104, %48
  br i1 %cmp79, label %while.body64.while.end84_crit_edge, label %if.end81

while.body64.while.end84_crit_edge:               ; preds = %while.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end84

if.end81:                                         ; preds = %while.body64
  %arrayidx.i14 = getelementptr %struct.sk_msg_sg, ptr %msg_plaintext, i32 0, i32 6, i32 %spec.store.select102
  %length62 = getelementptr %struct.sk_msg_sg, ptr %msg_opl, i32 0, i32 6, i32 %spec.store.select104, i32 2
  %49 = ptrtoint ptr %length62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length62, align 4
  %tobool63.not = icmp eq i32 %50, 0
  br i1 %tobool63.not, label %if.end81.while.end84_crit_edge, label %if.end81.while.body64_crit_edge

if.end81.while.body64_crit_edge:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body64

if.end81.while.end84_crit_edge:                   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end84

while.end84:                                      ; preds = %if.end81.while.end84_crit_edge, %while.body64.while.end84_crit_edge, %if.end59.while.end84_crit_edge
  %j.2 = phi i32 [ %j.0, %if.end59.while.end84_crit_edge ], [ %spec.store.select102, %while.body64.while.end84_crit_edge ], [ %spec.store.select102, %if.end81.while.end84_crit_edge ]
  %end86 = getelementptr inbounds %struct.tls_rec, ptr %call, i32 0, i32 3, i32 0, i32 2
  %51 = ptrtoint ptr %end86 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %j.2, ptr %end86, align 4
  %curr88 = getelementptr inbounds %struct.tls_rec, ptr %call, i32 0, i32 3, i32 0, i32 1
  %52 = ptrtoint ptr %curr88 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %j.2, ptr %curr88, align 4
  %copybreak90 = getelementptr inbounds %struct.tls_rec, ptr %call, i32 0, i32 3, i32 0, i32 4
  %53 = ptrtoint ptr %copybreak90 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %copybreak90, align 4
  %54 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call, ptr %to, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end84, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then4 ], [ 0, %while.end84 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tls_merge_open_record(ptr noundef %sk, ptr noundef %to, ptr noundef %from, i32 noundef %orig_end) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_plaintext = getelementptr inbounds %struct.tls_rec, ptr %from, i32 0, i32 3
  %msg_plaintext1 = getelementptr inbounds %struct.tls_rec, ptr %to, i32 0, i32 3
  %end = getelementptr inbounds %struct.tls_rec, ptr %to, i32 0, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %dec = add i32 %1, -1
  %i.0 = select i1 %cmp, i32 17, i32 %dec
  %2 = ptrtoint ptr %msg_plaintext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_plaintext, align 4
  %arrayidx.i = getelementptr %struct.sk_msg_sg, ptr %msg_plaintext1, i32 0, i32 6, i32 %i.0
  %arrayidx.i54 = getelementptr %struct.sk_msg_sg, ptr %msg_plaintext, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !55

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

sg_page.exit:                                     ; preds = %entry
  %6 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i54, align 4
  %and.i.i55 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool.i.not.i56 = icmp eq i32 %and.i.i55, 0
  br i1 %tobool.i.not.i56, label %sg_page.exit59, label %do.body2.i57, !prof !55

do.body2.i57:                                     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

sg_page.exit59:                                   ; preds = %sg_page.exit
  %and.i = and i32 %5, -4
  %8 = inttoptr i32 %and.i to ptr
  %and.i58 = and i32 %7, -4
  %9 = inttoptr i32 %and.i58 to ptr
  %cmp6 = icmp eq ptr %8, %9
  br i1 %cmp6, label %land.lhs.true, label %sg_page.exit59.if.end14_crit_edge

sg_page.exit59.if.end14_crit_edge:                ; preds = %sg_page.exit59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %sg_page.exit59
  %offset = getelementptr %struct.sk_msg_sg, ptr %msg_plaintext1, i32 0, i32 6, i32 %i.0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %length = getelementptr %struct.sk_msg_sg, ptr %msg_plaintext1, i32 0, i32 6, i32 %i.0, i32 2
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  %add = add i32 %13, %11
  %offset7 = getelementptr %struct.sk_msg_sg, ptr %msg_plaintext, i32 0, i32 6, i32 %3, i32 1
  %14 = ptrtoint ptr %offset7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp8 = icmp eq i32 %add, %15
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  %length10 = getelementptr %struct.sk_msg_sg, ptr %msg_plaintext, i32 0, i32 6, i32 %3, i32 2
  %16 = ptrtoint ptr %length10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length10, align 4
  %add12 = add i32 %17, %13
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add12, ptr %length, align 4
  %19 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i54, align 4
  %and.i.i60 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i60)
  %tobool.i.not.i61 = icmp eq i32 %and.i.i60, 0
  br i1 %tobool.i.not.i61, label %sg_page.exit64, label %do.body2.i62, !prof !55

do.body2.i62:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

sg_page.exit64:                                   ; preds = %if.then9
  %and.i63 = and i32 %20, -4
  %21 = inttoptr i32 %and.i63 to ptr
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i65 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool.not.i.i = icmp eq i32 %and.i.i65, 0
  br i1 %tobool.not.i.i, label %sg_page.exit64._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !55

sg_page.exit64._compound_head.exit.i_crit_edge:   ; preds = %sg_page.exit64
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit64
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %24, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit64._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %21, %sg_page.exit64._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %25 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i.i.i = icmp eq i32 %26, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !56

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.14) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@tls_merge_open_record, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !74

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end14_crit_edge

folio_put_testzero.exit.i.i.if.end14_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %.pre-phi) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %sg_page.exit59.if.end14_crit_edge
  %28 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %orig_end, ptr %end, align 4
  %curr = getelementptr inbounds %struct.tls_rec, ptr %to, i32 0, i32 3, i32 0, i32 1
  %29 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %orig_end, ptr %curr, align 4
  %copybreak = getelementptr inbounds %struct.tls_rec, ptr %to, i32 0, i32 3, i32 0, i32 4
  %30 = ptrtoint ptr %copybreak to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %copybreak, align 4
  %size = getelementptr inbounds %struct.tls_rec, ptr %to, i32 0, i32 3, i32 0, i32 3
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  %size21 = getelementptr inbounds %struct.tls_rec, ptr %from, i32 0, i32 3, i32 0, i32 3
  %33 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size21, align 4
  %add22 = add i32 %34, %32
  %apply_bytes = getelementptr inbounds %struct.tls_rec, ptr %to, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add22, ptr %apply_bytes, align 4
  %36 = load i32, ptr %size21, align 4
  %add27 = add i32 %36, %32
  store i32 %add27, ptr %size, align 4
  %msg_encrypted = getelementptr inbounds %struct.tls_rec, ptr %to, i32 0, i32 4
  %call28 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg_encrypted) #10
  %msg_encrypted30 = getelementptr inbounds %struct.tls_rec, ptr %from, i32 0, i32 4
  %37 = call ptr @memcpy(ptr %msg_encrypted, ptr %msg_encrypted30, i32 444)
  %38 = call ptr @memset(ptr %msg_encrypted30, i32 0, i32 444)
  %arrayidx.i.i.i = getelementptr %struct.tls_rec, ptr %from, i32 0, i32 4, i32 0, i32 6, i32 17
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %arrayidx.i.i.i, align 4
  tail call void @kfree(ptr noundef %from) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_encrypt_done(ptr noundef %req, i32 noundef %err) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_ctx_tx.i, align 4
  %msg_encrypted = getelementptr i8, ptr %req, i32 -692
  %curr = getelementptr i8, ptr %req, i32 -688
  %6 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr, align 4
  %arrayidx.i = getelementptr %struct.sk_msg_sg, ptr %msg_encrypted, i32 0, i32 6, i32 %7
  %prepend_size = getelementptr inbounds %struct.tls_prot_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %prepend_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %prepend_size, align 2
  %conv = zext i16 %9 to i32
  %offset = getelementptr inbounds %struct.scatterlist, ptr %arrayidx.i, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %sub = sub i32 %11, %conv
  store i32 %sub, ptr %offset, align 4
  %12 = load i16, ptr %prepend_size, align 2
  %conv4 = zext i16 %12 to i32
  %length = getelementptr inbounds %struct.scatterlist, ptr %arrayidx.i, i32 0, i32 2
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %add = add i32 %14, %conv4
  store i32 %add, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %req, i32 -1152
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %15 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %if.end14, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %sk_err6 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %17 = ptrtoint ptr %sk_err6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_err6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not = icmp eq i32 %18, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %sub10 = sub i32 0, %18
  %err11 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %5, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %err11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub10, ptr %err11, align 4
  br label %if.end38

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %err13 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %5, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %err13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %err, ptr %err13, align 4
  tail call void @tls_err_abort(ptr noundef %1, i32 noundef %err)
  br label %if.end38

if.end14:                                         ; preds = %lor.lhs.false
  %tobool15.not = icmp eq ptr %add.ptr, null
  br i1 %tobool15.not, label %if.end14.if.end38_crit_edge, label %if.then16

if.end14.if.end38_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %tx_ready = getelementptr i8, ptr %req, i32 -1144
  %21 = ptrtoint ptr %tx_ready to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %tx_ready, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  %tx_list = getelementptr inbounds %struct.tls_sw_context_tx, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_list, align 4
  %cmp = icmp eq ptr %add.ptr, %23
  br label %if.end38

if.end38:                                         ; preds = %if.then16, %if.end14.if.end38_crit_edge, %if.else, %if.then8
  %ready.1.off0 = phi i1 [ %cmp, %if.then16 ], [ false, %if.end14.if.end38_crit_edge ], [ false, %if.then8 ], [ false, %if.else ]
  %encrypt_compl_lock = getelementptr inbounds %struct.tls_sw_context_tx, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %encrypt_compl_lock) #10
  %encrypt_pending = getelementptr inbounds %struct.tls_sw_context_tx, ptr %5, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %encrypt_pending, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %encrypt_pending, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %encrypt_pending, ptr %encrypt_pending, i32 1, ptr elementtype(i32) %encrypt_pending) #10, !srcloc !72
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool40.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool40.not, label %land.lhs.true, label %if.end38.if.end44_crit_edge

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end38
  %async_notify = getelementptr inbounds %struct.tls_sw_context_tx, ptr %5, i32 0, i32 7
  %25 = ptrtoint ptr %async_notify to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %async_notify, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool41.not = icmp eq i32 %26, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end44_crit_edge, label %if.then42

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %async_wait43 = getelementptr inbounds %struct.tls_sw_context_tx, ptr %5, i32 0, i32 1
  tail call void @complete(ptr noundef %async_wait43) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %land.lhs.true.if.end44_crit_edge, %if.end38.if.end44_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %encrypt_compl_lock) #10
  br i1 %ready.1.off0, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %tx_bitmask = getelementptr inbounds %struct.tls_sw_context_tx, ptr %5, i32 0, i32 9
  %call49 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %tx_bitmask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %tx_work = getelementptr inbounds %struct.tls_sw_context_tx, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i86 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %tx_work, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_clone(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_msg_page_add(ptr nocapture noundef %msg, ptr noundef %page, i32 noundef %len, i32 noundef %offset) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !55

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !56

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.13) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !84
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@sk_msg_page_add, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !74

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %end = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  %arrayidx.i = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %page to i32
  %and2.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i21 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i21, label %do.body11.i.i, label %do.body5.i.i, !prof !55

do.body5.i.i:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

do.body11.i.i:                                    ; preds = %get_page.exit
  %and.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !55

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i22 = and i32 %11, 1
  %offset1.i = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %9, i32 1
  %13 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %offset, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %9, i32 2
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %len, ptr %length.i, align 4
  %.masked = and i32 %12, -3
  %and.i = or i32 %and.i.i22, %.masked
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  %copy = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 5
  %rem.i = and i32 %17, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %17, 5
  %add.ptr.i = getelementptr i32, ptr %copy, i32 %div2.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %19
  store i32 %or.i, ptr %add.ptr.i, align 4
  %size = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 3
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %add = add i32 %21, %len
  store i32 %add, ptr %size, align 4
  %inc = add i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc)
  %cmp = icmp eq i32 %inc, 18
  %spec.select = select i1 %cmp, i32 0, i32 %inc
  %22 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %end, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__skb_nsg(ptr nocapture noundef readonly %skb, i32 noundef %offset, i32 noundef %len, i32 noundef %recursion_level) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  %sub = sub i32 %sub.i, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %recursion_level)
  %cmp = icmp ugt i32 %recursion_level, 23
  br i1 %cmp, label %entry.cleanup165_crit_edge, label %if.end, !prof !56

entry.cleanup165_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup165

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2 = icmp sgt i32 %sub, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %4 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len)
  %sub7 = sub i32 %len, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %cmp8 = icmp eq i32 %sub7, 0
  br i1 %cmp8, label %if.then3.cleanup165_crit_edge, label %if.end10

if.then3.cleanup165_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup165

if.end10:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %4, %offset
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end.if.end11_crit_edge
  %len.addr.0 = phi i32 [ %sub7, %if.end10 ], [ %len, %if.end.if.end11_crit_edge ]
  %elt.0 = phi i32 [ 1, %if.end10 ], [ 0, %if.end.if.end11_crit_edge ]
  %offset.addr.0 = phi i32 [ %add, %if.end10 ], [ %offset, %if.end.if.end11_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %nr_frags267 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %nr_frags267 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nr_frags267, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp13269.not = icmp eq i8 %8, 0
  br i1 %cmp13269.not, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %offset.addr.1274 = phi i32 [ %offset.addr.3.ph, %for.inc.for.body_crit_edge ], [ %offset.addr.0, %if.end11.for.body_crit_edge ]
  %elt.1273 = phi i32 [ %elt.3.ph, %for.inc.for.body_crit_edge ], [ %elt.0, %if.end11.for.body_crit_edge ]
  %i.0272 = phi i32 [ %inc62, %for.inc.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %start.0271 = phi i32 [ %add45, %for.inc.for.body_crit_edge ], [ %sub.i, %if.end11.for.body_crit_edge ]
  %len.addr.1270 = phi i32 [ %len.addr.3.ph, %for.inc.for.body_crit_edge ], [ %len.addr.0, %if.end11.for.body_crit_edge ]
  %add15 = add i32 %offset.addr.1274, %len.addr.1270
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0271, i32 %add15)
  %cmp16 = icmp sgt i32 %start.0271, %add15
  br i1 %cmp16, label %do.end, label %for.body.if.end36_crit_edge, !prof !56

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end, %for.body.if.end36_crit_edge
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %10, i32 0, i32 12, i32 %i.0272, i32 1
  %11 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bv_len.i, align 4
  %add45 = add i32 %12, %start.0271
  %sub46 = sub i32 %add45, %offset.addr.1274
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub46)
  %cmp47 = icmp sgt i32 %sub46, 0
  br i1 %cmp47, label %if.then49, label %if.end36.for.inc_crit_edge

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then49:                                        ; preds = %if.end36
  %13 = tail call i32 @llvm.smin.i32(i32 %sub46, i32 %len.addr.1270)
  %inc54 = add i32 %elt.1273, 1
  %sub55 = sub i32 %len.addr.1270, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55)
  %cmp56 = icmp eq i32 %sub55, 0
  br i1 %cmp56, label %if.then49.cleanup165_crit_edge, label %if.end59

if.then49.cleanup165_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup165

if.end59:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %add60 = add i32 %13, %offset.addr.1274
  br label %for.inc

for.inc:                                          ; preds = %if.end59, %if.end36.for.inc_crit_edge
  %len.addr.3.ph = phi i32 [ %len.addr.1270, %if.end36.for.inc_crit_edge ], [ %sub55, %if.end59 ]
  %elt.3.ph = phi i32 [ %elt.1273, %if.end36.for.inc_crit_edge ], [ %inc54, %if.end59 ]
  %offset.addr.3.ph = phi i32 [ %offset.addr.1274, %if.end36.for.inc_crit_edge ], [ %add60, %if.end59 ]
  %inc62 = add nuw nsw i32 %i.0272, 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %17 to i32
  %cmp13 = icmp ult i32 %inc62, %conv
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %len.addr.1.lcssa = phi i32 [ %len.addr.0, %if.end11.for.end_crit_edge ], [ %len.addr.3.ph, %for.inc.for.end_crit_edge ]
  %start.0.lcssa = phi i32 [ %sub.i, %if.end11.for.end_crit_edge ], [ %add45, %for.inc.for.end_crit_edge ]
  %elt.1.lcssa = phi i32 [ %elt.0, %if.end11.for.end_crit_edge ], [ %elt.3.ph, %for.inc.for.end_crit_edge ]
  %offset.addr.1.lcssa = phi i32 [ %offset.addr.0, %if.end11.for.end_crit_edge ], [ %offset.addr.3.ph, %for.inc.for.end_crit_edge ]
  %.lcssa = phi ptr [ %6, %if.end11.for.end_crit_edge ], [ %15, %for.inc.for.end_crit_edge ]
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %.lcssa, i32 0, i32 6
  %18 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %frag_list.i, align 8
  %cmp.i.not = icmp eq ptr %19, null
  br i1 %cmp.i.not, label %for.end.do.body147_crit_edge, label %for.body74.lr.ph, !prof !55

for.end.do.body147_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body147

for.body74.lr.ph:                                 ; preds = %for.end
  %add120 = add i32 %recursion_level, 1
  br label %for.body74

for.cond72thread-pre-split:                       ; preds = %if.end137, %if.end101.for.cond72thread-pre-split_crit_edge
  %len.addr.6.ph = phi i32 [ %len.addr.4282, %if.end101.for.cond72thread-pre-split_crit_edge ], [ %sub133, %if.end137 ]
  %elt.6.ph = phi i32 [ %elt.4284, %if.end101.for.cond72thread-pre-split_crit_edge ], [ %add132, %if.end137 ]
  %offset.addr.6.ph = phi i32 [ %offset.addr.4285, %if.end101.for.cond72thread-pre-split_crit_edge ], [ %add138, %if.end137 ]
  %20 = ptrtoint ptr %frag_iter.0280 to i32
  call void @__asan_load4_noabort(i32 %20)
  %frag_iter.0.pr = load ptr, ptr %frag_iter.0280, align 8
  %tobool73.not = icmp eq ptr %frag_iter.0.pr, null
  br i1 %tobool73.not, label %for.cond72thread-pre-split.do.body147_crit_edge, label %for.cond72thread-pre-split.for.body74_crit_edge

for.cond72thread-pre-split.for.body74_crit_edge:  ; preds = %for.cond72thread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74

for.cond72thread-pre-split.do.body147_crit_edge:  ; preds = %for.cond72thread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body147

for.body74:                                       ; preds = %for.cond72thread-pre-split.for.body74_crit_edge, %for.body74.lr.ph
  %offset.addr.4285 = phi i32 [ %offset.addr.1.lcssa, %for.body74.lr.ph ], [ %offset.addr.6.ph, %for.cond72thread-pre-split.for.body74_crit_edge ]
  %elt.4284 = phi i32 [ %elt.1.lcssa, %for.body74.lr.ph ], [ %elt.6.ph, %for.cond72thread-pre-split.for.body74_crit_edge ]
  %start.2283 = phi i32 [ %start.0.lcssa, %for.body74.lr.ph ], [ %add110, %for.cond72thread-pre-split.for.body74_crit_edge ]
  %len.addr.4282 = phi i32 [ %len.addr.1.lcssa, %for.body74.lr.ph ], [ %len.addr.6.ph, %for.cond72thread-pre-split.for.body74_crit_edge ]
  %frag_iter.0280 = phi ptr [ %19, %for.body74.lr.ph ], [ %frag_iter.0.pr, %for.cond72thread-pre-split.for.body74_crit_edge ]
  %add77 = add i32 %offset.addr.4285, %len.addr.4282
  call void @__sanitizer_cov_trace_cmp4(i32 %start.2283, i32 %add77)
  %cmp78 = icmp sgt i32 %start.2283, %add77
  br i1 %cmp78, label %do.end95, label %for.body74.if.end101_crit_edge, !prof !56

for.body74.if.end101_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

do.end95:                                         ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 9, ptr noundef null) #10
  br label %if.end101

if.end101:                                        ; preds = %do.end95, %for.body74.if.end101_crit_edge
  %len109 = getelementptr inbounds %struct.sk_buff, ptr %frag_iter.0280, i32 0, i32 6
  %21 = ptrtoint ptr %len109 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len109, align 4
  %add110 = add i32 %22, %start.2283
  %sub111 = sub i32 %add110, %offset.addr.4285
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub111)
  %cmp112 = icmp sgt i32 %sub111, 0
  br i1 %cmp112, label %if.then114, label %if.end101.for.cond72thread-pre-split_crit_edge

if.end101.for.cond72thread-pre-split_crit_edge:   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond72thread-pre-split

if.then114:                                       ; preds = %if.end101
  %23 = tail call i32 @llvm.smin.i32(i32 %sub111, i32 %len.addr.4282)
  %sub119 = sub i32 %offset.addr.4285, %start.2283
  %call121 = tail call fastcc i32 @__skb_nsg(ptr noundef nonnull %frag_iter.0280, i32 noundef %sub119, i32 noundef %23, i32 noundef %add120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.then114.cleanup165_crit_edge, label %if.end131, !prof !56

if.then114.cleanup165_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup165

if.end131:                                        ; preds = %if.then114
  %add132 = add i32 %call121, %elt.4284
  %sub133 = sub i32 %len.addr.4282, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub133)
  %cmp134 = icmp eq i32 %sub133, 0
  br i1 %cmp134, label %if.end131.cleanup165_crit_edge, label %if.end137

if.end131.cleanup165_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup165

if.end137:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %add138 = add i32 %23, %offset.addr.4285
  br label %for.cond72thread-pre-split

do.body147:                                       ; preds = %for.cond72thread-pre-split.do.body147_crit_edge, %for.end.do.body147_crit_edge
  %len.addr.7 = phi i32 [ %len.addr.1.lcssa, %for.end.do.body147_crit_edge ], [ %len.addr.6.ph, %for.cond72thread-pre-split.do.body147_crit_edge ]
  %elt.7 = phi i32 [ %elt.1.lcssa, %for.end.do.body147_crit_edge ], [ %elt.6.ph, %for.cond72thread-pre-split.do.body147_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.7)
  %tobool148.not = icmp eq i32 %len.addr.7, 0
  br i1 %tobool148.not, label %do.body147.cleanup165_crit_edge, label %do.body156, !prof !55

do.body147.cleanup165_crit_edge:                  ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup165

do.body156:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/tls/tls_sw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !86
  unreachable

cleanup165:                                       ; preds = %do.body147.cleanup165_crit_edge, %if.end131.cleanup165_crit_edge, %if.then114.cleanup165_crit_edge, %if.then49.cleanup165_crit_edge, %if.then3.cleanup165_crit_edge, %entry.cleanup165_crit_edge
  %retval.4 = phi i32 [ -90, %entry.cleanup165_crit_edge ], [ 1, %if.then3.cleanup165_crit_edge ], [ %elt.7, %do.body147.cleanup165_crit_edge ], [ %add132, %if.end131.cleanup165_crit_edge ], [ %call121, %if.then114.cleanup165_crit_edge ], [ %inc54, %if.then49.cleanup165_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_decrypt_done(ptr noundef %req, i32 noundef %err) #3 align 64 {
entry:
  %content_type.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 8
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv_ctx_rx.i, align 4
  %13 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %err, label %entry.if.end44_crit_edge [
    i32 0, label %if.else
    i32 -74, label %do.body3
  ]

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.body3:                                         ; preds = %entry
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !81
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_net.i, align 4
  %tls_statistics = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 30, i32 7
  %19 = ptrtoint ptr %tls_statistics to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tls_statistics, align 4
  %arrayidx = getelementptr [11 x i32], ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %arrayidx to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu, align 4
  %arrayidx19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19, align 4
  %add = add i32 %27, %21
  %28 = inttoptr i32 %add to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add20 = add i32 %30, 1
  store i32 %add20, ptr %28, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !82
  %and.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool31.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool31.not, label %if.then35, label %do.body3.do.end37_crit_edge, !prof !56

do.body3.do.end37_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

if.then35:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end37

do.end37:                                         ; preds = %if.then35, %do.body3.do.end37_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #10, !srcloc !83
  br label %if.end44

if.end44:                                         ; preds = %do.end37, %entry.if.end44_crit_edge
  %err45 = getelementptr inbounds %struct.tls_sw_context_rx, ptr %12, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %err45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %err, ptr %err45, align 4
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %6, align 4
  tail call void @tls_err_abort(ptr noundef %34, i32 noundef %err)
  br label %if.end60

if.else:                                          ; preds = %entry
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 20
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %36)
  %cmp.i = icmp eq i16 %36, 772
  br i1 %cmp.i, label %if.then.i, label %if.else.if.else53_crit_edge

if.else.if.else53_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else53

if.then.i:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %content_type.i) #10
  %37 = ptrtoint ptr %content_type.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %content_type.i, align 1
  %prepend_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %10, i32 0, i32 2
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i, align 4
  %40 = ptrtoint ptr %prepend_size.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %prepend_size.i, align 2
  %conv535.i = zext i16 %41 to i32
  %sub636.i = sub i32 %39, %conv535.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub636.i)
  %cmp737.i = icmp slt i32 %sub636.i, 17
  br i1 %cmp737.i, label %if.then.i.cleanup.thread.i_crit_edge, label %if.end.lr.ph.i

if.then.i.cleanup.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end.lr.ph.i:                                   ; preds = %if.then.i
  %offset.i = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 24
  br label %if.end.i

if.end.i:                                         ; preds = %if.end17.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %42 = phi i32 [ %39, %if.end.lr.ph.i ], [ %48, %if.end17.i.if.end.i_crit_edge ]
  %back.039.i = phi i32 [ 17, %if.end.lr.ph.i ], [ %inc18.i, %if.end17.i.if.end.i_crit_edge ]
  %sub.038.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %inc.i, %if.end17.i.if.end.i_crit_edge ]
  %43 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset.i, align 4
  %add.i = sub i32 %42, %back.039.i
  %sub11.i = add i32 %add.i, %44
  %call12.i = call i32 @skb_copy_bits(ptr noundef %5, i32 noundef %sub11.i, ptr noundef nonnull %content_type.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.end.i.cleanup.thread.i_crit_edge

if.end.i.cleanup.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end14.i:                                       ; preds = %if.end.i
  %45 = ptrtoint ptr %content_type.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %content_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool15.not.i = icmp eq i8 %46, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %cleanup.i

if.end17.i:                                       ; preds = %if.end14.i
  %inc.i = add i32 %sub.038.i, 1
  %inc18.i = add i32 %back.039.i, 1
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i, align 4
  %49 = ptrtoint ptr %prepend_size.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %prepend_size.i, align 2
  %conv5.i = zext i16 %50 to i32
  %sub6.i = sub i32 %48, %conv5.i
  %cmp7.i = icmp sgt i32 %inc18.i, %sub6.i
  br i1 %cmp7.i, label %if.end17.i.cleanup.thread.i_crit_edge, label %if.end17.i.if.end.i_crit_edge

if.end17.i.if.end.i_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end17.i.cleanup.thread.i_crit_edge:            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end17.i.cleanup.thread.i_crit_edge, %if.end.i.cleanup.thread.i_crit_edge, %if.then.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ -74, %if.then.i.cleanup.thread.i_crit_edge ], [ %call12.i, %if.end.i.cleanup.thread.i_crit_edge ], [ -74, %if.end17.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %content_type.i) #10
  br label %padding_length.exit

cleanup.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %control.i = getelementptr inbounds %struct.tls_sw_context_rx, ptr %12, i32 0, i32 6
  %51 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %46, ptr %control.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %content_type.i) #10
  br label %padding_length.exit

padding_length.exit:                              ; preds = %cleanup.i, %cleanup.thread.i
  %retval.1.i = phi i32 [ %retval.0.ph.i, %cleanup.thread.i ], [ %sub.038.i, %cleanup.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp48 = icmp slt i32 %retval.1.i, 0
  br i1 %cmp48, label %if.then50, label %padding_length.exit.if.else53_crit_edge

padding_length.exit.if.else53_crit_edge:          ; preds = %padding_length.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else53

if.then50:                                        ; preds = %padding_length.exit
  call void @__sanitizer_cov_trace_pc() #12
  %err52 = getelementptr inbounds %struct.tls_sw_context_rx, ptr %12, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %err52 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.1.i, ptr %err52, align 4
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %6, align 4
  call void @tls_err_abort(ptr noundef %54, i32 noundef %retval.1.i)
  br label %if.end60

if.else53:                                        ; preds = %padding_length.exit.if.else53_crit_edge, %if.else.if.else53_crit_edge
  %retval.1.i117 = phi i32 [ %retval.1.i, %padding_length.exit.if.else53_crit_edge ], [ 0, %if.else.if.else53_crit_edge ]
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i, align 4
  %sub = sub i32 %56, %retval.1.i117
  store i32 %sub, ptr %add.ptr.i, align 4
  %prepend_size = getelementptr inbounds %struct.tls_prot_info, ptr %10, i32 0, i32 2
  %57 = ptrtoint ptr %prepend_size to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %prepend_size, align 2
  %conv54 = zext i16 %58 to i32
  %offset = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 24
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset, align 4
  %add55 = add i32 %60, %conv54
  store i32 %add55, ptr %offset, align 4
  %overhead_size = getelementptr inbounds %struct.tls_prot_info, ptr %10, i32 0, i32 4
  %61 = ptrtoint ptr %overhead_size to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %overhead_size, align 2
  %conv56 = zext i16 %62 to i32
  %sub58 = sub i32 %sub, %conv56
  store i32 %sub58, ptr %add.ptr.i, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else53, %if.then50, %if.end44
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %6, align 4
  %cmp61.not = icmp eq ptr %1, %3
  br i1 %cmp61.not, label %if.end60.if.end72_crit_edge, label %if.then63

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then63:                                        ; preds = %if.end60
  %call64 = call ptr @sg_next(ptr noundef %1) #10
  %tobool67.not120 = icmp eq ptr %call64, null
  br i1 %tobool67.not120, label %if.then63.if.end72_crit_edge, label %if.then63.if.end69_crit_edge

if.then63.if.end69_crit_edge:                     ; preds = %if.then63
  br label %if.end69

if.then63.if.end72_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end69:                                         ; preds = %put_page.exit.if.end69_crit_edge, %if.then63.if.end69_crit_edge
  %sg.0122 = phi ptr [ %call71, %put_page.exit.if.end69_crit_edge ], [ %call64, %if.then63.if.end69_crit_edge ]
  %pages.0121 = phi i32 [ %inc, %put_page.exit.if.end69_crit_edge ], [ 0, %if.then63.if.end69_crit_edge ]
  %64 = ptrtoint ptr %sg.0122 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sg.0122, align 4
  %and.i.i112 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i112)
  %tobool.i.not.i = icmp eq i32 %and.i.i112, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !55

do.body2.i:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

sg_page.exit:                                     ; preds = %if.end69
  %and.i113 = and i32 %65, -4
  %66 = inttoptr i32 %and.i113 to ptr
  %67 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %and.i.i114 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i114)
  %tobool.not.i.i = icmp eq i32 %and.i.i114, 0
  br i1 %tobool.not.i.i, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !55

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %69, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %66, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %70 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i.i.i = icmp eq i32 %71, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !56

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.14) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %72 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %72, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@tls_decrypt_done, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !74

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %.pre-phi) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %pages.0121, 1
  %call71 = call ptr @sg_next(ptr noundef nonnull %sg.0122) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inc)
  %cmp65.not = icmp eq i32 %inc, -1
  %tobool67.not = icmp eq ptr %call71, null
  %or.cond = select i1 %cmp65.not, i1 true, i1 %tobool67.not
  br i1 %or.cond, label %put_page.exit.if.end72_crit_edge, label %put_page.exit.if.end69_crit_edge

put_page.exit.if.end69_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

put_page.exit.if.end72_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end72:                                         ; preds = %put_page.exit.if.end72_crit_edge, %if.then63.if.end72_crit_edge, %if.end60.if.end72_crit_edge
  call void @kfree(ptr noundef %req) #10
  %decrypt_compl_lock = getelementptr inbounds %struct.tls_sw_context_rx, ptr %12, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %decrypt_compl_lock) #10
  %decrypt_pending = getelementptr inbounds %struct.tls_sw_context_rx, ptr %12, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %decrypt_pending, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @llvm.prefetch.p0(ptr %decrypt_pending, i32 1, i32 3, i32 1) #10
  %73 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %decrypt_pending, ptr %decrypt_pending, i32 1, ptr elementtype(i32) %decrypt_pending) #10, !srcloc !72
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %73, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool74.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool74.not, label %land.lhs.true, label %if.end72.if.end79_crit_edge

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

land.lhs.true:                                    ; preds = %if.end72
  %async_notify = getelementptr inbounds %struct.tls_sw_context_rx, ptr %12, i32 0, i32 10
  %74 = ptrtoint ptr %async_notify to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %async_notify, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool75.not = icmp eq i8 %75, 0
  br i1 %tobool75.not, label %land.lhs.true.if.end79_crit_edge, label %if.then77

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %async_wait78 = getelementptr inbounds %struct.tls_sw_context_rx, ptr %12, i32 0, i32 1
  call void @complete(ptr noundef %async_wait78) #10
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %land.lhs.true.if.end79_crit_edge, %if.end72.if.end79_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %decrypt_compl_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_device_decrypted(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_defer_free_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_psock_drop(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_data_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_device_rx_resync_new_rec(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/tls/tls_sw.c", i32 49, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @tls_set_sw_offload.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/tls/tls_sw.c", i32 2377, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tls_set_sw_offload.__key.2, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/tls/tls_sw.c", i32 2382, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tls_set_sw_offload.__key.4, !7, !"__key", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tls_set_sw_offload.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../net/tls/tls_sw.c", i32 2386, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/tls/tls_sw.c", i32 2408, i32 17}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/tls/tls_sw.c", i32 2442, i32 17}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/tls/tls_sw.c", i32 2459, i32 17}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/tls/tls_sw.c", i32 2476, i32 17}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/tls/tls_sw.c", i32 2493, i32 17}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/mm.h", i32 717, i32 2}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/skmsg.h", i32 286, i32 9}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @init_completion.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../include/linux/completion.h", i32 87, i32 2}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @skb_queue_head_init.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2154473151, i64 2154473643, i64 2154473188, i64 2154473244, i64 2154473278, i64 2154473302, i64 2154473343, i64 2154473364, i64 2154473392, i64 2154473426}
!58 = !{i64 2154466832, i64 2154467324, i64 2154466869, i64 2154466925, i64 2154466959, i64 2154466983, i64 2154467024, i64 2154467045, i64 2154467073, i64 2154467107}
!59 = !{i64 2154468442, i64 2154468934, i64 2154468479, i64 2154468535, i64 2154468569, i64 2154468593, i64 2154468634, i64 2154468655, i64 2154468683, i64 2154468717}
!60 = !{i64 2148607057}
!61 = !{i64 2148521497, i64 2148521529, i64 2148521558, i64 2148521592, i64 2148521623, i64 2148521646}
!62 = !{i64 2149686801}
!63 = !{!"auto-init"}
!64 = !{i8 0, i8 2}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.peeled.count", i32 1}
!67 = !{i64 2148517502, i64 2148517528, i64 2148517557, i64 2148517591, i64 2148517622, i64 2148517645}
!68 = !{i64 2148519967, i64 2148519993, i64 2148520022, i64 2148520056, i64 2148520087, i64 2148520110}
!69 = !{i64 2154470390, i64 2154470882, i64 2154470427, i64 2154470483, i64 2154470517, i64 2154470541, i64 2154470582, i64 2154470603, i64 2154470631, i64 2154470665}
!70 = !{i64 2153670631, i64 2153671114, i64 2153670668, i64 2153670724, i64 2153670758, i64 2153670782, i64 2153670823, i64 2153670844, i64 2153670872, i64 2153670906}
!71 = !{i64 2148605978}
!72 = !{i64 2148520687, i64 2148520719, i64 2148520748, i64 2148520782, i64 2148520813, i64 2148520836}
!73 = !{i64 2148606207}
!74 = !{i64 2148211398, i64 2148211403, i64 2148211416, i64 2148211460, i64 2148211494, i64 2148211515}
!75 = !{i64 2149249561}
!76 = !{i64 940696, i64 940720, i64 940741, i64 940758, i64 940775}
!77 = !{i64 2149249827}
!78 = !{i64 2156872302}
!79 = !{i64 1024270, i64 1024287, i64 1024311, i64 1024337, i64 1024355}
!80 = !{i64 2156872645}
!81 = !{i64 981251, i64 981312}
!82 = !{i64 983983}
!83 = !{i64 984268}
!84 = !{i64 2153690543, i64 2153691027, i64 2153690580, i64 2153690636, i64 2153690670, i64 2153690694, i64 2153690735, i64 2153690756, i64 2153690784, i64 2153690818}
!85 = !{i64 2158833608}
!86 = !{i64 2158806726, i64 2158807207, i64 2158806763, i64 2158806819, i64 2158806853, i64 2158806877, i64 2158806918, i64 2158806939, i64 2158806967, i64 2158807001}
