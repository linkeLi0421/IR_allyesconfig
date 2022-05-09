; ModuleID = '/llk/IR_all_yes/net/rxrpc/conn_event.c_pt.bc'
source_filename = "../net/rxrpc/conn_event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%struct.atomic_t = type { i32 }
%union.anon.122 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.139, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon }
%union.anon = type { i64 }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rxrpc_channel = type { i32, ptr, i32, i32, i32, i32, i8, %union.anon.138 }
%union.anon.138 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { ptr, [4 x i8], %struct.rxrpc_crypt, i32, [4 x i8] }
%struct.rxrpc_crypt = type { %union.anon.141 }
%union.anon.141 = type { [2 x i32] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.anon.159 = type { %struct.rxrpc_wire_header, %union.anon.161 }
%struct.rxrpc_wire_header = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %union.anon.160, i16 }
%union.anon.160 = type { i16 }
%union.anon.161 = type { i32, [16 x i8] }
%struct.rxrpc_ackinfo = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.114, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.114 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rxrpc_skb_priv = type { %struct.atomic_t, i8, i8, %union.anon.157, %struct.rxrpc_host_header }
%union.anon.157 = type { [2 x i32] }
%struct.rxrpc_host_header = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %union.anon.158, i16 }
%union.anon.158 = type { i16 }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.135 }
%union.anon.135 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.anon = type { i32, i32 }
%struct.rxrpc_ackpacket = type <{ i16, i16, i32, i32, i32, i8, i8, [0 x i8] }>
%struct.rxrpc_local = type { %struct.callback_head, %struct.atomic_t, %struct.atomic_t, ptr, %struct.list_head, ptr, %struct.work_struct, ptr, %struct.rw_semaphore, %struct.sk_buff_head, %struct.sk_buff_head, %struct.rb_root, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i8, i8, %struct.sockaddr_rxrpc }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rxrpc_security = type { ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.9, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.10, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.11, %union.anon.15, ptr }
%union.anon.9 = type { %struct.rb_node }
%union.anon.10 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.11 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.12, ptr, ptr, ptr }
%union.anon.12 = type { i32 }
%union.anon.15 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.rxrpc_bundle = type { %struct.rxrpc_conn_parameters, %struct.atomic_t, i32, i8, i8, i16, %struct.spinlock, %struct.rb_node, %struct.list_head, i32, [4 x ptr] }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_process_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxrpc_process_connection\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/rxrpc/conn_event.c\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_process_connection._entry_ptr = internal global ptr @rxrpc_process_connection._entry, section ".printk_index", align 4
@rxrpc_conn_retransmit_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxrpc_conn_retransmit_call\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_conn_retransmit_call._entry_ptr = internal global ptr @rxrpc_conn_retransmit_call._entry, section ".printk_index", align 4
@rxrpc_rx_mtu = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_rx_window_size = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_rx_jumbo_max = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_conn_retransmit_call._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s] ### Tx ABORT %%%u { %d } [re]\0A\00", [56 x i8] zeroinitializer }, align 32
@rxrpc_conn_retransmit_call._entry_ptr.7 = internal global ptr @rxrpc_conn_retransmit_call._entry.5, section ".printk_index", align 4
@rxrpc_conn_retransmit_call._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] ### Tx ACK %%%u [re]\0A\00", [33 x i8] zeroinitializer }, align 32
@rxrpc_conn_retransmit_call._entry_ptr.10 = internal global ptr @rxrpc_conn_retransmit_call._entry.8, section ".printk_index", align 4
@rxrpc_conn_retransmit_call._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_conn_retransmit_call._entry_ptr.12 = internal global ptr @rxrpc_conn_retransmit_call._entry.11, section ".printk_index", align 4
@__tracepoint_rxrpc_tx_ack = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_tx_ack.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_tx_fail = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_tx_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_tx_packet = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_tx_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_secure_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s({%d})\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rxrpc_secure_connection\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_secure_connection._entry_ptr = internal global ptr @rxrpc_secure_connection._entry, section ".printk_index", align 4
@rxrpc_secure_connection._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rxrpc: Assertion failed\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_secure_connection._entry_ptr.20 = internal global ptr @rxrpc_secure_connection._entry.18, section ".printk_index", align 4
@rxrpc_secure_connection._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_secure_connection._entry_ptr.22 = internal global ptr @rxrpc_secure_connection._entry.21, section ".printk_index", align 4
@rxrpc_secure_connection._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     abort %d, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_secure_connection._entry_ptr.25 = internal global ptr @rxrpc_secure_connection._entry.23, section ".printk_index", align 4
@rxrpc_secure_connection._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.17, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() [aborted]\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_secure_connection._entry_ptr.28 = internal global ptr @rxrpc_secure_connection._entry.26, section ".printk_index", align 4
@rxrpc_process_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s] <== %s() = -ECONNABORTED [%u]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxrpc_process_event\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_process_event._entry_ptr = internal global ptr @rxrpc_process_event._entry, section ".printk_index", align 4
@rxrpc_process_event._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] ==> %s({%d},{%u,%%%u},)\0A\00", [62 x i8] zeroinitializer }, align 32
@rxrpc_process_event._entry_ptr.33 = internal global ptr @rxrpc_process_event._entry.31, section ".printk_index", align 4
@rxrpc_process_event.___tp_str = internal global ptr @.str.34, section "__tracepoint_str", align 4
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bad_abort\00", [22 x i8] zeroinitializer }, align 32
@rxrpc_process_event._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s] ### Rx ABORT %%%u { ac=%d }\0A\00", [58 x i8] zeroinitializer }, align 32
@rxrpc_process_event._entry_ptr.37 = internal global ptr @rxrpc_process_event._entry.35, section ".printk_index", align 4
@rxrpc_process_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@rxrpc_process_event.___tp_str.39 = internal global ptr @.str.40, section "__tracepoint_str", align 4
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad_conn_pkt\00", [19 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_rx_eproto = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_eproto.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_abort_calls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s({%d},%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxrpc_abort_calls\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_abort_calls._entry_ptr = internal global ptr @rxrpc_abort_calls._entry, section ".printk_index", align 4
@rxrpc_abort_calls.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CON\00", [28 x i8] zeroinitializer }, align 32
@rxrpc_abort_calls._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.42, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_abort_calls._entry_ptr.45 = internal global ptr @rxrpc_abort_calls._entry.44, section ".printk_index", align 4
@__tracepoint_rxrpc_abort = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_abort.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_rx_abort = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_abort.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_call_is_secure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%p)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxrpc_call_is_secure\00", [43 x i8] zeroinitializer }, align 32
@rxrpc_call_is_secure._entry_ptr = internal global ptr @rxrpc_call_is_secure._entry, section ".printk_index", align 4
@rxrpc_abort_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] ==> %s(%d,,%u,%u)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxrpc_abort_connection\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_abort_connection._entry_ptr = internal global ptr @rxrpc_abort_connection._entry, section ".printk_index", align 4
@rxrpc_abort_connection._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s] <== %s() = 0 [already dead]\0A\00", [58 x i8] zeroinitializer }, align 32
@rxrpc_abort_connection._entry_ptr.52 = internal global ptr @rxrpc_abort_connection._entry.50, section ".printk_index", align 4
@rxrpc_abort_connection._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s] ### Tx CONN ABORT %%%u { %d }\0A\00", [56 x i8] zeroinitializer }, align 32
@rxrpc_abort_connection._entry_ptr.55 = internal global ptr @rxrpc_abort_connection._entry.53, section ".printk_index", align 4
@rxrpc_abort_connection._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s]     sendmsg failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rxrpc_abort_connection._entry_ptr.58 = internal global ptr @rxrpc_abort_connection._entry.56, section ".printk_index", align 4
@rxrpc_abort_connection._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_abort_connection._entry_ptr.61 = internal global ptr @rxrpc_abort_connection._entry.59, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.64 = internal global [7 x i64] [i64 5, i64 32, i64 4294967167, i64 4294967169, i64 4294967225, i64 4294967284, i64 4294967285]
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 497, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 42, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 125, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 132, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 145, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 972, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 108, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 374, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 376, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 384, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 388, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 390, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 293, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 297, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 314, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 318, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 349, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 361, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 158, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 169, i32 9 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 183, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 269, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 200, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 206, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 245, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 251, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [26 x i8] c"../net/rxrpc/conn_event.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 259, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @rxrpc_abort_calls._entry, ptr @rxrpc_abort_calls._entry.44, ptr @rxrpc_abort_calls._entry_ptr, ptr @rxrpc_abort_calls._entry_ptr.45, ptr @rxrpc_abort_connection._entry, ptr @rxrpc_abort_connection._entry.50, ptr @rxrpc_abort_connection._entry.53, ptr @rxrpc_abort_connection._entry.56, ptr @rxrpc_abort_connection._entry.59, ptr @rxrpc_abort_connection._entry_ptr, ptr @rxrpc_abort_connection._entry_ptr.52, ptr @rxrpc_abort_connection._entry_ptr.55, ptr @rxrpc_abort_connection._entry_ptr.58, ptr @rxrpc_abort_connection._entry_ptr.61, ptr @rxrpc_call_is_secure._entry, ptr @rxrpc_call_is_secure._entry_ptr, ptr @rxrpc_conn_retransmit_call._entry, ptr @rxrpc_conn_retransmit_call._entry.11, ptr @rxrpc_conn_retransmit_call._entry.5, ptr @rxrpc_conn_retransmit_call._entry.8, ptr @rxrpc_conn_retransmit_call._entry_ptr, ptr @rxrpc_conn_retransmit_call._entry_ptr.10, ptr @rxrpc_conn_retransmit_call._entry_ptr.12, ptr @rxrpc_conn_retransmit_call._entry_ptr.7, ptr @rxrpc_process_connection._entry, ptr @rxrpc_process_connection._entry_ptr, ptr @rxrpc_process_event.___tp_str, ptr @rxrpc_process_event.___tp_str.39, ptr @rxrpc_process_event._entry, ptr @rxrpc_process_event._entry.31, ptr @rxrpc_process_event._entry.35, ptr @rxrpc_process_event._entry_ptr, ptr @rxrpc_process_event._entry_ptr.33, ptr @rxrpc_process_event._entry_ptr.37, ptr @rxrpc_secure_connection._entry, ptr @rxrpc_secure_connection._entry.18, ptr @rxrpc_secure_connection._entry.21, ptr @rxrpc_secure_connection._entry.23, ptr @rxrpc_secure_connection._entry.26, ptr @rxrpc_secure_connection._entry_ptr, ptr @rxrpc_secure_connection._entry_ptr.20, ptr @rxrpc_secure_connection._entry_ptr.22, ptr @rxrpc_secure_connection._entry_ptr.25, ptr @rxrpc_secure_connection._entry_ptr.28, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_process_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_conn_retransmit_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_conn_retransmit_call._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_conn_retransmit_call._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_conn_retransmit_call._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_secure_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_secure_connection._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_secure_connection._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_secure_connection._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_secure_connection._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_process_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_process_event._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_process_event._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_abort_calls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_abort_calls._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_call_is_secure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_abort_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_abort_connection._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_abort_connection._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_abort_connection._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_abort_connection._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_process_delayed_final_acks(ptr noundef %conn, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %flags = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 17
  %arrayidx = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 0
  %arrayidx.1 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 1
  %arrayidx.2 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 2
  %arrayidx.3 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 3
  br label %again

