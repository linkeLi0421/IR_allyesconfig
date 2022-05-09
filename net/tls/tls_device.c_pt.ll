; ModuleID = '/llk/IR_all_yes/net/tls/tls_device.c_pt.bc'
source_filename = "../net/tls/tls_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tls_device_sk_destruct\22, \22a\22\09"
module asm "\09.weak\09__crc_tls_device_sk_destruct\09\09\09\09"
module asm "\09.long\09__crc_tls_device_sk_destruct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tls_device_sk_destruct:\09\09\09\09\09"
module asm "\09.asciz \09\22tls_device_sk_destruct\22\09\09\09\09\09"
module asm "__kstrtabns_tls_device_sk_destruct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tls_offload_tx_resync_request\22, \22a\22\09"
module asm "\09.weak\09__crc_tls_offload_tx_resync_request\09\09\09\09"
module asm "\09.long\09__crc_tls_offload_tx_resync_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tls_offload_tx_resync_request:\09\09\09\09\09"
module asm "\09.asciz \09\22tls_offload_tx_resync_request\22\09\09\09\09\09"
module asm "__kstrtabns_tls_offload_tx_resync_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tls_get_record\22, \22a\22\09"
module asm "\09.weak\09__crc_tls_get_record\09\09\09\09"
module asm "\09.long\09__crc_tls_get_record\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tls_get_record:\09\09\09\09\09"
module asm "\09.asciz \09\22tls_get_record\22\09\09\09\09\09"
module asm "__kstrtabns_tls_get_record:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.135 }
%union.anon.135 = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i32] }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.195, %struct.anon.196, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
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
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.195 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.196 = type { i32, i32, i32, i32 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.tls_crypto_context = type { %union.anon.179 }
%union.anon.179 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.tls_offload_context_tx = type { ptr, %struct.spinlock, %struct.list_head, ptr, ptr, i64, i64, [17 x %struct.scatterlist], ptr, [0 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.tls_record_info = type { %struct.list_head, i32, i32, i32, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.150, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.150 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.153, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.151 }
%union.anon.4 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.153 = type { ptr }
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
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.tls_offload_context_rx = type { %struct.tls_sw_context_rx, i32, i8, %union.anon.197, [0 x i8] }
%struct.tls_sw_context_rx = type { ptr, %struct.crypto_wait, %struct.strparser, %struct.sk_buff_head, ptr, ptr, i8, i8, %struct.atomic_t, %struct.spinlock, i8 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { %struct.atomic64_t }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.201, %struct.anon.202, %struct.anon.203, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.201 = type { i32, i32, i64 }
%struct.anon.202 = type { i32, i32, i64 }
%struct.anon.203 = type { i32, i32 }
%struct.tls_offload_resync_async = type { %struct.atomic64_t, i16, i16, [13 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.165, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.184, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.165 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.184 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.tlsdev_ops = type { ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.anon.199 = type { i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }

@__kstrtab_tls_device_sk_destruct = external dso_local constant [0 x i8], align 1
@__kstrtabns_tls_device_sk_destruct = external dso_local constant [0 x i8], align 1
@__ksymtab_tls_device_sk_destruct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tls_device_sk_destruct to i32), ptr @__kstrtab_tls_device_sk_destruct, ptr @__kstrtabns_tls_device_sk_destruct }, section "___ksymtab_gpl+tls_device_sk_destruct", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/tls/tls_device.c\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_tls_offload_tx_resync_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_tls_offload_tx_resync_request = external dso_local constant [0 x i8], align 1
@__ksymtab_tls_offload_tx_resync_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tls_offload_tx_resync_request to i32), ptr @__kstrtab_tls_offload_tx_resync_request, ptr @__kstrtabns_tls_offload_tx_resync_request }, section "___ksymtab_gpl+tls_offload_tx_resync_request", align 4
@__kstrtab_tls_get_record = external dso_local constant [0 x i8], align 1
@__kstrtabns_tls_get_record = external dso_local constant [0 x i8], align 1
@__ksymtab_tls_get_record = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tls_get_record to i32), ptr @__kstrtab_tls_get_record, ptr @__kstrtabns_tls_get_record }, section "___ksymtab+tls_get_record", align 4
@tls_device_write_space.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tls_set_device_offload.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&offload_ctx->lock\00", [45 x i8] zeroinitializer }, align 32
@tls_set_device_offload._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tls_set_device_offload = private unnamed_addr constant [23 x i8] c"tls_set_device_offload\00", align 1
@tls_set_device_offload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.tls_set_device_offload, ptr @.str, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: netdev not found\0A\00", [40 x i8] zeroinitializer }, align 32
@tls_set_device_offload._entry_ptr = internal global ptr @tls_set_device_offload._entry, section ".printk_index", align 4
@device_offload_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @device_offload_lock, i64 56), ptr getelementptr (i8, ptr @device_offload_lock, i64 56) }, ptr @device_offload_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@tls_set_device_offload_rx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tls_set_device_offload_rx = private unnamed_addr constant [26 x i8] c"tls_set_device_offload_rx\00", align 1
@tls_set_device_offload_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.tls_set_device_offload_rx, ptr @.str, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tls_set_device_offload_rx._entry_ptr = internal global ptr @tls_set_device_offload_rx._entry, section ".printk_index", align 4
@tls_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @tls_dev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@tls_device_gc_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @tls_device_gc_work, i64 4), ptr getelementptr (i8, ptr @tls_device_gc_work, i64 4) }, ptr @tls_device_gc_task, %struct.lockdep_map { ptr @tls_device_gc_work, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@tls_device_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@tls_device_gc_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tls_device_gc_list, ptr @tls_device_gc_list }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tls_device_lock\00", [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_tls_device_tx_resync_req = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/tls/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_tls_device_tx_resync_req.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_tls_device_tx_resync_send = external dso_local global %struct.tracepoint, align 4
@trace_tls_device_tx_resync_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_tls_device_rx_resync_nh_delay = external dso_local global %struct.tracepoint, align 4
@trace_tls_device_rx_resync_nh_delay.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tls_device_rx_resync_async.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_tls_device_rx_resync_send = external dso_local global %struct.tracepoint, align 4
@trace_tls_device_rx_resync_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tls_device_decrypted = external dso_local global %struct.tracepoint, align 4
@trace_tls_device_decrypted.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_tls_device_rx_resync_nh_schedule = external dso_local global %struct.tracepoint, align 4
@trace_tls_device_rx_resync_nh_schedule.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device_offload_lock.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"device_offload_lock\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_tls_device_offload_set = external dso_local global %struct.tracepoint, align 4
@trace_tls_device_offload_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tls_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tls_device_list, ptr @tls_device_list }, [24 x i8] zeroinitializer }, align 32
@tls_device_down_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tls_device_down_list, ptr @tls_device_down_list }, [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tls_device_gc_work\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 12]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 214, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1106, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1123, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"device_offload_lock\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1199, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"tls_dev_notifier\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1388, i32 30 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"tls_device_gc_work\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 717, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"tls_device_lock\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"tls_device_gc_list\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 51, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 54, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"../net/tls/trace.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 147, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 108, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1160, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 230, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 214, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 44, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 695, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 723, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 2077, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 46, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"tls_device_list\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 52, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"tls_device_down_list\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 53, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [24 x i8] c"../net/tls/tls_device.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 50, i32 8 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__ksymtab_tls_device_sk_destruct, ptr @__ksymtab_tls_get_record, ptr @__ksymtab_tls_offload_tx_resync_request, ptr @tls_device_cleanup, ptr @tls_set_device_offload._entry, ptr @tls_set_device_offload._entry_ptr, ptr @tls_set_device_offload_rx._entry, ptr @tls_set_device_offload_rx._entry_ptr, ptr @.str, ptr @tls_set_device_offload.__key, ptr @.str.1, ptr @tls_set_device_offload._rs, ptr @.str.2, ptr @.str.3, ptr @device_offload_lock, ptr @tls_set_device_offload_rx._rs, ptr @tls_dev_notifier, ptr @tls_device_gc_work, ptr @.str.4, ptr @tls_device_lock, ptr @tls_device_gc_list, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @tls_device_list, ptr @tls_device_down_list, ptr @.str.19], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_set_device_offload.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_set_device_offload._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_set_device_offload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_offload_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_set_device_offload_rx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_set_device_offload_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_device_gc_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_device_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_device_gc_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_device_down_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_device_sk_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx.i, align 4
  %sk_destruct = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_destruct, align 4
  tail call void %5(ptr noundef %sk) #12
  %tx_conf = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %tx_conf, align 4
  %bf.lshr.mask = and i8 %bf.load, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %open_record = getelementptr inbounds %struct.tls_offload_context_tx, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %open_record to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %open_record, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @destroy_record(ptr noundef nonnull %8)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %records_list.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %records_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %records_list.i, align 8
  %cmp.not19.i = icmp eq ptr %10, %records_list.i
  br i1 %cmp.not19.i, label %if.end.delete_all_records.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.delete_all_records.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %delete_all_records.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %info.020.i = phi ptr [ %temp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %10, %if.end.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %info.020.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %temp.0.i = load ptr, ptr %info.020.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %info.020.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %info.020.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %info.020.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %info.020.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %info.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %info.020.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call fastcc void @destroy_record(ptr noundef %info.020.i) #12
  %cmp.not.i = icmp eq ptr %temp.0.i, %records_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.delete_all_records.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.delete_all_records.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delete_all_records.exit

delete_all_records.exit:                          ; preds = %list_del.exit.i.delete_all_records.exit_crit_edge, %if.end.delete_all_records.exit_crit_edge
  %retransmit_hint.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %retransmit_hint.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %retransmit_hint.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %22, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %22, ptr noundef %base.i.i) #12
  tail call void @clean_acked_data_disable(ptr noundef %sk) #12
  br label %if.end6

if.end6:                                          ; preds = %delete_all_records.exit, %entry.if.end6_crit_edge
  %refcount = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !103
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then8, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end9_crit_edge, label %if.then10.i.i.i, !prof !104

if.end5.i.i.i.if.end9_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !105
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tls_device_lock) #12
  %list.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 20
  %call.i.i.i19 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i19, label %if.end.i.i.i22, label %if.then8.__list_del_entry.exit.i.i_crit_edge

if.then8.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i22:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i20 = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 20, i32 1
  %24 = ptrtoint ptr %prev.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i20, align 4
  %26 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i21 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i21, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i22, %if.then8.__list_del_entry.exit.i.i_crit_edge
  %30 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tls_device_gc_list, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %30, ptr noundef nonnull @tls_device_gc_list) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.tls_device_queue_ctx_destruction.exit_crit_edge

__list_del_entry.exit.i.i.tls_device_queue_ctx_destruction.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_device_queue_ctx_destruction.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @tls_device_gc_list, i32 0, i32 1), align 4
  %31 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tls_device_gc_list, ptr %list.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 20, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %prev3.i.i.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list.i, ptr %30, align 4
  br label %tls_device_queue_ctx_destruction.exit

tls_device_queue_ctx_destruction.exit:            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.tls_device_queue_ctx_destruction.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i6.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef nonnull @tls_device_gc_work) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tls_device_lock, i32 noundef %call2.i) #12
  br label %if.end9

if.end9:                                          ; preds = %tls_device_queue_ctx_destruction.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_record(ptr noundef %record) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_frags = getelementptr inbounds %struct.tls_record_info, ptr %record, i32 0, i32 3
  %0 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %__skb_frag_unref.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %__skb_frag_unref.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %i.06
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !104

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %6, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %7, %if.end.i.i.i ]
  %8 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !106

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.4) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !107
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #12, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@destroy_record, %if.then.i.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !111

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.__skb_frag_unref.exit_crit_edge

folio_put_testzero.exit.i.i.i.__skb_frag_unref.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_frag_unref.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %8) #12
  br label %__skb_frag_unref.exit

__skb_frag_unref.exit:                            ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.__skb_frag_unref.exit_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %13 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_frags, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %__skb_frag_unref.exit.for.body_crit_edge, label %__skb_frag_unref.exit.for.end_crit_edge

__skb_frag_unref.exit.for.end_crit_edge:          ; preds = %__skb_frag_unref.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

__skb_frag_unref.exit.for.body_crit_edge:         ; preds = %__skb_frag_unref.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %__skb_frag_unref.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %record) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_acked_data_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_device_free_resources_tx(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  tail call void @tls_free_partial_record(ptr noundef %sk, ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_free_partial_record(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_offload_tx_resync_request(ptr noundef %sk, i32 noundef %got_seq, i32 noundef %exp_seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  tail call fastcc void @trace_tls_device_tx_resync_req(ptr noundef %sk, i32 noundef %got_seq, i32 noundef %exp_seq)
  %flags = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 14
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !104

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tls_device_tx_resync_req(ptr noundef %sk, i32 noundef %tcp_seq, i32 noundef %exp_tcp_seq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_tx_resync_req, i32 0, i32 1), ptr blockaddress(@trace_tls_device_tx_resync_req, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !111

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %call42 = tail call i32 @__traceiter_tls_device_tx_resync_req(ptr noundef null, ptr noundef %sk, i32 noundef %tcp_seq, i32 noundef %exp_tcp_seq) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_tx_resync_req, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_tx_resync_req, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tls_device_tx_resync_req.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_tls_device_tx_resync_req.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 169, ptr noundef nonnull @.str.7) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_device_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %record_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %record_type) #12
  %0 = ptrtoint ptr %record_type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 23, ptr %record_type, align 1
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %icsk_ulp_data.i, align 8
  %tx_lock = getelementptr inbounds %struct.tls_context, ptr %2, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #12
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #12
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %3 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then, !prof !104

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = call i32 @tls_proccess_cmsg(ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %record_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_flags, align 4
  %7 = ptrtoint ptr %record_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %record_type, align 1
  %call7 = call fastcc i32 @tls_push_data(ptr noundef %sk, ptr noundef %msg_iter, i32 noundef %size, i32 noundef %6, i8 noundef zeroext %8)
  br label %out

out:                                              ; preds = %if.end6, %if.then.out_crit_edge
  %rc.0 = phi i32 [ %call3, %if.then.out_crit_edge ], [ %call7, %if.end6 ]
  call void @release_sock(ptr noundef %sk) #12
  call void @mutex_unlock(ptr noundef %tx_lock) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %record_type) #12
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_proccess_cmsg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tls_push_data(ptr noundef %sk, ptr noundef %msg_iter, i32 noundef %size, i32 noundef %flags, i8 noundef zeroext %record_type) unnamed_addr #0 align 64 {
entry:
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #12
  %and = and i32 %flags, -180289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %4 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end7, label %if.then5, !prof !104

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 0, %5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %or = or i32 %flags, 1048576
  %or8 = or i32 %flags, 1179648
  %and9 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %cond.false.i, label %if.end7.sock_sndtimeo.exit_crit_edge

if.end7.sock_sndtimeo.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %6 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end7.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %7, %cond.false.i ], [ 0, %if.end7.sock_sndtimeo.exit_crit_edge ]
  %8 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %timeo, align 4
  %partially_sent_record.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %partially_sent_record.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %partially_sent_record.i, align 4
  %tobool.i.not = icmp eq ptr %10, null
  br i1 %tobool.i.not, label %sock_sndtimeo.exit.if.end17_crit_edge, label %if.then13

sock_sndtimeo.exit.if.end17_crit_edge:            ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then13:                                        ; preds = %sock_sndtimeo.exit
  %call14 = tail call i32 @tls_push_partial_record(ptr noundef %sk, ptr noundef %1, i32 noundef %or) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.then13.cleanup_crit_edge, label %if.then13.if.end17_crit_edge

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.then13.if.end17_crit_edge, %sock_sndtimeo.exit.if.end17_crit_edge
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %11 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk_allocation.i, align 8
  %and.i = and i32 %12, 132224
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1152
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %task_frag.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 180
  br label %sk_page_frag.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %sk_frag.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 37
  br label %sk_page_frag.exit

sk_page_frag.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %task_frag.i, %if.then.i ], [ %sk_frag.i, %if.end.i ]
  %prepend_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %prepend_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %prepend_size, align 2
  %conv = zext i16 %18 to i32
  %add = add nuw nsw i32 %conv, 16384
  %open_record.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %3, i32 0, i32 3
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %size.i = getelementptr inbounds %struct.page_frag, ptr %retval.0.i, i32 0, i32 2
  %offset.i = getelementptr inbounds %struct.page_frag, ptr %retval.0.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %record_type)
  %cmp38.not = icmp eq i8 %record_type, 23
  %and76 = and i32 %flags, 163840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %tag_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 3
  %overhead_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 4
  %iv_size1.i.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 5
  %cipher_type.i.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 1
  %tx.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 7
  %salt_size.i.i = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %sk_page_frag.exit
  %tls_push_record_flags.0 = phi i32 [ %or8, %sk_page_frag.exit ], [ %tls_push_record_flags.2, %do.cond.do.body_crit_edge ]
  %size.addr.0 = phi i32 [ %size, %sk_page_frag.exit ], [ %size.addr.4, %do.cond.do.body_crit_edge ]
  %19 = ptrtoint ptr %prepend_size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %prepend_size, align 2
  %conv20 = zext i16 %20 to i32
  %21 = ptrtoint ptr %open_record.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %open_record.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then.i206, label %do.body.if.end13.i_crit_edge

do.body.if.end13.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then.i206:                                     ; preds = %do.body
  %23 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sk_allocation.i, align 8
  %call.i = call zeroext i1 @skb_page_frag_refill(i32 noundef %conv20, ptr noundef %retval.0.i, i32 noundef %24) #12
  br i1 %call.i, label %if.end.i207, label %do.end.i, !prof !104

do.end.i:                                         ; preds = %if.then.i206
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %skc_prot.i, align 8
  %enter_memory_pressure.i = getelementptr inbounds %struct.proto, ptr %26, i32 0, i32 30
  %27 = ptrtoint ptr %enter_memory_pressure.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enter_memory_pressure.i, align 4
  call void %28(ptr noundef %sk) #12
  call fastcc void @sk_stream_moderate_sndbuf(ptr noundef %sk) #12
  br label %if.then29

if.end.i207:                                      ; preds = %if.then.i206
  %call5.i = call fastcc i32 @tls_create_new_record(ptr noundef %3, ptr noundef %retval.0.i, i32 noundef %conv20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i207.if.then29_crit_edge

if.end.i207.if.then29_crit_edge:                  ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.end8.i:                                        ; preds = %if.end.i207
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %size.i, align 2
  %31 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %32)
  %cmp.i208 = icmp ugt i16 %30, %32
  br i1 %cmp.i208, label %if.end8.i.if.end49_crit_edge, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.end8.i.if.end49_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end13.i:                                       ; preds = %if.end8.i.if.end13.i_crit_edge, %do.body.if.end13.i_crit_edge
  %call14.i = call zeroext i1 @sk_page_frag_refill(ptr noundef %sk, ptr noundef %retval.0.i) #12
  br i1 %call14.i, label %if.end13.i.if.end49_crit_edge, label %if.end13.i.if.then29_crit_edge

if.end13.i.if.then29_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.end13.i.if.end49_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then29:                                        ; preds = %if.end13.i.if.then29_crit_edge, %if.end.i207.if.then29_crit_edge, %do.end.i
  %call30 = call i32 @sk_stream_wait_memory(ptr noundef %sk, ptr noundef nonnull %timeo) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.do.cond_crit_edge, label %if.end33

if.then29.do.cond_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

if.end33:                                         ; preds = %if.then29
  %33 = ptrtoint ptr %open_record.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %open_record.i, align 8
  %tobool34.not = icmp eq ptr %34, null
  br i1 %tobool34.not, label %if.end33.do.end_crit_edge, label %if.end33.handle_error_crit_edge

if.end33.handle_error_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_error

if.end33.do.end_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

handle_error:                                     ; preds = %land.lhs.true.i.handle_error_crit_edge, %copy_from_iter_nocache.exit.i.handle_error_crit_edge, %if.then.i212.handle_error_crit_edge, %if.end33.handle_error_crit_edge
  %record.0 = phi ptr [ %34, %if.end33.handle_error_crit_edge ], [ %40, %if.then.i212.handle_error_crit_edge ], [ %40, %copy_from_iter_nocache.exit.i.handle_error_crit_edge ], [ %40, %land.lhs.true.i.handle_error_crit_edge ]
  %rc.0 = phi i32 [ %call30, %if.end33.handle_error_crit_edge ], [ -14, %if.then.i212.handle_error_crit_edge ], [ -14, %copy_from_iter_nocache.exit.i.handle_error_crit_edge ], [ -14, %land.lhs.true.i.handle_error_crit_edge ]
  br i1 %cmp38.not, label %if.else, label %handle_error.do.end.sink.split_crit_edge

