; ModuleID = '/llk/IR_all_yes/net/rxrpc/output.c_pt.bc'
source_filename = "../net/rxrpc/output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%struct.atomic_t = type { i32 }
%union.anon.122 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.135 }
%union.anon.135 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.rxrpc_wire_header = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %union.anon.157, i16 }
%union.anon.157 = type { i16 }
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.139, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon }
%union.anon = type { i64 }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.rxrpc_channel = type { i32, ptr, i32, i32, i32, i32, i8, %union.anon.137 }
%union.anon.137 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { ptr, [4 x i8], %struct.rxrpc_crypt, i32, [4 x i8] }
%struct.rxrpc_crypt = type { %union.anon.141 }
%union.anon.141 = type { [2 x i32] }
%struct.rxrpc_ack_buffer = type { %struct.rxrpc_wire_header, %struct.rxrpc_ackpacket, [255 x i8], [3 x i8], %struct.rxrpc_ackinfo }
%struct.rxrpc_ackpacket = type <{ i16, i16, i32, i32, i32, i8, i8, [0 x i8] }>
%struct.rxrpc_ackinfo = type { i32, i32, i32, i32 }
%struct.rxrpc_local = type { %struct.callback_head, %struct.atomic_t, %struct.atomic_t, ptr, %struct.list_head, ptr, %struct.work_struct, ptr, %struct.rw_semaphore, %struct.sk_buff_head, %struct.sk_buff_head, %struct.rb_root, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i8, i8, %struct.sockaddr_rxrpc }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rxrpc_abort_buffer = type { %struct.rxrpc_wire_header, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.114, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.114 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.rxrpc_net = type { ptr, i32, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, %struct.work_struct, %struct.timer_list, i8, i8, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.timer_list, %struct.list_head, %struct.mutex, [1024 x %struct.hlist_head], %struct.spinlock, i8, i64, [32 x %struct.list_head], %struct.list_head, %struct.timer_list, %struct.work_struct }

@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_send_data_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s(,{%d})\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxrpc_send_data_packet\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/rxrpc/output.c\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_send_data_packet._entry_ptr = internal global ptr @rxrpc_send_data_packet._entry, section ".printk_index", align 4
@rxrpc_send_data_packet.lose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rxrpc_send_data_packet._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = %d [%u]\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_send_data_packet._entry_ptr.5 = internal global ptr @rxrpc_send_data_packet._entry.3, section ".printk_index", align 4
@rxrpc_send_data_packet._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     send fragment\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_send_data_packet._entry_ptr.8 = internal global ptr @rxrpc_send_data_packet._entry.6, section ".printk_index", align 4
@rxrpc_reject_packets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxrpc_reject_packets\00", [43 x i8] zeroinitializer }, align 32
@rxrpc_reject_packets._entry_ptr = internal global ptr @rxrpc_reject_packets._entry, section ".printk_index", align 4
@rxrpc_reject_packets._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_reject_packets._entry_ptr.13 = internal global ptr @rxrpc_reject_packets._entry.11, section ".printk_index", align 4
@rxrpc_send_keepalive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxrpc_send_keepalive\00", [43 x i8] zeroinitializer }, align 32
@rxrpc_send_keepalive._entry_ptr = internal global ptr @rxrpc_send_keepalive._entry, section ".printk_index", align 4
@rxrpc_keepalive_string = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@rxrpc_send_keepalive._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s] ### Tx VERSION (keepalive)\0A\00", [59 x i8] zeroinitializer }, align 32
@rxrpc_send_keepalive._entry_ptr.18 = internal global ptr @rxrpc_send_keepalive._entry.16, section ".printk_index", align 4
@rxrpc_send_keepalive._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.15, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_send_keepalive._entry_ptr.20 = internal global ptr @rxrpc_send_keepalive._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rxrpc_rx_jumbo_max = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_rx_mtu = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_rxrpc_tx_ack = external dso_local global %struct.tracepoint, align 4
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_tx_ack.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_rtt_tx = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rtt_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_tx_fail = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_tx_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_tx_packet = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_tx_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_tx_data = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_tx_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_timer = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_timer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 358, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [5 x i8] c"lose\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 416, i32 14 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 502, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 507, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 563, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 622, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 636, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"rxrpc_keepalive_string\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 31, i32 19 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 663, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private constant [22 x i8] c"../net/rxrpc/output.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 674, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 972, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 108, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @rxrpc_reject_packets._entry, ptr @rxrpc_reject_packets._entry.11, ptr @rxrpc_reject_packets._entry_ptr, ptr @rxrpc_reject_packets._entry_ptr.13, ptr @rxrpc_send_data_packet._entry, ptr @rxrpc_send_data_packet._entry.3, ptr @rxrpc_send_data_packet._entry.6, ptr @rxrpc_send_data_packet._entry_ptr, ptr @rxrpc_send_data_packet._entry_ptr.5, ptr @rxrpc_send_data_packet._entry_ptr.8, ptr @rxrpc_send_keepalive._entry, ptr @rxrpc_send_keepalive._entry.16, ptr @rxrpc_send_keepalive._entry.19, ptr @rxrpc_send_keepalive._entry_ptr, ptr @rxrpc_send_keepalive._entry_ptr.18, ptr @rxrpc_send_keepalive._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rxrpc_send_data_packet.lose, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @rxrpc_keepalive_string, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data_packet.lose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data_packet._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data_packet._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_reject_packets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_reject_packets._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_keepalive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_keepalive_string to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_keepalive._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_keepalive._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_send_ack_packet(ptr noundef %call, i1 noundef zeroext %ping, ptr noundef writeonly %_serial) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [2 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #9
  %2 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %3 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %4 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  %flags = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %5 = call ptr @memset(ptr %iov, i32 255, i32 16)
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 320) #12
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conn6 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %conn6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conn6, align 8
  %peer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peer, align 4
  %transport = getelementptr inbounds %struct.rxrpc_peer, ptr %13, i32 0, i32 16, i32 4
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transport, ptr %msg, align 8
  %transport_len = getelementptr inbounds %struct.rxrpc_peer, ptr %13, i32 0, i32 16, i32 3
  %15 = ptrtoint ptr %transport_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_len, align 2
  %conv = zext i16 %16 to i32
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %msg_namelen, align 4
  %18 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %18, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %20 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %21 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %msg_flags, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %11, align 8
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call7.i.i, align 8
  %cid = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %25 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cid, align 8
  %cid11 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %cid11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cid11, align 4
  %call_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 46
  %28 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call_id, align 4
  %callNumber = getelementptr inbounds %struct.rxrpc_wire_header, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %callNumber to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %callNumber, align 8
  %seq = getelementptr inbounds %struct.rxrpc_wire_header, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %seq, align 4
  %type = getelementptr inbounds %struct.rxrpc_wire_header, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %type, align 4
  %out_clientflag = getelementptr inbounds %struct.rxrpc_connection, ptr %11, i32 0, i32 28
  %33 = ptrtoint ptr %out_clientflag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %out_clientflag, align 1
  %35 = or i8 %34, 32
  %flags18 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %call7.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %flags18 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %flags18, align 1
  %userStatus = getelementptr inbounds %struct.rxrpc_wire_header, ptr %call7.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %userStatus to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %userStatus, align 2
  %security_ix = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 44
  %38 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %security_ix, align 2
  %securityIndex = getelementptr inbounds %struct.rxrpc_wire_header, ptr %call7.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %securityIndex to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %securityIndex, align 1
  %41 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %call7.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %41, align 8
  %service_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 43
  %43 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %service_id, align 4
  %serviceId = getelementptr inbounds %struct.rxrpc_wire_header, ptr %call7.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %serviceId to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %serviceId, align 2
  %lock = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 35
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  br i1 %ping, label %if.end5.if.end31_crit_edge, label %if.else

if.end5.if.end31_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.else:                                          ; preds = %if.end5
  %ackr_reason = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 73
  %46 = ptrtoint ptr %ackr_reason to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ackr_reason, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool26.not = icmp eq i8 %47, 0
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %out

if.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %ackr_reason to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %ackr_reason, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end5.if.end31_crit_edge
  %reason.0 = phi i8 [ %47, %if.end29 ], [ 6, %if.end5.if.end31_crit_edge ]
  %acks.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 2
  %ackr_serial.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 74
  %49 = ptrtoint ptr %ackr_serial.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ackr_serial.i, align 4
  %rx_hard_ack.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 64
  %51 = ptrtoint ptr %rx_hard_ack.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %rx_hard_ack.i, align 8
  %rx_top.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 65
  %53 = ptrtoint ptr %rx_top.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %rx_top.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  %ack.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %ack.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 8, ptr %ack.i, align 4
  %maxSkew.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %maxSkew.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %maxSkew.i, align 2
  %add.i = add i32 %52, 1
  %firstPacket.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 1, i32 2
  %57 = ptrtoint ptr %firstPacket.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i, ptr %firstPacket.i, align 8
  %ackr_prev_seq.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 76
  %58 = ptrtoint ptr %ackr_prev_seq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ackr_prev_seq.i, align 4
  %previousPacket.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %previousPacket.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %previousPacket.i, align 4
  %serial13.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 1, i32 4
  %61 = ptrtoint ptr %serial13.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %50, ptr %serial13.i, align 8
  %reason15.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 1, i32 5
  %62 = ptrtoint ptr %reason15.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %reason.0, ptr %reason15.i, align 4
  %sub.i = sub i32 %54, %52
  %conv.i = trunc i32 %sub.i to i8
  %nAcks.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 1, i32 6
  %63 = ptrtoint ptr %nAcks.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv.i, ptr %nAcks.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %reason.0)
  %cmp.i = icmp eq i8 %reason.0, 6
  br i1 %cmp.i, label %if.then.i, label %if.end31.if.end.i_crit_edge