again:                                            ; preds = %cleanup.3.again_crit_edge, %entry
  %j.0 = phi i32 [ %0, %entry ], [ %21, %cleanup.3.again_crit_edge ]
  %add = add i32 %j.0, 2147483647
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %again.cleanup_crit_edge, label %do.end

again.cleanup_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %again
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  %sub = sub i32 %j.0, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp8 = icmp sgt i32 %sub, -1
  %brmerge = or i1 %cmp8, %force
  br i1 %brmerge, label %if.end15, label %if.then10

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub11 = sub i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %cmp12 = icmp slt i32 %sub11, 0
  %spec.select = select i1 %cmp12, i32 %5, i32 %add
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %call18 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.cleanup_crit_edge, label %if.then20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rxrpc_conn_retransmit_call(ptr noundef %conn, ptr noundef null, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end15.cleanup_crit_edge, %if.then10, %again.cleanup_crit_edge
  %next_j.2 = phi i32 [ %spec.select, %if.then10 ], [ %add, %again.cleanup_crit_edge ], [ %add, %if.then20 ], [ %add, %if.end15.cleanup_crit_edge ]
  %set.2.off0 = phi i1 [ %cmp12, %if.then10 ], [ false, %again.cleanup_crit_edge ], [ false, %if.then20 ], [ false, %if.end15.cleanup_crit_edge ]
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1 = icmp eq i32 %8, 0
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %do.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

do.end.1:                                         ; preds = %cleanup
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.1, align 4
  %sub.1 = sub i32 %j.0, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.1)
  %cmp8.1 = icmp sgt i32 %sub.1, -1
  %brmerge.1 = or i1 %cmp8.1, %force
  br i1 %brmerge.1, label %if.end15.1, label %if.then10.1

if.then10.1:                                      ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #9
  %sub11.1 = sub i32 %10, %next_j.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.1)
  %cmp12.1 = icmp slt i32 %sub11.1, 0
  %spec.select.1 = select i1 %cmp12.1, i32 %10, i32 %next_j.2
  %spec.select49.1 = select i1 %cmp12.1, i1 true, i1 %set.2.off0
  br label %cleanup.1

if.end15.1:                                       ; preds = %do.end.1
  %call18.1 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %tobool19.not.1 = icmp eq i32 %call18.1, 0
  br i1 %tobool19.not.1, label %if.end15.1.cleanup.1_crit_edge, label %if.then20.1

if.end15.1.cleanup.1_crit_edge:                   ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.then20.1:                                      ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rxrpc_conn_retransmit_call(ptr noundef %conn, ptr noundef null, i32 noundef 1)
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then20.1, %if.end15.1.cleanup.1_crit_edge, %if.then10.1, %cleanup.cleanup.1_crit_edge
  %next_j.2.1 = phi i32 [ %spec.select.1, %if.then10.1 ], [ %next_j.2, %cleanup.cleanup.1_crit_edge ], [ %next_j.2, %if.then20.1 ], [ %next_j.2, %if.end15.1.cleanup.1_crit_edge ]
  %set.2.off0.1 = phi i1 [ %spec.select49.1, %if.then10.1 ], [ %set.2.off0, %cleanup.cleanup.1_crit_edge ], [ %set.2.off0, %if.then20.1 ], [ %set.2.off0, %if.end15.1.cleanup.1_crit_edge ]
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.2 = icmp eq i32 %13, 0
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %do.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

do.end.2:                                         ; preds = %cleanup.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.2, align 4
  %sub.2 = sub i32 %j.0, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.2)
  %cmp8.2 = icmp sgt i32 %sub.2, -1
  %brmerge.2 = or i1 %cmp8.2, %force
  br i1 %brmerge.2, label %if.end15.2, label %if.then10.2

if.then10.2:                                      ; preds = %do.end.2
  call void @__sanitizer_cov_trace_pc() #9
  %sub11.2 = sub i32 %15, %next_j.2.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.2)
  %cmp12.2 = icmp slt i32 %sub11.2, 0
  %spec.select.2 = select i1 %cmp12.2, i32 %15, i32 %next_j.2.1
  %spec.select49.2 = select i1 %cmp12.2, i1 true, i1 %set.2.off0.1
  br label %cleanup.2

if.end15.2:                                       ; preds = %do.end.2
  %call18.2 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2)
  %tobool19.not.2 = icmp eq i32 %call18.2, 0
  br i1 %tobool19.not.2, label %if.end15.2.cleanup.2_crit_edge, label %if.then20.2

if.end15.2.cleanup.2_crit_edge:                   ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

if.then20.2:                                      ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rxrpc_conn_retransmit_call(ptr noundef %conn, ptr noundef null, i32 noundef 2)
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then20.2, %if.end15.2.cleanup.2_crit_edge, %if.then10.2, %cleanup.1.cleanup.2_crit_edge
  %next_j.2.2 = phi i32 [ %spec.select.2, %if.then10.2 ], [ %next_j.2.1, %cleanup.1.cleanup.2_crit_edge ], [ %next_j.2.1, %if.then20.2 ], [ %next_j.2.1, %if.end15.2.cleanup.2_crit_edge ]
  %set.2.off0.2 = phi i1 [ %spec.select49.2, %if.then10.2 ], [ %set.2.off0.1, %cleanup.1.cleanup.2_crit_edge ], [ %set.2.off0.1, %if.then20.2 ], [ %set.2.off0.1, %if.end15.2.cleanup.2_crit_edge ]
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.3 = icmp eq i32 %18, 0
  br i1 %tobool.not.3, label %cleanup.2.cleanup.3_crit_edge, label %do.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

do.end.3:                                         ; preds = %cleanup.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.3, align 4
  %sub.3 = sub i32 %j.0, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.3)
  %cmp8.3 = icmp sgt i32 %sub.3, -1
  %brmerge.3 = or i1 %cmp8.3, %force
  br i1 %brmerge.3, label %if.end15.3, label %if.then10.3

if.then10.3:                                      ; preds = %do.end.3
  call void @__sanitizer_cov_trace_pc() #9
  %sub11.3 = sub i32 %20, %next_j.2.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.3)
  %cmp12.3 = icmp slt i32 %sub11.3, 0
  %spec.select.3 = select i1 %cmp12.3, i32 %20, i32 %next_j.2.2
  %spec.select49.3 = select i1 %cmp12.3, i1 true, i1 %set.2.off0.2
  br label %cleanup.3

if.end15.3:                                       ; preds = %do.end.3
  %call18.3 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.3)
  %tobool19.not.3 = icmp eq i32 %call18.3, 0
  br i1 %tobool19.not.3, label %if.end15.3.cleanup.3_crit_edge, label %if.then20.3

if.end15.3.cleanup.3_crit_edge:                   ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

if.then20.3:                                      ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rxrpc_conn_retransmit_call(ptr noundef %conn, ptr noundef null, i32 noundef 3)
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.then20.3, %if.end15.3.cleanup.3_crit_edge, %if.then10.3, %cleanup.2.cleanup.3_crit_edge
  %next_j.2.3 = phi i32 [ %spec.select.3, %if.then10.3 ], [ %next_j.2.2, %cleanup.2.cleanup.3_crit_edge ], [ %next_j.2.2, %if.then20.3 ], [ %next_j.2.2, %if.end15.3.cleanup.3_crit_edge ]
  %set.2.off0.3 = phi i1 [ %spec.select49.3, %if.then10.3 ], [ %set.2.off0.2, %cleanup.2.cleanup.3_crit_edge ], [ %set.2.off0.2, %if.then20.3 ], [ %set.2.off0.2, %if.end15.3.cleanup.3_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub23 = sub i32 %21, %next_j.2.3
  %cmp24 = icmp sgt i32 %sub23, -1
  br i1 %cmp24, label %cleanup.3.again_crit_edge, label %if.end26

cleanup.3.again_crit_edge:                        ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %again

if.end26:                                         ; preds = %cleanup.3
  br i1 %set.2.off0.3, label %if.then28, label %if.end26.if.end29_crit_edge

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 7
  %call.i = tail call i32 @timer_reduce(ptr noundef %timer.i, i32 noundef %next_j.2.3) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_conn_retransmit_call(ptr noundef %conn, ptr noundef readonly %skb, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [3 x %struct.kvec], align 4
  %pkt = alloca %struct.anon.159, align 4
  %ack_info = alloca %struct.rxrpc_ackinfo, align 4
  %padding = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %spec.select = select i1 %tobool.not, ptr null, ptr %cb
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #7
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iov) #7
  %2 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %3 = getelementptr inbounds [3 x %struct.kvec], ptr %iov, i32 0, i32 1
  %4 = getelementptr inbounds [3 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds [3 x %struct.kvec], ptr %iov, i32 0, i32 2
  %6 = getelementptr inbounds [3 x %struct.kvec], ptr %iov, i32 0, i32 2, i32 1
  %7 = getelementptr inbounds i8, ptr %iov, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pkt) #7
  %9 = call ptr @memset(ptr %pkt, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ack_info) #7
  %10 = getelementptr inbounds %struct.rxrpc_ackinfo, ptr %ack_info, i32 0, i32 1
  %11 = getelementptr inbounds %struct.rxrpc_ackinfo, ptr %ack_info, i32 0, i32 2
  %12 = getelementptr inbounds %struct.rxrpc_ackinfo, ptr %ack_info, i32 0, i32 3
  %13 = call ptr @memset(ptr %ack_info, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %padding) #7
  %14 = ptrtoint ptr %padding to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %padding, align 4, !annotation !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %15 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %entry.do.end7_crit_edge, label %do.end, !prof !137

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %20 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_id, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.4, i32 noundef %21) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %last_call = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %channel, i32 5
  %22 = ptrtoint ptr %last_call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %last_call, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !138
  br i1 %tobool.not, label %do.end7.if.end20_crit_edge, label %land.lhs.true