handle_error.do.end.sink.split_crit_edge:         ; preds = %handle_error
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.sink.split

if.else:                                          ; preds = %handle_error
  %len = getelementptr inbounds %struct.tls_record_info, ptr %record.0, i32 0, i32 2
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %37 = ptrtoint ptr %prepend_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %prepend_size, align 2
  %conv43 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv43)
  %cmp44 = icmp sgt i32 %36, %conv43
  br i1 %cmp44, label %if.else.last_record_crit_edge, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.else.last_record_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %last_record

if.end49:                                         ; preds = %if.end13.i.if.end49_crit_edge, %if.end8.i.if.end49_crit_edge
  %39 = ptrtoint ptr %open_record.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %open_record.i, align 8
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size.i, align 2
  %conv52 = zext i16 %42 to i32
  %43 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %offset.i, align 4
  %conv53 = zext i16 %44 to i32
  %sub54 = sub nsw i32 %conv52, %conv53
  %45 = call i32 @llvm.umin.i32(i32 %size.addr.0, i32 %sub54)
  %len57 = getelementptr inbounds %struct.tls_record_info, ptr %40, i32 0, i32 2
  %46 = ptrtoint ptr %len57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len57, align 4
  %sub58 = sub i32 %add, %47
  %48 = call i32 @llvm.umin.i32(i32 %45, i32 %sub58)
  %49 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %retval.0.i, align 4
  %call66 = call ptr @page_address(ptr noundef %50) #12
  %51 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %offset.i, align 4
  %conv68 = zext i16 %52 to i32
  %add.ptr = getelementptr i8, ptr %call66, i32 %conv68
  %53 = ptrtoint ptr %add.ptr to i32
  %neg.i = sub i32 0, %53
  %and.i210 = and i32 %neg.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210)
  %tobool.not.i211 = icmp eq i32 %and.i210, 0
  br i1 %tobool.not.i211, label %if.end49.if.end4.i_crit_edge, label %if.then.i212

if.end49.if.end4.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i212:                                     ; preds = %if.end49
  %54 = call i32 @llvm.umin.i32(i32 %and.i210, i32 %48) #12
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %54, i1 noundef zeroext false) #12
  %call3.i.i = call i32 @_copy_from_iter(ptr noundef %add.ptr, i32 noundef %54, ptr noundef %msg_iter) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %54)
  %cmp1.not.i = icmp eq i32 %call3.i.i, %54
  br i1 %cmp1.not.i, label %if.end.i213, label %if.then.i212.handle_error_crit_edge

if.then.i212.handle_error_crit_edge:              ; preds = %if.then.i212
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_error

if.end.i213:                                      ; preds = %if.then.i212
  call void @__sanitizer_cov_trace_pc() #14
  %sub3.i = sub i32 %48, %54
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %54
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i213, %if.end49.if.end4.i_crit_edge
  %bytes.addr.0.i = phi i32 [ %sub3.i, %if.end.i213 ], [ %48, %if.end49.if.end4.i_crit_edge ]
  %addr.addr.0.i = phi ptr [ %add.ptr.i, %if.end.i213 ], [ %add.ptr, %if.end49.if.end4.i_crit_edge ]
  %and5.i = and i32 %bytes.addr.0.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp9.i.i.i = icmp slt i32 %and5.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i48.i

land.rhs16.i.i.i:                                 ; preds = %if.end4.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.copy_from_iter_nocache.exit.i_crit_edge, label %if.then27.i.i.i, !prof !104

land.rhs16.i.i.i.copy_from_iter_nocache.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_iter_nocache.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %copy_from_iter_nocache.exit.i

if.then.i.i.i48.i:                                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__check_object_size(ptr noundef %addr.addr.0.i, i32 noundef %and5.i, i1 noundef zeroext false) #12
  %call3.i49.i = call i32 @_copy_from_iter_nocache(ptr noundef %addr.addr.0.i, i32 noundef %and5.i, ptr noundef %msg_iter) #12
  br label %copy_from_iter_nocache.exit.i

copy_from_iter_nocache.exit.i:                    ; preds = %if.then.i.i.i48.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter_nocache.exit.i_crit_edge
  %retval.0.i51.i = phi i32 [ %call3.i49.i, %if.then.i.i.i48.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter_nocache.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i51.i, i32 %and5.i)
  %cmp7.not.i = icmp eq i32 %retval.0.i51.i, %and5.i
  br i1 %cmp7.not.i, label %if.end9.i, label %copy_from_iter_nocache.exit.i.handle_error_crit_edge

copy_from_iter_nocache.exit.i.handle_error_crit_edge: ; preds = %copy_from_iter_nocache.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_error

if.end9.i:                                        ; preds = %copy_from_iter_nocache.exit.i
  %sub10.i = and i32 %bytes.addr.0.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %tobool12.not.i = icmp eq i32 %sub10.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.end72_crit_edge, label %land.lhs.true.i

if.end9.i.if.end72_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

land.lhs.true.i:                                  ; preds = %if.end9.i
  %add.ptr11.i = getelementptr i8, ptr %addr.addr.0.i, i32 %and5.i
  call void @__check_object_size(ptr noundef %add.ptr11.i, i32 noundef %sub10.i, i1 noundef zeroext false) #12
  %call3.i61.i = call i32 @_copy_from_iter(ptr noundef %add.ptr11.i, i32 noundef %sub10.i, ptr noundef %msg_iter) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i61.i, i32 %sub10.i)
  %cmp14.not.i = icmp eq i32 %call3.i61.i, %sub10.i
  br i1 %cmp14.not.i, label %land.lhs.true.i.if.end72_crit_edge, label %land.lhs.true.i.handle_error_crit_edge

land.lhs.true.i.handle_error_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_error

land.lhs.true.i.if.end72_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true.i.if.end72_crit_edge, %if.end9.i.if.end72_crit_edge
  call fastcc void @tls_append_frag(ptr noundef %40, ptr noundef %retval.0.i, i32 noundef %48)
  %sub73 = sub i32 %size.addr.0, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub73)
  %tobool74.not = icmp eq i32 %sub73, 0
  br i1 %tobool74.not, label %if.end72.last_record_crit_edge, label %lor.lhs.false

if.end72.last_record_crit_edge:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %last_record

last_record:                                      ; preds = %if.end72.last_record_crit_edge, %if.else.last_record_crit_edge
  %record.1 = phi ptr [ %record.0, %if.else.last_record_crit_edge ], [ %40, %if.end72.last_record_crit_edge ]
  %rc.1 = phi i32 [ %rc.0, %if.else.last_record_crit_edge ], [ 0, %if.end72.last_record_crit_edge ]
  %size.addr.1 = phi i32 [ %size.addr.0, %if.else.last_record_crit_edge ], [ 0, %if.end72.last_record_crit_edge ]
  br i1 %tobool77.not, label %last_record.if.then89_crit_edge, label %last_record.do.end_crit_edge

last_record.do.end_crit_edge:                     ; preds = %last_record
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

last_record.if.then89_crit_edge:                  ; preds = %last_record
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89

lor.lhs.false:                                    ; preds = %if.end72
  %55 = ptrtoint ptr %len57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add)
  %cmp84.not = icmp ult i32 %56, %add
  br i1 %cmp84.not, label %lor.lhs.false86, label %lor.lhs.false.if.then89_crit_edge

lor.lhs.false.if.then89_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89

lor.lhs.false86:                                  ; preds = %lor.lhs.false
  %num_frags = getelementptr inbounds %struct.tls_record_info, ptr %40, i32 0, i32 3
  %57 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %58)
  %cmp87 = icmp ugt i32 %58, 15
  br i1 %cmp87, label %lor.lhs.false86.if.then89_crit_edge, label %lor.lhs.false86.do.cond_crit_edge

lor.lhs.false86.do.cond_crit_edge:                ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

lor.lhs.false86.if.then89_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89

if.then89:                                        ; preds = %lor.lhs.false86.if.then89_crit_edge, %lor.lhs.false.if.then89_crit_edge, %last_record.if.then89_crit_edge
  %size.addr.2232 = phi i32 [ %sub73, %lor.lhs.false86.if.then89_crit_edge ], [ %sub73, %lor.lhs.false.if.then89_crit_edge ], [ %size.addr.1, %last_record.if.then89_crit_edge ]
  %done.1.off0231 = phi i1 [ false, %lor.lhs.false86.if.then89_crit_edge ], [ false, %lor.lhs.false.if.then89_crit_edge ], [ true, %last_record.if.then89_crit_edge ]
  %tls_push_record_flags.1230 = phi i32 [ %tls_push_record_flags.0, %lor.lhs.false86.if.then89_crit_edge ], [ %tls_push_record_flags.0, %lor.lhs.false.if.then89_crit_edge ], [ %or, %last_record.if.then89_crit_edge ]
  %record.2229 = phi ptr [ %40, %lor.lhs.false86.if.then89_crit_edge ], [ %40, %lor.lhs.false.if.then89_crit_edge ], [ %record.1, %last_record.if.then89_crit_edge ]
  %59 = ptrtoint ptr %tag_size.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tag_size.i, align 2
  %conv.i = zext i16 %60 to i32
  %61 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sk_allocation.i, align 8
  %call.i216 = call zeroext i1 @skb_page_frag_refill(i32 noundef %conv.i, ptr noundef %retval.0.i, i32 noundef %62) #12
  %63 = ptrtoint ptr %tag_size.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %tag_size.i, align 2
  %conv3.i = zext i16 %64 to i32
  br i1 %call.i216, label %if.then.i217, label %if.else.i, !prof !104

if.then.i217:                                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @tls_append_frag(ptr noundef %record.2229, ptr noundef %retval.0.i, i32 noundef %conv3.i) #12
  br label %if.end9.i218

if.else.i:                                        ; preds = %if.then89
  %len.i = getelementptr inbounds %struct.tls_record_info, ptr %record.2229, i32 0, i32 2
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i, align 4
  %67 = ptrtoint ptr %overhead_size.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %overhead_size.i, align 2
  %conv6.i = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv6.i)
  %cmp.not.i = icmp sgt i32 %66, %conv6.i
  br i1 %cmp.not.i, label %if.else.i.if.end9.i218_crit_edge, label %if.else.i.do.end.sink.split_crit_edge

if.else.i.do.end.sink.split_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.sink.split

if.else.i.if.end9.i218_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i218

if.end9.i218:                                     ; preds = %if.else.i.if.end9.i218_crit_edge, %if.then.i217
  %ret.0.i = phi i32 [ 0, %if.then.i217 ], [ %conv3.i, %if.else.i.if.end9.i218_crit_edge ]
  %frags.i = getelementptr inbounds %struct.tls_record_info, ptr %record.2229, i32 0, i32 4
  %69 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %frags.i, align 4
  %call1.i.i = call ptr @page_address(ptr noundef %70) #12
  %bv_offset.i.i.i = getelementptr inbounds %struct.tls_record_info, ptr %record.2229, i32 0, i32 4, i32 0, i32 2
  %71 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %72
  %len11.i = getelementptr inbounds %struct.tls_record_info, ptr %record.2229, i32 0, i32 2
  %73 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len11.i, align 4
  %75 = ptrtoint ptr %overhead_size.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %overhead_size.i, align 2
  %conv13.i = zext i16 %76 to i32
  %sub.i = sub i32 %74, %conv13.i
  %77 = ptrtoint ptr %iv_size1.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %iv_size1.i.i, align 2
  %conv.i.i = zext i16 %78 to i32
  %79 = ptrtoint ptr %tag_size.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %tag_size.i, align 2
  %conv2.i.i = zext i16 %80 to i32
  %add.i.i = add i32 %sub.i, %conv2.i.i
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %82)
  %cmp.not.i.i = icmp eq i16 %82, 772
  br i1 %cmp.not.i.i, label %if.end9.i218.tls_device_record_close.exit_crit_edge, label %land.lhs.true.i.i

if.end9.i218.tls_device_record_close.exit_crit_edge: ; preds = %if.end9.i218
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_device_record_close.exit

land.lhs.true.i.i:                                ; preds = %if.end9.i218
  %83 = ptrtoint ptr %cipher_type.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %cipher_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %84)
  %cmp6.not.i.i = icmp eq i16 %84, 54
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.tls_device_record_close.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.tls_device_record_close.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_device_record_close.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add8.i.i = add i32 %add.i.i, %conv.i.i
  %add.ptr.i24.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %85 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tx.i.i, align 4
  %87 = ptrtoint ptr %salt_size.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %salt_size.i.i, align 2
  %conv9.i.i = zext i16 %88 to i32
  %add.ptr10.i.i = getelementptr i8, ptr %86, i32 %conv9.i.i
  %89 = call ptr @memcpy(ptr %add.ptr.i24.i, ptr %add.ptr10.i.i, i32 %conv.i.i)
  br label %tls_device_record_close.exit

tls_device_record_close.exit:                     ; preds = %if.then.i.i, %land.lhs.true.i.i.tls_device_record_close.exit_crit_edge, %if.end9.i218.tls_device_record_close.exit_crit_edge
  %pkt_len.0.i.i = phi i32 [ %add8.i.i, %if.then.i.i ], [ %add.i.i, %land.lhs.true.i.i.tls_device_record_close.exit_crit_edge ], [ %add.i.i, %if.end9.i218.tls_device_record_close.exit_crit_edge ]
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %91)
  %cmp13.i.i = icmp eq i16 %91, 772
  %spec.select.i.i = select i1 %cmp13.i.i, i8 23, i8 %record_type
  %92 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %spec.select.i.i, ptr %add.ptr.i.i, align 1
  %arrayidx17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %93 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 3, ptr %arrayidx17.i.i, align 1
  %arrayidx18.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %94 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 3, ptr %arrayidx18.i.i, align 1
  %shr.i.i = lshr i32 %pkt_len.0.i.i, 8
  %conv19.i.i = trunc i32 %shr.i.i to i8
  %arrayidx20.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %95 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv19.i.i, ptr %arrayidx20.i.i, align 1
  %conv21.i.i = trunc i32 %pkt_len.0.i.i to i8
  %arrayidx22.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %96 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv21.i.i, ptr %arrayidx22.i.i, align 1
  %add96 = add i32 %ret.0.i, %size.addr.2232
  %call101 = call fastcc i32 @tls_push_record(ptr noundef %sk, ptr noundef %1, ptr noundef %3, ptr noundef %record.2229, i32 noundef %tls_push_record_flags.1230)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %tls_device_record_close.exit.do.end_crit_edge, label %tls_device_record_close.exit.do.cond_crit_edge

tls_device_record_close.exit.do.cond_crit_edge:   ; preds = %tls_device_record_close.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

tls_device_record_close.exit.do.end_crit_edge:    ; preds = %tls_device_record_close.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.cond:                                          ; preds = %tls_device_record_close.exit.do.cond_crit_edge, %lor.lhs.false86.do.cond_crit_edge, %if.then29.do.cond_crit_edge
  %tls_push_record_flags.2 = phi i32 [ %tls_push_record_flags.1230, %tls_device_record_close.exit.do.cond_crit_edge ], [ %tls_push_record_flags.0, %lor.lhs.false86.do.cond_crit_edge ], [ %tls_push_record_flags.0, %if.then29.do.cond_crit_edge ]
  %done.2.off0 = phi i1 [ %done.1.off0231, %tls_device_record_close.exit.do.cond_crit_edge ], [ false, %lor.lhs.false86.do.cond_crit_edge ], [ false, %if.then29.do.cond_crit_edge ]
  %rc.3 = phi i32 [ %call101, %tls_device_record_close.exit.do.cond_crit_edge ], [ 0, %lor.lhs.false86.do.cond_crit_edge ], [ 0, %if.then29.do.cond_crit_edge ]
  %size.addr.4 = phi i32 [ %add96, %tls_device_record_close.exit.do.cond_crit_edge ], [ %sub73, %lor.lhs.false86.do.cond_crit_edge ], [ %size.addr.0, %if.then29.do.cond_crit_edge ]
  br i1 %done.2.off0, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.sink.split:                                ; preds = %if.else.i.do.end.sink.split_crit_edge, %handle_error.do.end.sink.split_crit_edge
  %record.0.lcssa.sink = phi ptr [ %record.0, %handle_error.do.end.sink.split_crit_edge ], [ %record.2229, %if.else.i.do.end.sink.split_crit_edge ]
  %rc.4.ph = phi i32 [ %rc.0, %handle_error.do.end.sink.split_crit_edge ], [ -12, %if.else.i.do.end.sink.split_crit_edge ]
  call fastcc void @destroy_record(ptr noundef %record.0.lcssa.sink)
  %97 = ptrtoint ptr %open_record.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %open_record.i, align 8
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %do.cond.do.end_crit_edge, %tls_device_record_close.exit.do.end_crit_edge, %last_record.do.end_crit_edge, %if.else.do.end_crit_edge, %if.end33.do.end_crit_edge
  %more.0.off0 = phi i1 [ false, %do.end.sink.split ], [ true, %last_record.do.end_crit_edge ], [ false, %if.end33.do.end_crit_edge ], [ false, %if.else.do.end_crit_edge ], [ false, %do.cond.do.end_crit_edge ], [ false, %tls_device_record_close.exit.do.end_crit_edge ]
  %rc.4 = phi i32 [ %rc.4.ph, %do.end.sink.split ], [ %rc.1, %last_record.do.end_crit_edge ], [ %call30, %if.end33.do.end_crit_edge ], [ %rc.0, %if.else.do.end_crit_edge ], [ %rc.3, %do.cond.do.end_crit_edge ], [ %call101, %tls_device_record_close.exit.do.end_crit_edge ]
  %size.addr.5 = phi i32 [ %size, %do.end.sink.split ], [ %size.addr.1, %last_record.do.end_crit_edge ], [ %size.addr.0, %if.end33.do.end_crit_edge ], [ %size.addr.0, %if.else.do.end_crit_edge ], [ %size.addr.4, %do.cond.do.end_crit_edge ], [ %add96, %tls_device_record_close.exit.do.end_crit_edge ]
  %pending_open_record_frags = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 12
  %frombool = zext i1 %more.0.off0 to i8
  %98 = ptrtoint ptr %pending_open_record_frags to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %frombool, ptr %pending_open_record_frags, align 1
  %sub111 = sub i32 %size, %size.addr.5
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.5, i32 %size)
  %cmp112.not = icmp eq i32 %size.addr.5, %size
  %spec.select = select i1 %cmp112.not, i32 %rc.4, i32 %sub111
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then13.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.then5 ], [ %spec.select, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ %call14, %if.then13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_device_sendpage(ptr noundef %sk, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %msg_iter = alloca %struct.iov_iter, align 8
  %iov = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg_iter) #12
  %2 = call ptr @memset(ptr %msg_iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #12
  %3 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov, align 4, !annotation !116
  %4 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !116
  %and = lshr i32 %flags, 2
  %6 = and i32 %and, 32768
  %7 = or i32 %6, %flags
  %tx_lock = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #12
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #12
  %and1 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 44) #12
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %9, 30
  %10 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.end4.if.then.i_crit_edge [
    i32 2, label %if.end4.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end4.if.else.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %11 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.i.not.i = icmp eq i32 %11, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page) #12
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end4.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page) #12
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %offset
  %12 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %iov, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %size, ptr %4, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %msg_iter, i32 noundef 1, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef %size) #12
  %call6 = call fastcc i32 @tls_push_data(ptr noundef %sk, ptr noundef nonnull %msg_iter, i32 noundef %size, i32 noundef %7, i8 noundef zeroext 23)
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #12
  %14 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page, align 4
  %shr.i.i18 = lshr i32 %15, 30
  %16 = zext i32 %shr.i.i18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr.i.i18, label %kmap.exit.out_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i20
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

kmap.exit.out_crit_edge:                          ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

is_highmem_idx.exit.i20:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %17 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp2.i.not.i19 = icmp eq i32 %17, 2
  br i1 %cmp2.i.not.i19, label %is_highmem_idx.exit.i20.if.end.i_crit_edge, label %is_highmem_idx.exit.i20.out_crit_edge

is_highmem_idx.exit.i20.out_crit_edge:            ; preds = %is_highmem_idx.exit.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

is_highmem_idx.exit.i20.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i20.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %page) #12
  br label %out