if.end31.if.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %flags18 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags18, align 1
  %66 = or i8 %65, 2
  store i8 %66, ptr %flags18, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end31.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i.i, label %do.body24.preheader.i, label %if.end.i.if.end31.i_crit_edge

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

do.body24.preheader.i:                            ; preds = %if.end.i
  %rxtx_buffer.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 52
  %67 = ptrtoint ptr %rxtx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rxtx_buffer.i, align 8
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.i.do.body24.i_crit_edge, %do.body24.preheader.i
  %ackp.0.i = phi ptr [ %ackp.1.i, %do.body24.i.do.body24.i_crit_edge ], [ %acks.i, %do.body24.preheader.i ]
  %seq.0.i = phi i32 [ %inc.i, %do.body24.i.do.body24.i_crit_edge ], [ %add.i, %do.body24.preheader.i ]
  %and.i = and i32 %seq.0.i, 63
  %arrayidx.i = getelementptr ptr, ptr %68, i32 %and.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %70, null
  %..i = zext i1 %tobool.not.i to i8
  %ackp.1.i = getelementptr i8, ptr %ackp.0.i, i32 1
  %71 = ptrtoint ptr %ackp.0.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %..i, ptr %ackp.0.i, align 1
  %inc.i = add i32 %seq.0.i, 1
  %sub.i84.i = sub i32 %inc.i, %54
  %cmp.i85.i = icmp slt i32 %sub.i84.i, 1
  br i1 %cmp.i85.i, label %do.body24.i.do.body24.i_crit_edge, label %do.body24.i.if.end31.i_crit_edge

do.body24.i.if.end31.i_crit_edge:                 ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

do.body24.i.do.body24.i_crit_edge:                ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24.i

if.end31.i:                                       ; preds = %do.body24.i.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  %ackp.2.i = phi ptr [ %acks.i, %if.end.i.if.end31.i_crit_edge ], [ %ackp.1.i, %do.body24.i.if.end31.i_crit_edge ]
  %peer.i = getelementptr inbounds %struct.rxrpc_connection, ptr %11, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %peer.i, align 4
  %if_mtu.i = getelementptr inbounds %struct.rxrpc_peer, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %if_mtu.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %if_mtu.i, align 4
  %hdrsize.i = getelementptr inbounds %struct.rxrpc_peer, ptr %73, i32 0, i32 14
  %76 = ptrtoint ptr %hdrsize.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %hdrsize.i, align 8
  %nr_jumbo_bad.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 71
  %78 = ptrtoint ptr %nr_jumbo_bad.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %nr_jumbo_bad.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %79)
  %cmp37.i = icmp ugt i8 %79, 3
  br i1 %cmp37.i, label %if.end31.i.rxrpc_fill_out_ack.exit_crit_edge, label %cond.false.i

if.end31.i.rxrpc_fill_out_ack.exit_crit_edge:     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_fill_out_ack.exit

cond.false.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_rx_jumbo_max to i32))
  %80 = load i32, ptr @rxrpc_rx_jumbo_max, align 4
  br label %rxrpc_fill_out_ack.exit

rxrpc_fill_out_ack.exit:                          ; preds = %cond.false.i, %if.end31.i.rxrpc_fill_out_ack.exit_crit_edge
  %cond.i = phi i32 [ %80, %cond.false.i ], [ 1, %if.end31.i.rxrpc_fill_out_ack.exit_crit_edge ]
  %conv34.i = zext i16 %77 to i32
  %sub35.i = sub i32 %75, %conv34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_rx_mtu to i32))
  %81 = load i32, ptr @rxrpc_rx_mtu, align 4
  %ackinfo.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 4
  %82 = ptrtoint ptr %ackinfo.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %ackinfo.i, align 8
  %maxMTU.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %maxMTU.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub35.i, ptr %maxMTU.i, align 4
  %rx_winsize.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 68
  %84 = ptrtoint ptr %rx_winsize.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rx_winsize.i, align 8
  %conv40.i = zext i8 %85 to i32
  %rwind.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 4, i32 2
  %86 = ptrtoint ptr %rwind.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv40.i, ptr %rwind.i, align 8
  %jumbo_max.i = getelementptr inbounds %struct.rxrpc_ack_buffer, ptr %call7.i.i, i32 0, i32 4, i32 3
  %87 = ptrtoint ptr %jumbo_max.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond.i, ptr %jumbo_max.i, align 4
  %incdec.ptr43.i = getelementptr i8, ptr %ackp.2.i, i32 1
  %88 = ptrtoint ptr %ackp.2.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %ackp.2.i, align 1
  %incdec.ptr44.i = getelementptr i8, ptr %ackp.2.i, i32 2
  %89 = ptrtoint ptr %incdec.ptr43.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %incdec.ptr43.i, align 1
  %90 = ptrtoint ptr %incdec.ptr44.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %incdec.ptr44.i, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %91 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i, ptr %iov, align 4
  %add = add i32 %sub.i, 49
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add, ptr %2, align 4
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %ackinfo.i, ptr %3, align 4
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 16, ptr %4, align 4
  %add43 = add i32 %sub.i, 65
  %serial44 = getelementptr inbounds %struct.rxrpc_connection, ptr %11, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %serial44, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %serial44, i32 1, i32 3, i32 1) #9
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %serial44, ptr %serial44, i32 1, ptr elementtype(i32) %serial44) #9, !srcloc !74
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %95, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  %serial47 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %call7.i.i, i32 0, i32 4
  %96 = ptrtoint ptr %serial47 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %asmresult.i.i.i.i, ptr %serial47, align 8
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %97 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %debug_id, align 4
  %99 = ptrtoint ptr %firstPacket.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %firstPacket.i, align 8
  %101 = ptrtoint ptr %serial13.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %serial13.i, align 8
  %103 = ptrtoint ptr %reason15.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %reason15.i, align 4
  %105 = ptrtoint ptr %nAcks.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %nAcks.i, align 1
  tail call fastcc void @trace_rxrpc_tx_ack(i32 noundef %98, i32 noundef %asmresult.i.i.i.i, i32 noundef %100, i32 noundef %102, i8 noundef zeroext %104, i8 noundef zeroext %106)
  %tobool53.not = icmp eq ptr %_serial, null
  br i1 %tobool53.not, label %rxrpc_fill_out_ack.exit.if.end55_crit_edge, label %if.then54

rxrpc_fill_out_ack.exit.if.end55_crit_edge:       ; preds = %rxrpc_fill_out_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then54:                                        ; preds = %rxrpc_fill_out_ack.exit
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %_serial to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %asmresult.i.i.i.i, ptr %_serial, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %rxrpc_fill_out_ack.exit.if.end55_crit_edge
  br i1 %ping, label %if.then57, label %if.end55.if.end59_crit_edge

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call fastcc i32 @rxrpc_begin_rtt_probe(ptr noundef %call, i32 noundef %asmresult.i.i.i.i, i32 noundef 3)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end55.if.end59_crit_edge
  %rtt_slot.0 = phi i32 [ %call58, %if.then57 ], [ -1, %if.end55.if.end59_crit_edge ]
  %params = getelementptr inbounds %struct.rxrpc_connection, ptr %11, i32 0, i32 1
  %108 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %params, align 8
  %socket = getelementptr inbounds %struct.rxrpc_local, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %socket, align 4
  %call60 = call i32 @kernel_sendmsg(ptr noundef %111, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef 2, i32 noundef %add43) #9
  %call61 = call i64 @ktime_get_seconds() #9
  %112 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %peer.i, align 4
  %last_tx_at = getelementptr inbounds %struct.rxrpc_peer, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %last_tx_at to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %call61, ptr %last_tx_at, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp = icmp slt i32 %call60, 0
  %115 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %debug_id, align 4
  br i1 %cmp, label %if.then.i173, label %rxrpc_tx_backoff.exit.thread190

if.then.i173:                                     ; preds = %if.end59
  call fastcc void @trace_rxrpc_tx_fail(i32 noundef %116, i32 noundef %asmresult.i.i.i.i, i32 noundef %call60, i32 noundef 1)
  %tx_backoff1.i185 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 56
  %117 = ptrtoint ptr %tx_backoff1.i185 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load volatile i16, ptr %tx_backoff1.i185, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %118)
  %cmp2.i = icmp ult i16 %118, 100
  br i1 %cmp2.i, label %rxrpc_tx_backoff.exit, label %rxrpc_tx_backoff.exit.thread

rxrpc_tx_backoff.exit:                            ; preds = %if.then.i173
  %add.i174 = add nuw nsw i16 %118, 1
  %119 = ptrtoint ptr %tx_backoff1.i185 to i32
  call void @__asan_store2_noabort(i32 %119)
  store volatile i16 %add.i174, ptr %tx_backoff1.i185, align 8
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %120 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %121)
  %cmp71 = icmp ult i32 %121, 11
  br i1 %cmp71, label %rxrpc_tx_backoff.exit.if.then76_crit_edge, label %rxrpc_tx_backoff.exit.out_crit_edge

rxrpc_tx_backoff.exit.out_crit_edge:              ; preds = %rxrpc_tx_backoff.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

rxrpc_tx_backoff.exit.if.then76_crit_edge:        ; preds = %rxrpc_tx_backoff.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