do.end7.if.end20_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %do.end7
  %callNumber = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %spec.select, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %callNumber to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %callNumber, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not = icmp eq i32 %23, %25
  br i1 %cmp.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %do.end7.if.end20_crit_edge
  %params = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1
  %peer = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %peer, align 4
  %transport = getelementptr inbounds %struct.rxrpc_peer, ptr %27, i32 0, i32 16, i32 4
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transport, ptr %msg, align 8
  %transport_len = getelementptr inbounds %struct.rxrpc_peer, ptr %27, i32 0, i32 16, i32 3
  %29 = ptrtoint ptr %transport_len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %transport_len, align 2
  %conv = zext i16 %30 to i32
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %31 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %msg_namelen, align 4
  %32 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %32, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %34 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %35 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %msg_flags, align 4
  %36 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pkt, ptr %iov, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %padding, ptr %3, align 4
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %4, align 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ack_info, ptr %5, align 4
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %6, align 4
  %41 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %conn, align 8
  %43 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %pkt, align 4
  %cid = getelementptr inbounds %struct.anon, ptr %conn, i32 0, i32 1
  %44 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cid, align 4
  %or = or i32 %45, %channel
  %cid37 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 1
  %46 = ptrtoint ptr %cid37 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or, ptr %cid37, align 4
  %callNumber39 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 2
  %47 = ptrtoint ptr %callNumber39 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %23, ptr %callNumber39, align 4
  %seq = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 3
  %48 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %seq, align 4
  %last_type = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %channel, i32 6
  %49 = ptrtoint ptr %last_type to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %last_type, align 4
  %type = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 5
  %51 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %type, align 4
  %out_clientflag = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 28
  %52 = ptrtoint ptr %out_clientflag to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %out_clientflag, align 1
  %flags = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 6
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %flags, align 1
  %userStatus = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 7
  %55 = ptrtoint ptr %userStatus to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %userStatus, align 2
  %security_ix = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 27
  %56 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %security_ix, align 8
  %securityIndex = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 8
  %58 = ptrtoint ptr %securityIndex to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %securityIndex, align 1
  %59 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 9
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %59, align 4
  %service_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 26
  %61 = ptrtoint ptr %service_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %service_id, align 4
  %conv46 = trunc i32 %62 to i16
  %serviceId = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 10
  %63 = ptrtoint ptr %serviceId to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv46, ptr %serviceId, align 2
  %64 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i8 %50, label %if.end20.cleanup_crit_edge [
    i8 4, label %sw.bb
    i8 2, label %sw.bb53
  ]

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %65 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %channel, i32 7
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %68 = getelementptr inbounds %struct.anon.159, ptr %pkt, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %67, ptr %68, align 4
  br label %do.end89

sw.bb53:                                          ; preds = %if.end20
  %if_mtu = getelementptr inbounds %struct.rxrpc_peer, ptr %27, i32 0, i32 11
  %70 = ptrtoint ptr %if_mtu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %if_mtu, align 4
  %hdrsize = getelementptr inbounds %struct.rxrpc_peer, ptr %27, i32 0, i32 14
  %72 = ptrtoint ptr %hdrsize to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %hdrsize, align 8
  %conv58 = zext i16 %73 to i32
  %sub = sub i32 %71, %conv58
  %74 = getelementptr inbounds %struct.anon.159, ptr %pkt, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %74, align 4
  br i1 %tobool.not, label %sw.bb53.cond.end71_crit_edge, label %cond.true60

sw.bb53.cond.end71_crit_edge:                     ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end71

cond.true60:                                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %76 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %priority, align 4
  %phi.cast = trunc i32 %77 to i16
  %serial69 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %spec.select, i32 0, i32 4, i32 4
  %78 = ptrtoint ptr %serial69 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %serial69, align 4
  br label %cond.end71

cond.end71:                                       ; preds = %cond.true60, %sw.bb53.cond.end71_crit_edge
  %phi.cast.sink = phi i16 [ %phi.cast, %cond.true60 ], [ 0, %sw.bb53.cond.end71_crit_edge ]
  %cond75 = phi i8 [ 2, %cond.true60 ], [ 9, %sw.bb53.cond.end71_crit_edge ]
  %cond72 = phi i32 [ %79, %cond.true60 ], [ 0, %sw.bb53.cond.end71_crit_edge ]
  %.sink.in = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %channel, i32 7
  %80 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %80)
  %.sink = load i32, ptr %.sink.in, align 4
  %add65.c247.sink = add i32 %.sink, 1
  %81 = getelementptr inbounds %struct.rxrpc_ackpacket, ptr %74, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %phi.cast.sink, ptr %81, align 2
  %83 = getelementptr inbounds %struct.anon.159, ptr %pkt, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add65.c247.sink, ptr %83, align 4
  %85 = getelementptr inbounds %struct.anon.159, ptr %pkt, i32 0, i32 1, i32 1, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %.sink, ptr %85, align 4
  %serial73 = getelementptr inbounds %struct.anon.159, ptr %pkt, i32 0, i32 1, i32 1, i32 8
  %87 = ptrtoint ptr %serial73 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond72, ptr %serial73, align 4
  %reason = getelementptr inbounds %struct.anon.159, ptr %pkt, i32 0, i32 1, i32 1, i32 12
  %88 = ptrtoint ptr %reason to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %cond75, ptr %reason, align 4
  %nAcks = getelementptr inbounds %struct.anon.159, ptr %pkt, i32 0, i32 1, i32 1, i32 13
  %89 = ptrtoint ptr %nAcks to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %nAcks, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_rx_mtu to i32))
  %90 = load i32, ptr @rxrpc_rx_mtu, align 4
  %91 = ptrtoint ptr %ack_info to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %ack_info, align 4
  %92 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub, ptr %10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_rx_window_size to i32))
  %93 = load i32, ptr @rxrpc_rx_window_size, align 4
  %94 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_rx_jumbo_max to i32))
  %95 = load i32, ptr @rxrpc_rx_jumbo_max, align 4
  %96 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %12, align 4
  %97 = or i8 %53, 32
  %98 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %flags, align 1
  %99 = ptrtoint ptr %padding to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %padding, align 4
  br label %do.end89

do.end89:                                         ; preds = %cond.end71, %sw.bb
  %storemerge = phi i32 [ 46, %cond.end71 ], [ 32, %sw.bb ]
  %ioc.0 = phi i32 [ 3, %cond.end71 ], [ 1, %sw.bb ]
  %len.0 = phi i32 [ 65, %cond.end71 ], [ 32, %sw.bb ]
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %storemerge, ptr %2, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !139
  %101 = ptrtoint ptr %last_call to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %last_call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %23)
  %cmp97.not = icmp eq i32 %102, %23
  br i1 %cmp97.not, label %if.end100, label %do.end89.cleanup_crit_edge

do.end89.cleanup_crit_edge:                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end100:                                        ; preds = %do.end89
  %serial101 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 24
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %serial101, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !140
  call void @llvm.prefetch.p0(ptr %serial101, i32 1, i32 3, i32 1) #7
  %103 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %serial101, ptr %serial101, i32 1, ptr elementtype(i32) %serial101) #7, !srcloc !141
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %103, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !142
  %serial104 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 4
  %104 = ptrtoint ptr %serial104 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %asmresult.i.i.i.i, ptr %serial104, align 4
  %105 = ptrtoint ptr %last_type to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %last_type, align 4
  %107 = zext i8 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %106, label %if.end100.sw.epilog156_crit_edge [
    i8 4, label %do.body108
    i8 2, label %sw.bb130
  ]

if.end100.sw.epilog156_crit_edge:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

do.body108:                                       ; preds = %if.end100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %108 = load i32, ptr @rxrpc_debug, align 4
  %and109 = and i32 %108, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.body108.sw.epilog156_crit_edge, label %do.end120, !prof !137

do.body108.sw.epilog156_crit_edge:                ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

do.end120:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  %109 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i250 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i250 to ptr
  %task123 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %task123 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task123, align 8
  %comm124 = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 101
  %abort_code = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 22
  %113 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %abort_code, align 4
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm124, i32 noundef %asmresult.i.i.i.i, i32 noundef %114) #10
  br label %sw.epilog156

sw.bb130:                                         ; preds = %if.end100
  %call_debug_id = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %channel, i32 2
  %115 = ptrtoint ptr %call_debug_id to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %call_debug_id, align 4
  %firstPacket131 = getelementptr inbounds %struct.anon.159, ptr %pkt, i32 0, i32 1, i32 1
  %117 = ptrtoint ptr %firstPacket131 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %firstPacket131, align 4
  %serial132 = getelementptr inbounds %struct.anon.159, ptr %pkt, i32 0, i32 1, i32 1, i32 8
  %119 = ptrtoint ptr %serial132 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %serial132, align 4
  %reason133 = getelementptr inbounds %struct.anon.159, ptr %pkt, i32 0, i32 1, i32 1, i32 12
  %121 = ptrtoint ptr %reason133 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %reason133, align 4
  call fastcc void @trace_rxrpc_tx_ack(i32 noundef %116, i32 noundef %asmresult.i.i.i.i, i32 noundef %118, i32 noundef %120, i8 noundef zeroext %122)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %123 = load i32, ptr @rxrpc_debug, align 4
  %and135 = and i32 %123, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %sw.bb130.sw.epilog156_crit_edge, label %do.end146, !prof !137