out:                                              ; preds = %if.end.i, %is_highmem_idx.exit.i20.out_crit_edge, %kmap.exit.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -95, %entry.out_crit_edge ], [ %call6, %kmap.exit.out_crit_edge ], [ %call6, %is_highmem_idx.exit.i20.out_crit_edge ], [ %call6, %if.end.i ]
  call void @release_sock(ptr noundef %sk) #12
  call void @mutex_unlock(ptr noundef %tx_lock) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg_iter) #12
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tls_get_record(ptr noundef %context, i32 noundef %seq, ptr nocapture noundef writeonly %p_record_sn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hint_record_sn = getelementptr inbounds %struct.tls_offload_context_tx, ptr %context, i32 0, i32 5
  %retransmit_hint = getelementptr inbounds %struct.tls_offload_context_tx, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %retransmit_hint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retransmit_hint, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %end_seq = getelementptr inbounds %struct.tls_record_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end_seq, align 4
  %len = getelementptr inbounds %struct.tls_record_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %sub.neg = sub i32 %seq, %3
  %sub.i = add i32 %sub.neg, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %records_list = getelementptr inbounds %struct.tls_offload_context_tx, ptr %context, i32 0, i32 2
  %6 = ptrtoint ptr %records_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %records_list, align 4
  %cmp.not = icmp eq ptr %7, %records_list
  %tobool3.not95 = icmp eq ptr %7, null
  %tobool3.not = or i1 %cmp.not, %tobool3.not95
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %len.i = getelementptr inbounds %struct.tls_record_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i77 = icmp eq i32 %9, 0
  br i1 %cmp.i77, label %if.end.if.end19_crit_edge, label %if.then9, !prof !106

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then9:                                         ; preds = %if.end
  %prev = getelementptr inbounds %struct.tls_offload_context_tx, ptr %context, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev, align 4
  %end_seq.i = getelementptr inbounds %struct.tls_record_info, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %end_seq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end_seq.i, align 4
  %sub.i79 = sub i32 %13, %9
  %end_seq15 = getelementptr inbounds %struct.tls_record_info, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %end_seq15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end_seq15, align 4
  %sub.i80 = sub i32 %15, %sub.i79
  %sub1.i = sub i32 %seq, %sub.i79
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i80, i32 %sub1.i)
  %cmp.i81.not = icmp ult i32 %sub.i80, %sub1.i
  br i1 %cmp.i81.not, label %if.then9.cleanup_crit_edge, label %if.then9.if.end19_crit_edge

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.then9.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %unacked_record_sn = getelementptr inbounds %struct.tls_offload_context_tx, ptr %context, i32 0, i32 6
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %lor.lhs.false.if.end20_crit_edge
  %info.0 = phi ptr [ %7, %if.end19 ], [ %1, %lor.lhs.false.if.end20_crit_edge ]
  %record_sn.0.in = phi ptr [ %unacked_record_sn, %if.end19 ], [ %hint_record_sn, %lor.lhs.false.if.end20_crit_edge ]
  %16 = ptrtoint ptr %record_sn.0.in to i32
  call void @__asan_load8_noabort(i32 %16)
  %record_sn.0 = load i64, ptr %record_sn.0.in, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end20.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end20.rcu_read_lock.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end20
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end20.rcu_read_lock.exit_crit_edge
  %records_list21 = getelementptr inbounds %struct.tls_offload_context_tx, ptr %context, i32 0, i32 2
  %cmp22.not99 = icmp eq ptr %info.0, %records_list21
  br i1 %cmp22.not99, label %rcu_read_lock.exit.exit_rcu_unlock_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.exit_rcu_unlock_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_rcu_unlock

for.body:                                         ; preds = %if.end37.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %record_sn.1101 = phi i64 [ %inc, %if.end37.for.body_crit_edge ], [ %record_sn.0, %rcu_read_lock.exit.for.body_crit_edge ]
  %info.1100 = phi ptr [ %31, %if.end37.for.body_crit_edge ], [ %info.0, %rcu_read_lock.exit.for.body_crit_edge ]
  %end_seq23 = getelementptr inbounds %struct.tls_record_info, ptr %info.1100, i32 0, i32 1
  %21 = ptrtoint ptr %end_seq23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end_seq23, align 4
  %sub.i82 = sub i32 %seq, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i82)
  %cmp.i83 = icmp slt i32 %sub.i82, 0
  br i1 %cmp.i83, label %if.then25, label %if.end37

if.then25:                                        ; preds = %for.body
  %23 = ptrtoint ptr %retransmit_hint to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %retransmit_hint, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %if.then25.if.then33_crit_edge, label %lor.lhs.false28

if.then25.if.then33_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

lor.lhs.false28:                                  ; preds = %if.then25
  %end_seq30 = getelementptr inbounds %struct.tls_record_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %end_seq30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end_seq30, align 4
  %sub.i84 = sub i32 %26, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i84)
  %cmp.i85 = icmp slt i32 %sub.i84, 0
  br i1 %cmp.i85, label %lor.lhs.false28.if.then33_crit_edge, label %lor.lhs.false28.if.end36_crit_edge

lor.lhs.false28.if.end36_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

lor.lhs.false28.if.then33_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false28.if.then33_crit_edge, %if.then25.if.then33_crit_edge
  %27 = ptrtoint ptr %hint_record_sn to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %record_sn.1101, ptr %hint_record_sn, align 8
  %28 = ptrtoint ptr %retransmit_hint to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %info.1100, ptr %retransmit_hint, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %lor.lhs.false28.if.end36_crit_edge
  %29 = ptrtoint ptr %p_record_sn to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %record_sn.1101, ptr %p_record_sn, align 8
  br label %exit_rcu_unlock

if.end37:                                         ; preds = %for.body
  %inc = add i64 %record_sn.1101, 1
  %30 = ptrtoint ptr %info.1100 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %info.1100, align 4
  %cmp22.not = icmp eq ptr %31, %records_list21
  br i1 %cmp22.not, label %if.end37.exit_rcu_unlock_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end37.exit_rcu_unlock_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_rcu_unlock

exit_rcu_unlock:                                  ; preds = %if.end37.exit_rcu_unlock_crit_edge, %if.end36, %rcu_read_lock.exit.exit_rcu_unlock_crit_edge
  %info.2 = phi ptr [ %info.1100, %if.end36 ], [ null, %rcu_read_lock.exit.exit_rcu_unlock_crit_edge ], [ null, %if.end37.exit_rcu_unlock_crit_edge ]
  %call.i86 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i86, label %exit_rcu_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i89

exit_rcu_unlock.rcu_read_unlock.exit_crit_edge:   ; preds = %exit_rcu_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i89:                                ; preds = %exit_rcu_unlock
  %call1.i87 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool.not.i88 = icmp eq i32 %call1.i87, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i91

land.lhs.true.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i91:                               ; preds = %land.lhs.true.i89
  %.b4.i90 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i90, label %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, label %if.then.i92

land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i92:                                      ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i92, %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, %exit_rcu_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %32 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i.i93 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i93 to ptr
  %preempt_count.i.i.i.i94 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i94, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i94, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %info.2, %rcu_read_unlock.exit ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.then9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_device_write_space(ptr noundef %sk, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %partially_sent_record.i = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %partially_sent_record.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %partially_sent_record.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then:                                          ; preds = %entry
  %sk_allocation1 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %2 = ptrtoint ptr %sk_allocation1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_allocation1, align 8
  %sk_write_pending = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 28
  %4 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_write_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then.if.end30_crit_edge, label %land.rhs

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.rhs:                                         ; preds = %if.then
  %.b49 = load i1, ptr @tls_device_write_space.__already_done, align 1
  br i1 %.b49, label %land.rhs.if.end30_crit_edge, label %if.then9, !prof !104

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tls_device_write_space.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 668, i32 noundef 9, ptr noundef null) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then9, %land.rhs.if.end30_crit_edge, %if.then.if.end30_crit_edge
  %6 = ptrtoint ptr %sk_allocation1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2592, ptr %sk_allocation1, align 8
  %call39 = tail call i32 @tls_push_partial_record(ptr noundef %sk, ptr noundef %ctx, i32 noundef 1065024) #12
  %7 = ptrtoint ptr %sk_allocation1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %sk_allocation1, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end30, %entry.if.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_push_partial_record(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_device_rx_resync_new_rec(ptr noundef %sk, i32 noundef %rcd_len, i32 noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  %seq.addr = alloca i32, align 4
  %rcd_sn = alloca [8 x i8], align 8
  %resync_req = alloca i64, align 8
  %rcd_delta = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %seq.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %seq, ptr %seq.addr, align 4
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rcd_sn) #12
  %3 = ptrtoint ptr %rcd_sn to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %rcd_sn, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resync_req) #12
  %4 = ptrtoint ptr %resync_req to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %resync_req, align 8, !annotation !116
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rcd_delta) #12
  %5 = ptrtoint ptr %rcd_delta to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %rcd_delta, align 2, !annotation !116
  %rx_conf = getelementptr inbounds %struct.tls_context, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %rx_conf to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %rx_conf, align 4
  %7 = and i8 %bf.load, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %cmp.not = icmp eq i8 %7, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.tls_context, ptr %2, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge, !prof !104

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %2, i32 0, i32 5
  %10 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv_ctx_rx.i, align 4
  %rec_seq = getelementptr inbounds %struct.tls_context, ptr %2, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %rec_seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rec_seq, align 4
  %rec_seq_size = getelementptr inbounds %struct.tls_prot_info, ptr %2, i32 0, i32 7
  %14 = ptrtoint ptr %rec_seq_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rec_seq_size, align 2
  %conv8 = zext i16 %15 to i32
  %16 = call ptr @memcpy(ptr %rcd_sn, ptr %13, i32 %conv8)
  %resync_type = getelementptr inbounds %struct.tls_offload_context_rx, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %resync_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resync_type, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %18, label %if.end6.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb57
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  %20 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %11, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %20, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %20) #12
  %21 = ptrtoint ptr %resync_req to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call.i, ptr %resync_req, align 8
  %add = add i32 %seq, 4
  %22 = ptrtoint ptr %seq.addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %seq.addr, align 4
  %conv12 = trunc i64 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv12)
  %tobool13.not = icmp eq i32 %conv12, 0
  br i1 %tobool13.not, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false, !prof !104

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %23 = lshr i64 %call.i, 32
  %conv11 = trunc i64 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv11)
  %cmp22.not = icmp eq i32 %add, %conv11
  br i1 %cmp22.not, label %lor.lhs.false24, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %call.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 8) #12
  %call.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %resync_req, i32 noundef 8) #12
  %24 = ptrtoint ptr %resync_req to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %resync_req, align 8
  %call.i2.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %20, i64 noundef %25, i64 noundef 0) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i2.i, i64 %25)
  %cmp.not.i.i = icmp eq i64 %call.i2.i, %25
  br i1 %cmp.not.i.i, label %lor.lhs.false24.sw.epilog_crit_edge, label %lor.lhs.false24.cleanup_crit_edge, !prof !104

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false24.sw.epilog_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end6
  %resync_nh_do_now = getelementptr inbounds %struct.tls_offload_context_rx, ptr %11, i32 0, i32 2
  %26 = ptrtoint ptr %resync_nh_do_now to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load30 = load i8, ptr %resync_nh_do_now, align 4
  %27 = and i8 %bf.load30, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool33.not = icmp eq i8 %27, 0
  br i1 %tobool33.not, label %sw.bb29.cleanup_crit_edge, label %if.end43, !prof !104

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %sw.bb29
  %call44 = tail call fastcc i32 @tcp_inq(ptr noundef %sk)
  call void @__sanitizer_cov_trace_cmp4(i32 %call44, i32 %rcd_len)
  %cmp45 = icmp ugt i32 %call44, %rcd_len
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_tls_device_rx_resync_nh_delay(ptr noundef %sk, i32 noundef %call44, i32 noundef %rcd_len)
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %28 = ptrtoint ptr %resync_nh_do_now to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load50 = load i8, ptr %resync_nh_do_now, align 4
  %bf.clear51 = and i8 %bf.load50, -65
  store i8 %bf.clear51, ptr %resync_nh_do_now, align 4
  %add52 = add i32 %seq, %rcd_len
  %29 = ptrtoint ptr %seq.addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add52, ptr %seq.addr, align 4
  %30 = ptrtoint ptr %rec_seq_size to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rec_seq_size, align 2
  %conv55 = zext i16 %31 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end48
  %i.0.in.i = phi i32 [ %conv55, %if.end48 ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i)
  %cmp.i = icmp sgt i32 %i.0.in.i, 0
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.sw.epilog_crit_edge

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i:                                       ; preds = %for.cond.i
  %i.0.i = add nsw i32 %i.0.in.i, -1
  %arrayidx.i = getelementptr i8, ptr %rcd_sn, i32 %i.0.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %inc.i = add i8 %33, 1
  store i8 %inc.i, ptr %arrayidx.i, align 1
  %cmp2.not.i = icmp eq i8 %inc.i, 0
  br i1 %cmp2.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.sw.epilog_crit_edge

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

sw.bb57:                                          ; preds = %if.end6
  %34 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %11, i32 0, i32 3
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %call.i.i106 = tail call zeroext i1 @__kasan_check_read(ptr noundef %36, i32 noundef 8) #12
  %call.i107 = tail call i64 @generic_atomic64_read(ptr noundef %36) #12
  %37 = ptrtoint ptr %resync_req to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call.i107, ptr %resync_req, align 8
  %conv59 = trunc i64 %call.i107 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv59)
  %tobool60.not = icmp eq i32 %conv59, 0
  br i1 %tobool60.not, label %sw.bb57.cleanup_crit_edge, label %if.end70, !prof !104

sw.bb57.cleanup_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end70:                                         ; preds = %sw.bb57
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %34, align 8
  %call72 = call fastcc zeroext i1 @tls_device_rx_resync_async(ptr noundef %39, i64 noundef %call.i107, ptr noundef nonnull %seq.addr, ptr noundef nonnull %rcd_delta)
  br i1 %call72, label %if.end74, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %rcd_delta to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rcd_delta, align 2
  %42 = ptrtoint ptr %rcd_sn to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rcd_sn, align 8
  %44 = zext i16 %41 to i64
  %sub.i = sub i64 %43, %44
  store i64 %sub.i, ptr %rcd_sn, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end74, %for.body.i.sw.epilog_crit_edge, %for.cond.i.sw.epilog_crit_edge, %lor.lhs.false24.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge
  %45 = ptrtoint ptr %seq.addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %seq.addr, align 4
  call fastcc void @tls_device_resync_rx(ptr noundef %2, ptr noundef %sk, i32 noundef %46, ptr noundef nonnull %rcd_sn)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end70.cleanup_crit_edge, %sw.bb57.cleanup_crit_edge, %if.then47, %sw.bb29.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rcd_delta) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resync_req) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rcd_sn) #12
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @tcp_inq(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.else:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.else.if.then10_crit_edge

if.else.if.then10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.else
  %urg_data = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 55
  %6 = ptrtoint ptr %urg_data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %urg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool3.not = icmp eq i16 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false4

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %urg_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 103
  %8 = ptrtoint ptr %urg_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urg_seq, align 4
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 8
  %10 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %copied_seq, align 4
  %sub.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false4.if.then10_crit_edge, label %lor.lhs.false7

lor.lhs.false4.if.then10_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %12 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rcv_nxt, align 8
  %sub.i36 = sub i32 %9, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i36)
  %cmp.i37 = icmp slt i32 %sub.i36, 0
  br i1 %cmp.i37, label %lor.lhs.false7.if.end22_crit_edge, label %lor.lhs.false7.if.then10_crit_edge

lor.lhs.false7.if.then10_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false7.if.end22_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then10:                                        ; preds = %lor.lhs.false7.if.then10_crit_edge, %lor.lhs.false4.if.then10_crit_edge, %lor.lhs.false.if.then10_crit_edge, %if.else.if.then10_crit_edge
  %rcv_nxt11 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %14 = ptrtoint ptr %rcv_nxt11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rcv_nxt11, align 8
  %copied_seq12 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 8
  %16 = ptrtoint ptr %copied_seq12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %copied_seq12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %tobool13.not = icmp eq i32 %15, %17
  br i1 %tobool13.not, label %if.then10.if.end22_crit_edge, label %land.lhs.true

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %15, %17
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %2, align 4
  %20 = shl i32 %19, 30
  %sext = ashr i32 %20, 31
  %spec.select = add i32 %sub, %sext
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.then10.if.end22_crit_edge, %lor.lhs.false7.if.end22_crit_edge, %entry.if.end22_crit_edge
  %answ.0 = phi i32 [ 0, %if.then10.if.end22_crit_edge ], [ 0, %entry.if.end22_crit_edge ], [ %spec.select, %land.lhs.true ], [ %sub.i, %lor.lhs.false7.if.end22_crit_edge ]
  ret i32 %answ.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tls_device_rx_resync_nh_delay(ptr noundef %sk, i32 noundef %sock_data, i32 noundef %rec_len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_rx_resync_nh_delay, i32 0, i32 1), ptr blockaddress(@trace_tls_device_rx_resync_nh_delay, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !111

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !119
  %call42 = tail call i32 @__traceiter_tls_device_rx_resync_nh_delay(ptr noundef null, ptr noundef %sk, i32 noundef %sock_data, i32 noundef %rec_len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_rx_resync_nh_delay, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_rx_resync_nh_delay, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tls_device_rx_resync_nh_delay.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_tls_device_rx_resync_nh_delay.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 145, ptr noundef nonnull @.str.7) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
define internal fastcc zeroext i1 @tls_device_rx_resync_async(ptr noundef %resync_async, i64 noundef %resync_req, ptr nocapture noundef %seq, ptr nocapture noundef writeonly %rcd_delta) unnamed_addr #0 align 64 {
entry:
  %resync_req.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resync_req.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %resync_req, ptr %resync_req.addr, align 8
  %1 = lshr i64 %resync_req, 32
  %conv1 = trunc i64 %1 to i32
  %2 = lshr i64 %resync_req, 16
  %and4 = and i64 %2, 65535
  %add = add nuw nsw i64 %and4, %1
  %conv5 = trunc i64 %add to i32
  %3 = ptrtoint ptr %rcd_delta to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %rcd_delta, align 2
  %conv123 = and i64 %resync_req, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv123)
  %tobool.not = icmp eq i64 %conv123, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %loglen62 = getelementptr inbounds %struct.tls_offload_resync_async, ptr %resync_async, i32 0, i32 1
  %4 = ptrtoint ptr %loglen62 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %loglen62, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp64137.not = icmp eq i16 %5, 0
  br i1 %cmp64137.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then:                                          ; preds = %entry
  %rcd_delta6 = getelementptr inbounds %struct.tls_offload_resync_async, ptr %resync_async, i32 0, i32 2
  %6 = ptrtoint ptr %rcd_delta6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rcd_delta6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp eq i16 %7, -1
  br i1 %cmp, label %land.rhs, label %if.end48

land.rhs:                                         ; preds = %if.then
  %.b124 = load i1, ptr @tls_device_rx_resync_async.__already_done, align 1
  br i1 %.b124, label %land.rhs.cleanup_crit_edge, label %if.then17, !prof !104

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tls_device_rx_resync_async.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 709, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end48:                                         ; preds = %if.then
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq, align 4
  %sub.i = sub i32 %9, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end48.cleanup_crit_edge, label %if.end50

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50:                                         ; preds = %if.end48
  %sub.i132 = sub i32 %conv5, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i132)
  %cmp.i133 = icmp slt i32 %sub.i132, 0
  br i1 %cmp.i133, label %if.end50.if.end57_crit_edge, label %land.lhs.true

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end50
  %loglen = getelementptr inbounds %struct.tls_offload_resync_async, ptr %resync_async, i32 0, i32 1
  %10 = ptrtoint ptr %loglen to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %loglen, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %11)
  %cmp53 = icmp ult i16 %11, 13
  br i1 %cmp53, label %if.then55, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %conv52 = zext i16 %11 to i32
  %inc = add nuw nsw i16 %11, 1
  %12 = ptrtoint ptr %loglen to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %inc, ptr %loglen, align 8
  %arrayidx = getelementptr %struct.tls_offload_resync_async, ptr %resync_async, i32 0, i32 3, i32 %conv52
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %arrayidx, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %land.lhs.true.if.end57_crit_edge, %if.end50.if.end57_crit_edge
  %inc59 = add nuw i16 %7, 1
  %14 = ptrtoint ptr %rcd_delta6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %inc59, ptr %rcd_delta6, align 2
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx68 = getelementptr %struct.tls_offload_resync_async, ptr %resync_async, i32 0, i32 3, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv1)
  %cmp69 = icmp eq i32 %16, %conv1
  br i1 %cmp69, label %land.lhs.true71, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true71:                                  ; preds = %for.body
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %resync_async, i32 noundef 8) #12
  %call.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %resync_req.addr, i32 noundef 8) #12
  %17 = ptrtoint ptr %resync_req.addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %resync_req.addr, align 8
  %call.i2.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %resync_async, i64 noundef %18, i64 noundef 0) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i2.i, i64 %18)
  %cmp.not.i.i = icmp eq i64 %call.i2.i, %18
  br i1 %cmp.not.i.i, label %if.then74, label %atomic64_try_cmpxchg.exit, !prof !104