rxrpc_tx_backoff.exit.thread190:                  ; preds = %if.end59
  call fastcc void @trace_rxrpc_tx_packet(i32 noundef %116, ptr noundef nonnull %call7.i.i, i32 noundef 1)
  %tx_backoff1.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 56
  %122 = ptrtoint ptr %tx_backoff1.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store volatile i16 0, ptr %tx_backoff1.i, align 8
  %state193 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %123 = ptrtoint ptr %state193 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %state193, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %124)
  %cmp71194 = icmp ult i32 %124, 11
  br i1 %cmp71194, label %if.else81, label %rxrpc_tx_backoff.exit.thread190.out_crit_edge

rxrpc_tx_backoff.exit.thread190.out_crit_edge:    ; preds = %rxrpc_tx_backoff.exit.thread190
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

rxrpc_tx_backoff.exit.thread:                     ; preds = %if.then.i173
  %state188 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %125 = ptrtoint ptr %state188 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %state188, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %126)
  %cmp71189 = icmp ult i32 %126, 11
  br i1 %cmp71189, label %rxrpc_tx_backoff.exit.thread.if.then76_crit_edge, label %rxrpc_tx_backoff.exit.thread.out_crit_edge

rxrpc_tx_backoff.exit.thread.out_crit_edge:       ; preds = %rxrpc_tx_backoff.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

rxrpc_tx_backoff.exit.thread.if.then76_crit_edge: ; preds = %rxrpc_tx_backoff.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.then76:                                        ; preds = %rxrpc_tx_backoff.exit.thread.if.then76_crit_edge, %rxrpc_tx_backoff.exit.if.then76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rtt_slot.0)
  %cmp.not.i = icmp eq i32 %rtt_slot.0, -1
  br i1 %cmp.not.i, label %if.then76.rxrpc_cancel_rtt_probe.exit_crit_edge, label %if.then.i176

if.then76.rxrpc_cancel_rtt_probe.exit_crit_edge:  ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_cancel_rtt_probe.exit

if.then.i176:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  %add.i175 = add i32 %rtt_slot.0, 8
  %rtt_avail.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 81
  call void @_clear_bit(i32 noundef %add.i175, ptr noundef %rtt_avail.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  call void @_set_bit(i32 noundef %rtt_slot.0, ptr noundef %rtt_avail.i) #9
  call fastcc void @trace_rxrpc_rtt_tx(ptr noundef %call, i32 noundef 0, i32 noundef %rtt_slot.0, i32 noundef %asmresult.i.i.i.i) #9
  br label %rxrpc_cancel_rtt_probe.exit

rxrpc_cancel_rtt_probe.exit:                      ; preds = %if.then.i176, %if.then76.rxrpc_cancel_rtt_probe.exit_crit_edge
  %127 = ptrtoint ptr %reason15.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %reason15.i, align 4
  %129 = ptrtoint ptr %serial13.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %serial13.i, align 8
  call void @rxrpc_propose_ACK(ptr noundef %call, i8 noundef zeroext %128, i32 noundef %130, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 10) #9
  br label %if.end92

if.else81:                                        ; preds = %rxrpc_tx_backoff.exit.thread190
  call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %ackr_consumed = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 77
  %131 = ptrtoint ptr %ackr_consumed to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ackr_consumed, align 8
  %sub.i178 = sub i32 %52, %132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i178)
  %cmp.i179 = icmp sgt i32 %sub.i178, 0
  br i1 %cmp.i179, label %if.then84, label %if.else81.if.end86_crit_edge

if.else81.if.end86_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then84:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %ackr_consumed to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %52, ptr %ackr_consumed, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.else81.if.end86_crit_edge
  %ackr_seen = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 78
  %134 = ptrtoint ptr %ackr_seen to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ackr_seen, align 4
  %sub.i180 = sub i32 %54, %135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i180)
  %cmp.i181 = icmp sgt i32 %sub.i180, 0
  br i1 %cmp.i181, label %if.then88, label %if.end86.if.end90_crit_edge

if.end86.if.end90_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %ackr_seen to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %54, ptr %ackr_seen, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end86.if.end90_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %if.end92

if.end92:                                         ; preds = %if.end90, %rxrpc_cancel_rtt_probe.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %137 = load volatile i32, ptr @jiffies, align 128
  %next_rx_timo.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 15
  %138 = ptrtoint ptr %next_rx_timo.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %next_rx_timo.i, align 8
  %div.i = udiv i32 %139, 6
  %add.i182 = add i32 %div.i, %137
  %keepalive_at3.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 11
  %140 = ptrtoint ptr %keepalive_at3.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 %add.i182, ptr %keepalive_at3.i, align 8
  call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 16, i32 noundef %137) #9
  %timer.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %call1.i.i = call i32 @timer_reduce(ptr noundef %timer.i.i, i32 noundef %add.i182) #9
  br label %out

out:                                              ; preds = %if.end92, %rxrpc_tx_backoff.exit.thread.out_crit_edge, %rxrpc_tx_backoff.exit.thread190.out_crit_edge, %rxrpc_tx_backoff.exit.out_crit_edge, %if.then27
  %ret.0 = phi i32 [ %call60, %if.end92 ], [ %call60, %rxrpc_tx_backoff.exit.out_crit_edge ], [ 0, %if.then27 ], [ %call60, %rxrpc_tx_backoff.exit.thread.out_crit_edge ], [ %call60, %rxrpc_tx_backoff.exit.thread190.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -104, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_tx_ack(i32 noundef %call, i32 noundef %serial, i32 noundef %ack_first, i32 noundef %ack_serial, i8 noundef zeroext %reason, i8 noundef zeroext %n_acks) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_ack, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_tx_ack, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %call43 = tail call i32 @__traceiter_rxrpc_tx_ack(ptr noundef null, i32 noundef %call, i32 noundef %serial, i32 noundef %ack_first, i32 noundef %ack_serial, i8 noundef zeroext %reason, i8 noundef zeroext %n_acks) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  %13 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !78

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_ack, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_ack, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_rxrpc_tx_ack.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_tx_ack.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1004, ptr noundef nonnull @.str.22) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_begin_rtt_probe(ptr noundef %call, i32 noundef %serial, i32 noundef %why) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rtt_avail = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 81
  %0 = ptrtoint ptr %rtt_avail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtt_avail, align 8
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.no_slot_crit_edge, label %if.end

entry.no_slot_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_slot

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true) #9, !range !83
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef %2, ptr noundef %rtt_avail) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.no_slot_crit_edge, label %if.end7

if.end.no_slot_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_slot

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.rxrpc_call, ptr %call, i32 0, i32 79, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %serial, ptr %arrayidx, align 4
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %arrayidx9 = getelementptr %struct.rxrpc_call, ptr %call, i32 0, i32 80, i32 %2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %arrayidx9, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  %add = add nuw nsw i32 %2, 8
  tail call void @_set_bit(i32 noundef %add, ptr noundef %rtt_avail) #9
  tail call fastcc void @trace_rxrpc_rtt_tx(ptr noundef %call, i32 noundef %why, i32 noundef %2, i32 noundef %serial)
  br label %cleanup

no_slot:                                          ; preds = %if.end.no_slot_crit_edge, %entry.no_slot_crit_edge
  %rtt_slot.0 = phi i32 [ %2, %if.end.no_slot_crit_edge ], [ 9, %entry.no_slot_crit_edge ]
  tail call fastcc void @trace_rxrpc_rtt_tx(ptr noundef %call, i32 noundef 2, i32 noundef %rtt_slot.0, i32 noundef %serial)
  br label %cleanup

cleanup:                                          ; preds = %no_slot, %if.end7
  %retval.0 = phi i32 [ %2, %if.end7 ], [ -1, %no_slot ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_tx_fail(i32 noundef %debug_id, i32 noundef %serial, i32 noundef %ret, i32 noundef %where) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_fail, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_tx_fail, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %call42 = tail call i32 @__traceiter_rxrpc_tx_fail(ptr noundef null, i32 noundef %debug_id, i32 noundef %serial, i32 noundef %ret, i32 noundef %where) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_fail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rxrpc_tx_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_tx_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1482, ptr noundef nonnull @.str.22) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