sw.bb130.sw.epilog156_crit_edge:                  ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog156

do.end146:                                        ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #9
  %124 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i251 = and i32 %124, -16384
  %125 = inttoptr i32 %and.i251 to ptr
  %task149 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %task149 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %task149, align 8
  %comm150 = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 101
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm150, i32 noundef %asmresult.i.i.i.i) #10
  br label %sw.epilog156

sw.epilog156:                                     ; preds = %do.end146, %sw.bb130.sw.epilog156_crit_edge, %do.end120, %do.body108.sw.epilog156_crit_edge, %if.end100.sw.epilog156_crit_edge
  %128 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %params, align 8
  %socket = getelementptr inbounds %struct.rxrpc_local, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %socket, align 4
  %call159 = call i32 @kernel_sendmsg(ptr noundef %131, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef %ioc.0, i32 noundef %len.0) #7
  %call160 = call i64 @ktime_get_seconds() #7
  %132 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %peer, align 4
  %last_tx_at = getelementptr inbounds %struct.rxrpc_peer, ptr %133, i32 0, i32 8
  %134 = ptrtoint ptr %last_tx_at to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %call160, ptr %last_tx_at, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp163 = icmp slt i32 %call159, 0
  %call_debug_id166 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %channel, i32 2
  %135 = ptrtoint ptr %call_debug_id166 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %call_debug_id166, align 4
  br i1 %cmp163, label %if.then165, label %if.else

if.then165:                                       ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @trace_rxrpc_tx_fail(i32 noundef %136, i32 noundef %asmresult.i.i.i.i, i32 noundef %call159, i32 noundef 4)
  br label %do.body170

if.else:                                          ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @trace_rxrpc_tx_packet(i32 noundef %136, ptr noundef nonnull %pkt, i32 noundef 4)
  br label %do.body170

do.body170:                                       ; preds = %if.else, %if.then165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %137 = load i32, ptr @rxrpc_debug, align 4
  %and171 = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %do.body170.cleanup_crit_edge, label %do.end182, !prof !137

do.body170.cleanup_crit_edge:                     ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end182:                                        ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  %138 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i252 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i252 to ptr
  %task185 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task185 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task185, align 8
  %comm186 = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 101
  %call188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm186, ptr noundef nonnull @.str.4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end182, %do.body170.cleanup_crit_edge, %do.end89.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %padding) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ack_info) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pkt) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iov) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_process_connection(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %wtmp.i.i = alloca i32, align 4
  %abort_code.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -228
  tail call void @rxrpc_see_connection(ptr noundef %add.ptr) #7
  %params = getelementptr i8, ptr %work, i32 -220
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 8
  %active_users.i = getelementptr inbounds %struct.rxrpc_local, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_users.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @llvm.prefetch.p0(ptr %active_users.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %active_users.i, ptr %active_users.i, i32 0, i32 1, ptr elementtype(i32) %active_users.i) #7, !srcloc !144
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %abort_code.i) #7
  %3 = ptrtoint ptr %abort_code.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -5, ptr %abort_code.i, align 4
  %events.i = getelementptr i8, ptr %work, i32 168
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %events.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %4 = load i32, ptr @rxrpc_debug, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.do.body7.i.i_crit_edge, label %do.end.i.i, !prof !137

if.then.i.do.body7.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %debug_id.i.i = getelementptr i8, ptr %work, i32 228
  %9 = ptrtoint ptr %debug_id.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_id.i.i, align 8
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm.i.i, ptr noundef nonnull @.str.17, i32 noundef %10) #10
  br label %do.body7.i.i

do.body7.i.i:                                     ; preds = %do.end.i.i, %if.then.i.do.body7.i.i_crit_edge
  %security_ix.i.i = getelementptr i8, ptr %work, i32 244
  %11 = ptrtoint ptr %security_ix.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %security_ix.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.not.i.i = icmp eq i8 %12, 0
  br i1 %cmp.not.i.i, label %do.end20.i.i, label %do.end31.i.i, !prof !146

do.end20.i.i:                                     ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_event.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 376, 0\0A.popsection", ""() #7, !srcloc !147
  unreachable

do.end31.i.i:                                     ; preds = %do.body7.i.i
  %security.i.i = getelementptr i8, ptr %work, i32 132
  %13 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %security.i.i, align 8
  %issue_challenge.i.i = getelementptr inbounds %struct.rxrpc_security, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %issue_challenge.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %issue_challenge.i.i, align 4
  %call32.i.i = tail call i32 %16(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %cmp33.i.i = icmp slt i32 %call32.i.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %17 = load i32, ptr @rxrpc_debug, align 4
  br i1 %cmp33.i.i, label %if.then35.i.i, label %do.body37.i.i

if.then35.i.i:                                    ; preds = %do.end31.i.i
  %and60.i.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  br i1 %tobool61.not.i.i, label %if.then35.i.i.do.end80.i.i_crit_edge, label %do.end71.i.i, !prof !137

if.then35.i.i.do.end80.i.i_crit_edge:             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80.i.i

do.body37.i.i:                                    ; preds = %do.end31.i.i
  %and38.i.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %do.body37.i.i.if.end.i_crit_edge, label %do.body37.i.i.cleanup.sink.split.i.i_crit_edge, !prof !137

do.body37.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

do.body37.i.i.if.end.i_crit_edge:                 ; preds = %do.body37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end71.i.i:                                     ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i112.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i112.i.i to ptr
  %task74.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task74.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task74.i.i, align 8
  %comm75.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %call77.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm75.i.i, i32 noundef -12, i32 noundef -1) #10
  br label %do.end80.i.i

do.end80.i.i:                                     ; preds = %do.end71.i.i, %if.then35.i.i.do.end80.i.i_crit_edge
  %call81.i.i = tail call fastcc i32 @rxrpc_abort_connection(ptr noundef %add.ptr, i32 noundef -12, i32 noundef -1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %22 = load i32, ptr @rxrpc_debug, align 4
  %and83.i.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i.i)
  %tobool84.not.i.i = icmp eq i32 %and83.i.i, 0
  br i1 %tobool84.not.i.i, label %do.end80.i.i.if.end.i_crit_edge, label %do.end80.i.i.cleanup.sink.split.i.i_crit_edge, !prof !137

do.end80.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %do.end80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

do.end80.i.i.if.end.i_crit_edge:                  ; preds = %do.end80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.sink.split.i.i:                           ; preds = %do.end80.i.i.cleanup.sink.split.i.i_crit_edge, %do.body37.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.27.sink.i.i = phi ptr [ @.str, %do.body37.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.27, %do.end80.i.i.cleanup.sink.split.i.i_crit_edge ]
  %23 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i113.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i113.i.i to ptr
  %task97.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task97.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task97.i.i, align 8
  %comm98.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %call100.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.27.sink.i.i, ptr noundef %comm98.i.i, ptr noundef nonnull @.str.17) #10
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.sink.split.i.i, %do.end80.i.i.if.end.i_crit_edge, %do.body37.i.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %flags.i = getelementptr i8, ptr %work, i32 164
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %28, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rxrpc_process_delayed_final_acks(ptr noundef %add.ptr, i1 noundef zeroext false) #7
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %rx_queue.i = getelementptr i8, ptr %work, i32 76
  %call457.i = tail call ptr @skb_dequeue(ptr noundef %rx_queue.i) #7
  %tobool5.not58.i = icmp eq ptr %call457.i, null
  br i1 %tobool5.not58.i, label %if.end3.i.rxrpc_do_process_connection.exit_crit_edge, label %while.body.lr.ph.i

if.end3.i.rxrpc_do_process_connection.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_do_process_connection.exit

while.body.lr.ph.i:                               ; preds = %if.end3.i
  %state.i.i = getelementptr i8, ptr %work, i32 220
  %debug_id.i33.i = getelementptr i8, ptr %work, i32 228
  %security79.i.i = getelementptr i8, ptr %work, i32 132
  %key.i.i = getelementptr i8, ptr %work, i32 -212
  %bundle.i.i = getelementptr i8, ptr %work, i32 44
  %state_lock.i.i = getelementptr i8, ptr %work, i32 176
  %error.i.i = getelementptr i8, ptr %work, i32 248
  %abort_code72.i.i = getelementptr i8, ptr %work, i32 224
  br label %while.body.i

while.body.i:                                     ; preds = %sw.default.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call459.i = phi ptr [ %call457.i, %while.body.lr.ph.i ], [ %call4.i, %sw.default.i.while.body.i_crit_edge ]
  call void @rxrpc_see_skb(ptr noundef nonnull %call459.i, i32 noundef 8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wtmp.i.i) #7
  %29 = ptrtoint ptr %wtmp.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %wtmp.i.i, align 4, !annotation !136
  %30 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp.i.i = icmp ugt i32 %31, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %32 = load i32, ptr @rxrpc_debug, align 4
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body10.i.i

do.body.i.i:                                      ; preds = %while.body.i
  %and.i27.i = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i)
  %tobool.not.i28.i = icmp eq i32 %and.i27.i, 0
  br i1 %tobool.not.i28.i, label %do.body.i.i.rxrpc_process_event.exit.thread.i_crit_edge, label %do.end.i32.i, !prof !137

do.body.i.i.rxrpc_process_event.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_process_event.exit.thread.i

do.end.i32.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i29.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i29.i to ptr
  %task.i30.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i30.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i30.i, align 8
  %comm.i31.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 101
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %comm.i31.i, ptr noundef nonnull @.str.30, i32 noundef %31) #10
  br label %rxrpc_process_event.exit.thread.i