atomic64_try_cmpxchg.exit:                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %resync_req.addr to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i2.i, ptr %resync_req.addr, align 8
  br label %for.inc

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  %20 = trunc i32 %indvars.iv to i16
  %rcd_delta75 = getelementptr inbounds %struct.tls_offload_resync_async, ptr %resync_async, i32 0, i32 2
  %21 = ptrtoint ptr %rcd_delta75 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rcd_delta75, align 2
  %sub = sub i16 %22, %20
  %23 = ptrtoint ptr %rcd_delta to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %sub, ptr %rcd_delta, align 2
  %24 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv1, ptr %seq, align 4
  %25 = ptrtoint ptr %loglen62 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %loglen62, align 8
  store i16 0, ptr %rcd_delta75, align 2
  br label %cleanup

for.inc:                                          ; preds = %atomic64_try_cmpxchg.exit, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %26 = ptrtoint ptr %loglen62 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %loglen62, align 8
  %28 = zext i16 %27 to i32
  %cmp64 = icmp ult i32 %indvars.iv.next, %28
  br i1 %cmp64, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %29 = ptrtoint ptr %loglen62 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %loglen62, align 8
  %rcd_delta84 = getelementptr inbounds %struct.tls_offload_resync_async, ptr %resync_async, i32 0, i32 2
  %30 = ptrtoint ptr %rcd_delta84 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %rcd_delta84, align 2
  %31 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv1)
  %cmp85 = icmp eq i32 %32, %conv1
  br i1 %cmp85, label %land.lhs.true87, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true87:                                  ; preds = %for.end
  %call.i.i126 = call zeroext i1 @__kasan_check_write(ptr noundef %resync_async, i32 noundef 8) #12
  %call.i1.i127 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %resync_req.addr, i32 noundef 8) #12
  %33 = ptrtoint ptr %resync_req.addr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %resync_req.addr, align 8
  %call.i2.i128 = call i64 @generic_atomic64_cmpxchg(ptr noundef %resync_async, i64 noundef %34, i64 noundef 0) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i2.i128, i64 %34)
  %cmp.not.i.i129 = icmp eq i64 %call.i2.i128, %34
  br i1 %cmp.not.i.i129, label %land.lhs.true87.cleanup_crit_edge, label %atomic64_try_cmpxchg.exit131, !prof !104

land.lhs.true87.cleanup_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

atomic64_try_cmpxchg.exit131:                     ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %resync_req.addr to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call.i2.i128, ptr %resync_req.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %atomic64_try_cmpxchg.exit131, %land.lhs.true87.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then74, %if.end57, %if.end48.cleanup_crit_edge, %if.then17, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end57 ], [ true, %if.then74 ], [ false, %if.then17 ], [ false, %if.end48.cleanup_crit_edge ], [ false, %land.rhs.cleanup_crit_edge ], [ false, %atomic64_try_cmpxchg.exit131 ], [ false, %for.end.cleanup_crit_edge ], [ true, %land.lhs.true87.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tls_device_resync_rx(ptr noundef %tls_ctx, ptr noundef %sk, i32 noundef %seq, ptr noundef %rcd_sn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 5
  %0 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_rx.i, align 4
  %resync_type = getelementptr inbounds %struct.tls_offload_context_rx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %resync_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resync_type, align 8
  tail call fastcc void @trace_tls_device_rx_resync_send(ptr noundef %sk, i32 noundef %seq, ptr noundef %rcd_sn, i32 noundef %3)
  %4 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %netdev1 = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 6
  %8 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %netdev1, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %tlsdev_ops = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 48
  %10 = ptrtoint ptr %tlsdev_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tlsdev_ops, align 32
  %tls_dev_resync = getelementptr inbounds %struct.tlsdev_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %tls_dev_resync to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tls_dev_resync, align 4
  %call2 = tail call i32 %13(ptr noundef nonnull %9, ptr noundef %sk, i32 noundef %seq, ptr noundef %rcd_sn, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %call.i55 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i55, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i58

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i58:                                ; preds = %if.end
  %call1.i56 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true.i58.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i60

land.lhs.true.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i60:                               ; preds = %land.lhs.true.i58
  %.b4.i59 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59, label %land.lhs.true2.i60.rcu_read_unlock.exit_crit_edge, label %if.then.i61

land.lhs.true2.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i61:                                      ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i61, %land.lhs.true2.i60.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i58.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %14 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i.i62 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i62 to ptr
  %preempt_count.i.i.i.i63 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i63, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i63, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !121
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %19 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_net.i, align 4
  %tls_statistics = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 30, i32 7
  %21 = ptrtoint ptr %tls_statistics to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tls_statistics, align 4
  %arrayidx = getelementptr [11 x i32], ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %arrayidx to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %arrayidx22 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx22, align 4
  %add = add i32 %29, %23
  %30 = inttoptr i32 %add to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add23 = add i32 %32, 1
  store i32 %add23, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !122
  %and.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool34.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool34.not, label %if.then38, label %rcu_read_unlock.exit.do.end41_crit_edge, !prof !106

rcu_read_unlock.exit.do.end41_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

if.then38:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %rcu_read_unlock.exit.do.end41_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #12, !srcloc !123
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_device_decrypted(ptr noundef %sk, ptr noundef %tls_ctx, ptr noundef %skb, ptr nocapture noundef readonly %rxm) local_unnamed_addr #0 align 64 {
entry:
  %rcd_sn.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ctx_rx.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 5
  %0 = ptrtoint ptr %priv_ctx_rx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_rx.i, align 4
  %decrypted = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %decrypted to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load = load i32, ptr %decrypted, align 2
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.cast = and i32 %bf.lshr, 1
  %3 = xor i32 %bf.cast, 1
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %skb_iter.093 = load ptr, ptr %frag_list, align 8
  %tobool2.not94 = icmp eq ptr %skb_iter.093, null
  br i1 %tobool2.not94, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %skb_iter.097 = phi ptr [ %skb_iter.0, %for.body.for.body_crit_edge ], [ %skb_iter.093, %entry.for.body_crit_edge ]
  %is_encrypted.096 = phi i32 [ %and17, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %is_decrypted.095 = phi i32 [ %and, %for.body.for.body_crit_edge ], [ %bf.cast, %entry.for.body_crit_edge ]
  %decrypted3 = getelementptr inbounds %struct.sk_buff, ptr %skb_iter.097, i32 0, i32 15, i32 0, i32 3
  %7 = ptrtoint ptr %decrypted3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load4 = load i32, ptr %decrypted3, align 2
  %bf.lshr5 = lshr i32 %bf.load4, 13
  %8 = trunc i32 %bf.lshr5 to i8
  %bf.cast7 = and i8 %8, 1
  %conv8 = zext i8 %bf.cast7 to i32
  %and = and i32 %is_decrypted.095, %conv8
  %9 = xor i8 %bf.cast7, 1
  %10 = zext i8 %9 to i32
  %and17 = and i32 %is_encrypted.096, %10
  %11 = ptrtoint ptr %skb_iter.097 to i32
  call void @__asan_load4_noabort(i32 %11)
  %skb_iter.0 = load ptr, ptr %skb_iter.097, align 8
  %tobool2.not = icmp eq ptr %skb_iter.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %is_decrypted.0.lcssa = phi i32 [ %bf.cast, %entry.for.end_crit_edge ], [ %and, %for.body.for.end_crit_edge ]
  %is_encrypted.0.lcssa = phi i32 [ %3, %entry.for.end_crit_edge ], [ %and17, %for.body.for.end_crit_edge ]
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 8
  %12 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %copied_seq, align 4
  %14 = ptrtoint ptr %rxm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxm, align 4
  %sub = sub i32 %13, %15
  %rec_seq = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %rec_seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rec_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_encrypted.0.lcssa)
  %tobool20 = icmp ne i32 %is_encrypted.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_decrypted.0.lcssa)
  %tobool21 = icmp ne i32 %is_decrypted.0.lcssa, 0
  tail call fastcc void @trace_tls_device_decrypted(ptr noundef %sk, i32 noundef %sub, ptr noundef %17, i32 noundef %15, i1 noundef zeroext %tobool20, i1 noundef zeroext %tobool21)
  %decrypted22 = getelementptr inbounds %struct.tls_sw_context_rx, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %decrypted22 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load23 = load i8, ptr %decrypted22, align 1
  %19 = trunc i32 %is_decrypted.0.lcssa to i8
  %conv2791 = shl nuw nsw i8 %19, 6
  %20 = and i8 %conv2791, 64
  %bf.set = or i8 %bf.load23, %20
  store i8 %bf.set, ptr %decrypted22, align 1
  %flags = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 14
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool31.not = icmp eq i32 %and1.i, 0
  br i1 %tobool31.not, label %if.end47, label %if.then, !prof !104

if.then:                                          ; preds = %for.end
  %23 = or i32 %is_encrypted.0.lcssa, %is_decrypted.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %if.end, label %if.then.cleanup_crit_edge, !prof !106

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call46 = tail call fastcc i32 @tls_device_reencrypt(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

if.end47:                                         ; preds = %for.end
  br i1 %tobool21, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %resync_nh_reset = getelementptr inbounds %struct.tls_offload_context_rx, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %resync_nh_reset to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load50 = load i8, ptr %resync_nh_reset, align 4
  %bf.set52 = or i8 %bf.load50, -128
  store i8 %bf.set52, ptr %resync_nh_reset, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.end47
  br i1 %tobool20, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end53
  %resync_type.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %resync_type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resync_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then55
  %resync_nh_do_now.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %resync_nh_do_now.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %resync_nh_do_now.i, align 4
  %28 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool5.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool5.not.i, label %if.end10.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear9.i = and i8 %bf.load.i, 127
  %29 = ptrtoint ptr %resync_nh_do_now.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %bf.clear9.i, ptr %resync_nh_do_now.i, align 4
  %30 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %30, align 8
  %decrypted_tgt.i = getelementptr inbounds %struct.anon.199, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %decrypted_tgt.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %decrypted_tgt.i, align 4
  br label %cleanup

if.end10.i:                                       ; preds = %if.end2.i
  %33 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %33, align 8
  %decrypted_tgt12.i = getelementptr inbounds %struct.anon.199, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %decrypted_tgt12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %decrypted_tgt12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %37)
  %cmp13.not.i = icmp ugt i32 %inc.i, %37
  br i1 %cmp13.not.i, label %if.end15.i, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %37)
  %cmp17.i = icmp ult i32 %37, 128
  %add.i = add i32 %37, 128
  %mul.i = shl i32 %37, 1
  %storemerge.i = select i1 %cmp17.i, i32 %mul.i, i32 %add.i
  %38 = ptrtoint ptr %decrypted_tgt12.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %storemerge.i, ptr %decrypted_tgt12.i, align 4
  %add.ptr.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %39 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %40 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end15.i.tcp_inq.exit.i_crit_edge

if.end15.i.tcp_inq.exit.i_crit_edge:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcp_inq.exit.i

if.else.i.i:                                      ; preds = %if.end15.i
  %41 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false.i.i, label %if.else.i.i.if.then10.i.i_crit_edge

if.else.i.i.if.then10.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

lor.lhs.false.i.i:                                ; preds = %if.else.i.i
  %urg_data.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 55
  %45 = ptrtoint ptr %urg_data.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %urg_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool3.not.i.i = icmp eq i16 %46, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.if.then10.i.i_crit_edge, label %lor.lhs.false4.i.i

lor.lhs.false.i.i.if.then10.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %urg_seq.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 103
  %47 = ptrtoint ptr %urg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %urg_seq.i.i, align 4
  %49 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %copied_seq, align 4
  %sub.i.i.i = sub i32 %48, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %lor.lhs.false4.i.i.if.then10.i.i_crit_edge, label %lor.lhs.false7.i.i

lor.lhs.false4.i.i.if.then10.i.i_crit_edge:       ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

lor.lhs.false7.i.i:                               ; preds = %lor.lhs.false4.i.i
  %rcv_nxt.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %51 = ptrtoint ptr %rcv_nxt.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rcv_nxt.i.i, align 8
  %sub.i36.i.i = sub i32 %48, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i36.i.i)
  %cmp.i37.i.i = icmp slt i32 %sub.i36.i.i, 0
  br i1 %cmp.i37.i.i, label %lor.lhs.false7.i.i.tcp_inq.exit.i_crit_edge, label %lor.lhs.false7.i.i.if.then10.i.i_crit_edge

lor.lhs.false7.i.i.if.then10.i.i_crit_edge:       ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

lor.lhs.false7.i.i.tcp_inq.exit.i_crit_edge:      ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcp_inq.exit.i

if.then10.i.i:                                    ; preds = %lor.lhs.false7.i.i.if.then10.i.i_crit_edge, %lor.lhs.false4.i.i.if.then10.i.i_crit_edge, %lor.lhs.false.i.i.if.then10.i.i_crit_edge, %if.else.i.i.if.then10.i.i_crit_edge
  %rcv_nxt11.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %53 = ptrtoint ptr %rcv_nxt11.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rcv_nxt11.i.i, align 8
  %55 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %copied_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %tobool13.not.i.i = icmp eq i32 %54, %56
  br i1 %tobool13.not.i.i, label %if.then10.i.i.tcp_inq.exit.i_crit_edge, label %land.lhs.true.i.i

if.then10.i.i.tcp_inq.exit.i_crit_edge:           ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcp_inq.exit.i

land.lhs.true.i.i:                                ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %54, %56
  %57 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %41, align 4
  %59 = shl i32 %58, 30
  %sext.i.i = ashr i32 %59, 31
  %spec.select.i.i = add i32 %sub.i.i, %sext.i.i
  br label %tcp_inq.exit.i

tcp_inq.exit.i:                                   ; preds = %land.lhs.true.i.i, %if.then10.i.i.tcp_inq.exit.i_crit_edge, %lor.lhs.false7.i.i.tcp_inq.exit.i_crit_edge, %if.end15.i.tcp_inq.exit.i_crit_edge
  %answ.0.i.i = phi i32 [ 0, %if.then10.i.i.tcp_inq.exit.i_crit_edge ], [ 0, %if.end15.i.tcp_inq.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ], [ %sub.i.i.i, %lor.lhs.false7.i.i.tcp_inq.exit.i_crit_edge ]
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %answ.0.i.i, i32 %61)
  %cmp23.i = icmp sgt i32 %answ.0.i.i, %61
  br i1 %cmp23.i, label %if.then24.i, label %if.else29.i

if.then24.i:                                      ; preds = %tcp_inq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_tls_device_rx_resync_nh_schedule(ptr noundef %sk) #12
  %62 = ptrtoint ptr %resync_nh_do_now.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load26.i = load i8, ptr %resync_nh_do_now.i, align 4
  %bf.set28.i = or i8 %bf.load26.i, 64
  store i8 %bf.set28.i, ptr %resync_nh_do_now.i, align 4
  br label %cleanup

if.else29.i:                                      ; preds = %tcp_inq.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rcd_sn.i) #12
  %63 = ptrtoint ptr %rcd_sn.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 -1, ptr %rcd_sn.i, align 8
  %64 = ptrtoint ptr %rec_seq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rec_seq, align 4
  %rec_seq_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %tls_ctx, i32 0, i32 7
  %66 = ptrtoint ptr %rec_seq_size.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %rec_seq_size.i, align 2
  %conv.i = zext i16 %67 to i32
  %68 = call ptr @memcpy(ptr %rcd_sn.i, ptr %65, i32 %conv.i)
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.else29.i
  %i.0.in.i.i = phi i32 [ %conv.i, %if.else29.i ], [ %i.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i)
  %cmp.i.i = icmp sgt i32 %i.0.in.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %for.cond.i.i.tls_bigint_increment.exit.i_crit_edge

for.cond.i.i.tls_bigint_increment.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_bigint_increment.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %i.0.i.i = add nsw i32 %i.0.in.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %rcd_sn.i, i32 %i.0.i.i
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i.i, align 1
  %inc.i.i = add i8 %70, 1
  store i8 %inc.i.i, ptr %arrayidx.i.i, align 1
  %cmp2.not.i.i = icmp eq i8 %inc.i.i, 0
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.tls_bigint_increment.exit.i_crit_edge

for.body.i.i.tls_bigint_increment.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_bigint_increment.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

tls_bigint_increment.exit.i:                      ; preds = %for.body.i.i.tls_bigint_increment.exit.i_crit_edge, %for.cond.i.i.tls_bigint_increment.exit.i_crit_edge
  %71 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %copied_seq, align 4
  call fastcc void @tls_device_resync_rx(ptr noundef %tls_ctx, ptr noundef %sk, i32 noundef %72, ptr noundef nonnull %rcd_sn.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rcd_sn.i) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %resync_nh_reset57 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %1, i32 0, i32 2
  %73 = ptrtoint ptr %resync_nh_reset57 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load58 = load i8, ptr %resync_nh_reset57, align 4
  %bf.set60 = or i8 %bf.load58, -128
  store i8 %bf.set60, ptr %resync_nh_reset57, align 4
  %call61 = tail call fastcc i32 @tls_device_reencrypt(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %tls_bigint_increment.exit.i, %if.then24.i, %if.end10.i.cleanup_crit_edge, %if.then6.i, %if.end.i.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.then49, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %if.end ], [ 0, %if.then49 ], [ %call61, %if.end56 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then55.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then6.i ], [ 0, %if.end10.i.cleanup_crit_edge ], [ 0, %if.then24.i ], [ 0, %tls_bigint_increment.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tls_device_decrypted(ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %rec_len, i1 noundef zeroext %encrypted, i1 noundef zeroext %decrypted) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_decrypted, i32 0, i32 1), ptr blockaddress(@trace_tls_device_decrypted, %do.body)) #12
          to label %if.end51 [label %do.body], !srcloc !111

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i78 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i78
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end72_crit_edge, label %cleanup.thread

cpu_online.exit.if.end72_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %call45 = tail call i32 @__traceiter_tls_device_decrypted(ptr noundef null, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %rec_len, i1 noundef zeroext %encrypted, i1 noundef zeroext %decrypted) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i76 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i76 to ptr
  %preempt_count.i.i77 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i77 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i77, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i77, align 4
  br label %if.end51

if.end51:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i79 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i79 to ptr
  %cpu53 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i80 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i80, label %if.end51.cpu_online.exit88_crit_edge, label %land.rhs.i.i.i.i82

if.end51.cpu_online.exit88_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit88

land.rhs.i.i.i.i82:                               ; preds = %if.end51
  %.b37.i.i.i.i81 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i81, label %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, label %if.then.i.i.i.i83, !prof !104

land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge:   ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit88

if.then.i.i.i.i83:                                ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit88

cpu_online.exit88:                                ; preds = %if.then.i.i.i.i83, %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, %if.end51.cpu_online.exit88_crit_edge
  %div3.i.i.i84 = lshr i32 %20, 5
  %arrayidx.i.i.i85 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i84
  %22 = ptrtoint ptr %arrayidx.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i85, align 4
  %and.i.i.i86 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i86
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i87.not = icmp eq i32 %25, 0
  br i1 %tobool.i87.not, label %cpu_online.exit88.if.end72_crit_edge, label %if.then55

cpu_online.exit88.if.end72_crit_edge:             ; preds = %cpu_online.exit88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then55:                                        ; preds = %cpu_online.exit88
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_decrypted, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_decrypted, i32 0, i32 7), align 4
  %call61 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true, label %if.then55.do.end70_crit_edge

if.then55.do.end70_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end70