define internal fastcc void @trace_rxrpc_tx_packet(i32 noundef %call_id, ptr noundef %whdr, i32 noundef %where) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_packet, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_tx_packet, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %call42 = tail call i32 @__traceiter_rxrpc_tx_packet(ptr noundef null, i32 noundef %call_id, ptr noundef %whdr, i32 noundef %where) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_packet, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_packet, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rxrpc_tx_packet.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_tx_packet.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 931, ptr noundef nonnull @.str.22) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
declare dso_local void @rxrpc_propose_ACK(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_send_abort_packet(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.rxrpc_abort_buffer, align 4
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [1 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pkt) #9
  %0 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 5
  %5 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 6
  %6 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 7
  %7 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 8
  %8 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 9
  %9 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %pkt, i32 0, i32 10
  %10 = getelementptr inbounds %struct.rxrpc_abort_buffer, ptr %pkt, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %pkt, i32 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  %13 = getelementptr inbounds i8, ptr %msg, i32 8
  %14 = call ptr @memset(ptr %13, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #9
  %15 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i.i, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i.i, align 4
  %24 = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not = icmp eq i32 %24, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %conn8 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %conn8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conn8, align 8
  %peer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %27 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %peer, align 4
  %transport = getelementptr inbounds %struct.rxrpc_peer, ptr %28, i32 0, i32 16, i32 4
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transport, ptr %msg, align 8
  %transport_len = getelementptr inbounds %struct.rxrpc_peer, ptr %28, i32 0, i32 16, i32 3
  %30 = ptrtoint ptr %transport_len to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %transport_len, align 2
  %conv = zext i16 %31 to i32
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %32 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv, ptr %msg_namelen, align 4
  %33 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %33, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %35 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %36 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %msg_flags, align 4
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %26, align 8
  %39 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %pkt, align 4
  %cid = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %40 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cid, align 8
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %0, align 4
  %call_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 46
  %43 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call_id, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %1, align 4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %2, align 4
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %4, align 4
  %out_clientflag = getelementptr inbounds %struct.rxrpc_connection, ptr %26, i32 0, i32 28
  %48 = ptrtoint ptr %out_clientflag to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %out_clientflag, align 1
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %5, align 1
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %6, align 2
  %security_ix = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 44
  %52 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %security_ix, align 2
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %7, align 1
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %8, align 4
  %service_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 43
  %56 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %service_id, align 4
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %9, align 2
  %abort_code = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %59 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %abort_code, align 8
  %61 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %10, align 4
  %62 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %pkt, ptr %iov, align 4
  %63 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 32, ptr %15, align 4
  %serial25 = getelementptr inbounds %struct.rxrpc_connection, ptr %26, i32 0, i32 24
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %serial25, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @llvm.prefetch.p0(ptr %serial25, i32 1, i32 3, i32 1) #9
  %64 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %serial25, ptr %serial25, i32 1, ptr elementtype(i32) %serial25) #9, !srcloc !74
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %64, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %asmresult.i.i.i.i, ptr %3, align 4
  %params = getelementptr inbounds %struct.rxrpc_connection, ptr %26, i32 0, i32 1
  %66 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %params, align 8
  %socket = getelementptr inbounds %struct.rxrpc_local, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %socket, align 4
  %call29 = call i32 @kernel_sendmsg(ptr noundef %69, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef 32) #9
  %call30 = call i64 @ktime_get_seconds() #9
  %peer32 = getelementptr inbounds %struct.rxrpc_connection, ptr %26, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %peer32 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %peer32, align 4
  %last_tx_at = getelementptr inbounds %struct.rxrpc_peer, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %last_tx_at to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %call30, ptr %last_tx_at, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %73 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %debug_id, align 4
  br i1 %cmp, label %if.then.i, label %if.end37

if.end37:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_rxrpc_tx_packet(i32 noundef %74, ptr noundef nonnull %pkt, i32 noundef 0)
  %tx_backoff1.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 56
  br label %if.end27.sink.split.i

if.then.i:                                        ; preds = %if.end7
  call fastcc void @trace_rxrpc_tx_fail(i32 noundef %74, i32 noundef %asmresult.i.i.i.i, i32 noundef %call29, i32 noundef 0)
  %tx_backoff1.i66 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 56
  %75 = ptrtoint ptr %tx_backoff1.i66 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load volatile i16, ptr %tx_backoff1.i66, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %76)
  %cmp2.i = icmp ult i16 %76, 100
  br i1 %cmp2.i, label %do.body9.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add nuw nsw i16 %76, 1
  br label %if.end27.sink.split.i

if.end27.sink.split.i:                            ; preds = %do.body9.i, %if.end37
  %tx_backoff1.i67 = phi ptr [ %tx_backoff1.i66, %do.body9.i ], [ %tx_backoff1.i, %if.end37 ]
  %add.sink.i = phi i16 [ %add.i, %do.body9.i ], [ 0, %if.end37 ]
  %77 = ptrtoint ptr %tx_backoff1.i67 to i32
  call void @__asan_store2_noabort(i32 %77)
  store volatile i16 %add.sink.i, ptr %tx_backoff1.i67, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end27.sink.split.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ -104, %if.end.cleanup_crit_edge ], [ %call29, %if.then.i.cleanup_crit_edge ], [ %call29, %if.end27.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pkt) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_send_data_packet(ptr noundef %call, ptr nocapture noundef %skb, i1 noundef zeroext %retrans) local_unnamed_addr #0 align 64 {
entry:
  %whdr = alloca %struct.rxrpc_wire_header, align 4
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [2 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %whdr) #9
  %2 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 2
  %4 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 4
  %6 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 5
  %7 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 6
  %8 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 7
  %9 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 8
  %10 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 9
  %11 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 10
  %12 = call ptr @memset(ptr %whdr, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  %13 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #9
  %14 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %15 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %16 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  %17 = call ptr @memset(ptr %iov, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %18 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !78

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %24) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %error_link = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 23
  %pprev.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 23, i32 1
  %25 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %26, null
  br i1 %tobool.not.i.not, label %if.then12, label %do.end9.if.end17_crit_edge

do.end9.if.end17_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then12:                                        ; preds = %do.end9
  %peer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %27 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %peer, align 4
  %lock = getelementptr inbounds %struct.rxrpc_peer, ptr %28, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %29 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peer, align 4
  %error_targets = getelementptr inbounds %struct.rxrpc_peer, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %error_targets to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %error_targets, align 4
  %33 = ptrtoint ptr %error_link to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %error_link, align 4
  %34 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %error_targets, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  %35 = ptrtoint ptr %error_targets to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %error_link, ptr %error_targets, align 4
  %tobool.not.i404 = icmp eq ptr %32, null
  br i1 %tobool.not.i404, label %if.then12.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.then12.hlist_add_head_rcu.exit_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %error_link, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.then12.hlist_add_head_rcu.exit_crit_edge
  %37 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %peer, align 4
  %lock16 = getelementptr inbounds %struct.rxrpc_peer, ptr %38, i32 0, i32 10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock16) #9
  br label %if.end17

if.end17:                                         ; preds = %hlist_add_head_rcu.exit, %do.end9.if.end17_crit_edge
  %serial18 = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %serial18, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %serial18, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %serial18, ptr %serial18, i32 1, ptr elementtype(i32) %serial18) #9, !srcloc !74
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 8
  %42 = ptrtoint ptr %whdr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %whdr, align 4
  %cid = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %43 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cid, align 8
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %2, align 4
  %call_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 46
  %46 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call_id, align 4
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %3, align 4
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %49 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %seq, align 4
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %4, align 4
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %asmresult.i.i.i.i, ptr %5, align 4
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %6, align 4
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flags, align 1
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %7, align 1
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %8, align 2
  %security_ix = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 44
  %58 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %security_ix, align 2
  %60 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %9, align 1
  %61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %61, align 4
  %64 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %10, align 4
  %service_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 43
  %65 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %service_id, align 4
  %67 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %11, align 2
  %flags27 = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 17
  %68 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags27, align 4
  %70 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool29.not = icmp ne i32 %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp = icmp eq i32 %50, 1
  %or.cond = select i1 %tobool29.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then32, label %if.end17.if.end34_crit_edge

if.end17.if.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %8, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end17.if.end34_crit_edge
  %72 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %whdr, ptr %iov, align 4
  %73 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 28, ptr %14, align 4
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %74 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head, align 8
  %76 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %15, align 4
  %len38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %77 = ptrtoint ptr %len38 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len38, align 4
  %79 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %16, align 4
  %add = add i32 %78, 28
  %peer45 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %80 = ptrtoint ptr %peer45 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %peer45, align 4
  %transport = getelementptr inbounds %struct.rxrpc_peer, ptr %81, i32 0, i32 16, i32 4
  %82 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %transport, ptr %msg, align 8
  %transport_len = getelementptr inbounds %struct.rxrpc_peer, ptr %81, i32 0, i32 16, i32 3
  %83 = ptrtoint ptr %transport_len to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %transport_len, align 2
  %conv = zext i16 %84 to i32
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %85 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv, ptr %msg_namelen, align 4
  %86 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %86, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %88 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %89 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %msg_flags, align 4
  %90 = and i8 %55, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool52.not = icmp eq i8 %90, 0
  br i1 %tobool52.not, label %if.end34.land.lhs.true55_crit_edge, label %lor.lhs.false

if.end34.land.lhs.true55_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true55

lor.lhs.false:                                    ; preds = %if.end34
  %91 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flags, align 1
  %93 = and i8 %92, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.i.not = icmp eq i8 %93, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.end83_crit_edge, label %lor.lhs.false.land.lhs.true55_crit_edge

lor.lhs.false.land.lhs.true55_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true55

lor.lhs.false.if.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

land.lhs.true55:                                  ; preds = %lor.lhs.false.land.lhs.true55_crit_edge, %if.end34.land.lhs.true55_crit_edge
  %events = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  %call56 = call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %events) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp ne i32 %call56, 0
  %brmerge = or i1 %tobool57.not, %retrans
  br i1 %brmerge, label %land.lhs.true55.if.then79_crit_edge, label %lor.lhs.false61

land.lhs.true55.if.then79_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

lor.lhs.false61:                                  ; preds = %land.lhs.true55
  %cong_mode = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 60
  %94 = ptrtoint ptr %cong_mode to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load = load i8, ptr %cong_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp62 = icmp eq i8 %bf.load, 0
  br i1 %cmp62, label %lor.lhs.false61.if.then79_crit_edge, label %lor.lhs.false64

lor.lhs.false61.if.then79_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

lor.lhs.false64:                                  ; preds = %lor.lhs.false61
  %95 = ptrtoint ptr %peer45 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %peer45, align 4
  %rtt_count = getelementptr inbounds %struct.rxrpc_peer, ptr %96, i32 0, i32 19
  %97 = ptrtoint ptr %rtt_count to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rtt_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %98)
  %cmp66 = icmp ult i32 %98, 3
  br i1 %cmp66, label %land.lhs.true68, label %lor.lhs.false64.lor.lhs.false73_crit_edge