do.body10.i.i:                                    ; preds = %while.body.i
  %and11.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body10.i.i.do.end32.i.i_crit_edge, label %do.end22.i.i, !prof !137

do.body10.i.i.do.end32.i.i_crit_edge:             ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32.i.i

do.end22.i.i:                                     ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i169.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i169.i.i to ptr
  %task25.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task25.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task25.i.i, align 8
  %comm26.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %41 = ptrtoint ptr %debug_id.i33.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_id.i33.i, align 8
  %type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call459.i, i32 0, i32 3, i32 36
  %43 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type.i.i, align 4
  %conv.i.i = zext i8 %44 to i32
  %serial.i.i = getelementptr inbounds %struct.sk_buff, ptr %call459.i, i32 0, i32 3, i32 32
  %45 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %serial.i.i, align 4
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %comm26.i.i, ptr noundef nonnull @.str.30, i32 noundef %42, i32 noundef %conv.i.i, i32 noundef %46) #10
  br label %do.end32.i.i

do.end32.i.i:                                     ; preds = %do.end22.i.i, %do.body10.i.i.do.end32.i.i_crit_edge
  %type34.i.i = getelementptr inbounds %struct.sk_buff, ptr %call459.i, i32 0, i32 3, i32 36
  %47 = ptrtoint ptr %type34.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %type34.i.i, align 4
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %48, label %do.end32.i.i.rxrpc_process_event.exit.thread39.i_crit_edge [
    i8 1, label %do.end32.i.i.sw.bb.i.i_crit_edge
    i8 2, label %do.end32.i.i.sw.bb.i.i_crit_edge59
    i8 3, label %do.end32.i.i.rxrpc_process_event.exit.thread.i_crit_edge
    i8 4, label %sw.bb39.i.i
    i8 6, label %sw.bb76.i.i
    i8 7, label %sw.bb78.i.i
  ]

do.end32.i.i.rxrpc_process_event.exit.thread.i_crit_edge: ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_process_event.exit.thread.i

do.end32.i.i.sw.bb.i.i_crit_edge59:               ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

do.end32.i.i.sw.bb.i.i_crit_edge:                 ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

do.end32.i.i.rxrpc_process_event.exit.thread39.i_crit_edge: ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_process_event.exit.thread39.i

sw.bb.i.i:                                        ; preds = %do.end32.i.i.sw.bb.i.i_crit_edge, %do.end32.i.i.sw.bb.i.i_crit_edge59
  %cid.i.i = getelementptr inbounds %struct.sk_buff, ptr %call459.i, i32 0, i32 3, i32 20
  %50 = ptrtoint ptr %cid.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cid.i.i, align 4
  %and37.i.i = and i32 %51, 3
  call fastcc void @rxrpc_conn_retransmit_call(ptr noundef %add.ptr, ptr noundef nonnull %call459.i, i32 noundef %and37.i.i) #7
  br label %rxrpc_process_event.exit.thread.i

sw.bb39.i.i:                                      ; preds = %do.end32.i.i
  %call40.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %call459.i, i32 noundef 28, ptr noundef nonnull %wtmp.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %cmp41.i.i = icmp slt i32 %call40.i.i, 0
  br i1 %cmp41.i.i, label %sw.bb39.i.i.rxrpc_process_event.exit.thread39.i_crit_edge, label %if.end47.i.i

sw.bb39.i.i.rxrpc_process_event.exit.thread39.i_crit_edge: ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_process_event.exit.thread39.i

if.end47.i.i:                                     ; preds = %sw.bb39.i.i
  %52 = ptrtoint ptr %wtmp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wtmp.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %54 = load i32, ptr @rxrpc_debug, align 4
  %and49.i.i = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i)
  %tobool50.not.i.i = icmp eq i32 %and49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end47.i.i.do.end71.i34.i_crit_edge, label %do.end60.i.i, !prof !137

if.end47.i.i.do.end71.i34.i_crit_edge:            ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71.i34.i

do.end60.i.i:                                     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i170.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i170.i.i to ptr
  %task63.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task63.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task63.i.i, align 8
  %comm64.i.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 101
  %serial67.i.i = getelementptr inbounds %struct.sk_buff, ptr %call459.i, i32 0, i32 3, i32 32
  %59 = ptrtoint ptr %serial67.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %serial67.i.i, align 4
  %call68.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %comm64.i.i, i32 noundef %60, i32 noundef %53) #10
  br label %do.end71.i34.i

do.end71.i34.i:                                   ; preds = %do.end60.i.i, %if.end47.i.i.do.end71.i34.i_crit_edge
  %61 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -103, ptr %error.i.i, align 4
  %62 = ptrtoint ptr %abort_code72.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %53, ptr %abort_code72.i.i, align 4
  %63 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 6, ptr %state.i.i, align 8
  call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #7
  %serial75.i.i = getelementptr inbounds %struct.sk_buff, ptr %call459.i, i32 0, i32 3, i32 32
  %64 = ptrtoint ptr %serial75.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %serial75.i.i, align 4
  call fastcc void @rxrpc_abort_calls(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %65) #7
  br label %rxrpc_process_event.exit.thread.i

sw.bb76.i.i:                                      ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %security79.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %security79.i.i, align 8
  %respond_to_challenge.i.i = getelementptr inbounds %struct.rxrpc_security, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %respond_to_challenge.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %respond_to_challenge.i.i, align 4
  %call77.i36.i = call i32 %69(ptr noundef %add.ptr, ptr noundef nonnull %call459.i, ptr noundef nonnull %abort_code.i) #7
  br label %rxrpc_process_event.exit.i

sw.bb78.i.i:                                      ; preds = %do.end32.i.i
  %70 = ptrtoint ptr %security79.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %security79.i.i, align 8
  %verify_response.i.i = getelementptr inbounds %struct.rxrpc_security, ptr %71, i32 0, i32 17
  %72 = ptrtoint ptr %verify_response.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %verify_response.i.i, align 4
  %call80.i.i = call i32 %73(ptr noundef %add.ptr, ptr noundef nonnull %call459.i, ptr noundef nonnull %abort_code.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i.i)
  %cmp81.i.i = icmp slt i32 %call80.i.i, 0
  br i1 %cmp81.i.i, label %sw.bb78.i.i.rxrpc_process_event.exit.i_crit_edge, label %if.end84.i.i

sw.bb78.i.i.rxrpc_process_event.exit.i_crit_edge: ; preds = %sw.bb78.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_process_event.exit.i

if.end84.i.i:                                     ; preds = %sw.bb78.i.i
  %74 = ptrtoint ptr %security79.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %security79.i.i, align 8
  %init_connection_security.i.i = getelementptr inbounds %struct.rxrpc_security, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %init_connection_security.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_connection_security.i.i, align 4
  %78 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %key.i.i, align 8
  %80 = getelementptr inbounds %struct.key, ptr %79, i32 0, i32 17
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %call86.i.i = call i32 %77(ptr noundef %add.ptr, ptr noundef %82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %cmp87.i.i = icmp slt i32 %call86.i.i, 0
  br i1 %cmp87.i.i, label %if.end84.i.i.rxrpc_process_event.exit.i_crit_edge, label %if.end90.i.i

if.end84.i.i.rxrpc_process_event.exit.i_crit_edge: ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_process_event.exit.i

if.end90.i.i:                                     ; preds = %if.end84.i.i
  %83 = ptrtoint ptr %bundle.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bundle.i.i, align 8
  %channel_lock.i.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %84, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %channel_lock.i.i) #7
  call void @_raw_spin_lock_bh(ptr noundef %state_lock.i.i) #7
  %85 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %86)
  %cmp92.i.i = icmp eq i32 %86, 4
  br i1 %cmp92.i.i, label %if.then94.i.i, label %if.else.i.i

if.then94.i.i:                                    ; preds = %if.end90.i.i
  %87 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 5, ptr %state.i.i, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i.i) #7
  br label %do.body99.i.i

do.body99.i.i:                                    ; preds = %rxrpc_call_is_secure.exit.i.i.do.body99.i.i_crit_edge, %if.then94.i.i
  %loop.0172.i.i = phi i32 [ 0, %if.then94.i.i ], [ %inc.i.i, %rxrpc_call_is_secure.exit.i.i.do.body99.i.i_crit_edge ]
  %88 = ptrtoint ptr %bundle.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bundle.i.i, align 8
  %dep_map.i.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %89, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i.i17 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i17)
  %tobool103.not.i.i = icmp eq i32 %call.i.i.i17, 0
  br i1 %tobool103.not.i.i, label %land.lhs.true.i.i, label %do.body99.i.i.do.end111.i.i_crit_edge

do.body99.i.i.do.end111.i.i_crit_edge:            ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111.i.i

land.lhs.true.i.i:                                ; preds = %do.body99.i.i
  %call104.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i.i)
  %tobool105.not.i.i = icmp eq i32 %call104.i.i, 0
  br i1 %tobool105.not.i.i, label %land.lhs.true.i.i.do.end111.i.i_crit_edge, label %land.lhs.true106.i.i

land.lhs.true.i.i.do.end111.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111.i.i

land.lhs.true106.i.i:                             ; preds = %land.lhs.true.i.i
  %.b168.i.i = load i1, ptr @rxrpc_process_event.__warned, align 1
  br i1 %.b168.i.i, label %land.lhs.true106.i.i.do.end111.i.i_crit_edge, label %if.then108.i.i

land.lhs.true106.i.i.do.end111.i.i_crit_edge:     ; preds = %land.lhs.true106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111.i.i

if.then108.i.i:                                   ; preds = %land.lhs.true106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rxrpc_process_event.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 351, ptr noundef nonnull @.str.38) #7
  br label %do.end111.i.i

do.end111.i.i:                                    ; preds = %if.then108.i.i, %land.lhs.true106.i.i.do.end111.i.i_crit_edge, %land.lhs.true.i.i.do.end111.i.i_crit_edge, %do.body99.i.i.do.end111.i.i_crit_edge
  %call114.i.i = getelementptr %struct.rxrpc_connection, ptr %add.ptr, i32 0, i32 6, i32 %loop.0172.i.i, i32 1
  %90 = ptrtoint ptr %call114.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call114.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %92 = load i32, ptr @rxrpc_debug, align 4
  %and.i171.i.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i171.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i171.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end111.i.i.do.end6.i.i.i_crit_edge, label %do.end.i.i.i, !prof !137