land.lhs.true:                                    ; preds = %if.then55
  %call63 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true
  %.b75 = load i1, ptr @trace_tls_device_decrypted.__warned, align 1
  br i1 %.b75, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_tls_device_decrypted.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 75, ptr noundef nonnull @.str.7) #12
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true.do.end70_crit_edge, %if.then55.do.end70_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i89 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i89 to ptr
  %preempt_count.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i90, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i90, align 4
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %cpu_online.exit88.if.end72_crit_edge, %cpu_online.exit.if.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tls_device_reencrypt(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %unused = alloca ptr, align 4
  %sg = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %offset1 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused) #12
  %2 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %unused, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #12
  %3 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %4 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %5 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %6 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_allocation, align 8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %add2 = add i32 %9, 13
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef %7) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup77_crit_edge, label %if.end

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.end:                                           ; preds = %entry
  %call4 = call i32 @skb_cow_data(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %unused) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.free_buf_crit_edge, label %if.end8, !prof !106

if.end.free_buf_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_buf

if.end8:                                          ; preds = %if.end
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 1) #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %add11 = add i32 %11, 13
  %12 = ptrtoint ptr %call9.i to i32
  %cmp.i147 = icmp ugt ptr %call9.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i147, label %land.lhs.true.i, label %if.end8.do.body5.i_crit_edge, !prof !104

if.end8.do.body5.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %13 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %13, %call9.i
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !104

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %12, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %14, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !106

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end8.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !126
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %add.ptr.i148 = getelementptr %struct.page, ptr %15, i32 %shr.i
  %16 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg, align 4
  %18 = ptrtoint ptr %add.ptr.i148 to i32
  %and2.i.i.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !104

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !127
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !104

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !128
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %12, 3968
  %and.i.i.i = and i32 %17, 3
  %or.i.i.i = or i32 %and.i.i.i, %18
  %19 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i.i, ptr %sg, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i, ptr %3, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add11, ptr %4, align 4
  %call12 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %1, ptr noundef nonnull %call9.i, i32 noundef 13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %sg_set_buf.exit.free_buf_crit_edge

sg_set_buf.exit.free_buf_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_buf

if.end15:                                         ; preds = %sg_set_buf.exit
  %call17 = call i32 @decrypt_skb(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %sg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, -74
  br i1 %cmp18.not, label %if.else, label %if.end15.free_buf_crit_edge

if.end15.free_buf_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_buf

if.else:                                          ; preds = %if.end15
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %sub = add i32 %23, -16
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nr_frags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp10.not.i.i = icmp eq i8 %31, 0
  br i1 %cmp10.not.i.i, label %skb_pagelen.exit.thread, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.else
  %conv.i.i = zext i8 %31 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.012.in.i.i = phi i32 [ %i.012.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %conv.i.i, %for.body.preheader.i.i ]
  %len.011.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %i.012.i.i = add nsw i32 %i.012.in.i.i, -1
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %29, i32 0, i32 12, i32 %i.012.i.i, i32 1
  %32 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i = add i32 %33, %len.011.i.i
  %cmp.i.i149 = icmp ugt i32 %i.012.in.i.i, 1
  br i1 %cmp.i.i149, label %for.body.i.i.for.body.i.i_crit_edge, label %skb_pagelen.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

skb_pagelen.exit:                                 ; preds = %for.body.i.i
  %sub.i.i = sub i32 %25, %27
  %add.i150 = add i32 %add.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i150, i32 %1)
  %cmp23 = icmp ugt i32 %add.i150, %1
  br i1 %cmp23, label %skb_pagelen.exit.for.body.i.i164_crit_edge, label %skb_pagelen.exit.if.end36_crit_edge

skb_pagelen.exit.if.end36_crit_edge:              ; preds = %skb_pagelen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

skb_pagelen.exit.for.body.i.i164_crit_edge:       ; preds = %skb_pagelen.exit
  br label %for.body.i.i164

skb_pagelen.exit.thread:                          ; preds = %if.else
  %sub.i.i191 = sub i32 %25, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i191, i32 %1)
  %cmp23193 = icmp ugt i32 %sub.i.i191, %1
  br i1 %cmp23193, label %skb_pagelen.exit.thread.skb_pagelen.exit168_crit_edge, label %skb_pagelen.exit.thread.if.end36_crit_edge

skb_pagelen.exit.thread.if.end36_crit_edge:       ; preds = %skb_pagelen.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

skb_pagelen.exit.thread.skb_pagelen.exit168_crit_edge: ; preds = %skb_pagelen.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_pagelen.exit168

for.body.i.i164:                                  ; preds = %for.body.i.i164.for.body.i.i164_crit_edge, %skb_pagelen.exit.for.body.i.i164_crit_edge
  %i.012.in.i.i158 = phi i32 [ %i.012.i.i160, %for.body.i.i164.for.body.i.i164_crit_edge ], [ %conv.i.i, %skb_pagelen.exit.for.body.i.i164_crit_edge ]
  %len.011.i.i159 = phi i32 [ %add.i.i162, %for.body.i.i164.for.body.i.i164_crit_edge ], [ 0, %skb_pagelen.exit.for.body.i.i164_crit_edge ]
  %i.012.i.i160 = add nsw i32 %i.012.in.i.i158, -1
  %bv_len.i.i.i161 = getelementptr %struct.skb_shared_info, ptr %29, i32 0, i32 12, i32 %i.012.i.i160, i32 1
  %34 = ptrtoint ptr %bv_len.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bv_len.i.i.i161, align 4
  %add.i.i162 = add i32 %35, %len.011.i.i159
  %cmp.i.i163 = icmp ugt i32 %i.012.in.i.i158, 1
  br i1 %cmp.i.i163, label %for.body.i.i164.for.body.i.i164_crit_edge, label %for.body.i.i164.skb_pagelen.exit168_crit_edge

for.body.i.i164.skb_pagelen.exit168_crit_edge:    ; preds = %for.body.i.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_pagelen.exit168

for.body.i.i164.for.body.i.i164_crit_edge:        ; preds = %for.body.i.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i164

skb_pagelen.exit168:                              ; preds = %for.body.i.i164.skb_pagelen.exit168_crit_edge, %skb_pagelen.exit.thread.skb_pagelen.exit168_crit_edge
  %sub.i.i194196 = phi i32 [ %sub.i.i191, %skb_pagelen.exit.thread.skb_pagelen.exit168_crit_edge ], [ %sub.i.i, %for.body.i.i164.skb_pagelen.exit168_crit_edge ]
  %len.0.lcssa.i.i165 = phi i32 [ 0, %skb_pagelen.exit.thread.skb_pagelen.exit168_crit_edge ], [ %add.i.i162, %for.body.i.i164.skb_pagelen.exit168_crit_edge ]
  %add.i167 = sub i32 %sub.i.i194196, %1
  %sub26 = add i32 %add.i167, %len.0.lcssa.i.i165
  %36 = call i32 @llvm.smin.i32(i32 %sub26, i32 %sub)
  %decrypted = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %37 = ptrtoint ptr %decrypted to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %bf.load = load i32, ptr %decrypted, align 2
  %38 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool28.not = icmp eq i32 %38, 0
  br i1 %tobool28.not, label %skb_pagelen.exit168.if.end34_crit_edge, label %if.then29

skb_pagelen.exit168.if.end34_crit_edge:           ; preds = %skb_pagelen.exit168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then29:                                        ; preds = %skb_pagelen.exit168
  %call30 = call i32 @skb_store_bits(ptr noundef %skb, i32 noundef %1, ptr noundef nonnull %call9.i, i32 noundef %36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end34_crit_edge, label %if.then29.free_buf_crit_edge

if.then29.free_buf_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_buf

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %skb_pagelen.exit168.if.end34_crit_edge
  %add35 = add i32 %36, %1
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %36
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %skb_pagelen.exit.thread.if.end36_crit_edge, %skb_pagelen.exit.if.end36_crit_edge
  %offset.0 = phi i32 [ %add35, %if.end34 ], [ %1, %skb_pagelen.exit.if.end36_crit_edge ], [ %1, %skb_pagelen.exit.thread.if.end36_crit_edge ]
  %buf.0 = phi ptr [ %add.ptr, %if.end34 ], [ %call9.i, %skb_pagelen.exit.if.end36_crit_edge ], [ %call9.i, %skb_pagelen.exit.thread.if.end36_crit_edge ]
  %39 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i.i, align 4
  %41 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i.i, align 8
  %43 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i172 = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %nr_frags.i.i172 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %nr_frags.i.i172, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp10.not.i.i173 = icmp eq i8 %46, 0
  br i1 %cmp10.not.i.i173, label %if.end36.skb_pagelen.exit186_crit_edge, label %for.body.preheader.i.i175

if.end36.skb_pagelen.exit186_crit_edge:           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_pagelen.exit186

for.body.preheader.i.i175:                        ; preds = %if.end36
  %conv.i.i174 = zext i8 %46 to i32
  br label %for.body.i.i182

for.body.i.i182:                                  ; preds = %for.body.i.i182.for.body.i.i182_crit_edge, %for.body.preheader.i.i175
  %i.012.in.i.i176 = phi i32 [ %i.012.i.i178, %for.body.i.i182.for.body.i.i182_crit_edge ], [ %conv.i.i174, %for.body.preheader.i.i175 ]
  %len.011.i.i177 = phi i32 [ %add.i.i180, %for.body.i.i182.for.body.i.i182_crit_edge ], [ 0, %for.body.preheader.i.i175 ]
  %i.012.i.i178 = add nsw i32 %i.012.in.i.i176, -1
  %bv_len.i.i.i179 = getelementptr %struct.skb_shared_info, ptr %44, i32 0, i32 12, i32 %i.012.i.i178, i32 1
  %47 = ptrtoint ptr %bv_len.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bv_len.i.i.i179, align 4
  %add.i.i180 = add i32 %48, %len.011.i.i177
  %cmp.i.i181 = icmp ugt i32 %i.012.in.i.i176, 1
  br i1 %cmp.i.i181, label %for.body.i.i182.for.body.i.i182_crit_edge, label %for.body.i.i182.skb_pagelen.exit186_crit_edge

for.body.i.i182.skb_pagelen.exit186_crit_edge:    ; preds = %for.body.i.i182
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_pagelen.exit186

for.body.i.i182.for.body.i.i182_crit_edge:        ; preds = %for.body.i.i182
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i182

skb_pagelen.exit186:                              ; preds = %for.body.i.i182.skb_pagelen.exit186_crit_edge, %if.end36.skb_pagelen.exit186_crit_edge
  %len.0.lcssa.i.i183 = phi i32 [ 0, %if.end36.skb_pagelen.exit186_crit_edge ], [ %add.i.i180, %for.body.i.i182.skb_pagelen.exit186_crit_edge ]
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 6
  %49 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %skb_iter.0203 = load ptr, ptr %frag_list, align 8
  %tobool39.not204 = icmp eq ptr %skb_iter.0203, null
  br i1 %tobool39.not204, label %skb_pagelen.exit186.free_buf_crit_edge, label %for.body.preheader

skb_pagelen.exit186.free_buf_crit_edge:           ; preds = %skb_pagelen.exit186
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_buf

for.body.preheader:                               ; preds = %skb_pagelen.exit186
  %sub.i.i184 = sub i32 %40, %42
  %add.i185 = add i32 %sub.i.i184, %len.0.lcssa.i.i183
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.preheader
  %skb_iter.0209 = phi ptr [ %skb_iter.0, %cleanup.for.body_crit_edge ], [ %skb_iter.0203, %for.body.preheader ]
  %buf.1208 = phi ptr [ %buf.2, %cleanup.for.body_crit_edge ], [ %buf.0, %for.body.preheader ]
  %pos.0206 = phi i32 [ %add76, %cleanup.for.body_crit_edge ], [ %add.i185, %for.body.preheader ]
  %offset.1205 = phi i32 [ %offset.2, %cleanup.for.body_crit_edge ], [ %offset.0, %for.body.preheader ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb_iter.0209, i32 0, i32 6
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %add40 = add i32 %51, %pos.0206
  call void @__sanitizer_cov_trace_cmp4(i32 %add40, i32 %offset.1205)
  %cmp41.not = icmp ugt i32 %add40, %offset.1205
  br i1 %cmp41.not, label %if.end43, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %for.body
  %52 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset1, align 4
  %add45 = add i32 %53, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0206, i32 %add45)
  %cmp46.not = icmp slt i32 %pos.0206, %add45
  br i1 %cmp46.not, label %if.end48, label %if.end43.free_buf_crit_edge

if.end43.free_buf_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_buf

if.end48:                                         ; preds = %if.end43
  %sub49 = sub i32 %offset.1205, %pos.0206
  %sub51 = sub i32 %51, %sub49
  %sub54 = sub i32 %add45, %offset.1205
  %54 = call i32 @llvm.smin.i32(i32 %sub51, i32 %sub54)
  %decrypted61 = getelementptr inbounds %struct.sk_buff, ptr %skb_iter.0209, i32 0, i32 15, i32 0, i32 3
  %55 = ptrtoint ptr %decrypted61 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load62 = load i32, ptr %decrypted61, align 2
  %56 = and i32 %bf.load62, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool66.not = icmp eq i32 %56, 0
  br i1 %tobool66.not, label %if.end48.if.end72_crit_edge, label %if.then67

if.end48.if.end72_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then67:                                        ; preds = %if.end48
  %call68 = call i32 @skb_store_bits(ptr noundef nonnull %skb_iter.0209, i32 noundef %sub49, ptr noundef %buf.1208, i32 noundef %54) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then67.if.end72_crit_edge, label %if.then67.free_buf_crit_edge

if.then67.free_buf_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_buf

if.then67.if.end72_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.end72:                                         ; preds = %if.then67.if.end72_crit_edge, %if.end48.if.end72_crit_edge
  %add73 = add i32 %54, %offset.1205
  %add.ptr74 = getelementptr i8, ptr %buf.1208, i32 %54
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %for.body.cleanup_crit_edge
  %offset.2 = phi i32 [ %offset.1205, %for.body.cleanup_crit_edge ], [ %add73, %if.end72 ]
  %buf.2 = phi ptr [ %buf.1208, %for.body.cleanup_crit_edge ], [ %add.ptr74, %if.end72 ]
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %add76 = add i32 %58, %pos.0206
  %59 = ptrtoint ptr %skb_iter.0209 to i32
  call void @__asan_load4_noabort(i32 %59)
  %skb_iter.0 = load ptr, ptr %skb_iter.0209, align 8
  %tobool39.not = icmp eq ptr %skb_iter.0, null
  br i1 %tobool39.not, label %cleanup.free_buf_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.free_buf_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_buf

free_buf:                                         ; preds = %cleanup.free_buf_crit_edge, %if.then67.free_buf_crit_edge, %if.end43.free_buf_crit_edge, %skb_pagelen.exit186.free_buf_crit_edge, %if.then29.free_buf_crit_edge, %if.end15.free_buf_crit_edge, %sg_set_buf.exit.free_buf_crit_edge, %if.end.free_buf_crit_edge
  %err.6 = phi i32 [ %call12, %sg_set_buf.exit.free_buf_crit_edge ], [ %call17, %if.end15.free_buf_crit_edge ], [ %call30, %if.then29.free_buf_crit_edge ], [ %call4, %if.end.free_buf_crit_edge ], [ 0, %skb_pagelen.exit186.free_buf_crit_edge ], [ 0, %cleanup.free_buf_crit_edge ], [ 0, %if.end43.free_buf_crit_edge ], [ %call68, %if.then67.free_buf_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup77

cleanup77:                                        ; preds = %free_buf, %entry.cleanup77_crit_edge
  %retval.0 = phi i32 [ %err.6, %free_buf ], [ -12, %entry.cleanup77_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_set_device_offload(ptr noundef %sk, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv_ctx_tx = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 224) #16
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 440) #16
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.free_marker_record_crit_edge, label %if.end11

if.end7.free_marker_record_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_marker_record

if.end11:                                         ; preds = %if.end7
  %crypto_send = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 18
  %6 = ptrtoint ptr %crypto_send to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %crypto_send, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 771, i16 %7)
  %cmp.not = icmp eq i16 %7, 771
  br i1 %cmp.not, label %if.end14, label %if.end11.free_offload_ctx_crit_edge

if.end11.free_offload_ctx_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_offload_ctx

if.end14:                                         ; preds = %if.end11
  %cipher_type = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 18, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cipher_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %9)
  %cond = icmp eq i16 %9, 51
  br i1 %cond, label %sw.bb, label %if.end14.free_offload_ctx_crit_edge

if.end14.free_offload_ctx_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_offload_ctx

sw.bb:                                            ; preds = %if.end14
  %rec_seq17 = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 18, i32 0, i32 0, i32 2, i32 20
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 771, ptr %1, align 2
  %11 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cipher_type, align 2
  %cipher_type27 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %cipher_type27 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %cipher_type27, align 2
  %prepend_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %prepend_size to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 13, ptr %prepend_size, align 2
  %tag_size30 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %tag_size30 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 16, ptr %tag_size30, align 2
  %overhead_size = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %overhead_size to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 29, ptr %overhead_size, align 2
  %iv_size37 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %iv_size37 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8, ptr %iv_size37, align 2
  %salt_size38 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %salt_size38 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 4, ptr %salt_size38, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i219 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 12) #16
  %tx = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 7
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i219, ptr %tx, align 4
  %tobool45.not = icmp eq ptr %call7.i219, null
  br i1 %tobool45.not, label %sw.bb.free_offload_ctx_crit_edge, label %if.end47

sw.bb.free_offload_ctx_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_offload_ctx

if.end47:                                         ; preds = %sw.bb
  %iv16 = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 18, i32 0, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %call7.i219, i32 4
  %21 = ptrtoint ptr %iv16 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %iv16, align 1
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %add.ptr, align 4
  %rec_seq_size51 = getelementptr inbounds %struct.tls_prot_info, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %rec_seq_size51 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 8, ptr %rec_seq_size51, align 2
  %call53 = tail call ptr @kmemdup(ptr noundef %rec_seq17, i32 noundef 8, i32 noundef 3264) #12
  %rec_seq55 = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %rec_seq55 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call53, ptr %rec_seq55, align 4
  %tobool58.not = icmp eq ptr %call53, null
  br i1 %tobool58.not, label %if.end47.free_iv_crit_edge, label %if.end60

if.end47.free_iv_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_iv

if.end60:                                         ; preds = %if.end47
  %call61 = tail call i32 @tls_sw_fallback_init(ptr noundef %sk, ptr noundef nonnull %call7.i.i, ptr noundef %crypto_send) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.free_rec_seq_crit_edge

if.end60.free_rec_seq_crit_edge:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_rec_seq

if.end64:                                         ; preds = %if.end60
  %26 = ptrtoint ptr %rec_seq55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rec_seq55, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %rcd_sn.0.copyload = load i64, ptr %27, align 1
  %sub = add i64 %rcd_sn.0.copyload, -1
  %unacked_record_sn = getelementptr inbounds %struct.tls_offload_context_tx, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %unacked_record_sn to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sub, ptr %unacked_record_sn, align 8
  %write_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 80
  %30 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %write_seq, align 4
  %end_seq = getelementptr inbounds %struct.tls_record_info, ptr %call7.i, i32 0, i32 1
  %32 = ptrtoint ptr %end_seq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %end_seq, align 8
  %len = getelementptr inbounds %struct.tls_record_info, ptr %call7.i, i32 0, i32 2
  %33 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %len, align 4
  %num_frags = getelementptr inbounds %struct.tls_record_info, ptr %call7.i, i32 0, i32 3
  %34 = ptrtoint ptr %num_frags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %num_frags, align 8
  %records_list = getelementptr inbounds %struct.tls_offload_context_tx, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %records_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %records_list, ptr %records_list, align 8
  %prev.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %records_list, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %records_list, ptr noundef %records_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end64.list_add_tail.exit_crit_edge

if.end64.list_add_tail.exit_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i, ptr %prev.i, align 4
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %records_list, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %records_list, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %records_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i, ptr %records_list, align 8
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end64.list_add_tail.exit_crit_edge
  %lock = getelementptr inbounds %struct.tls_offload_context_tx, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tls_set_device_offload.__key, i16 noundef signext 3) #12
  %sg_tx_data = getelementptr inbounds %struct.tls_offload_context_tx, ptr %call7.i.i, i32 0, i32 7
  tail call void @sg_init_table(ptr noundef %sg_tx_data, i32 noundef 17) #12
  tail call void @clean_acked_data_enable(ptr noundef %sk, ptr noundef nonnull @tls_icsk_clean_acked) #12
  %push_pending_record = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 2
  %41 = ptrtoint ptr %push_pending_record to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @tls_device_push_pending_record, ptr %push_pending_record, align 4
  %sk_write_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %43, %sk_write_queue.i
  %tobool73.not221 = icmp eq ptr %43, null
  %tobool73.not = or i1 %cmp.i.i, %tobool73.not221
  br i1 %tobool73.not, label %list_add_tail.exit.if.end75_crit_edge, label %if.then74