lor.lhs.false64.lor.lhs.false73_crit_edge:        ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false73

land.lhs.true68:                                  ; preds = %lor.lhs.false64
  %99 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %seq, align 4
  %and71 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %land.lhs.true68.lor.lhs.false73_crit_edge, label %land.lhs.true68.if.then79_crit_edge

land.lhs.true68.if.then79_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

land.lhs.true68.lor.lhs.false73_crit_edge:        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %land.lhs.true68.lor.lhs.false73_crit_edge, %lor.lhs.false64.lor.lhs.false73_crit_edge
  %rtt_last_req = getelementptr inbounds %struct.rxrpc_peer, ptr %96, i32 0, i32 18
  %101 = ptrtoint ptr %rtt_last_req to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %rtt_last_req, align 8
  %add.i = add i64 %102, 1000000000
  %call.i = call i64 @ktime_get_with_offset(i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call.i)
  %cmp.i.i = icmp slt i64 %add.i, %call.i
  br i1 %cmp.i.i, label %lor.lhs.false73.if.then79_crit_edge, label %lor.lhs.false73.if.end83_crit_edge

lor.lhs.false73.if.end83_crit_edge:               ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

lor.lhs.false73.if.then79_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

if.then79:                                        ; preds = %lor.lhs.false73.if.then79_crit_edge, %land.lhs.true68.if.then79_crit_edge, %lor.lhs.false61.if.then79_crit_edge, %land.lhs.true55.if.then79_crit_edge
  %103 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %7, align 1
  %105 = or i8 %104, 2
  store i8 %105, ptr %7, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %lor.lhs.false73.if.end83_crit_edge, %lor.lhs.false.if.end83_crit_edge
  %106 = load i32, ptr @rxrpc_send_data_packet.lose, align 4
  %inc = add i32 %106, 1
  store i32 %inc, ptr @rxrpc_send_data_packet.lose, align 4
  %and84 = and i32 %106, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and84)
  %cmp85 = icmp eq i32 %and84, 7
  %107 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %seq, align 4
  %109 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %7, align 1
  br i1 %cmp85, label %done.thread, label %if.end92

done.thread:                                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_rxrpc_tx_data(ptr noundef %call, i32 noundef %108, i32 noundef %asmresult.i.i.i.i, i8 noundef zeroext %110, i1 noundef zeroext %retrans, i1 noundef zeroext true)
  br label %if.then141

if.end92:                                         ; preds = %if.end83
  call fastcc void @trace_rxrpc_tx_data(ptr noundef %call, i32 noundef %108, i32 noundef %asmresult.i.i.i.i, i8 noundef zeroext %110, i1 noundef zeroext %retrans, i1 noundef zeroext false)
  %111 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %16, align 4
  %113 = ptrtoint ptr %peer45 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %peer45, align 4
  %maxdata = getelementptr inbounds %struct.rxrpc_peer, ptr %114, i32 0, i32 13
  %115 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %116)
  %cmp100.not = icmp ult i32 %112, %116
  br i1 %cmp100.not, label %if.end103, label %if.end92.do.body223_crit_edge

if.end92.do.body223_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body223

if.end103:                                        ; preds = %if.end92
  %params = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 1
  %117 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %params, align 8
  %defrag_sem = getelementptr inbounds %struct.rxrpc_local, ptr %118, i32 0, i32 8
  call void @down_read(ptr noundef %defrag_sem) #9
  %serial105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %119 = ptrtoint ptr %serial105 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %asmresult.i.i.i.i, ptr %serial105, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  %call.i405 = call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %call.i405, ptr %120, align 8
  %122 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %7, align 1
  %124 = and i8 %123, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool116.not = icmp eq i8 %124, 0
  br i1 %tobool116.not, label %if.end103.if.end119_crit_edge, label %if.then117

if.end103.if.end119_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then117:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %call118 = call fastcc i32 @rxrpc_begin_rtt_probe(ptr noundef %call, i32 noundef %asmresult.i.i.i.i, i32 noundef 1)
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end103.if.end119_crit_edge
  %rtt_slot.0 = phi i32 [ %call118, %if.then117 ], [ -1, %if.end103.if.end119_crit_edge ]
  %125 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %params, align 8
  %socket = getelementptr inbounds %struct.rxrpc_local, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %socket, align 4
  %call123 = call i32 @kernel_sendmsg(ptr noundef %128, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef 2, i32 noundef %add) #9
  %call124 = call i64 @ktime_get_seconds() #9
  %peer126 = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 1, i32 1
  %129 = ptrtoint ptr %peer126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %peer126, align 4
  %last_tx_at = getelementptr inbounds %struct.rxrpc_peer, ptr %130, i32 0, i32 8
  %131 = ptrtoint ptr %last_tx_at to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %call124, ptr %last_tx_at, align 8
  %132 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %params, align 8
  %defrag_sem129 = getelementptr inbounds %struct.rxrpc_local, ptr %133, i32 0, i32 8
  call void @up_read(ptr noundef %defrag_sem129) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp130 = icmp slt i32 %call123, 0
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rtt_slot.0)
  %cmp.not.i = icmp eq i32 %rtt_slot.0, -1
  br i1 %cmp.not.i, label %if.then132.if.then.i407_crit_edge, label %if.then.i

if.then132.if.then.i407_crit_edge:                ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i407

if.then.i:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  %add.i406 = add i32 %rtt_slot.0, 8
  %rtt_avail.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 81
  call void @_clear_bit(i32 noundef %add.i406, ptr noundef %rtt_avail.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  call void @_set_bit(i32 noundef %rtt_slot.0, ptr noundef %rtt_avail.i) #9
  call fastcc void @trace_rxrpc_rtt_tx(ptr noundef %call, i32 noundef 0, i32 noundef %rtt_slot.0, i32 noundef %asmresult.i.i.i.i) #9
  br label %if.then.i407

if.end134:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %debug_id133 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %134 = ptrtoint ptr %debug_id133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %debug_id133, align 4
  call fastcc void @trace_rxrpc_tx_packet(i32 noundef %135, ptr noundef nonnull %whdr, i32 noundef 3)
  %tx_backoff1.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 56
  br label %if.end27.sink.split.i

if.then.i407:                                     ; preds = %if.then.i, %if.then132.if.then.i407_crit_edge
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %136 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %debug_id, align 4
  call fastcc void @trace_rxrpc_tx_fail(i32 noundef %137, i32 noundef %asmresult.i.i.i.i, i32 noundef %call123, i32 noundef 3)
  %tx_backoff1.i429 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 56
  %138 = ptrtoint ptr %tx_backoff1.i429 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load volatile i16, ptr %tx_backoff1.i429, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %139)
  %cmp2.i = icmp ult i16 %139, 100
  br i1 %cmp2.i, label %do.body9.i, label %if.then.i407.rxrpc_tx_backoff.exit_crit_edge

if.then.i407.rxrpc_tx_backoff.exit_crit_edge:     ; preds = %if.then.i407
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_tx_backoff.exit

do.body9.i:                                       ; preds = %if.then.i407
  call void @__sanitizer_cov_trace_pc() #11
  %add.i408 = add nuw nsw i16 %139, 1
  br label %if.end27.sink.split.i

if.end27.sink.split.i:                            ; preds = %do.body9.i, %if.end134
  %tx_backoff1.i430 = phi ptr [ %tx_backoff1.i429, %do.body9.i ], [ %tx_backoff1.i, %if.end134 ]
  %add.sink.i = phi i16 [ %add.i408, %do.body9.i ], [ 0, %if.end134 ]
  %140 = ptrtoint ptr %tx_backoff1.i430 to i32
  call void @__asan_store2_noabort(i32 %140)
  store volatile i16 %add.sink.i, ptr %tx_backoff1.i430, align 8
  br label %rxrpc_tx_backoff.exit

rxrpc_tx_backoff.exit:                            ; preds = %if.end27.sink.split.i, %if.then.i407.rxrpc_tx_backoff.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call123)
  %cmp135 = icmp eq i32 %call123, -90
  br i1 %cmp135, label %rxrpc_tx_backoff.exit.do.body223_crit_edge, label %rxrpc_tx_backoff.exit.done_crit_edge

rxrpc_tx_backoff.exit.done_crit_edge:             ; preds = %rxrpc_tx_backoff.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

rxrpc_tx_backoff.exit.do.body223_crit_edge:       ; preds = %rxrpc_tx_backoff.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body223