do.end111.i.i.do.end6.i.i.i_crit_edge:            ; preds = %do.end111.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i.i.i

do.end.i.i.i:                                     ; preds = %do.end111.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %93 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task.i.i.i, align 8
  %comm.i.i.i = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 101
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %comm.i.i.i, ptr noundef nonnull @.str.47, ptr noundef %91) #10
  br label %do.end6.i.i.i

do.end6.i.i.i:                                    ; preds = %do.end.i.i.i, %do.end111.i.i.do.end6.i.i.i_crit_edge
  %tobool7.not.i.i.i = icmp eq ptr %91, null
  br i1 %tobool7.not.i.i.i, label %do.end6.i.i.i.rxrpc_call_is_secure.exit.i.i_crit_edge, label %if.then8.i.i.i

do.end6.i.i.i.rxrpc_call_is_secure.exit.i.i_crit_edge: ; preds = %do.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_call_is_secure.exit.i.i

if.then8.i.i.i:                                   ; preds = %do.end6.i.i.i
  %state_lock.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %91, i32 0, i32 37
  call void @_raw_write_lock_bh(ptr noundef %state_lock.i.i.i) #7
  %state.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %91, i32 0, i32 40
  %97 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %98)
  %cmp.i.i.i = icmp eq i32 %98, 6
  br i1 %cmp.i.i.i, label %if.then9.i.i.i, label %if.then8.i.i.i.if.end11.i.i.i_crit_edge

if.then8.i.i.i.if.end11.i.i.i_crit_edge:          ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

if.then9.i.i.i:                                   ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 7, ptr %state.i.i.i, align 8
  call void @rxrpc_notify_socket(ptr noundef nonnull %91) #7
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.then8.i.i.i.if.end11.i.i.i_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef %state_lock.i.i.i) #7
  br label %rxrpc_call_is_secure.exit.i.i

rxrpc_call_is_secure.exit.i.i:                    ; preds = %if.end11.i.i.i, %do.end6.i.i.i.rxrpc_call_is_secure.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %loop.0172.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 4
  br i1 %exitcond.not.i.i, label %rxrpc_call_is_secure.exit.i.i.if.end116.i.i_crit_edge, label %rxrpc_call_is_secure.exit.i.i.do.body99.i.i_crit_edge

rxrpc_call_is_secure.exit.i.i.do.body99.i.i_crit_edge: ; preds = %rxrpc_call_is_secure.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99.i.i

rxrpc_call_is_secure.exit.i.i.if.end116.i.i_crit_edge: ; preds = %rxrpc_call_is_secure.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116.i.i

if.else.i.i:                                      ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i.i) #7
  br label %if.end116.i.i

if.end116.i.i:                                    ; preds = %if.else.i.i, %rxrpc_call_is_secure.exit.i.i.if.end116.i.i_crit_edge
  %100 = ptrtoint ptr %bundle.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bundle.i.i, align 8
  %channel_lock118.i.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %101, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %channel_lock118.i.i) #7
  br label %rxrpc_process_event.exit.thread.i

rxrpc_process_event.exit.thread.i:                ; preds = %if.end116.i.i, %do.end71.i34.i, %sw.bb.i.i, %do.end32.i.i.rxrpc_process_event.exit.thread.i_crit_edge, %do.end.i32.i, %do.body.i.i.rxrpc_process_event.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wtmp.i.i) #7
  br label %sw.default.i

rxrpc_process_event.exit.thread39.i:              ; preds = %sw.bb39.i.i.rxrpc_process_event.exit.thread39.i_crit_edge, %do.end32.i.i.rxrpc_process_event.exit.thread39.i_crit_edge
  %rxrpc_process_event.___tp_str.39.sink.i = phi ptr [ @rxrpc_process_event.___tp_str, %sw.bb39.i.i.rxrpc_process_event.exit.thread39.i_crit_edge ], [ @rxrpc_process_event.___tp_str.39, %do.end32.i.i.rxrpc_process_event.exit.thread39.i_crit_edge ]
  %serial120.i.i = getelementptr inbounds %struct.sk_buff, ptr %call459.i, i32 0, i32 3, i32 32
  %102 = ptrtoint ptr %serial120.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %serial120.i.i, align 4
  %104 = ptrtoint ptr %rxrpc_process_event.___tp_str.39.sink.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rxrpc_process_event.___tp_str.39.sink.i, align 4
  call fastcc void @trace_rxrpc_rx_eproto(i32 noundef %103, ptr noundef %105) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wtmp.i.i) #7
  br label %protocol_error.i

rxrpc_process_event.exit.i:                       ; preds = %if.end84.i.i.rxrpc_process_event.exit.i_crit_edge, %sw.bb78.i.i.rxrpc_process_event.exit.i_crit_edge, %sw.bb76.i.i
  %retval.0.i.i = phi i32 [ %call77.i36.i, %sw.bb76.i.i ], [ %call80.i.i, %sw.bb78.i.i.rxrpc_process_event.exit.i_crit_edge ], [ %call86.i.i, %if.end84.i.i.rxrpc_process_event.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wtmp.i.i) #7
  %106 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %retval.0.i.i, label %rxrpc_process_event.exit.i.sw.default.i_crit_edge [
    i32 -71, label %rxrpc_process_event.exit.i.protocol_error.i_crit_edge
    i32 -127, label %rxrpc_process_event.exit.i.protocol_error.i_crit_edge60
    i32 -129, label %rxrpc_process_event.exit.i.protocol_error.i_crit_edge61
    i32 -12, label %rxrpc_process_event.exit.i.requeue_and_leave.i_crit_edge
    i32 -11, label %rxrpc_process_event.exit.i.requeue_and_leave.i_crit_edge62
  ]

rxrpc_process_event.exit.i.requeue_and_leave.i_crit_edge62: ; preds = %rxrpc_process_event.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %requeue_and_leave.i

rxrpc_process_event.exit.i.requeue_and_leave.i_crit_edge: ; preds = %rxrpc_process_event.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %requeue_and_leave.i

rxrpc_process_event.exit.i.protocol_error.i_crit_edge61: ; preds = %rxrpc_process_event.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %protocol_error.i

rxrpc_process_event.exit.i.protocol_error.i_crit_edge60: ; preds = %rxrpc_process_event.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %protocol_error.i

rxrpc_process_event.exit.i.protocol_error.i_crit_edge: ; preds = %rxrpc_process_event.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %protocol_error.i

rxrpc_process_event.exit.i.sw.default.i_crit_edge: ; preds = %rxrpc_process_event.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

sw.default.i:                                     ; preds = %rxrpc_process_event.exit.i.sw.default.i_crit_edge, %rxrpc_process_event.exit.thread.i
  call void @rxrpc_free_skb(ptr noundef nonnull %call459.i, i32 noundef 1) #7
  %call4.i = call ptr @skb_dequeue(ptr noundef %rx_queue.i) #7
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %sw.default.i.rxrpc_do_process_connection.exit_crit_edge, label %sw.default.i.while.body.i_crit_edge

sw.default.i.while.body.i_crit_edge:              ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

sw.default.i.rxrpc_do_process_connection.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_do_process_connection.exit

requeue_and_leave.i:                              ; preds = %protocol_error.i.requeue_and_leave.i_crit_edge, %rxrpc_process_event.exit.i.requeue_and_leave.i_crit_edge, %rxrpc_process_event.exit.i.requeue_and_leave.i_crit_edge62
  call void @skb_queue_head(ptr noundef %rx_queue.i, ptr noundef nonnull %call459.i) #7
  br label %rxrpc_do_process_connection.exit

protocol_error.i:                                 ; preds = %rxrpc_process_event.exit.i.protocol_error.i_crit_edge, %rxrpc_process_event.exit.i.protocol_error.i_crit_edge60, %rxrpc_process_event.exit.i.protocol_error.i_crit_edge61, %rxrpc_process_event.exit.thread39.i
  %retval.0.i41.i = phi i32 [ -71, %rxrpc_process_event.exit.thread39.i ], [ %retval.0.i.i, %rxrpc_process_event.exit.i.protocol_error.i_crit_edge ], [ %retval.0.i.i, %rxrpc_process_event.exit.i.protocol_error.i_crit_edge60 ], [ %retval.0.i.i, %rxrpc_process_event.exit.i.protocol_error.i_crit_edge61 ]
  %107 = ptrtoint ptr %abort_code.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %abort_code.i, align 4
  %call10.i = call fastcc i32 @rxrpc_abort_connection(ptr noundef %add.ptr, i32 noundef %retval.0.i41.i, i32 noundef %108) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i18 = icmp slt i32 %call10.i, 0
  br i1 %cmp.i18, label %protocol_error.i.requeue_and_leave.i_crit_edge, label %if.end12.i

protocol_error.i.requeue_and_leave.i_crit_edge:   ; preds = %protocol_error.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %requeue_and_leave.i

if.end12.i:                                       ; preds = %protocol_error.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rxrpc_free_skb(ptr noundef nonnull %call459.i, i32 noundef 1) #7
  br label %rxrpc_do_process_connection.exit

rxrpc_do_process_connection.exit:                 ; preds = %if.end12.i, %requeue_and_leave.i, %sw.default.i.rxrpc_do_process_connection.exit_crit_edge, %if.end3.i.rxrpc_do_process_connection.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %abort_code.i) #7
  %109 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %params, align 8
  call void @rxrpc_unuse_local(ptr noundef %110) #7
  br label %if.end

if.end:                                           ; preds = %rxrpc_do_process_connection.exit, %entry.if.end_crit_edge
  %tobool.not.i19 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i19, label %if.end.rxrpc_put_connection.exit_crit_edge, label %if.end.i20

if.end.rxrpc_put_connection.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_put_connection.exit