list_add_tail.exit.if.end75_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then74:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %eor = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 3, i32 15
  %44 = ptrtoint ptr %eor to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %eor, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %eor, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %list_add_tail.exit.if.end75_crit_edge
  %call76 = tail call fastcc ptr @get_netdev_for_sock(ptr noundef %sk)
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.then78, label %if.end87

if.then78:                                        ; preds = %if.end75
  %call79 = tail call i32 @___ratelimit(ptr noundef nonnull @tls_set_device_offload._rs, ptr noundef nonnull @__func__.tls_set_device_offload) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then78.disable_cad_crit_edge, label %do.end84

if.then78.disable_cad_crit_edge:                  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %disable_cad

do.end84:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tls_set_device_offload) #17
  br label %disable_cad

if.end87:                                         ; preds = %if.end75
  %features = getelementptr inbounds %struct.net_device, ptr %call76, i32 0, i32 23
  %45 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %features, align 16
  %and = and i64 %46, 9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool88.not = icmp eq i64 %and, 0
  br i1 %tobool88.not, label %if.end87.release_netdev_crit_edge, label %if.end90

if.end87.release_netdev_crit_edge:                ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_netdev

if.end90:                                         ; preds = %if.end87
  tail call void @down_read(ptr noundef nonnull @device_offload_lock) #12
  %flags = getelementptr inbounds %struct.net_device, ptr %call76, i32 0, i32 14
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 8
  %and91 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.release_lock_crit_edge, label %if.end94

if.end90.release_lock_crit_edge:                  ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_lock

if.end94:                                         ; preds = %if.end90
  %49 = ptrtoint ptr %priv_ctx_tx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %priv_ctx_tx, align 4
  %tlsdev_ops = getelementptr inbounds %struct.net_device, ptr %call76, i32 0, i32 48
  %50 = ptrtoint ptr %tlsdev_ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tlsdev_ops, align 32
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %write_seq, align 4
  %call99 = tail call i32 %53(ptr noundef nonnull %call76, ptr noundef %sk, i32 noundef 1, ptr noundef %crypto_send, i32 noundef %55) #12
  %56 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %write_seq, align 4
  tail call fastcc void @trace_tls_device_offload_set(ptr noundef %sk, i32 noundef 1, i32 noundef %57, ptr noundef %rec_seq17, i32 noundef %call99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool102.not = icmp eq i32 %call99, 0
  br i1 %tobool102.not, label %if.end104, label %if.end94.release_lock_crit_edge

if.end94.release_lock_crit_edge:                  ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_lock

if.end104:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tls_device_attach(ptr noundef nonnull %ctx, ptr noundef %sk, ptr noundef nonnull %call76)
  tail call void @up_read(ptr noundef nonnull @device_offload_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !129
  %sk_validate_xmit_skb = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 81
  %58 = ptrtoint ptr %sk_validate_xmit_skb to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr @tls_validate_xmit_skb, ptr %sk_validate_xmit_skb, align 8
  tail call fastcc void @dev_put(ptr noundef nonnull %call76)
  br label %cleanup

release_lock:                                     ; preds = %if.end94.release_lock_crit_edge, %if.end90.release_lock_crit_edge
  %rc.0 = phi i32 [ %call99, %if.end94.release_lock_crit_edge ], [ -22, %if.end90.release_lock_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @device_offload_lock) #12
  br label %release_netdev

release_netdev:                                   ; preds = %release_lock, %if.end87.release_netdev_crit_edge
  %rc.1 = phi i32 [ %rc.0, %release_lock ], [ -95, %if.end87.release_netdev_crit_edge ]
  tail call fastcc void @dev_put(ptr noundef nonnull %call76)
  br label %disable_cad

disable_cad:                                      ; preds = %release_netdev, %do.end84, %if.then78.disable_cad_crit_edge
  %rc.2 = phi i32 [ %rc.1, %release_netdev ], [ -22, %do.end84 ], [ -22, %if.then78.disable_cad_crit_edge ]
  tail call void @clean_acked_data_disable(ptr noundef %sk) #12
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call7.i.i, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %60, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %60, ptr noundef %base.i.i) #12
  br label %free_rec_seq

free_rec_seq:                                     ; preds = %disable_cad, %if.end60.free_rec_seq_crit_edge
  %rc.3 = phi i32 [ %call61, %if.end60.free_rec_seq_crit_edge ], [ %rc.2, %disable_cad ]
  %61 = ptrtoint ptr %rec_seq55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rec_seq55, align 4
  tail call void @kfree(ptr noundef %62) #12
  br label %free_iv

free_iv:                                          ; preds = %free_rec_seq, %if.end47.free_iv_crit_edge
  %rc.4 = phi i32 [ %rc.3, %free_rec_seq ], [ -12, %if.end47.free_iv_crit_edge ]
  %63 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx, align 4
  tail call void @kfree(ptr noundef %64) #12
  br label %free_offload_ctx

free_offload_ctx:                                 ; preds = %free_iv, %sw.bb.free_offload_ctx_crit_edge, %if.end14.free_offload_ctx_crit_edge, %if.end11.free_offload_ctx_crit_edge
  %rc.5 = phi i32 [ %rc.4, %free_iv ], [ -95, %if.end11.free_offload_ctx_crit_edge ], [ -22, %if.end14.free_offload_ctx_crit_edge ], [ -12, %sw.bb.free_offload_ctx_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %65 = ptrtoint ptr %priv_ctx_tx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %priv_ctx_tx, align 4
  br label %free_marker_record

free_marker_record:                               ; preds = %free_offload_ctx, %if.end7.free_marker_record_crit_edge
  %rc.6 = phi i32 [ %rc.5, %free_offload_ctx ], [ -12, %if.end7.free_marker_record_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_marker_record, %if.end104, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.6, %free_marker_record ], [ 0, %if.end104 ], [ -22, %entry.cleanup_crit_edge ], [ -17, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_sw_fallback_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_acked_data_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_icsk_clean_acked(ptr nocapture noundef readonly %sk, i32 noundef %acked_seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx.i, align 4
  %lock = getelementptr inbounds %struct.tls_offload_context_tx, ptr %3, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %retransmit_hint = getelementptr inbounds %struct.tls_offload_context_tx, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %retransmit_hint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retransmit_hint, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %end_seq = getelementptr inbounds %struct.tls_record_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end_seq, align 4
  %sub.i = sub i32 %acked_seq, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end11_crit_edge, label %if.then9

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %retransmit_hint to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %retransmit_hint, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %records_list = getelementptr inbounds %struct.tls_offload_context_tx, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %records_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %records_list, align 8
  %cmp19.not56 = icmp eq ptr %10, %records_list
  br i1 %cmp19.not56, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end11.for.body_crit_edge
  %info.058 = phi ptr [ %temp.060, %list_del.exit.for.body_crit_edge ], [ %10, %if.end11.for.body_crit_edge ]
  %deleted_records.057 = phi i64 [ %inc, %list_del.exit.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %11 = ptrtoint ptr %info.058 to i32
  call void @__asan_load4_noabort(i32 %11)
  %temp.060 = load ptr, ptr %info.058, align 4
  %end_seq21 = getelementptr inbounds %struct.tls_record_info, ptr %info.058, i32 0, i32 1
  %12 = ptrtoint ptr %end_seq21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end_seq21, align 4
  %sub.i53 = sub i32 %acked_seq, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i53)
  %cmp.i54 = icmp slt i32 %sub.i53, 0
  br i1 %cmp.i54, label %for.body.for.end_crit_edge, label %if.end24

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end24:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %info.058) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end24.list_del.exit_crit_edge

if.end24.list_del.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %info.058, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %info.058 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info.058, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end24.list_del.exit_crit_edge
  %20 = ptrtoint ptr %info.058 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %info.058, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %info.058, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @destroy_record(ptr noundef %info.058)
  %inc = add i64 %deleted_records.057, 1
  %cmp19.not = icmp eq ptr %temp.060, %records_list
  br i1 %cmp19.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  %deleted_records.0.lcssa = phi i64 [ 0, %if.end11.for.end_crit_edge ], [ %deleted_records.057, %for.body.for.end_crit_edge ], [ %inc, %list_del.exit.for.end_crit_edge ]
  %unacked_record_sn = getelementptr inbounds %struct.tls_offload_context_tx, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %unacked_record_sn to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %unacked_record_sn, align 8
  %add = add i64 %23, %deleted_records.0.lcssa
  store i64 %add, ptr %unacked_record_sn, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tls_device_push_pending_record(ptr noundef %sk, i32 noundef %flags) #0 align 64 {
entry:
  %msg_iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg_iter) #12
  %0 = call ptr @memset(ptr %msg_iter, i32 255, i32 24)
  call void @iov_iter_kvec(ptr noundef nonnull %msg_iter, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  %call = call fastcc i32 @tls_push_data(ptr noundef %sk, ptr noundef nonnull %msg_iter, i32 noundef 0, i32 noundef %flags, i8 noundef zeroext 23)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg_iter) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_netdev_for_sock(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %4 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @sk_dst_get.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 2077, ptr noundef nonnull @.str.7) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %5, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end13.i_crit_edge, label %land.lhs.true10.i

do.end7.i.if.end13.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

land.lhs.true10.i:                                ; preds = %do.end7.i
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !130
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #12, !srcloc !131
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %land.lhs.true10.i.if.end13.i_crit_edge, label %do.end11.i.i.i.i.i

land.lhs.true10.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

do.end11.i.i.i.i.i:                               ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !132
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end11.i.i.i.i.i, %land.lhs.true10.i.if.end13.i_crit_edge, %do.end7.i.if.end13.i_crit_edge
  %dst.0.i = phi ptr [ null, %do.end7.i.if.end13.i_crit_edge ], [ null, %land.lhs.true10.i.if.end13.i_crit_edge ], [ %5, %do.end11.i.i.i.i.i ]
  %call.i17.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i17.i, label %if.end13.i.sk_dst_get.exit_crit_edge, label %land.lhs.true.i20.i

if.end13.i.sk_dst_get.exit_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_dst_get.exit

land.lhs.true.i20.i:                              ; preds = %if.end13.i
  %call1.i18.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.sk_dst_get.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.sk_dst_get.exit_crit_edge:    ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_dst_get.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge:   ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_dst_get.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  br label %sk_dst_get.exit

sk_dst_get.exit:                                  ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge, %land.lhs.true.i20.i.sk_dst_get.exit_crit_edge, %if.end13.i.sk_dst_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %7 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i.i24.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool.not = icmp eq ptr %dst.0.i, null
  br i1 %tobool.not, label %sk_dst_get.exit.if.end_crit_edge, label %if.then, !prof !106

sk_dst_get.exit.if.end_crit_edge:                 ; preds = %sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sk_dst_get.exit
  %11 = ptrtoint ptr %dst.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst.0.i, align 4
  %call3 = tail call ptr @netdev_sk_get_lowest_dev(ptr noundef %12, ptr noundef %sk) #12
  %tobool.not.i8 = icmp eq ptr %call3, null
  br i1 %tobool.not.i8, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !121
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 118
  %14 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcpu_refcnt.i, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %22, %16
  %23 = inttoptr i32 %add.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add13.i = add i32 %25, 1
  store i32 %add13.i, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !122
  %and.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !106

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #12, !srcloc !123
  br label %if.end

if.end:                                           ; preds = %do.end30.i, %if.then.if.end_crit_edge, %sk_dst_get.exit.if.end_crit_edge
  %netdev.0 = phi ptr [ null, %sk_dst_get.exit.if.end_crit_edge ], [ null, %if.then.if.end_crit_edge ], [ %call3, %do.end30.i ]
  tail call void @dst_release(ptr noundef %dst.0.i) #12
  ret ptr %netdev.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tls_device_offload_set(ptr noundef %sk, i32 noundef %dir, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_offload_set, i32 0, i32 1), ptr blockaddress(@trace_tls_device_offload_set, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !111

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !133
  %call42 = tail call i32 @__traceiter_tls_device_offload_set(ptr noundef null, ptr noundef %sk, i32 noundef %dir, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %ret) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !134
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_offload_set, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_offload_set, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tls_device_offload_set.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_tls_device_offload_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 42, ptr noundef nonnull @.str.7) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
define internal fastcc void @tls_device_attach(ptr noundef %ctx, ptr noundef %sk, ptr noundef %netdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %0 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_destruct, align 4
  %cmp.not = icmp eq ptr %1, @tls_device_sk_destruct
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount, align 4
  %tobool.not.i = icmp eq ptr %netdev, null
  br i1 %tobool.not.i, label %if.then.dev_hold.exit_crit_edge, label %do.body1.i

if.then.dev_hold.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.then
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !121
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i = add i32 %15, 1
  store i32 %add13.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !122
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !106

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #12, !srcloc !123
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.then.dev_hold.exit_crit_edge
  %netdev1 = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 6
  %17 = ptrtoint ptr %netdev1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %netdev, ptr %netdev1, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @tls_device_lock) #12
  %list = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 20
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tls_device_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %18, ptr noundef nonnull @tls_device_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %dev_hold.exit.list_add_tail.exit_crit_edge

dev_hold.exit.list_add_tail.exit_crit_edge:       ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @tls_device_list, i32 0, i32 1), align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tls_device_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %dev_hold.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @tls_device_lock) #12
  %22 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk_destruct, align 4
  %sk_destruct3 = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 17
  %24 = ptrtoint ptr %sk_destruct3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %sk_destruct3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  %25 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr @tls_device_sk_destruct, ptr %sk_destruct, align 4
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tls_validate_xmit_skb(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !121
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !122
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !106

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !123
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_set_device_offload_rx(ptr noundef %sk, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %crypto_recv = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 19
  %0 = ptrtoint ptr %crypto_recv to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %crypto_recv, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 771, i16 %1)
  %cmp.not = icmp eq i16 %1, 771
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_netdev_for_sock(ptr noundef %sk)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @tls_set_device_offload_rx._rs, ptr noundef nonnull @__func__.tls_set_device_offload_rx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tls_set_device_offload_rx) #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %and = and i64 %3, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.end8.do.body1.i_crit_edge, label %if.end11

if.end8.do.body1.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i

if.end11:                                         ; preds = %if.end8
  tail call void @down_read(ptr noundef nonnull @device_offload_lock) #12
  %flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and12 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.release_lock_crit_edge, label %if.end15

if.end11.release_lock_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_lock

if.end15:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 440) #16
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.release_lock_crit_edge, label %if.end19

if.end15.release_lock_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_lock

if.end19:                                         ; preds = %if.end15
  %resync_nh_reset = getelementptr inbounds %struct.tls_offload_context_rx, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %resync_nh_reset to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %resync_nh_reset, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %resync_nh_reset, align 4
  %priv_ctx_rx = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 5
  %8 = ptrtoint ptr %priv_ctx_rx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %priv_ctx_rx, align 4
  %call20 = tail call i32 @tls_set_sw_offload(ptr noundef %sk, ptr noundef %ctx, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.release_ctx_crit_edge

if.end19.release_ctx_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_ctx

if.end23:                                         ; preds = %if.end19
  %tlsdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 48
  %9 = ptrtoint ptr %tlsdev_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tlsdev_ops, align 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 8
  %13 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %copied_seq, align 4
  %call26 = tail call i32 %12(ptr noundef nonnull %call, ptr noundef %sk, i32 noundef 0, ptr noundef %crypto_recv, i32 noundef %14) #12
  %15 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %copied_seq, align 4
  %rec_seq = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 19, i32 0, i32 0, i32 2, i32 20
  tail call fastcc void @trace_tls_device_offload_set(ptr noundef %sk, i32 noundef 0, i32 noundef %16, ptr noundef %rec_seq, i32 noundef %call26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool30.not = icmp eq i32 %call26, 0
  br i1 %tobool30.not, label %if.end32, label %free_sw_resources

if.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tls_device_attach(ptr noundef %ctx, ptr noundef %sk, ptr noundef nonnull %call)
  tail call void @up_read(ptr noundef nonnull @device_offload_lock) #12
  tail call fastcc void @dev_put(ptr noundef nonnull %call)
  br label %cleanup

free_sw_resources:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef nonnull @device_offload_lock) #12
  tail call void @tls_sw_free_resources_rx(ptr noundef %sk) #12
  tail call void @down_read(ptr noundef nonnull @device_offload_lock) #12
  br label %release_ctx

release_ctx:                                      ; preds = %free_sw_resources, %if.end19.release_ctx_crit_edge
  %rc.0 = phi i32 [ %call20, %if.end19.release_ctx_crit_edge ], [ %call26, %free_sw_resources ]
  %17 = ptrtoint ptr %priv_ctx_rx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %priv_ctx_rx, align 4
  br label %release_lock

release_lock:                                     ; preds = %release_ctx, %if.end15.release_lock_crit_edge, %if.end11.release_lock_crit_edge
  %rc.1 = phi i32 [ %rc.0, %release_ctx ], [ -22, %if.end11.release_lock_crit_edge ], [ -12, %if.end15.release_lock_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @device_offload_lock) #12
  br label %do.body1.i

do.body1.i:                                       ; preds = %release_lock, %if.end8.do.body1.i_crit_edge
  %rc.2 = phi i32 [ %rc.1, %release_lock ], [ -95, %if.end8.do.body1.i_crit_edge ]
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !121
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %19 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcpu_refcnt.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add13.i = add i32 %30, -1
  store i32 %add13.i, ptr %28, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !122
  %and.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !106

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #12, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.end32, %do.end, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %dev_put.exit ], [ 0, %if.end32 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_set_sw_offload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_sw_free_resources_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_device_offload_cleanup_rx(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  tail call void @down_read(ptr noundef nonnull @device_offload_lock) #12
  %netdev1 = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %tlsdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %tlsdev_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tlsdev_ops, align 32
  %tls_dev_del = getelementptr inbounds %struct.tlsdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tls_dev_del to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tls_dev_del, align 4
  tail call void %7(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #12
  %tx_conf = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %tx_conf, align 4
  %bf.lshr.mask = and i8 %bf.load, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp.not = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp.not, label %if.else, label %do.body1.i

do.body1.i:                                       ; preds = %if.end
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !121
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i = add i32 %21, -1
  store i32 %add13.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !122
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !106

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #12, !srcloc !123
  %23 = ptrtoint ptr %netdev1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %netdev1, align 4
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #12
  br label %out

out:                                              ; preds = %if.else, %dev_put.exit, %entry.out_crit_edge
  tail call void @up_read(ptr noundef nonnull @device_offload_lock) #12
  tail call void @tls_sw_release_resources_rx(ptr noundef %sk) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_sw_release_resources_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_device_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @tls_dev_notifier) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_device_cleanup() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @tls_dev_notifier) #12
  %call1 = tail call zeroext i1 @flush_work(ptr noundef nonnull @tls_device_gc_work) #12
  tail call void @clean_acked_data_flush() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_acked_data_flush() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tls_device_tx_resync_req(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_wait_memory(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tls_append_frag(ptr nocapture noundef %record, ptr nocapture noundef %pfrag, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_frags = getelementptr inbounds %struct.tls_record_info, ptr %record, i32 0, i32 3
  %0 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_frags, align 4
  %sub = add i32 %1, -1
  %arrayidx = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfrag, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %bv_offset.i = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %sub, i32 2
  %6 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_offset.i, align 4
  %bv_len.i = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %sub, i32 1
  %8 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i, align 4
  %add = add i32 %9, %7
  %offset = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %offset, align 4
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp3 = icmp eq i32 %add, %conv
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i32 %9, %size
  %12 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %bv_len.i, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %incdec.ptr = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %incdec.ptr, align 4
  %offset6 = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 1
  %14 = ptrtoint ptr %offset6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %offset6, align 4
  %conv7 = zext i16 %15 to i32
  %bv_offset.i34 = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %1, i32 2
  %16 = ptrtoint ptr %bv_offset.i34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv7, ptr %bv_offset.i34, align 4
  %bv_len.i35 = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %1, i32 1
  %17 = ptrtoint ptr %bv_len.i35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %size, ptr %bv_len.i35, align 4
  %18 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_frags, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %num_frags, align 4
  %20 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pfrag, align 4
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !104

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %21 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %27 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %28, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !106

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.9) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@tls_append_frag, %if.then.i.i.i.i)) #12
          to label %if.end [label %if.then.i.i.i.i], !srcloc !111

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %26, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i.i.i.i, %do.end5.i.i, %if.then
  %offset10 = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 1
  %30 = ptrtoint ptr %offset10 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %offset10, align 4
  %32 = trunc i32 %size to i16
  %conv13 = add i16 %31, %32
  store i16 %conv13, ptr %offset10, align 4
  %len = getelementptr inbounds %struct.tls_record_info, ptr %record, i32 0, i32 2
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %add14 = add i32 %34, %size
  store i32 %add14, ptr %len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tls_push_record(ptr noundef %sk, ptr noundef %ctx, ptr noundef %offload_ctx, ptr noundef %record, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %write_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 80
  %0 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %write_seq, align 4
  %len = getelementptr inbounds %struct.tls_record_info, ptr %record, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, %1
  %end_seq = getelementptr inbounds %struct.tls_record_info, ptr %record, i32 0, i32 1
  %4 = ptrtoint ptr %end_seq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %end_seq, align 4
  %records_list = getelementptr inbounds %struct.tls_offload_context_tx, ptr %offload_ctx, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %offload_ctx, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %record, ptr noundef %6, ptr noundef %records_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail_rcu.exit_crit_edge

entry.list_add_tail_rcu.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %records_list, ptr %record, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %record, i32 0, i32 1
  %8 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !138
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %record, ptr %6, align 4
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %record, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %entry.list_add_tail_rcu.exit_crit_edge
  %open_record = getelementptr inbounds %struct.tls_offload_context_tx, ptr %offload_ctx, i32 0, i32 3
  %11 = ptrtoint ptr %open_record to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %open_record, align 8
  %flags1 = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 14
  %12 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags1, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %list_add_tail_rcu.exit.if.end_crit_edge, label %if.then

list_add_tail_rcu.exit.if.end_crit_edge:          ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_add_tail_rcu.exit
  %15 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %write_seq, align 4
  %sk_write_queue.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %prev.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %prev.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %18, %sk_write_queue.i.i
  %tobool.not21.i = icmp eq ptr %18, null
  %tobool.not.i = or i1 %cmp.i.i.i, %tobool.not21.i
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %eor.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 15
  %19 = ptrtoint ptr %eor.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %eor.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %eor.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %rec_seq.i = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %rec_seq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rec_seq.i, align 4
  tail call fastcc void @trace_tls_device_tx_resync_send(ptr noundef %sk, i32 noundef %16, ptr noundef %21) #12
  tail call void @down_read(ptr noundef nonnull @device_offload_lock) #12
  %netdev1.i = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 6
  %22 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev1.i, align 4
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %if.end8.critedge.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %tlsdev_ops.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 48
  %24 = ptrtoint ptr %tlsdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tlsdev_ops.i, align 32
  %tls_dev_resync.i = getelementptr inbounds %struct.tlsdev_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %tls_dev_resync.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tls_dev_resync.i, align 4
  %call4.i = tail call i32 %27(ptr noundef nonnull %23, ptr noundef %sk, i32 noundef %16, ptr noundef %21, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %phi.cmp.i = icmp eq i32 %call4.i, 0
  tail call void @up_read(ptr noundef nonnull @device_offload_lock) #12
  br i1 %phi.cmp.i, label %if.then3.i.if.end8.i_crit_edge, label %if.then3.i.if.end_crit_edge

if.then3.i.if.end_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.end8.critedge.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef nonnull @device_offload_lock) #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.critedge.i, %if.then3.i.if.end8.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void @llvm.prefetch.p0(ptr %flags1, i32 1, i32 3, i32 1) #12
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags1, ptr %flags1, i32 2, ptr elementtype(i32) %flags1) #12, !srcloc !140
  br label %if.end