done:                                             ; preds = %rxrpc_tx_backoff.exit428, %rxrpc_tx_backoff.exit.done_crit_edge
  %ret.0 = phi i32 [ %call277, %rxrpc_tx_backoff.exit428 ], [ %call123, %rxrpc_tx_backoff.exit.done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp139 = icmp sgt i32 %ret.0, -1
  br i1 %cmp139, label %done.if.then141_crit_edge, label %if.else191

done.if.then141_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then141

if.then141:                                       ; preds = %done.if.then141_crit_edge, %done.thread
  %ret.0435 = phi i32 [ 0, %done.thread ], [ %ret.0, %done.if.then141_crit_edge ]
  %141 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %7, align 1
  %143 = and i8 %142, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool145.not = icmp eq i8 %143, 0
  br i1 %tobool145.not, label %if.then141.if.end168_crit_edge, label %if.then146

if.then141.if.end168_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then146:                                       ; preds = %if.then141
  %144 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %144, align 8
  %147 = ptrtoint ptr %peer45 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %peer45, align 4
  %rtt_last_req148 = getelementptr inbounds %struct.rxrpc_peer, ptr %148, i32 0, i32 18
  %149 = ptrtoint ptr %rtt_last_req148 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %146, ptr %rtt_last_req148, align 8
  %150 = load ptr, ptr %peer45, align 4
  %rtt_count150 = getelementptr inbounds %struct.rxrpc_peer, ptr %150, i32 0, i32 19
  %151 = ptrtoint ptr %rtt_count150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rtt_count150, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp151 = icmp ugt i32 %152, 1
  br i1 %cmp151, label %if.then153, label %if.then146.if.end168_crit_edge

if.then146.if.end168_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then153:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %153 = load volatile i32, ptr @jiffies, align 128
  %call155 = call i32 @rxrpc_get_rto_backoff(ptr noundef %150, i1 noundef zeroext false) #9
  %add156 = add i32 %call155, %153
  %ack_lost_at162 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 8
  %154 = ptrtoint ptr %ack_lost_at162 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 %add156, ptr %ack_lost_at162, align 4
  call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 17, i32 noundef %153) #9
  %timer.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %call1.i = call i32 @timer_reduce(ptr noundef %timer.i, i32 noundef %add156) #9
  br label %if.end168

if.end168:                                        ; preds = %if.then153, %if.then146.if.end168_crit_edge, %if.then141.if.end168_crit_edge
  %155 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %156)
  %cmp171 = icmp eq i32 %156, 1
  br i1 %cmp171, label %land.lhs.true173, label %if.end168.if.end190_crit_edge

if.end168.if.end190_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

land.lhs.true173:                                 ; preds = %if.end168
  %flags174 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %call175 = call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %flags174) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.then177, label %land.lhs.true173.if.end190_crit_edge

land.lhs.true173.if.end190_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

if.then177:                                       ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %157 = load volatile i32, ptr @jiffies, align 128
  %next_rx_timo = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 15
  %158 = ptrtoint ptr %next_rx_timo to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %next_rx_timo, align 8
  %add179 = add i32 %159, %157
  %expect_rx_by185 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 12
  %160 = ptrtoint ptr %expect_rx_by185 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile i32 %add179, ptr %expect_rx_by185, align 4
  call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 18, i32 noundef %157) #9
  %timer.i409 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %call1.i410 = call i32 @timer_reduce(ptr noundef %timer.i409, i32 noundef %add179) #9
  br label %if.end190

if.end190:                                        ; preds = %if.then177, %land.lhs.true173.if.end190_crit_edge, %if.end168.if.end190_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %161 = load volatile i32, ptr @jiffies, align 128
  %next_rx_timo.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 15
  %162 = ptrtoint ptr %next_rx_timo.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %next_rx_timo.i, align 8
  %div.i = udiv i32 %163, 6
  %add.i411 = add i32 %div.i, %161
  %keepalive_at3.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 11
  %164 = ptrtoint ptr %keepalive_at3.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile i32 %add.i411, ptr %keepalive_at3.i, align 8
  call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 16, i32 noundef %161) #9
  %timer.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %call1.i.i = call i32 @timer_reduce(ptr noundef %timer.i.i, i32 noundef %add.i411) #9
  br label %do.body199

if.else191:                                       ; preds = %done
  %flags192 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %call193 = call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %flags192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.then195, label %if.else191.do.body199_crit_edge

if.else191.do.body199_crit_edge:                  ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body199

if.then195:                                       ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #11
  %call196 = call zeroext i1 @rxrpc_set_call_completion(ptr noundef %call, i32 noundef 3, i32 noundef -6, i32 noundef %ret.0) #9
  br label %do.body199

do.body199:                                       ; preds = %if.then195, %if.else191.do.body199_crit_edge, %if.end190
  %ret.0434 = phi i32 [ %ret.0435, %if.end190 ], [ %ret.0, %if.then195 ], [ %ret.0, %if.else191.do.body199_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %165 = load i32, ptr @rxrpc_debug, align 4
  %and200 = and i32 %165, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %do.body199.do.end222_crit_edge, label %do.end211, !prof !78

do.body199.do.end222_crit_edge:                   ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end222

do.end211:                                        ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #11
  %166 = call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i412 = and i32 %166, -16384
  %167 = inttoptr i32 %and.i412 to ptr
  %task214 = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %task214 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %task214, align 8
  %comm215 = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 101
  %170 = ptrtoint ptr %peer45 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %peer45, align 4
  %maxdata218 = getelementptr inbounds %struct.rxrpc_peer, ptr %171, i32 0, i32 13
  %172 = ptrtoint ptr %maxdata218 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %maxdata218, align 4
  %call219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm215, ptr noundef nonnull @.str.1, i32 noundef %ret.0434, i32 noundef %173) #13
  br label %do.end222

do.end222:                                        ; preds = %do.end211, %do.body199.do.end222_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %whdr) #9
  ret i32 %ret.0434

do.body223:                                       ; preds = %rxrpc_tx_backoff.exit.do.body223_crit_edge, %if.end92.do.body223_crit_edge
  %rtt_slot.1 = phi i32 [ -1, %if.end92.do.body223_crit_edge ], [ %rtt_slot.0, %rxrpc_tx_backoff.exit.do.body223_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %174 = load i32, ptr @rxrpc_debug, align 4
  %and224 = and i32 %174, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %do.body223.do.end244_crit_edge, label %do.end235, !prof !78

do.body223.do.end244_crit_edge:                   ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end244

do.end235:                                        ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #11
  %175 = call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i413 = and i32 %175, -16384
  %176 = inttoptr i32 %and.i413 to ptr
  %task238 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %task238 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %task238, align 8
  %comm239 = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 101
  %call241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm239) #13
  br label %do.end244

do.end244:                                        ; preds = %do.end235, %do.body223.do.end244_crit_edge
  %params245 = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 1
  %179 = ptrtoint ptr %params245 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %params245, align 8
  %defrag_sem247 = getelementptr inbounds %struct.rxrpc_local, ptr %180, i32 0, i32 8
  call void @down_write(ptr noundef %defrag_sem247) #9
  %serial249 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %181 = ptrtoint ptr %serial249 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %asmresult.i.i.i.i, ptr %serial249, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  %call.i414 = call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %182 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %call.i414, ptr %182, align 8
  %184 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %7, align 1
  %186 = and i8 %185, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool260.not = icmp eq i8 %186, 0
  br i1 %tobool260.not, label %do.end244.if.end263_crit_edge, label %if.then261

do.end244.if.end263_crit_edge:                    ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end263

if.then261:                                       ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #11
  %call262 = call fastcc i32 @rxrpc_begin_rtt_probe(ptr noundef %call, i32 noundef %asmresult.i.i.i.i, i32 noundef 1)
  br label %if.end263

if.end263:                                        ; preds = %if.then261, %do.end244.if.end263_crit_edge
  %rtt_slot.2 = phi i32 [ %call262, %if.then261 ], [ %rtt_slot.1, %do.end244.if.end263_crit_edge ]
  %187 = ptrtoint ptr %params245 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %params245, align 8
  %transport267 = getelementptr inbounds %struct.rxrpc_local, ptr %188, i32 0, i32 18, i32 4
  %189 = ptrtoint ptr %transport267 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %transport267, align 4
  %191 = zext i16 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values)
  switch i16 %190, label %do.body287 [
    i16 10, label %if.end263.sw.bb_crit_edge
    i16 2, label %if.end263.sw.bb_crit_edge440
  ]

if.end263.sw.bb_crit_edge440:                     ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end263.sw.bb_crit_edge:                        ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end263.sw.bb_crit_edge, %if.end263.sw.bb_crit_edge440
  %socket271 = getelementptr inbounds %struct.rxrpc_local, ptr %188, i32 0, i32 5
  %192 = ptrtoint ptr %socket271 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %socket271, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sk, align 16
  %call272 = call i32 @ip_sock_set_mtu_discover(ptr noundef %195, i32 noundef 0) #9
  %196 = ptrtoint ptr %params245 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %params245, align 8
  %socket275 = getelementptr inbounds %struct.rxrpc_local, ptr %197, i32 0, i32 5
  %198 = ptrtoint ptr %socket275 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %socket275, align 4
  %call277 = call i32 @kernel_sendmsg(ptr noundef %199, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef 2, i32 noundef %add) #9
  %call278 = call i64 @ktime_get_seconds() #9
  %peer280 = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 1, i32 1
  %200 = ptrtoint ptr %peer280 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %peer280, align 4
  %last_tx_at281 = getelementptr inbounds %struct.rxrpc_peer, ptr %201, i32 0, i32 8
  %202 = ptrtoint ptr %last_tx_at281 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %call278, ptr %last_tx_at281, align 8
  %203 = ptrtoint ptr %params245 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %params245, align 8
  %socket284 = getelementptr inbounds %struct.rxrpc_local, ptr %204, i32 0, i32 5
  %205 = ptrtoint ptr %socket284 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %socket284, align 4
  %sk285 = getelementptr inbounds %struct.socket, ptr %206, i32 0, i32 4
  %207 = ptrtoint ptr %sk285 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %sk285, align 16
  %call286 = call i32 @ip_sock_set_mtu_discover(ptr noundef %208, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %cmp293 = icmp slt i32 %call277, 0
  br i1 %cmp293, label %if.then295, label %if.end299

do.body287:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 531, 0\0A.popsection", ""() #9, !srcloc !92
  unreachable

if.then295:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rtt_slot.2)
  %cmp.not.i415 = icmp eq i32 %rtt_slot.2, -1
  br i1 %cmp.not.i415, label %if.then295.if.then.i423_crit_edge, label %if.then.i418