if.end.i20:                                       ; preds = %if.end
  %out_clientflag.i.i = getelementptr i8, ptr %work, i32 245
  %111 = ptrtoint ptr %out_clientflag.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %out_clientflag.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.i.not.i = icmp eq i8 %112, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  call void @rxrpc_put_client_conn(ptr noundef nonnull %add.ptr) #7
  br label %rxrpc_put_connection.exit

if.else.i:                                        ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  call void @rxrpc_put_service_conn(ptr noundef nonnull %add.ptr) #7
  br label %rxrpc_put_connection.exit

rxrpc_put_connection.exit:                        ; preds = %if.else.i, %if.then1.i, %if.end.rxrpc_put_connection.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %113 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rxrpc_put_connection.exit.do.end12_crit_edge, label %do.end, !prof !137

rxrpc_put_connection.exit.do.end12_crit_edge:     ; preds = %rxrpc_put_connection.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %rxrpc_put_connection.exit
  call void @__sanitizer_cov_trace_pc() #9
  %114 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i21 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i21 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 101
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %rxrpc_put_connection.exit.do.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_connection(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_unuse_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_tx_ack(i32 noundef %call, i32 noundef %serial, i32 noundef %ack_first, i32 noundef %ack_serial, i8 noundef zeroext %reason) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_ack, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_tx_ack, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !148

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !149
  %call43 = tail call i32 @__traceiter_rxrpc_tx_ack(ptr noundef null, i32 noundef %call, i32 noundef %serial, i32 noundef %ack_first, i32 noundef %ack_serial, i8 noundef zeroext %reason, i8 noundef zeroext 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !137

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_ack, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_ack, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rxrpc_tx_ack.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_tx_ack.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1004, ptr noundef nonnull @.str.14) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !152
  %31 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_tx_fail(i32 noundef %debug_id, i32 noundef %serial, i32 noundef %ret, i32 noundef %where) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_fail, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_tx_fail, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !148

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !153
  %call42 = tail call i32 @__traceiter_rxrpc_tx_fail(ptr noundef null, i32 noundef %debug_id, i32 noundef %serial, i32 noundef %ret, i32 noundef %where) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !154
  %13 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_fail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rxrpc_tx_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_tx_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1482, ptr noundef nonnull @.str.14) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !152
  %31 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
define internal fastcc void @trace_rxrpc_tx_packet(i32 noundef %call_id, ptr noundef %whdr, i32 noundef %where) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_packet, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_tx_packet, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !148

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !155
  %call42 = tail call i32 @__traceiter_rxrpc_tx_packet(ptr noundef null, i32 noundef %call_id, ptr noundef %whdr, i32 noundef %where) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !156
  %13 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_packet, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_packet, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rxrpc_tx_packet.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_tx_packet.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 931, ptr noundef nonnull @.str.14) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !152
  %31 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_tx_ack(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_tx_fail(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_tx_packet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_free_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_abort_connection(ptr noundef %conn, i32 noundef %error, i32 noundef %abort_code) unnamed_addr #0 align 64 {
entry:
  %whdr = alloca %struct.rxrpc_wire_header, align 4
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [2 x %struct.kvec], align 4
  %word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %whdr) #7
  %0 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 5
  %5 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 6
  %6 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 7
  %7 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 8
  %8 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 9
  %9 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 10
  %10 = getelementptr inbounds i8, ptr %whdr, i32 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #7
  %12 = getelementptr inbounds i8, ptr %msg, i32 8
  %13 = call ptr @memset(ptr %12, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #7
  %14 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %15 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %16 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %17 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !137

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %22 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_id, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm, ptr noundef nonnull @.str.49, i32 noundef %23, i32 noundef %error, i32 noundef %abort_code) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %state_lock = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #7
  %state = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 21
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp = icmp ugt i32 %25, 5
  br i1 %cmp, label %if.then7, label %if.end31

if.then7:                                         ; preds = %do.end6
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %26 = load i32, ptr @rxrpc_debug, align 4
  %and10 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then7.cleanup_crit_edge, label %do.end21, !prof !137

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end21:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %27 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i173 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i173 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %comm25, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end31:                                         ; preds = %do.end6
  %conv = trunc i32 %error to i16
  %error32 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 30
  %31 = ptrtoint ptr %error32 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %error32, align 4
  %abort_code33 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 22
  %32 = ptrtoint ptr %abort_code33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %abort_code, ptr %abort_code33, align 4
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 7, ptr %state, align 8
  %flags = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  %params = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1
  %peer = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %peer, align 4
  %transport = getelementptr inbounds %struct.rxrpc_peer, ptr %35, i32 0, i32 16, i32 4
  %36 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transport, ptr %msg, align 8
  %transport_len = getelementptr inbounds %struct.rxrpc_peer, ptr %35, i32 0, i32 16, i32 3
  %37 = ptrtoint ptr %transport_len to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %transport_len, align 2
  %conv39 = zext i16 %38 to i32
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %39 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv39, ptr %msg_namelen, align 4
  %40 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %40, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %42 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %43 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %msg_flags, align 4
  %44 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %conn, align 8
  %46 = ptrtoint ptr %whdr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %whdr, align 4
  %cid = getelementptr inbounds %struct.anon, ptr %conn, i32 0, i32 1
  %47 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cid, align 4
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %0, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %1, align 4
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %2, align 4
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 4, ptr %4, align 4
  %out_clientflag = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 28
  %53 = ptrtoint ptr %out_clientflag to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %out_clientflag, align 1
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %5, align 1
  %56 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %6, align 2
  %security_ix = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 27
  %57 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %security_ix, align 8
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %7, align 1
  %60 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %8, align 4
  %service_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 26
  %61 = ptrtoint ptr %service_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %service_id, align 4
  %conv44 = trunc i32 %62 to i16
  %63 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv44, ptr %9, align 2
  %64 = ptrtoint ptr %abort_code33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %abort_code33, align 4
  %66 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %word, align 4
  %67 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %whdr, ptr %iov, align 4
  %68 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 28, ptr %14, align 4
  %69 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %word, ptr %15, align 4
  %70 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4, ptr %16, align 4
  %serial55 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 24
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %serial55, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !140
  call void @llvm.prefetch.p0(ptr %serial55, i32 1, i32 3, i32 1) #7
  %71 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %serial55, ptr %serial55, i32 1, ptr elementtype(i32) %serial55) #7, !srcloc !141
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %71, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !142
  call fastcc void @rxrpc_abort_calls(ptr noundef %conn, i32 noundef 2, i32 noundef %asmresult.i.i.i.i)
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %asmresult.i.i.i.i, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %73 = load i32, ptr @rxrpc_debug, align 4
  %and59 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end31.do.end80_crit_edge, label %do.end70, !prof !137

if.end31.do.end80_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

do.end70:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %74 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i174 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i174 to ptr
  %task73 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task73, align 8
  %comm74 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 101
  %78 = ptrtoint ptr %abort_code33 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %abort_code33, align 4
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm74, i32 noundef %asmresult.i.i.i.i, i32 noundef %79) #10
  br label %do.end80

do.end80:                                         ; preds = %do.end70, %if.end31.do.end80_crit_edge
  %80 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %params, align 8
  %socket = getelementptr inbounds %struct.rxrpc_local, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %socket, align 4
  %call83 = call i32 @kernel_sendmsg(ptr noundef %83, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef 2, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  %debug_id87 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %84 = ptrtoint ptr %debug_id87 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %debug_id87, align 8
  br i1 %cmp84, label %if.then86, label %if.end110

if.then86:                                        ; preds = %do.end80
  call fastcc void @trace_rxrpc_tx_fail(i32 noundef %85, i32 noundef %asmresult.i.i.i.i, i32 noundef %call83, i32 noundef 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %86 = load i32, ptr @rxrpc_debug, align 4
  %and89 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.then86.cleanup_crit_edge, label %do.end100, !prof !137

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end100:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %87 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i175 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i175 to ptr
  %task103 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task103 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task103, align 8
  %comm104 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 101
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %comm104, i32 noundef %call83) #10
  br label %cleanup

if.end110:                                        ; preds = %do.end80
  call fastcc void @trace_rxrpc_tx_packet(i32 noundef %85, ptr noundef nonnull %whdr, i32 noundef 5)
  %call112 = call i64 @ktime_get_seconds() #7
  %91 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %peer, align 4
  %last_tx_at = getelementptr inbounds %struct.rxrpc_peer, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %last_tx_at to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %call112, ptr %last_tx_at, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %94 = load i32, ptr @rxrpc_debug, align 4
  %and116 = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end110.cleanup_crit_edge, label %do.end127, !prof !137

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end127:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %95 = call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i176 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i176 to ptr
  %task130 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task130 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task130, align 8
  %comm131 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 101
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm131, ptr noundef nonnull @.str.49) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end127, %if.end110.cleanup_crit_edge, %do.end100, %if.then86.cleanup_crit_edge, %do.end21, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end21 ], [ 0, %if.then7.cleanup_crit_edge ], [ -11, %do.end100 ], [ -11, %if.then86.cleanup_crit_edge ], [ 0, %do.end127 ], [ 0, %if.end110.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %whdr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_eproto(i32 noundef %serial, ptr noundef %why) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_eproto, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !148

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !157
  %call43 = tail call i32 @__traceiter_rxrpc_rx_eproto(ptr noundef null, ptr noundef null, i32 noundef %serial, ptr noundef %why) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !158
  %13 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !137

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rxrpc_rx_eproto.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_rx_eproto.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1377, ptr noundef nonnull @.str.14) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !152
  %31 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_abort_calls(ptr nocapture noundef readonly %conn, i32 noundef %compl, i32 noundef %serial) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !137

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 8
  %abort_code = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 22
  %7 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %abort_code, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %comm, ptr noundef nonnull @.str.42, i32 noundef %6, i32 noundef %8) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %bundle = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 9
  %9 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bundle, align 8
  %channel_lock = getelementptr inbounds %struct.rxrpc_bundle, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %channel_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %compl)
  %cmp25 = icmp eq i32 %compl, 2
  %abort_code29 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 22
  %error = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 30
  br label %do.body8