if.end:                                           ; preds = %if.end8.i, %if.then3.i.if.end_crit_edge, %list_add_tail_rcu.exit.if.end_crit_edge
  %tx = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 7
  %rec_seq.i44 = getelementptr inbounds %struct.tls_context, ptr %ctx, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %rec_seq.i44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rec_seq.i44, align 4
  %rec_seq_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %ctx, i32 0, i32 7
  %31 = ptrtoint ptr %rec_seq_size.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rec_seq_size.i, align 2
  %conv.i = zext i16 %32 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end
  %i.0.in.i.i = phi i32 [ %conv.i, %if.end ], [ %i.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i)
  %cmp.i.i = icmp sgt i32 %i.0.in.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %if.then.i45

for.body.i.i:                                     ; preds = %for.cond.i.i
  %i.0.i.i = add nsw i32 %i.0.in.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %30, i32 %i.0.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 1
  %inc.i.i = add i8 %34, 1
  store i8 %inc.i.i, ptr %arrayidx.i.i, align 1
  %cmp2.not.i.i = icmp eq i8 %inc.i.i, 0
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.if.end.i46_crit_edge

for.body.i.i.if.end.i46_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i46

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

if.then.i45:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tls_err_abort(ptr noundef %sk, i32 noundef -74) #12
  br label %if.end.i46

if.end.i46:                                       ; preds = %if.then.i45, %for.body.i.i.if.end.i46_crit_edge
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ctx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %36)
  %cmp.not.i = icmp eq i16 %36, 772
  br i1 %cmp.not.i, label %if.end.i46.tls_advance_record_sn.exit_crit_edge, label %land.lhs.true.i

if.end.i46.tls_advance_record_sn.exit_crit_edge:  ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_advance_record_sn.exit

land.lhs.true.i:                                  ; preds = %if.end.i46
  %cipher_type.i = getelementptr inbounds %struct.tls_prot_info, ptr %ctx, i32 0, i32 1
  %37 = ptrtoint ptr %cipher_type.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cipher_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %38)
  %cmp4.not.i = icmp eq i16 %38, 54
  br i1 %cmp4.not.i, label %land.lhs.true.i.tls_advance_record_sn.exit_crit_edge, label %if.then6.i

land.lhs.true.i.tls_advance_record_sn.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_advance_record_sn.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  %39 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx, align 4
  %salt_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %ctx, i32 0, i32 6
  %41 = ptrtoint ptr %salt_size.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %salt_size.i, align 2
  %conv7.i = zext i16 %42 to i32
  %add.ptr.i = getelementptr i8, ptr %40, i32 %conv7.i
  %iv_size.i = getelementptr inbounds %struct.tls_prot_info, ptr %ctx, i32 0, i32 5
  %43 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %iv_size.i, align 2
  %conv8.i = zext i16 %44 to i32
  br label %for.cond.i19.i

for.cond.i19.i:                                   ; preds = %for.body.i23.i.for.cond.i19.i_crit_edge, %if.then6.i
  %i.0.in.i16.i = phi i32 [ %conv8.i, %if.then6.i ], [ %i.0.i17.i, %for.body.i23.i.for.cond.i19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i16.i)
  %cmp.i18.i = icmp sgt i32 %i.0.in.i16.i, 0
  br i1 %cmp.i18.i, label %for.body.i23.i, label %for.cond.i19.i.tls_advance_record_sn.exit_crit_edge

for.cond.i19.i.tls_advance_record_sn.exit_crit_edge: ; preds = %for.cond.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_advance_record_sn.exit

for.body.i23.i:                                   ; preds = %for.cond.i19.i
  %i.0.i17.i = add nsw i32 %i.0.in.i16.i, -1
  %arrayidx.i20.i = getelementptr i8, ptr %add.ptr.i, i32 %i.0.i17.i
  %45 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i20.i, align 1
  %inc.i21.i = add i8 %46, 1
  store i8 %inc.i21.i, ptr %arrayidx.i20.i, align 1
  %cmp2.not.i22.i = icmp eq i8 %inc.i21.i, 0
  br i1 %cmp2.not.i22.i, label %for.body.i23.i.for.cond.i19.i_crit_edge, label %for.body.i23.i.tls_advance_record_sn.exit_crit_edge

for.body.i23.i.tls_advance_record_sn.exit_crit_edge: ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_advance_record_sn.exit

for.body.i23.i.for.cond.i19.i_crit_edge:          ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i19.i

tls_advance_record_sn.exit:                       ; preds = %for.body.i23.i.tls_advance_record_sn.exit_crit_edge, %for.cond.i19.i.tls_advance_record_sn.exit_crit_edge, %land.lhs.true.i.tls_advance_record_sn.exit_crit_edge, %if.end.i46.tls_advance_record_sn.exit_crit_edge
  %num_frags = getelementptr inbounds %struct.tls_record_info, ptr %record, i32 0, i32 3
  %47 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp58 = icmp sgt i32 %48, 0
  br i1 %cmp58, label %for.body.lr.ph, label %tls_advance_record_sn.exit.for.end_crit_edge

tls_advance_record_sn.exit.for.end_crit_edge:     ; preds = %tls_advance_record_sn.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %tls_advance_record_sn.exit
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %get_page.exit.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %get_page.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %i.059
  %arrayidx4 = getelementptr %struct.tls_offload_context_tx, ptr %offload_ctx, i32 0, i32 7, i32 %i.059
  %49 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx4, align 4
  %and.i = and i32 %50, -3
  store i32 %and.i, ptr %arrayidx4, align 4
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %bv_len.i = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %i.059, i32 1
  %53 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bv_len.i, align 4
  %bv_offset.i = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %i.059, i32 2
  %55 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bv_offset.i, align 4
  %57 = ptrtoint ptr %52 to i32
  %and2.i.i = and i32 %57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !104

do.body5.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !127
  unreachable

do.body11.i.i:                                    ; preds = %for.body
  %and.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !104

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !128
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %58 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx4, align 4
  %offset1.i = getelementptr %struct.tls_offload_context_tx, ptr %offload_ctx, i32 0, i32 7, i32 %i.059, i32 1
  %59 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.tls_offload_context_tx, ptr %offload_ctx, i32 0, i32 7, i32 %i.059, i32 2
  %60 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %54, ptr %length.i, align 4
  %61 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %62, i32 0, i32 32
  %63 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %64, null
  br i1 %tobool.i.not.i, label %sg_set_page.exit.sk_mem_charge.exit_crit_edge, label %if.end.i48

sg_set_page.exit.sk_mem_charge.exit_crit_edge:    ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_mem_charge.exit

if.end.i48:                                       ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bv_len.i, align 4
  %67 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sk_forward_alloc.i, align 8
  %sub.i = sub i32 %68, %66
  store i32 %sub.i, ptr %sk_forward_alloc.i, align 8
  br label %sk_mem_charge.exit

sk_mem_charge.exit:                               ; preds = %if.end.i48, %sg_set_page.exit.sk_mem_charge.exit_crit_edge
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  %71 = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  %and.i.i49 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %and.i.i49, 0
  br i1 %tobool.not.i.i50, label %if.end.i.i51, label %if.then.i.i, !prof !104

if.then.i.i:                                      ; preds = %sk_mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %73, -1
  br label %_compound_head.exit.i

if.end.i.i51:                                     ; preds = %sk_mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %70 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i51, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %74, %if.end.i.i51 ]
  %75 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %76 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %77, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i52 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i52, label %if.then.i1.i, label %do.end5.i.i, !prof !106

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %78, ptr noundef nonnull @.str.9) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@tls_push_record, %if.then.i.i.i.i)) #12
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !111

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %75, i32 noundef 1) #12
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %inc = add nuw nsw i32 %i.059, 1
  %80 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_frags, align 4
  %cmp = icmp slt i32 %inc, %81
  br i1 %cmp, label %get_page.exit.for.body_crit_edge, label %get_page.exit.for.end_crit_edge

get_page.exit.for.end_crit_edge:                  ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

get_page.exit.for.body_crit_edge:                 ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %get_page.exit.for.end_crit_edge, %tls_advance_record_sn.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %48, %tls_advance_record_sn.exit.for.end_crit_edge ], [ %81, %get_page.exit.for.end_crit_edge ]
  %sg_tx_data12 = getelementptr inbounds %struct.tls_offload_context_tx, ptr %offload_ctx, i32 0, i32 7
  %sub = add i32 %.lcssa, -1
  %arrayidx14 = getelementptr %struct.tls_offload_context_tx, ptr %offload_ctx, i32 0, i32 7, i32 %sub
  %82 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx14, align 4
  %or.i = and i32 %83, -4
  %and.i53 = or i32 %or.i, 2
  store i32 %and.i53, ptr %arrayidx14, align 4
  %call16 = tail call i32 @tls_push_sg(ptr noundef %sk, ptr noundef %ctx, ptr noundef %sg_tx_data12, i16 noundef zeroext 0, i32 noundef %flags) #12
  ret i32 %call16
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_page_frag_refill(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_stream_moderate_sndbuf(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %sk_userlocks = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 43
  %0 = ptrtoint ptr %sk_userlocks to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sk_userlocks, align 8
  %1 = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %2 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_sndbuf, align 4
  %sk_wmem_queued = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %4 = ptrtoint ptr %sk_wmem_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_wmem_queued, align 8
  %shr = ashr i32 %5, 1
  %6 = tail call i32 @llvm.smin.i32(i32 %3, i32 %shr)
  %sk_reserved_mem.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 12
  %7 = ptrtoint ptr %sk_reserved_mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sk_reserved_mem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.sk_unused_reserved_mem.exit_crit_edge, label %if.end.i, !prof !104

if.end.sk_unused_reserved_mem.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_unused_reserved_mem.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_backlog.i, align 4
  %11 = add i32 %5, %10
  %sub5.i = sub i32 %8, %11
  %12 = tail call i32 @llvm.smax.i32(i32 %sub5.i, i32 0) #12
  br label %sk_unused_reserved_mem.exit

sk_unused_reserved_mem.exit:                      ; preds = %if.end.i, %if.end.sk_unused_reserved_mem.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.end.i ], [ 0, %if.end.sk_unused_reserved_mem.exit_crit_edge ]
  %13 = tail call i32 @llvm.umax.i32(i32 %6, i32 %retval.0.i)
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 4608)
  %15 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %14, ptr %sk_sndbuf, align 4
  br label %cleanup

cleanup:                                          ; preds = %sk_unused_reserved_mem.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tls_create_new_record(ptr nocapture noundef writeonly %offload_ctx, ptr nocapture noundef %pfrag, i32 noundef %prepend_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 224) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %frags = getelementptr inbounds %struct.tls_record_info, ptr %call7.i, i32 0, i32 4
  %1 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pfrag, align 4
  %3 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %frags, align 4
  %offset = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %offset, align 4
  %conv = zext i16 %5 to i32
  %bv_offset.i = getelementptr inbounds %struct.tls_record_info, ptr %call7.i, i32 0, i32 4, i32 0, i32 2
  %6 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %bv_offset.i, align 4
  %bv_len.i = getelementptr inbounds %struct.tls_record_info, ptr %call7.i, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %prepend_size, ptr %bv_len.i, align 8
  %8 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !104

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %14, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !106

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.9) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@tls_create_new_record, %if.then.i.i.i.i)) #12
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !111

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %12, i32 noundef 1) #12
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %offset, align 4
  %18 = trunc i32 %prepend_size to i16
  %conv4 = add i16 %17, %18
  store i16 %conv4, ptr %offset, align 4
  %num_frags = getelementptr inbounds %struct.tls_record_info, ptr %call7.i, i32 0, i32 3
  %19 = ptrtoint ptr %num_frags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %num_frags, align 8
  %len = getelementptr inbounds %struct.tls_record_info, ptr %call7.i, i32 0, i32 2
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %prepend_size, ptr %len, align 4
  %open_record = getelementptr inbounds %struct.tls_offload_context_tx, ptr %offload_ctx, i32 0, i32 3
  %21 = ptrtoint ptr %open_record to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i, ptr %open_record, align 8
  br label %cleanup