if.then295.if.then.i423_crit_edge:                ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i423

if.then.i418:                                     ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #11
  %add.i416 = add i32 %rtt_slot.2, 8
  %rtt_avail.i417 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 81
  call void @_clear_bit(i32 noundef %add.i416, ptr noundef %rtt_avail.i417) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  call void @_set_bit(i32 noundef %rtt_slot.2, ptr noundef %rtt_avail.i417) #9
  call fastcc void @trace_rxrpc_rtt_tx(ptr noundef %call, i32 noundef 0, i32 noundef %rtt_slot.2, i32 noundef %asmresult.i.i.i.i) #9
  br label %if.then.i423

if.end299:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %debug_id298 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %209 = ptrtoint ptr %debug_id298 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %debug_id298, align 4
  call fastcc void @trace_rxrpc_tx_packet(i32 noundef %210, ptr noundef nonnull %whdr, i32 noundef 2)
  %tx_backoff1.i421 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 56
  br label %if.end27.sink.split.i427

if.then.i423:                                     ; preds = %if.then.i418, %if.then295.if.then.i423_crit_edge
  %debug_id296 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %211 = ptrtoint ptr %debug_id296 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %debug_id296, align 4
  call fastcc void @trace_rxrpc_tx_fail(i32 noundef %212, i32 noundef %asmresult.i.i.i.i, i32 noundef %call277, i32 noundef 2)
  %tx_backoff1.i421437 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 56
  %213 = ptrtoint ptr %tx_backoff1.i421437 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load volatile i16, ptr %tx_backoff1.i421437, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %214)
  %cmp2.i422 = icmp ult i16 %214, 100
  br i1 %cmp2.i422, label %do.body9.i425, label %if.then.i423.rxrpc_tx_backoff.exit428_crit_edge

if.then.i423.rxrpc_tx_backoff.exit428_crit_edge:  ; preds = %if.then.i423
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_tx_backoff.exit428

do.body9.i425:                                    ; preds = %if.then.i423
  call void @__sanitizer_cov_trace_pc() #11
  %add.i424 = add nuw nsw i16 %214, 1
  br label %if.end27.sink.split.i427

if.end27.sink.split.i427:                         ; preds = %do.body9.i425, %if.end299
  %tx_backoff1.i421438 = phi ptr [ %tx_backoff1.i421437, %do.body9.i425 ], [ %tx_backoff1.i421, %if.end299 ]
  %add.sink.i426 = phi i16 [ %add.i424, %do.body9.i425 ], [ 0, %if.end299 ]
  %215 = ptrtoint ptr %tx_backoff1.i421438 to i32
  call void @__asan_store2_noabort(i32 %215)
  store volatile i16 %add.sink.i426, ptr %tx_backoff1.i421438, align 8
  br label %rxrpc_tx_backoff.exit428

rxrpc_tx_backoff.exit428:                         ; preds = %if.end27.sink.split.i427, %if.then.i423.rxrpc_tx_backoff.exit428_crit_edge
  %216 = ptrtoint ptr %params245 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %params245, align 8
  %defrag_sem302 = getelementptr inbounds %struct.rxrpc_local, ptr %217, i32 0, i32 8
  call void @up_write(ptr noundef %defrag_sem302) #9
  br label %done
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_tx_data(ptr noundef %call, i32 noundef %seq, i32 noundef %serial, i8 noundef zeroext %flags, i1 noundef zeroext %retrans, i1 noundef zeroext %lose) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_data, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_tx_data, %do.body)) #9
          to label %if.end52 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i79 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i79
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end73_crit_edge, label %cleanup.thread

cpu_online.exit.if.end73_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  %call46 = tail call i32 @__traceiter_rxrpc_tx_data(ptr noundef null, ptr noundef %call, i32 noundef %seq, i32 noundef %serial, i8 noundef zeroext %flags, i1 noundef zeroext %retrans, i1 noundef zeroext %lose) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i77 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i77 to ptr
  %preempt_count.i.i78 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i78 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i78, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i78, align 4
  br label %if.end52

if.end52:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i80 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i80 to ptr
  %cpu54 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu54, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i81 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i81, label %if.end52.cpu_online.exit89_crit_edge, label %land.rhs.i.i.i.i83

if.end52.cpu_online.exit89_crit_edge:             ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit89

land.rhs.i.i.i.i83:                               ; preds = %if.end52
  %.b37.i.i.i.i82 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i82, label %land.rhs.i.i.i.i83.cpu_online.exit89_crit_edge, label %if.then.i.i.i.i84, !prof !78

land.rhs.i.i.i.i83.cpu_online.exit89_crit_edge:   ; preds = %land.rhs.i.i.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit89

if.then.i.i.i.i84:                                ; preds = %land.rhs.i.i.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit89

cpu_online.exit89:                                ; preds = %if.then.i.i.i.i84, %land.rhs.i.i.i.i83.cpu_online.exit89_crit_edge, %if.end52.cpu_online.exit89_crit_edge
  %div3.i.i.i85 = lshr i32 %20, 5
  %arrayidx.i.i.i86 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i85
  %22 = ptrtoint ptr %arrayidx.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i86, align 4
  %and.i.i.i87 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i87
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i88.not = icmp eq i32 %25, 0
  br i1 %tobool.i88.not, label %cpu_online.exit89.if.end73_crit_edge, label %if.then56

cpu_online.exit89.if.end73_crit_edge:             ; preds = %cpu_online.exit89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then56:                                        ; preds = %cpu_online.exit89
  %26 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_data, i32 0, i32 7), align 4
  %call62 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true, label %if.then56.do.end71_crit_edge

if.then56.do.end71_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

land.lhs.true:                                    ; preds = %if.then56
  %call64 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true.do.end71_crit_edge, label %land.lhs.true66

land.lhs.true.do.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

land.lhs.true66:                                  ; preds = %land.lhs.true
  %.b76 = load i1, ptr @trace_rxrpc_tx_data.__warned, align 1
  br i1 %.b76, label %land.lhs.true66.do.end71_crit_edge, label %if.then68

land.lhs.true66.do.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

if.then68:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_tx_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 970, ptr noundef nonnull @.str.22) #9
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %land.lhs.true66.do.end71_crit_edge, %land.lhs.true.do.end71_crit_edge, %if.then56.do.end71_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i90 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i90 to ptr
  %preempt_count.i.i.i91 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i91, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i91, align 4
  br label %if.end73

if.end73:                                         ; preds = %do.end71, %cpu_online.exit89.if.end73_crit_edge, %cpu_online.exit.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_get_rto_backoff(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_set_call_completion(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_sock_set_mtu_discover(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_reject_packets(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  %srx = alloca %struct.sockaddr_rxrpc, align 4
  %whdr = alloca %struct.rxrpc_wire_header, align 4
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [2 x %struct.kvec], align 4
  %code = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %srx) #9
  %0 = call ptr @memset(ptr %srx, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %whdr) #9
  %1 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 1
  %2 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 2
  %3 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 5
  %4 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 6
  %5 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  %6 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #9
  %7 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %8 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %9 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code) #9
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %code, align 4, !annotation !95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %11 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !78

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 15
  %16 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm, ptr noundef nonnull @.str.10, i32 noundef %17) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %18 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %whdr, ptr %iov, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 28, ptr %7, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %code, ptr %8, align 4
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %9, align 4
  %transport = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transport, ptr %msg, align 8
  %23 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %23, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %25 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %26 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %msg_flags, align 4
  %27 = call ptr @memset(ptr %whdr, i32 0, i32 28)
  %reject_queue = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 9
  %call1281 = call ptr @skb_dequeue(ptr noundef %reject_queue) #9
  %tobool13.not82 = icmp eq ptr %call1281, null
  br i1 %tobool13.not82, label %do.end6.do.body43_crit_edge, label %while.body.lr.ph

do.end6.do.body43_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

while.body.lr.ph:                                 ; preds = %do.end6
  %transport_len = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 3
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %socket = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 5
  %debug_id40 = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call1283 = phi ptr [ %call1281, %while.body.lr.ph ], [ %call12, %while.cond.backedge.while.body_crit_edge ]
  call void @rxrpc_see_skb(ptr noundef nonnull %call1283, i32 noundef 8) #9
  %28 = getelementptr inbounds %struct.sk_buff, ptr %call1283, i32 0, i32 15, i32 0, i32 13
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %30, label %while.body.while.cond.backedge_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
  ]

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %3, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %3, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call1283, i32 0, i32 15, i32 0, i32 6
  %34 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %priority, align 4
  %36 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %code, align 4
  br label %sw.epilog

while.cond.backedge:                              ; preds = %if.else, %if.then38, %sw.epilog.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  call void @rxrpc_free_skb(ptr noundef nonnull %call1283, i32 noundef 1) #9
  %call12 = call ptr @skb_dequeue(ptr noundef %reject_queue) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %while.cond.backedge.do.body43_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.do.body43_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb
  %size.0 = phi i32 [ 32, %sw.bb14 ], [ 28, %sw.bb ]
  %ioc.0 = phi i32 [ 2, %sw.bb14 ], [ 1, %sw.bb ]
  %call16 = call i32 @rxrpc_extract_addr_from_skb(ptr noundef nonnull %srx, ptr noundef nonnull %call1283) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp eq i32 %call16, 0
  br i1 %cmp, label %if.then17, label %sw.epilog.while.cond.backedge_crit_edge