do.body8:                                         ; preds = %for.inc.do.body8_crit_edge, %do.end7
  %i.080 = phi i32 [ 0, %do.end7 ], [ %inc, %for.inc.do.body8_crit_edge ]
  %11 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bundle, align 8
  %dep_map = getelementptr inbounds %struct.rxrpc_bundle, ptr %12, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %land.lhs.true, label %do.body8.do.end20_crit_edge

do.body8.do.end20_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

land.lhs.true:                                    ; preds = %do.body8
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true15

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b78 = load i1, ptr @rxrpc_abort_calls.__warned, align 1
  br i1 %.b78, label %land.lhs.true15.do.end20_crit_edge, label %if.then17

land.lhs.true15.do.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rxrpc_abort_calls.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 165, ptr noundef nonnull @.str.38) #7
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %land.lhs.true15.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge, %do.body8.do.end20_crit_edge
  %call22 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %i.080, i32 1
  %13 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call22, align 4
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %do.end20.for.inc_crit_edge, label %if.then24

do.end20.for.inc_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then24:                                        ; preds = %do.end20
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id27 = getelementptr inbounds %struct.rxrpc_call, ptr %14, i32 0, i32 48
  %15 = ptrtoint ptr %debug_id27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_id27, align 4
  %cid = getelementptr inbounds %struct.rxrpc_call, ptr %14, i32 0, i32 47
  %17 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cid, align 8
  %call_id = getelementptr inbounds %struct.rxrpc_call, ptr %14, i32 0, i32 46
  %19 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call_id, align 4
  %21 = ptrtoint ptr %abort_code29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %abort_code29, align 4
  %23 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %error, align 4
  %conv = sext i16 %24 to i32
  tail call fastcc void @trace_rxrpc_abort(i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %conv)
  br label %if.end30

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %abort_code29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %abort_code29, align 4
  tail call fastcc void @trace_rxrpc_rx_abort(ptr noundef nonnull %14, i32 noundef %serial, i32 noundef %26)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  %27 = ptrtoint ptr %abort_code29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %abort_code29, align 4
  %29 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %error, align 4
  %conv33 = sext i16 %30 to i32
  %call34 = tail call zeroext i1 @rxrpc_set_call_completion(ptr noundef nonnull %14, i32 noundef %compl, i32 noundef %28, i32 noundef %conv33) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %do.end20.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body8_crit_edge

for.inc.do.body8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

for.end:                                          ; preds = %for.inc
  %31 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bundle, align 8
  %channel_lock37 = getelementptr inbounds %struct.rxrpc_bundle, ptr %32, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock37) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %33 = load i32, ptr @rxrpc_debug, align 4
  %and39 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %for.end.do.end59_crit_edge, label %do.end50, !prof !137

for.end.do.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i79 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i79 to ptr
  %task53 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task53, align 8
  %comm54 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 101
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm54, ptr noundef nonnull @.str.42) #10
  br label %do.end59

do.end59:                                         ; preds = %do.end50, %for.end.do.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_eproto(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_abort(i32 noundef %call_nr, i32 noundef %cid, i32 noundef %call_id, i32 noundef %abort_code, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_abort, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !148

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !159
  %call42 = tail call i32 @__traceiter_rxrpc_abort(ptr noundef null, i32 noundef %call_nr, ptr noundef nonnull @.str.43, i32 noundef %cid, i32 noundef %call_id, i32 noundef 0, i32 noundef %abort_code, i32 noundef %error) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !160
  %13 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !137

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rxrpc_abort.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_abort.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 726, ptr noundef nonnull @.str.14) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !152
  %31 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_abort(ptr noundef %call, i32 noundef %serial, i32 noundef %abort_code) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_abort, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_abort, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !148

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  %call43 = tail call i32 @__traceiter_rxrpc_rx_abort(ptr noundef null, ptr noundef %call, i32 noundef %serial, i32 noundef %abort_code) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %13 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !137

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !125) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_abort, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_abort, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_rxrpc_rx_abort.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_rx_abort.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 872, ptr noundef nonnull @.str.14) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !152
  %31 = tail call i32 @llvm.read_register.i32(metadata !125) #7
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
declare dso_local zeroext i1 @rxrpc_set_call_completion(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_abort(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_abort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_notify_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_client_conn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_service_conn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !85, !86, !88, !90, !92, !93, !95, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124}
!llvm.named.register.sp = !{!125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/conn_event.c", i32 497, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rxrpc_process_connection._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rxrpc_process_connection._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rxrpc/conn_event.c", i32 42, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rxrpc_conn_retransmit_call._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rxrpc_conn_retransmit_call._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/rxrpc/conn_event.c", i32 125, i32 3}
!13 = !{ptr @rxrpc_conn_retransmit_call._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @rxrpc_conn_retransmit_call._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/rxrpc/conn_event.c", i32 132, i32 3}
!17 = !{ptr @rxrpc_conn_retransmit_call._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @rxrpc_conn_retransmit_call._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @rxrpc_conn_retransmit_call._entry.11, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../net/rxrpc/conn_event.c", i32 145, i32 2}
!21 = !{ptr @rxrpc_conn_retransmit_call._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/trace/events/rxrpc.h", i32 972, i32 1}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!26 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/trace/events/rxrpc.h", i32 1457, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/trace/events/rxrpc.h", i32 901, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/rxrpc/conn_event.c", i32 374, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rxrpc_secure_connection._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @rxrpc_secure_connection._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/rxrpc/conn_event.c", i32 376, i32 2}
!43 = !{ptr @rxrpc_secure_connection._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rxrpc_secure_connection._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @rxrpc_secure_connection._entry.21, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../net/rxrpc/conn_event.c", i32 384, i32 2}
!47 = !{ptr @rxrpc_secure_connection._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/rxrpc/conn_event.c", i32 388, i32 2}
!50 = !{ptr @rxrpc_secure_connection._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rxrpc_secure_connection._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/rxrpc/conn_event.c", i32 390, i32 2}
!54 = !{ptr @rxrpc_secure_connection._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rxrpc_secure_connection._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/rxrpc/conn_event.c", i32 293, i32 3}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rxrpc_process_event._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @rxrpc_process_event._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/rxrpc/conn_event.c", i32 297, i32 2}
!63 = !{ptr @rxrpc_process_event._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rxrpc_process_event._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/rxrpc/conn_event.c", i32 314, i32 12}
!67 = !{ptr @rxrpc_process_event.___tp_str, !66, !"___tp_str", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/rxrpc/conn_event.c", i32 318, i32 3}
!70 = !{ptr @rxrpc_process_event._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rxrpc_process_event._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../net/rxrpc/conn_event.c", i32 349, i32 6}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/rxrpc/conn_event.c", i32 361, i32 11}
!77 = !{ptr @rxrpc_process_event.___tp_str.39, !76, !"___tp_str", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/trace/events/rxrpc.h", i32 1355, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/rxrpc/conn_event.c", i32 158, i32 2}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rxrpc_abort_calls._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @rxrpc_abort_calls._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../net/rxrpc/conn_event.c", i32 163, i32 10}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/rxrpc/conn_event.c", i32 169, i32 9}
!90 = !{ptr @rxrpc_abort_calls._entry.44, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../net/rxrpc/conn_event.c", i32 183, i32 2}
!92 = !{ptr @rxrpc_abort_calls._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/trace/events/rxrpc.h", i32 696, i32 1}
!95 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../include/trace/events/rxrpc.h", i32 850, i32 1}
!98 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/rxrpc/conn_event.c", i32 269, i32 2}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rxrpc_call_is_secure._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @rxrpc_call_is_secure._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/rxrpc/conn_event.c", i32 200, i32 2}
!106 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rxrpc_abort_connection._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @rxrpc_abort_connection._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/rxrpc/conn_event.c", i32 206, i32 3}
!111 = !{ptr @rxrpc_abort_connection._entry.50, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rxrpc_abort_connection._entry_ptr.52, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/rxrpc/conn_event.c", i32 245, i32 2}
!115 = !{ptr @rxrpc_abort_connection._entry.53, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @rxrpc_abort_connection._entry_ptr.55, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/rxrpc/conn_event.c", i32 251, i32 3}
!119 = !{ptr @rxrpc_abort_connection._entry.56, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @rxrpc_abort_connection._entry_ptr.58, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/rxrpc/conn_event.c", i32 259, i32 2}
!123 = !{ptr @rxrpc_abort_connection._entry.59, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @rxrpc_abort_connection._entry_ptr.61, !122, !"_entry_ptr", i1 false, i1 false}
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
!135 = !{i64 2158161764}
!136 = !{!"auto-init"}
!137 = !{!"branch_weights", i32 2000, i32 1}
!138 = !{i64 2158115820}
!139 = !{i64 2158117442}
!140 = !{i64 2148436237}
!141 = !{i64 2148351522, i64 2148351554, i64 2148351583, i64 2148351617, i64 2148351648, i64 2148351671}
!142 = !{i64 2148436466}
!143 = !{i64 2148350221}
!144 = !{i64 835841, i64 835866, i64 835888, i64 835904, i64 835916, i64 835936, i64 835960, i64 835976, i64 835988}
!145 = !{i64 2148350409}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{i64 2158154849, i64 2158155336, i64 2158154886, i64 2158154942, i64 2158154976, i64 2158155000, i64 2158155041, i64 2158155062, i64 2158155090, i64 2158155124}
!148 = !{i64 2148964179, i64 2148964184, i64 2148964197, i64 2148964241, i64 2148964275, i64 2148964296}
!149 = !{i64 2157743409}
!150 = !{i64 2157743698}
!151 = !{i64 2149375520}
!152 = !{i64 2149376556}
!153 = !{i64 2158036285}
!154 = !{i64 2158036530}
!155 = !{i64 2157707544}
!156 = !{i64 2157707777}
!157 = !{i64 2157965501}
!158 = !{i64 2157965728}
!159 = !{i64 2157578269}
!160 = !{i64 2157578554}
!161 = !{i64 2157668382}
!162 = !{i64 2157668621}