cleanup:                                          ; preds = %get_page.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_page.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_page_frag_refill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter_nocache(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tls_push_sg(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tls_device_tx_resync_send(ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_tx_resync_send, i32 0, i32 1), ptr blockaddress(@trace_tls_device_tx_resync_send, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !111

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %call42 = tail call i32 @__traceiter_tls_device_tx_resync_send(ptr noundef null, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_tx_resync_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_tx_resync_send, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tls_device_tx_resync_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_tls_device_tx_resync_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 193, ptr noundef nonnull @.str.7) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
declare dso_local i32 @__traceiter_tls_device_tx_resync_send(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_err_abort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tls_device_rx_resync_nh_delay(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tls_device_rx_resync_send(ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %sync_type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_rx_resync_send, i32 0, i32 1), ptr blockaddress(@trace_tls_device_rx_resync_send, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !111

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %call42 = tail call i32 @__traceiter_tls_device_rx_resync_send(ptr noundef null, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %sync_type) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_rx_resync_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_rx_resync_send, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tls_device_rx_resync_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_tls_device_rx_resync_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 102, ptr noundef nonnull @.str.7) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tls_device_rx_resync_send(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tls_device_decrypted(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @decrypt_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_store_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tls_device_rx_resync_nh_schedule(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_rx_resync_nh_schedule, i32 0, i32 1), ptr blockaddress(@trace_tls_device_rx_resync_nh_schedule, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !111

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !145
  %call42 = tail call i32 @__traceiter_tls_device_rx_resync_nh_schedule(ptr noundef null, ptr noundef %sk) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !146
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_rx_resync_nh_schedule, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tls_device_rx_resync_nh_schedule, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tls_device_rx_resync_nh_schedule.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_tls_device_rx_resync_nh_schedule.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 121, ptr noundef nonnull @.str.7) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #12
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
declare dso_local i32 @__traceiter_tls_device_rx_resync_nh_schedule(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_sk_get_lowest_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tls_device_offload_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tls_dev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %tlsdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %tlsdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tlsdev_ops, align 32
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features, align 16
  %and = and i64 %5, 27021597764222976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 5, label %if.end.sw.bb_crit_edge
    i32 12, label %if.end.sw.bb_crit_edge33
    i32 2, label %sw.bb22
  ]

if.end.sw.bb_crit_edge33:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge33
  %flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end4_crit_edge, label %netif_is_bond_master.exit

sw.bb.if.end4_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

netif_is_bond_master.exit:                        ; preds = %sw.bb
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags.i, align 16
  %and1.i = and i64 %10, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.i.not = icmp eq i64 %and1.i, 0
  br i1 %tobool2.i.not, label %netif_is_bond_master.exit.if.end4_crit_edge, label %netif_is_bond_master.exit.cleanup_crit_edge

netif_is_bond_master.exit.cleanup_crit_edge:      ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

netif_is_bond_master.exit.if.end4_crit_edge:      ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %netif_is_bond_master.exit.if.end4_crit_edge, %sw.bb.if.end4_crit_edge
  %features5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %features5 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %features5, align 16
  %and6 = and i64 %12, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end12_crit_edge, label %land.lhs.true8

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true8:                                   ; preds = %if.end4
  %tls_dev_resync = getelementptr inbounds %struct.tlsdev_ops, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %tls_dev_resync to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tls_dev_resync, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end12_crit_edge

land.lhs.true8.if.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true8.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  br i1 %tobool.not, label %if.end12.if.else_crit_edge, label %land.lhs.true15

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true15:                                  ; preds = %if.end12
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %land.lhs.true15.if.else_crit_edge, label %land.lhs.true18

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %tls_dev_del = getelementptr inbounds %struct.tlsdev_ops, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %tls_dev_del to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tls_dev_del, align 4
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else_crit_edge, label %land.lhs.true18.cleanup_crit_edge

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true18.if.else_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %land.lhs.true18.if.else_crit_edge, %land.lhs.true15.if.else_crit_edge, %if.end12.if.else_crit_edge
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #12
  %19 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  %20 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list.i, ptr %list.i, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list.i, ptr %19, align 4
  call void @down_write(ptr noundef nonnull @device_offload_lock) #12
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tls_device_lock) #12
  %22 = load ptr, ptr @tls_device_list, align 4
  %cmp13.not13.i = icmp eq ptr %22, @tls_device_list
  br i1 %cmp13.not13.i, label %sw.bb22.for.end.i_crit_edge, label %sw.bb22.for.body.i_crit_edge

sw.bb22.for.body.i_crit_edge:                     ; preds = %sw.bb22
  br label %for.body.i

sw.bb22.for.end.i_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb22.for.body.i_crit_edge
  %.pn.in14.i = phi ptr [ %.pn16.i, %for.inc.i.for.body.i_crit_edge ], [ %22, %sw.bb22.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %.pn.in14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn16.i = load ptr, ptr %.pn.in14.i, align 4
  %netdev15.i = getelementptr i8, ptr %.pn.in14.i, i32 -248
  %24 = ptrtoint ptr %netdev15.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev15.i, align 4
  %cmp16.not.i = icmp eq ptr %25, %1
  br i1 %cmp16.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %refcount.i = getelementptr i8, ptr %.pn.in14.i, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #12
  %26 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false.i
  %28 = phi i32 [ %27, %lor.lhs.false.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %29 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %28, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %30 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %32 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %31, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount.i) #12, !srcloc !147
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %31
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !104

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %33 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %34, 1
  %35 = or i32 %add5.i.i.i.i, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !104

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #12
  %36 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %37 = phi i32 [ %34, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool12.i.i.i.not.i = icmp eq i32 %37, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.for.inc.i_crit_edge, label %if.end.i

refcount_inc_not_zero.exit.i.for.inc.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %refcount_inc_not_zero.exit.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in14.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.__list_del_entry.exit.i.i_crit_edge

if.end.i.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in14.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %.pn.in14.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.pn.in14.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end.i.__list_del_entry.exit.i.i_crit_edge
  %44 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in14.i, ptr noundef nonnull %list.i, ptr noundef %45) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.for.inc.i_crit_edge

__list_del_entry.exit.i.i.for.inc.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.pn.in14.i, ptr %prev1.i.i2.i.i, align 4
  %47 = ptrtoint ptr %.pn.in14.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %.pn.in14.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in14.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %list.i, ptr %prev3.i.i.i.i, align 4
  %49 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %.pn.in14.i, ptr %list.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.for.inc.i_crit_edge, %refcount_inc_not_zero.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp13.not.i = icmp eq ptr %.pn16.i, @tls_device_list
  br i1 %cmp13.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %sw.bb22.for.end.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tls_device_lock, i32 noundef %call3.i) #12
  %50 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %list.i, align 4
  %cmp36.not19.i = icmp eq ptr %51, %list.i
  br i1 %cmp36.not19.i, label %for.end.i.tls_device_down.exit_crit_edge, label %do.body44.lr.ph.i

for.end.i.tls_device_down.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_device_down.exit

do.body44.lr.ph.i:                                ; preds = %for.end.i
  %tobool.not.i.i = icmp eq ptr %1, null
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  br label %do.body44.i

do.body44.i:                                      ; preds = %list_move_tail.exit.i.do.body44.i_crit_edge, %do.body44.lr.ph.i
  %.pn1.in20.i = phi ptr [ %51, %do.body44.lr.ph.i ], [ %.pn124.i, %list_move_tail.exit.i.do.body44.i_crit_edge ]
  %ctx.122.i = getelementptr i8, ptr %.pn1.in20.i, i32 -288
  %52 = ptrtoint ptr %.pn1.in20.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn124.i = load ptr, ptr %.pn1.in20.i, align 4
  %sk.i = getelementptr i8, ptr %.pn1.in20.i, i32 -120
  %53 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sk.i, align 4
  %sk_validate_xmit_skb.i = getelementptr inbounds %struct.sock, ptr %54, i32 0, i32 81
  %55 = ptrtoint ptr %sk_validate_xmit_skb.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr @tls_validate_xmit_skb_sw, ptr %sk_validate_xmit_skb.i, align 8
  %netdev54.i = getelementptr i8, ptr %.pn1.in20.i, i32 -248
  %56 = ptrtoint ptr %netdev54.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr null, ptr %netdev54.i, align 4
  %flags59.i = getelementptr i8, ptr %.pn1.in20.i, i32 -128
  call void @_set_bit(i32 noundef 0, ptr noundef %flags59.i) #12
  call void @synchronize_net() #12
  %tx_conf.i = getelementptr i8, ptr %.pn1.in20.i, i32 -268
  %57 = ptrtoint ptr %tx_conf.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i = load i8, ptr %tx_conf.i, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i)
  %cmp61.i = icmp eq i8 %bf.lshr.mask.i, 64
  br i1 %cmp61.i, label %if.then63.i, label %do.body44.i.if.end64.i_crit_edge

do.body44.i.if.end64.i_crit_edge:                 ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.i

if.then63.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %tlsdev_ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tlsdev_ops, align 32
  %tls_dev_del.i = getelementptr inbounds %struct.tlsdev_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %tls_dev_del.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tls_dev_del.i, align 4
  call void %61(ptr noundef %1, ptr noundef %ctx.122.i, i32 noundef 1) #12
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then63.i, %do.body44.i.if.end64.i_crit_edge
  %62 = ptrtoint ptr %tx_conf.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load65.i = load i8, ptr %tx_conf.i, align 4
  %63 = and i8 %bf.load65.i, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %63)
  %cmp68.i = icmp eq i8 %63, 8
  br i1 %cmp68.i, label %land.lhs.true.i, label %if.end64.i.if.end75.i_crit_edge

if.end64.i.if.end75.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

land.lhs.true.i:                                  ; preds = %if.end64.i
  %64 = ptrtoint ptr %flags59.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags59.i, align 4
  %66 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i32 = icmp eq i32 %66, 0
  br i1 %tobool.not.i32, label %if.then72.i, label %land.lhs.true.i.if.end75.i_crit_edge

land.lhs.true.i.if.end75.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

if.then72.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %tlsdev_ops to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tlsdev_ops, align 32
  %tls_dev_del74.i = getelementptr inbounds %struct.tlsdev_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %tls_dev_del74.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tls_dev_del74.i, align 4
  call void %70(ptr noundef %1, ptr noundef %ctx.122.i, i32 noundef 0) #12
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then72.i, %land.lhs.true.i.if.end75.i_crit_edge, %if.end64.i.if.end75.i_crit_edge
  br i1 %tobool.not.i.i, label %if.end75.i.dev_put.exit.i_crit_edge, label %do.body1.i.i

if.end75.i.dev_put.exit.i_crit_edge:              ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit.i

do.body1.i.i:                                     ; preds = %if.end75.i
  %71 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !121
  %72 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %80, %74
  %81 = inttoptr i32 %add.i.i to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add13.i.i = add i32 %83, -1
  store i32 %add13.i.i, ptr %81, align 4
  %84 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !122
  %and.i.i.i.i = and i32 %84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !106

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #12, !srcloc !123
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i.i, %if.end75.i.dev_put.exit.i_crit_edge
  %call84.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tls_device_lock) #12
  %call.i.i4.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn1.in20.i) #12
  br i1 %call.i.i4.i, label %if.end.i.i7.i, label %dev_put.exit.i.__list_del_entry.exit.i9.i_crit_edge

dev_put.exit.i.__list_del_entry.exit.i9.i_crit_edge: ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i9.i

if.end.i.i7.i:                                    ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i5.i = getelementptr inbounds %struct.list_head, ptr %.pn1.in20.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i5.i, align 4
  %87 = ptrtoint ptr %.pn1.in20.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %.pn1.in20.i, align 4
  %prev1.i.i.i6.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i6.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %__list_del_entry.exit.i9.i

__list_del_entry.exit.i9.i:                       ; preds = %if.end.i.i7.i, %dev_put.exit.i.__list_del_entry.exit.i9.i_crit_edge
  %91 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tls_device_down_list, i32 0, i32 1), align 4
  %call.i.i.i8.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn1.in20.i, ptr noundef %91, ptr noundef nonnull @tls_device_down_list) #12
  br i1 %call.i.i.i8.i, label %if.end.i.i.i11.i, label %__list_del_entry.exit.i9.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i9.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit.i

if.end.i.i.i11.i:                                 ; preds = %__list_del_entry.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %.pn1.in20.i, ptr getelementptr inbounds (%struct.list_head, ptr @tls_device_down_list, i32 0, i32 1), align 4
  %92 = ptrtoint ptr %.pn1.in20.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @tls_device_down_list, ptr %.pn1.in20.i, align 4
  %prev3.i.i.i10.i = getelementptr inbounds %struct.list_head, ptr %.pn1.in20.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %91, ptr %prev3.i.i.i10.i, align 4
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %.pn1.in20.i, ptr %91, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i11.i, %__list_del_entry.exit.i9.i.list_move_tail.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tls_device_lock, i32 noundef %call84.i) #12
  %cmp36.not.i = icmp eq ptr %.pn124.i, %list.i
  br i1 %cmp36.not.i, label %list_move_tail.exit.i.tls_device_down.exit_crit_edge, label %list_move_tail.exit.i.do.body44.i_crit_edge

list_move_tail.exit.i.do.body44.i_crit_edge:      ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i

list_move_tail.exit.i.tls_device_down.exit_crit_edge: ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_device_down.exit

tls_device_down.exit:                             ; preds = %list_move_tail.exit.i.tls_device_down.exit_crit_edge, %for.end.i.tls_device_down.exit_crit_edge
  call void @up_write(ptr noundef nonnull @device_offload_lock) #12
  %call97.i = call zeroext i1 @flush_work(ptr noundef nonnull @tls_device_gc_work) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #12
  br label %cleanup

cleanup:                                          ; preds = %tls_device_down.exit, %if.else, %land.lhs.true18.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %netif_is_bond_master.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tls_device_down.exit ], [ 32770, %if.else ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %netif_is_bond_master.exit.cleanup_crit_edge ], [ 32770, %land.lhs.true8.cleanup_crit_edge ], [ 0, %land.lhs.true18.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tls_validate_xmit_skb_sw(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_device_gc_task(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %gc_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gc_list) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %gc_list, i32 0, i32 1
  %1 = ptrtoint ptr %gc_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gc_list, ptr %gc_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %gc_list, ptr %0, align 4
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tls_device_lock) #12
  %3 = load volatile ptr, ptr @tls_device_gc_list, align 4
  %cmp.i.not.i = icmp eq ptr %3, @tls_device_gc_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %gc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gc_list, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tls_device_gc_list, i32 0, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %gc_list, ptr %prev3.i.i, align 4
  store ptr %3, ptr %gc_list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %6, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev6.i.i, align 4
  store volatile ptr @tls_device_gc_list, ptr @tls_device_gc_list, align 4
  store ptr @tls_device_gc_list, ptr getelementptr inbounds (%struct.list_head, ptr @tls_device_gc_list, i32 0, i32 1), align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tls_device_lock, i32 noundef %call3) #12
  %10 = ptrtoint ptr %gc_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gc_list, align 4
  %cmp13.not41 = icmp eq ptr %11, %gc_list
  br i1 %cmp13.not41, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %tls_device_free_ctx.exit.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %.pn.in42 = phi ptr [ %.pn45, %tls_device_free_ctx.exit.for.body_crit_edge ], [ %11, %list_splice_init.exit.for.body_crit_edge ]
  %ctx.044 = getelementptr i8, ptr %.pn.in42, i32 -288
  %12 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn45 = load ptr, ptr %.pn.in42, align 4
  %netdev15 = getelementptr i8, ptr %.pn.in42, i32 -248
  %13 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev15, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %tx_conf = getelementptr i8, ptr %.pn.in42, i32 -268
  %15 = ptrtoint ptr %tx_conf to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %tx_conf, align 4
  %bf.lshr.mask = and i8 %bf.load, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp17 = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp17, label %do.body1.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body1.i:                                       ; preds = %land.lhs.true
  %tlsdev_ops = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 48
  %16 = ptrtoint ptr %tlsdev_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tlsdev_ops, align 32
  %tls_dev_del = getelementptr inbounds %struct.tlsdev_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tls_dev_del to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tls_dev_del, align 4
  call void %19(ptr noundef nonnull %14, ptr noundef %ctx.044, i32 noundef 1) #12
  %20 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !121
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = call i32 @llvm.read_register.i32(metadata !92) #12
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, -1
  store i32 %add13.i, ptr %30, align 4
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !122
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !106

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #12, !srcloc !123
  %34 = ptrtoint ptr %netdev15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %netdev15, align 4
  br label %if.end

if.end:                                           ; preds = %dev_put.exit, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pn.in42, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %41 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in42, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tx_conf.i = getelementptr i8, ptr %.pn.in42, i32 -268
  %43 = ptrtoint ptr %tx_conf.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i = load i8, ptr %tx_conf.i, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i)
  %cmp.i = icmp eq i8 %bf.lshr.mask.i, 64
  br i1 %cmp.i, label %if.then.i38, label %list_del.exit.if.end.i_crit_edge

list_del.exit.if.end.i_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i38:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %priv_ctx_tx.i.i = getelementptr i8, ptr %.pn.in42, i32 -256
  %44 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  call void @kfree(ptr noundef %45) #12
  %tx.i = getelementptr i8, ptr %.pn.in42, i32 -244
  %rec_seq.i = getelementptr i8, ptr %.pn.in42, i32 -240
  %46 = ptrtoint ptr %rec_seq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rec_seq.i, align 4
  call void @kfree(ptr noundef %47) #12
  %48 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx.i, align 4
  call void @kfree(ptr noundef %49) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i38, %list_del.exit.if.end.i_crit_edge
  %50 = ptrtoint ptr %tx_conf.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load3.i = load i8, ptr %tx_conf.i, align 4
  %51 = and i8 %bf.load3.i, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %51)
  %cmp6.i = icmp eq i8 %51, 8
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.tls_device_free_ctx.exit_crit_edge

if.end.i.tls_device_free_ctx.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tls_device_free_ctx.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %priv_ctx_rx.i.i = getelementptr i8, ptr %.pn.in42, i32 -252
  %52 = ptrtoint ptr %priv_ctx_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv_ctx_rx.i.i, align 4
  call void @kfree(ptr noundef %53) #12
  br label %tls_device_free_ctx.exit

tls_device_free_ctx.exit:                         ; preds = %if.then8.i, %if.end.i.tls_device_free_ctx.exit_crit_edge
  call void @tls_ctx_free(ptr noundef null, ptr noundef %ctx.044) #12
  %cmp13.not = icmp eq ptr %.pn45, %gc_list
  br i1 %cmp13.not, label %tls_device_free_ctx.exit.for.end_crit_edge, label %tls_device_free_ctx.exit.for.body_crit_edge

tls_device_free_ctx.exit.for.body_crit_edge:      ; preds = %tls_device_free_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

tls_device_free_ctx.exit.for.end_crit_edge:       ; preds = %tls_device_free_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %tls_device_free_ctx.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gc_list) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_ctx_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !29, !30, !32, !34, !35, !36, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !56, !58, !59, !61, !62, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !85, !87, !89, !91}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__ksymtab_tls_device_sk_destruct, !1, !"__ksymtab_tls_device_sk_destruct", i1 false, i1 false}
!1 = !{!"../net/tls/tls_device.c", i32 200, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/tls/tls_device.c", i32 214, i32 2}
!4 = !{ptr @__ksymtab_tls_offload_tx_resync_request, !5, !"__ksymtab_tls_offload_tx_resync_request", i1 false, i1 false}
!5 = !{!"../net/tls/tls_device.c", i32 216, i32 1}
!6 = !{ptr @__ksymtab_tls_get_record, !7, !"__ksymtab_tls_get_record", i1 false, i1 false}
!7 = !{!"../net/tls/tls_device.c", i32 653, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/tls/tls_device.c", i32 668, i32 3}
!10 = !{ptr @tls_set_device_offload.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../net/tls/tls_device.c", i32 1106, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/tls/tls_device.c", i32 1123, i32 3}
!15 = !{ptr @tls_set_device_offload._rs, !14, !"_rs", i1 false, i1 false}
!16 = !{ptr @__func__.tls_set_device_offload, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tls_set_device_offload._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @tls_set_device_offload._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @tls_set_device_offload_rx._rs, !21, !"_rs", i1 false, i1 false}
!21 = !{!"../net/tls/tls_device.c", i32 1199, i32 3}
!22 = !{ptr @__func__.tls_set_device_offload_rx, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tls_set_device_offload_rx._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @tls_set_device_offload_rx._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/mm.h", i32 717, i32 2}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/tls/tls_device.c", i32 54, i32 8}
!29 = !{ptr @tls_device_lock, !28, !"tls_device_lock", i1 false, i1 false}
!30 = !{ptr @tls_device_gc_list, !31, !"tls_device_gc_list", i1 false, i1 false}
!31 = !{!"../net/tls/tls_device.c", i32 51, i32 8}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../net/tls/trace.h", i32 147, i32 1}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../net/tls/trace.h", i32 171, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!54 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!58 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../net/tls/trace.h", i32 123, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../net/tls/tls_device.c", i32 709, i32 7}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../net/tls/trace.h", i32 77, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../net/tls/trace.h", i32 44, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../net/tls/trace.h", i32 104, i32 1}
!72 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/net/sock.h", i32 2077, i32 8}
!75 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/tls/tls_device.c", i32 46, i32 8}
!78 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @device_offload_lock, !77, !"device_offload_lock", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../net/tls/trace.h", i32 15, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = !{ptr @tls_device_list, !84, !"tls_device_list", i1 false, i1 false}
!84 = !{!"../net/tls/tls_device.c", i32 52, i32 8}
!85 = !{ptr @tls_dev_notifier, !86, !"tls_dev_notifier", i1 false, i1 false}
!86 = !{!"../net/tls/tls_device.c", i32 1388, i32 30}
!87 = !{ptr @tls_device_down_list, !88, !"tls_device_down_list", i1 false, i1 false}
!88 = !{!"../net/tls/tls_device.c", i32 53, i32 8}
!89 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/tls/tls_device.c", i32 50, i32 8}
!91 = !{ptr @tls_device_gc_work, !90, !"tls_device_gc_work", i1 false, i1 false}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2148304022}
!103 = !{i64 2148218486, i64 2148218518, i64 2148218547, i64 2148218581, i64 2148218612, i64 2148218635}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2148914635}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 2153272453, i64 2153272936, i64 2153272490, i64 2153272546, i64 2153272580, i64 2153272604, i64 2153272645, i64 2153272666, i64 2153272694, i64 2153272728}
!108 = !{i64 2148302943}
!109 = !{i64 2148217676, i64 2148217708, i64 2148217737, i64 2148217771, i64 2148217802, i64 2148217825}
!110 = !{i64 2148303172}
!111 = !{i64 2148772900, i64 2148772905, i64 2148772918, i64 2148772962, i64 2148772996, i64 2148773017}
!112 = !{i64 2158946508}
!113 = !{i64 2158946767}
!114 = !{i64 2150007307}
!115 = !{i64 2150008343}
!116 = !{!"auto-init"}
!117 = !{i64 2149998748}
!118 = !{i64 2149999014}
!119 = !{i64 2158928709}
!120 = !{i64 2158928974}
!121 = !{i64 667818, i64 667879}
!122 = !{i64 670550}
!123 = !{i64 670835}
!124 = !{i64 2158871545}
!125 = !{i64 2158871848}
!126 = !{i64 2154847889, i64 2154848381, i64 2154847926, i64 2154847982, i64 2154848016, i64 2154848040, i64 2154848081, i64 2154848102, i64 2154848130, i64 2154848164}
!127 = !{i64 2154841570, i64 2154842062, i64 2154841607, i64 2154841663, i64 2154841697, i64 2154841721, i64 2154841762, i64 2154841783, i64 2154841811, i64 2154841845}
!128 = !{i64 2154843180, i64 2154843672, i64 2154843217, i64 2154843273, i64 2154843307, i64 2154843331, i64 2154843372, i64 2154843393, i64 2154843421, i64 2154843455}
!129 = !{i64 2159076360}
!130 = !{i64 2148213910}
!131 = !{i64 625992, i64 626017, i64 626039, i64 626055, i64 626067, i64 626087, i64 626111, i64 626127, i64 626139}
!132 = !{i64 2148214098}
!133 = !{i64 2158853357}
!134 = !{i64 2158853622}
!135 = !{i64 2159067245}
!136 = !{i64 2153296426, i64 2153296910, i64 2153296463, i64 2153296519, i64 2153296553, i64 2153296577, i64 2153296618, i64 2153296639, i64 2153296667, i64 2153296701}
!137 = !{i64 2148214491, i64 2148214517, i64 2148214546, i64 2148214580, i64 2148214611, i64 2148214634}
!138 = !{i64 2151501260}
!139 = !{i64 2148311317}
!140 = !{i64 2148221736, i64 2148221768, i64 2148221797, i64 2148221831, i64 2148221862, i64 2148221885}
!141 = !{i64 2158968041}
!142 = !{i64 2158968292}
!143 = !{i64 2158889402}
!144 = !{i64 2158889675}
!145 = !{i64 2158910820}
!146 = !{i64 2158911051}
!147 = !{i64 625486, i64 625510, i64 625531, i64 625548, i64 625565}