sw.epilog.while.cond.backedge_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then17:                                        ; preds = %sw.epilog
  %37 = ptrtoint ptr %transport_len to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %transport_len, align 2
  %conv = zext i16 %38 to i32
  %39 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv, ptr %msg_namelen, align 4
  %hdr = getelementptr inbounds %struct.sk_buff, ptr %call1283, i32 0, i32 3, i32 16
  %40 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hdr, align 4
  %42 = ptrtoint ptr %whdr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %whdr, align 4
  %cid = getelementptr inbounds %struct.sk_buff, ptr %call1283, i32 0, i32 3, i32 20
  %43 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cid, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %1, align 4
  %callNumber = getelementptr inbounds %struct.sk_buff, ptr %call1283, i32 0, i32 3, i32 24
  %46 = ptrtoint ptr %callNumber to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %callNumber, align 4
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %2, align 4
  %serviceId = getelementptr inbounds %struct.sk_buff, ptr %call1283, i32 0, i32 3, i32 42
  %49 = ptrtoint ptr %serviceId to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %serviceId, align 2
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %5, align 2
  %flags = getelementptr inbounds %struct.sk_buff, ptr %call1283, i32 0, i32 3, i32 37
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %flags, align 1
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %4, align 1
  %57 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %socket, align 4
  %call35 = call i32 @kernel_sendmsg(ptr noundef %58, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef %ioc.0, i32 noundef %size.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  %59 = ptrtoint ptr %debug_id40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug_id40, align 4
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_rxrpc_tx_fail(i32 noundef %60, i32 noundef 0, i32 noundef %call35, i32 noundef 8)
  br label %while.cond.backedge

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_rxrpc_tx_packet(i32 noundef %60, ptr noundef nonnull %whdr, i32 noundef 8)
  br label %while.cond.backedge

do.body43:                                        ; preds = %while.cond.backedge.do.body43_crit_edge, %do.end6.do.body43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %61 = load i32, ptr @rxrpc_debug, align 4
  %and44 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.do.end64_crit_edge, label %do.end55, !prof !78

do.body43.do.end64_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

do.end55:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %62 = call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i80 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i80 to ptr
  %task58 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task58, align 8
  %comm59 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 101
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm59, ptr noundef nonnull @.str.10) #13
  br label %do.end64

do.end64:                                         ; preds = %do.end55, %do.body43.do.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %whdr) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %srx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_free_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_extract_addr_from_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_send_keepalive(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  %whdr = alloca %struct.rxrpc_wire_header, align 4
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [2 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %whdr) #9
  %0 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 5
  %2 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 6
  %3 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  %4 = getelementptr inbounds i8, ptr %msg, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #9
  %6 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %7 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %8 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %9 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !78

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm, ptr noundef nonnull @.str.15) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %transport = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 16, i32 4
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transport, ptr %msg, align 8
  %transport_len = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 16, i32 3
  %15 = ptrtoint ptr %transport_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_len, align 2
  %conv = zext i16 %16 to i32
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %msg_namelen, align 4
  %18 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %18, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %20 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %21 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %msg_flags, align 4
  %local = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 4
  %22 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %local, align 8
  %rxnet = getelementptr inbounds %struct.rxrpc_local, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %rxnet to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rxnet, align 4
  %epoch = getelementptr inbounds %struct.rxrpc_net, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %epoch, align 4
  %28 = ptrtoint ptr %whdr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %whdr, align 4
  %29 = call ptr @memset(ptr %0, i32 0, i32 16)
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 13, ptr %1, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %2, align 1
  %32 = call ptr @memset(ptr %3, i32 0, i32 6)
  %33 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %whdr, ptr %iov, align 4
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 28, ptr %6, align 4
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rxrpc_keepalive_string, ptr %7, align 4
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %37 = load i32, ptr @rxrpc_debug, align 4
  %and19 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.end6.do.end39_crit_edge, label %do.end30, !prof !78

do.end6.do.end39_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

do.end30:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %38 = call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i77 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i77 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 101
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm34) #13
  br label %do.end39

do.end39:                                         ; preds = %do.end30, %do.end6.do.end39_crit_edge
  %42 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %local, align 8
  %socket = getelementptr inbounds %struct.rxrpc_local, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %socket, align 4
  %call42 = call i32 @kernel_sendmsg(ptr noundef %45, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef 2, i32 noundef 29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  %debug_id = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 15
  %46 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug_id, align 4
  br i1 %cmp, label %if.then44, label %if.else

if.then44:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_rxrpc_tx_fail(i32 noundef %47, i32 noundef 0, i32 noundef %call42, i32 noundef 9)
  br label %if.end46

if.else:                                          ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_rxrpc_tx_packet(i32 noundef %47, ptr noundef nonnull %whdr, i32 noundef 9)
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then44
  %call47 = call i64 @ktime_get_seconds() #9
  %last_tx_at = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 8
  %48 = ptrtoint ptr %last_tx_at to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %call47, ptr %last_tx_at, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %49 = load i32, ptr @rxrpc_debug, align 4
  %and49 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end46.do.end69_crit_edge, label %do.end60, !prof !78

if.end46.do.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

do.end60:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %50 = call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i78 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i78 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task63, align 8
  %comm64 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 101
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm64, ptr noundef nonnull @.str.15) #13
  br label %do.end69

do.end69:                                         ; preds = %do.end60, %if.end46.do.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %whdr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_tx_ack(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rtt_tx(ptr noundef %call, i32 noundef %why, i32 noundef %slot, i32 noundef %send_serial) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rtt_tx, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rtt_tx, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %call43 = tail call i32 @__traceiter_rxrpc_rtt_tx(ptr noundef null, ptr noundef %call, i32 noundef %why, i32 noundef %slot, i32 noundef %send_serial) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !78

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rtt_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rtt_tx, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_rxrpc_rtt_tx.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rtt_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1098, ptr noundef nonnull @.str.22) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rtt_tx(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_tx_fail(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_tx_packet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_tx_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef %why, i32 noundef %now) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_timer, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %call43 = tail call i32 @__traceiter_rxrpc_timer(ptr noundef null, ptr noundef %call, i32 noundef %why, i32 noundef %now) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !78

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_rxrpc_timer.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_timer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1181, ptr noundef nonnull @.str.22) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !62) #9
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
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_timer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/output.c", i32 358, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rxrpc_send_data_packet._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rxrpc_send_data_packet._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @rxrpc_send_data_packet.lose, !7, !"lose", i1 false, i1 false}
!7 = !{!"../net/rxrpc/output.c", i32 416, i32 14}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rxrpc/output.c", i32 502, i32 2}
!10 = !{ptr @rxrpc_send_data_packet._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rxrpc_send_data_packet._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rxrpc/output.c", i32 507, i32 2}
!14 = !{ptr @rxrpc_send_data_packet._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rxrpc_send_data_packet._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rxrpc/output.c", i32 563, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rxrpc_reject_packets._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @rxrpc_reject_packets._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/rxrpc/output.c", i32 622, i32 2}
!23 = !{ptr @rxrpc_reject_packets._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rxrpc_reject_packets._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/rxrpc/output.c", i32 636, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rxrpc_send_keepalive._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @rxrpc_send_keepalive._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/rxrpc/output.c", i32 663, i32 2}
!32 = !{ptr @rxrpc_send_keepalive._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rxrpc_send_keepalive._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @rxrpc_send_keepalive._entry.19, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../net/rxrpc/output.c", i32 674, i32 2}
!36 = !{ptr @rxrpc_send_keepalive._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/trace/events/rxrpc.h", i32 972, i32 1}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!41 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/trace/events/rxrpc.h", i32 1073, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/trace/events/rxrpc.h", i32 1457, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/rxrpc.h", i32 901, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/trace/events/rxrpc.h", i32 933, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/trace/events/rxrpc.h", i32 1138, i32 1}
!59 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!60 = !{ptr @rxrpc_keepalive_string, !61, !"rxrpc_keepalive_string", i1 false, i1 false}
!61 = !{!"../net/rxrpc/output.c", i32 31, i32 19}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2158134599}
!73 = !{i64 2148444753}
!74 = !{i64 2148360062, i64 2148360094, i64 2148360123, i64 2148360157, i64 2148360188, i64 2148360211}
!75 = !{i64 2148444982}
!76 = !{i64 2158136120}
!77 = !{i64 2148178965, i64 2148178970, i64 2148178983, i64 2148179027, i64 2148179061, i64 2148179082}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2157748839}
!80 = !{i64 2157749128}
!81 = !{i64 2149412707}
!82 = !{i64 2149413743}
!83 = !{i32 0, i32 33}
!84 = !{i64 2158135718}
!85 = !{i64 2158041715}
!86 = !{i64 2158041960}
!87 = !{i64 2157712974}
!88 = !{i64 2157713207}
!89 = !{i64 2149693910}
!90 = !{i64 2158141398}
!91 = !{i64 2158150140}
!92 = !{i64 2158150386, i64 2158150869, i64 2158150423, i64 2158150479, i64 2158150513, i64 2158150537, i64 2158150578, i64 2158150599, i64 2158150627, i64 2158150661}
!93 = !{i64 2157730683}
!94 = !{i64 2157730950}
!95 = !{!"auto-init"}
!96 = !{i64 2157806061}
!97 = !{i64 2157806304}
!98 = !{i64 2157845803}
!99 = !{i64 2157846016}
