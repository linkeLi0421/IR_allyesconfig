; ModuleID = '/llk/IR_all_yes/net/rxrpc/input.c_pt.bc'
source_filename = "../net/rxrpc/input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rxrpc_ack_summary = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.122, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.123, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.124, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.118, [0 x i32], %union.anon.119, i16, i16, %union.anon.120, %struct.refcount_struct, [0 x i32], %union.anon.121 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { %struct.hlist_node }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.122 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.123 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.124 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.88 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.rxrpc_skb_priv = type { %struct.atomic_t, i8, i8, %union.anon.157, %struct.rxrpc_host_header }
%union.anon.157 = type { [2 x i32] }
%struct.rxrpc_host_header = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %union.anon.158, i16 }
%union.anon.158 = type { i16 }
%struct.rxrpc_local = type { %struct.callback_head, %struct.atomic_t, %struct.atomic_t, ptr, %struct.list_head, ptr, %struct.work_struct, ptr, %struct.rw_semaphore, %struct.sk_buff_head, %struct.sk_buff_head, %struct.rb_root, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i8, i8, %struct.sockaddr_rxrpc }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.150 }
%union.anon.150 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.rxrpc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rwlock_t, ptr, ptr, %struct.rb_root, i32, %struct.rwlock_t, i32, i8, i16, %struct.anon.156, i16, %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc }
%struct.anon.156 = type { i16, i16 }
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.153, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon.148 }
%union.anon.148 = type { i64 }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.rxrpc_channel = type { i32, ptr, i32, i32, i32, i32, i8, %union.anon.151 }
%union.anon.151 = type { i32 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { ptr, [4 x i8], %struct.rxrpc_crypt, i32, [4 x i8] }
%struct.rxrpc_crypt = type { %union.anon.155 }
%union.anon.155 = type { [2 x i32] }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.rxrpc_wire_header = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %union.anon.159, i16 }
%union.anon.159 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.160 = type { %struct.rxrpc_ackinfo, [240 x i8] }
%struct.rxrpc_ackinfo = type { i32, i32, i32, i32 }
%struct.rxrpc_ackpacket = type <{ i16, i16, i32, i32, i32, i8, i8, [0 x i8] }>
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }

@rxrpc_input_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/rxrpc/input.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_input_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%p)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_input_packet\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_input_packet._entry_ptr = internal global ptr @rxrpc_input_packet._entry, section ".printk_index", align 4
@rxrpc_input_packet.lose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rxrpc_input_packet._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] ### Rx Bad Packet Type %u\0A\00", [60 x i8] zeroinitializer }, align 32
@rxrpc_input_packet._entry_ptr.6 = internal global ptr @rxrpc_input_packet._entry.4, section ".printk_index", align 4
@rxrpc_input_packet.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_input_packet._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str, i32 1356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     CONN %p {%d}\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_input_packet._entry_ptr.10 = internal global ptr @rxrpc_input_packet._entry.8, section ".printk_index", align 4
@rxrpc_input_packet.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SEC\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"INV\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UPG\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BAD\00", [28 x i8] zeroinitializer }, align 32
@rxrpc_input_packet._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str, i32 1466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() [badmsg]\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_input_packet._entry_ptr.18 = internal global ptr @rxrpc_input_packet._entry.16, section ".printk_index", align 4
@rxrpc_extract_header.___tp_str = internal global ptr @.str.19, section "__tracepoint_str", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bad_hdr\00", [24 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_rx_eproto = external dso_local global %struct.tracepoint, align 4
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_rx_eproto.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_rx_lose = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_lose.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_rx_packet = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_post_packet_to_local._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 1142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s(%p,%p)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxrpc_post_packet_to_local\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_post_packet_to_local._entry_ptr = internal global ptr @rxrpc_post_packet_to_local._entry, section ".printk_index", align 4
@rxrpc_post_packet_to_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.25, ptr @.str, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rxrpc_post_packet_to_conn\00", [38 x i8] zeroinitializer }, align 32
@rxrpc_post_packet_to_conn._entry_ptr = internal global ptr @rxrpc_post_packet_to_conn._entry, section ".printk_index", align 4
@__tracepoint_rxrpc_rx_data = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMP\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_improper_term = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_improper_term.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_input_call_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.27, ptr @.str, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rxrpc_input_call_packet\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_input_call_packet._entry_ptr = internal global ptr @rxrpc_input_call_packet._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rxrpc_input_call_packet._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] ### Rx BUSY %%%u\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_input_call_packet._entry_ptr.30 = internal global ptr @rxrpc_input_call_packet._entry.28, section ".printk_index", align 4
@rxrpc_input_call_packet._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_input_call_packet._entry_ptr.33 = internal global ptr @rxrpc_input_call_packet._entry.31, section ".printk_index", align 4
@__tracepoint_rxrpc_timer = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_timer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_input_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] ==> %s({%u,%u},{%u,%u})\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxrpc_input_data\00", [47 x i8] zeroinitializer }, align 32
@rxrpc_input_data._entry_ptr = internal global ptr @rxrpc_input_data._entry, section ".printk_index", align 4
@rxrpc_input_data._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%-6.6s] ### Rx DATA %%%u { #%u f=%02x n=%u }\0A\00", [49 x i8] zeroinitializer }, align 32
@rxrpc_input_data._entry_ptr.38 = internal global ptr @rxrpc_input_data._entry.36, section ".printk_index", align 4
@rxrpc_input_data._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%-6.6s] ### Rx DATA+%u %%%u { #%x t=%u l=%u }\0A\00", [48 x i8] zeroinitializer }, align 32
@rxrpc_input_data._entry_ptr.41 = internal global ptr @rxrpc_input_data._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LSN\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LSA\00", [28 x i8] zeroinitializer }, align 32
@rxrpc_input_data._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.35, ptr @.str, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] @@@ OOS %u > %u\0A\00", [38 x i8] zeroinitializer }, align 32
@rxrpc_input_data._entry_ptr.46 = internal global ptr @rxrpc_input_data._entry.44, section ".printk_index", align 4
@rxrpc_input_data._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.35, ptr @.str, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() [queued]\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_input_data._entry_ptr.49 = internal global ptr @rxrpc_input_data._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TXL\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ETD\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_transmit = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_transmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_end_tx_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rxrpc: Assertion failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_end_tx_phase\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_end_tx_phase._entry_ptr = internal global ptr @rxrpc_end_tx_phase._entry, section ".printk_index", align 4
@rxrpc_end_tx_phase._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = ok\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_end_tx_phase._entry_ptr.56 = internal global ptr @rxrpc_end_tx_phase._entry.54, section ".printk_index", align 4
@rxrpc_end_tx_phase._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     end_tx %s\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_end_tx_phase._entry_ptr.59 = internal global ptr @rxrpc_end_tx_phase._entry.57, section ".printk_index", align 4
@rxrpc_call_states = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@__tracepoint_rxrpc_receive = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_receive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_notify_socket = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_notify_socket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_input_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxrpc_input_ack\00", [16 x i8] zeroinitializer }, align 32
@rxrpc_input_ack._entry_ptr = internal global ptr @rxrpc_input_ack._entry, section ".printk_index", align 4
@rxrpc_input_ack._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s]     extraction failure\0A\00", [63 x i8] zeroinitializer }, align 32
@rxrpc_input_ack._entry_ptr.64 = internal global ptr @rxrpc_input_ack._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XAK\00", [28 x i8] zeroinitializer }, align 32
@rxrpc_input_ack._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.61, ptr @.str, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%-6.6s] ### Rx ACK %%%u PING Request\0A\00", [57 x i8] zeroinitializer }, align 32
@rxrpc_input_ack._entry_ptr.68 = internal global ptr @rxrpc_input_ack._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XAI\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AK0\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AKW\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AKN\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ETA\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XSA\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_rx_ack = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_ack.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_rtt_rx = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rtt_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_rx_discard_ack = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_discard_ack.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_input_ackinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%-6.6s] ### Rx ACK %%%u Info { rx=%u max=%u rwin=%u jm=%u }\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxrpc_input_ackinfo\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_input_ackinfo._entry_ptr = internal global ptr @rxrpc_input_ackinfo._entry, section ".printk_index", align 4
@rxrpc_input_ackinfo._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s] @@@ Net MTU %u (maxdata %u)\0A\00", [58 x i8] zeroinitializer }, align 32
@rxrpc_input_ackinfo._entry_ptr.79 = internal global ptr @rxrpc_input_ackinfo._entry.77, section ".printk_index", align 4
@__tracepoint_rxrpc_rx_rwind_change = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_rwind_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SFT\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_congest = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_congest.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_input_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.81, ptr @.str, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxrpc_input_abort\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_input_abort._entry_ptr = internal global ptr @rxrpc_input_abort._entry, section ".printk_index", align 4
@rxrpc_input_abort._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s] ### Rx ABORT %%%u { %x }\0A\00", [61 x i8] zeroinitializer }, align 32
@rxrpc_input_abort._entry_ptr.84 = internal global ptr @rxrpc_input_abort._entry.82, section ".printk_index", align 4
@__tracepoint_rxrpc_rx_abort = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_abort.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__const.rxrpc_input_ackall.summary = private unnamed_addr constant %struct.rxrpc_ack_summary { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] c"\FF\FF" }, align 4
@rxrpc_input_ackall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str, i32 1001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] ### Rx ACKALL %%%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_input_ackall\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_input_ackall._entry_ptr = internal global ptr @rxrpc_input_ackall._entry, section ".printk_index", align 4
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ETL\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_rx_done = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_abort = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_abort.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11, i64 13]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.89 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 7]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 9, i64 10]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 10]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.94 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1209, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1218, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [5 x i8] c"lose\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1241, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1314, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1356, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1440, i32 23 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1446, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1452, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1457, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1466, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1178, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1355, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 108, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1142, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1129, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1108, i32 24 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1044, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1066, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1088, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 421, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 424, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 476, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 482, i32 23 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 488, i32 23 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 583, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 607, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 322, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 326, i32 38 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 262, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 290, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 295, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 855, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 859, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 860, i32 28 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 896, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 918, i32 28 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 939, i32 21 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 956, i32 21 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 960, i32 21 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 966, i32 36 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 973, i32 22 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 725, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 750, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 803, i32 29 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1020, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1029, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1001, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private constant [21 x i8] c"../net/rxrpc/input.c\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1006, i32 35 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @rxrpc_end_tx_phase._entry, ptr @rxrpc_end_tx_phase._entry.54, ptr @rxrpc_end_tx_phase._entry.57, ptr @rxrpc_end_tx_phase._entry_ptr, ptr @rxrpc_end_tx_phase._entry_ptr.56, ptr @rxrpc_end_tx_phase._entry_ptr.59, ptr @rxrpc_extract_header.___tp_str, ptr @rxrpc_input_abort._entry, ptr @rxrpc_input_abort._entry.82, ptr @rxrpc_input_abort._entry_ptr, ptr @rxrpc_input_abort._entry_ptr.84, ptr @rxrpc_input_ack._entry, ptr @rxrpc_input_ack._entry.62, ptr @rxrpc_input_ack._entry.66, ptr @rxrpc_input_ack._entry_ptr, ptr @rxrpc_input_ack._entry_ptr.64, ptr @rxrpc_input_ack._entry_ptr.68, ptr @rxrpc_input_ackall._entry, ptr @rxrpc_input_ackall._entry_ptr, ptr @rxrpc_input_ackinfo._entry, ptr @rxrpc_input_ackinfo._entry.77, ptr @rxrpc_input_ackinfo._entry_ptr, ptr @rxrpc_input_ackinfo._entry_ptr.79, ptr @rxrpc_input_call_packet._entry, ptr @rxrpc_input_call_packet._entry.28, ptr @rxrpc_input_call_packet._entry.31, ptr @rxrpc_input_call_packet._entry_ptr, ptr @rxrpc_input_call_packet._entry_ptr.30, ptr @rxrpc_input_call_packet._entry_ptr.33, ptr @rxrpc_input_data._entry, ptr @rxrpc_input_data._entry.36, ptr @rxrpc_input_data._entry.39, ptr @rxrpc_input_data._entry.44, ptr @rxrpc_input_data._entry.47, ptr @rxrpc_input_data._entry_ptr, ptr @rxrpc_input_data._entry_ptr.38, ptr @rxrpc_input_data._entry_ptr.41, ptr @rxrpc_input_data._entry_ptr.46, ptr @rxrpc_input_data._entry_ptr.49, ptr @rxrpc_input_packet._entry, ptr @rxrpc_input_packet._entry.16, ptr @rxrpc_input_packet._entry.4, ptr @rxrpc_input_packet._entry.8, ptr @rxrpc_input_packet._entry_ptr, ptr @rxrpc_input_packet._entry_ptr.10, ptr @rxrpc_input_packet._entry_ptr.18, ptr @rxrpc_input_packet._entry_ptr.6, ptr @rxrpc_post_packet_to_conn._entry, ptr @rxrpc_post_packet_to_conn._entry_ptr, ptr @rxrpc_post_packet_to_local._entry, ptr @rxrpc_post_packet_to_local._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rxrpc_input_packet.lose, ptr @.str.5, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_packet.lose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_packet._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_packet._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_packet._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_post_packet_to_local._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_post_packet_to_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_call_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_call_packet._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_call_packet._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_data._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_data._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_data._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_data._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_end_tx_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_end_tx_phase._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_end_tx_phase._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_ack._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_ack._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_ackinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_ackinfo._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_abort._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_input_ackall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_input_packet(ptr noundef %udp_sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %peer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %udp_sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b614 = load i1, ptr @rxrpc_input_packet.__warned, align 1
  br i1 %.b614, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rxrpc_input_packet.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1209, ptr noundef nonnull @.str.1) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %peer) #9
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %peer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %5 = load i32, ptr @rxrpc_debug, align 4
  %and12 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end7.do.end25_crit_edge, label %do.end19, !prof !223

do.end7.do.end25_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end19:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %comm, ptr noundef nonnull @.str.3, ptr noundef %udp_sk) #12
  br label %do.end25

do.end25:                                         ; preds = %do.end19, %do.end7.do.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.then35, label %if.end36, !prof !224

if.then35:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup466

if.end36:                                         ; preds = %do.end25
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %if.then37, label %if.end36.if.end39_crit_edge

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then37:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %call.i617 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i617, ptr %10, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end36.if.end39_crit_edge
  tail call void @rxrpc_new_skb(ptr noundef %skb, i32 noundef 6) #9
  %call40 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #9
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %call41 = tail call fastcc i32 @rxrpc_extract_header(ptr noundef %cb, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end39.protocol_error_crit_edge, label %if.end44

if.end39.protocol_error_crit_edge:                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

if.end44:                                         ; preds = %if.end39
  %14 = load i32, ptr @rxrpc_input_packet.lose, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr @rxrpc_input_packet.lose, align 4
  %and45 = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 7
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_rxrpc_rx_lose(ptr noundef %cb)
  tail call void @rxrpc_free_skb(ptr noundef %skb, i32 noundef 3) #9
  br label %cleanup466

if.end48:                                         ; preds = %if.end44
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp49 = icmp eq i64 %16, 0
  br i1 %cmp49, label %if.then50, label %if.end48.if.end52_crit_edge

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %call.i618 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call.i618, ptr %10, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  tail call fastcc void @trace_rxrpc_rx_packet(ptr noundef %cb)
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 4
  %conv = zext i8 %19 to i32
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %do.body103 [
    i8 13, label %sw.bb
    i8 3, label %sw.bb56
    i8 2, label %if.end52.sw.bb60_crit_edge
    i8 5, label %if.end52.sw.bb60_crit_edge647
    i8 4, label %if.end52.sw.epilog_crit_edge
    i8 1, label %sw.bb66
    i8 6, label %sw.bb94
    i8 7, label %sw.bb98
    i8 9, label %if.end52.discard_crit_edge
    i8 10, label %if.end52.discard_crit_edge648
    i8 11, label %if.end52.discard_crit_edge649
  ]

if.end52.discard_crit_edge649:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

if.end52.discard_crit_edge648:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

if.end52.discard_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end52.sw.bb60_crit_edge647:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb60

if.end52.sw.bb60_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb60

sw.bb:                                            ; preds = %if.end52
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not.i = icmp eq i8 %23, 0
  br i1 %tobool.i.not.i, label %sw.bb.discard_crit_edge, label %if.end55

sw.bb.discard_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

if.end55:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rxrpc_post_packet_to_local(ptr noundef nonnull %3, ptr noundef %skb)
  br label %out

sw.bb56:                                          ; preds = %if.end52
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags.i, align 1
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i.not = icmp eq i8 %26, 0
  br i1 %tobool.i.not, label %sw.bb56.sw.bb60_crit_edge, label %sw.bb56.discard_crit_edge

sw.bb56.discard_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

sw.bb56.sw.bb60_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb60

sw.bb60:                                          ; preds = %sw.bb56.sw.bb60_crit_edge, %if.end52.sw.bb60_crit_edge, %if.end52.sw.bb60_crit_edge647
  %callNumber = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %27 = ptrtoint ptr %callNumber to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %callNumber, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp62 = icmp eq i32 %28, 0
  br i1 %cmp62, label %sw.bb60.protocol_error_crit_edge, label %sw.bb60.sw.epilog_crit_edge

sw.bb60.sw.epilog_crit_edge:                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb60.protocol_error_crit_edge:                 ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

sw.bb66:                                          ; preds = %if.end52
  %callNumber68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %29 = ptrtoint ptr %callNumber68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %callNumber68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp69 = icmp eq i32 %30, 0
  br i1 %cmp69, label %sw.bb66.protocol_error_crit_edge, label %lor.lhs.false

sw.bb66.protocol_error_crit_edge:                 ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

lor.lhs.false:                                    ; preds = %sw.bb66
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %31 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp72 = icmp eq i32 %32, 0
  br i1 %cmp72, label %lor.lhs.false.protocol_error_crit_edge, label %if.end75

lor.lhs.false.protocol_error_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

if.end75:                                         ; preds = %lor.lhs.false
  %call76 = tail call fastcc zeroext i1 @rxrpc_validate_data(ptr noundef %skb)
  br i1 %call76, label %if.end78, label %if.end75.protocol_error_crit_edge

if.end75.protocol_error_crit_edge:                ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

if.end78:                                         ; preds = %if.end75
  %securityIndex = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 39
  %33 = ptrtoint ptr %securityIndex to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %securityIndex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp81.not = icmp eq i8 %34, 0
  br i1 %cmp81.not, label %if.end78.sw.epilog_crit_edge, label %if.then83

if.end78.sw.epilog_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then83:                                        ; preds = %if.end78
  %call84 = tail call fastcc ptr @skb_unshare(ptr noundef %skb)
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %cleanup, label %if.end87

if.end87:                                         ; preds = %if.then83
  %cmp88.not = icmp eq ptr %call84, %skb
  br i1 %cmp88.not, label %if.end87.sw.epilog_crit_edge, label %if.then90

if.end87.sw.epilog_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_eaten_skb(ptr noundef %skb, i32 noundef 6) #9
  tail call void @rxrpc_new_skb(ptr noundef nonnull %call84, i32 noundef 9) #9
  %cb91 = getelementptr inbounds %struct.sk_buff, ptr %call84, i32 0, i32 3
  br label %sw.epilog

cleanup:                                          ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_eaten_skb(ptr noundef %skb, i32 noundef 10) #9
  br label %out

sw.bb94:                                          ; preds = %if.end52
  %flags.i619 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %35 = ptrtoint ptr %flags.i619 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags.i619, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i620.not = icmp eq i8 %37, 0
  br i1 %tobool.i620.not, label %sw.bb94.sw.epilog_crit_edge, label %sw.bb94.discard_crit_edge

sw.bb94.discard_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

sw.bb94.sw.epilog_crit_edge:                      ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end52
  %flags.i.i621 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %38 = ptrtoint ptr %flags.i.i621 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flags.i.i621, align 1
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.i.not.i622 = icmp eq i8 %40, 0
  br i1 %tobool.i.not.i622, label %sw.bb98.discard_crit_edge, label %sw.bb98.sw.epilog_crit_edge

sw.bb98.sw.epilog_crit_edge:                      ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb98.discard_crit_edge:                        ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

do.body103:                                       ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %41 = load i32, ptr @rxrpc_debug, align 4
  %and104 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %do.body103.protocol_error_crit_edge, label %do.end115, !prof !223

do.body103.protocol_error_crit_edge:              ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

do.end115:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #11
  %42 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i623 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i623 to ptr
  %task118 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task118 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task118, align 8
  %comm119 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm119, i32 noundef %conv) #12
  br label %protocol_error

sw.epilog:                                        ; preds = %sw.bb98.sw.epilog_crit_edge, %sw.bb94.sw.epilog_crit_edge, %if.then90, %if.end87.sw.epilog_crit_edge, %if.end78.sw.epilog_crit_edge, %sw.bb60.sw.epilog_crit_edge, %if.end52.sw.epilog_crit_edge
  %sp.2 = phi ptr [ %cb, %sw.bb98.sw.epilog_crit_edge ], [ %cb, %sw.bb94.sw.epilog_crit_edge ], [ %cb, %if.end78.sw.epilog_crit_edge ], [ %cb, %if.end52.sw.epilog_crit_edge ], [ %cb, %sw.bb60.sw.epilog_crit_edge ], [ %cb, %if.end87.sw.epilog_crit_edge ], [ %cb91, %if.then90 ]
  %skb.addr.2 = phi ptr [ %skb, %sw.bb98.sw.epilog_crit_edge ], [ %skb, %sw.bb94.sw.epilog_crit_edge ], [ %skb, %if.end78.sw.epilog_crit_edge ], [ %skb, %if.end52.sw.epilog_crit_edge ], [ %skb, %sw.bb60.sw.epilog_crit_edge ], [ %skb, %if.end87.sw.epilog_crit_edge ], [ %call84, %if.then90 ]
  %serviceId = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 10
  %46 = ptrtoint ptr %serviceId to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %serviceId, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp130 = icmp eq i16 %47, 0
  br i1 %cmp130, label %sw.epilog.protocol_error_crit_edge, label %if.end133

sw.epilog.protocol_error_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

if.end133:                                        ; preds = %sw.epilog
  %flags.i624 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %flags.i624 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags.i624, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.i625.not = icmp eq i8 %50, 0
  br i1 %tobool.i625.not, label %if.end133.if.end182_crit_edge, label %if.then135

if.end133.if.end182_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

if.then135:                                       ; preds = %if.end133
  %service = getelementptr inbounds %struct.rxrpc_local, ptr %3, i32 0, i32 7
  %51 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %service, align 4
  %call141 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %land.lhs.true143, label %if.then135.do.end151_crit_edge

if.then135.do.end151_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end151

land.lhs.true143:                                 ; preds = %if.then135
  %call144 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %land.lhs.true143.do.end151_crit_edge, label %land.lhs.true146

land.lhs.true143.do.end151_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end151

land.lhs.true146:                                 ; preds = %land.lhs.true143
  %.b610613 = load i1, ptr @rxrpc_input_packet.__warned.7, align 1
  br i1 %.b610613, label %land.lhs.true146.do.end151_crit_edge, label %if.then148

land.lhs.true146.do.end151_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end151

if.then148:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rxrpc_input_packet.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1326, ptr noundef nonnull @.str.1) #9
  br label %do.end151

do.end151:                                        ; preds = %if.then148, %land.lhs.true146.do.end151_crit_edge, %land.lhs.true143.do.end151_crit_edge, %if.then135.do.end151_crit_edge
  %tobool153.not = icmp eq ptr %52, null
  br i1 %tobool153.not, label %do.end151.if.then168_crit_edge, label %lor.lhs.false154

do.end151.if.then168_crit_edge:                   ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then168

lor.lhs.false154:                                 ; preds = %do.end151
  %53 = ptrtoint ptr %serviceId to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %serviceId, align 2
  %srx_service = getelementptr inbounds %struct.rxrpc_sock, ptr %52, i32 0, i32 20, i32 1
  %55 = ptrtoint ptr %srx_service to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %srx_service, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %56)
  %cmp159.not = icmp eq i16 %54, %56
  br i1 %cmp159.not, label %lor.lhs.false154.if.end182_crit_edge, label %land.lhs.true161

lor.lhs.false154.if.end182_crit_edge:             ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

land.lhs.true161:                                 ; preds = %lor.lhs.false154
  %second_service = getelementptr inbounds %struct.rxrpc_sock, ptr %52, i32 0, i32 17
  %57 = ptrtoint ptr %second_service to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %second_service, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %58)
  %cmp166.not = icmp eq i16 %54, %58
  br i1 %cmp166.not, label %land.lhs.true161.if.end182_crit_edge, label %land.lhs.true161.if.then168_crit_edge

land.lhs.true161.if.then168_crit_edge:            ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then168

land.lhs.true161.if.end182_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

if.then168:                                       ; preds = %land.lhs.true161.if.then168_crit_edge, %do.end151.if.then168_crit_edge
  %type170 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 5
  %59 = ptrtoint ptr %type170 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %type170, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp172 = icmp eq i8 %60, 1
  br i1 %cmp172, label %land.lhs.true174, label %if.then168.discard_crit_edge

if.then168.discard_crit_edge:                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

land.lhs.true174:                                 ; preds = %if.then168
  %seq176 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 3
  %61 = ptrtoint ptr %seq176 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %seq176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp177 = icmp eq i32 %62, 1
  br i1 %cmp177, label %unsupported_service, label %land.lhs.true174.discard_crit_edge

land.lhs.true174.discard_crit_edge:               ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

if.end182:                                        ; preds = %land.lhs.true161.if.end182_crit_edge, %lor.lhs.false154.if.end182_crit_edge, %if.end133.if.end182_crit_edge
  %rx.0 = phi ptr [ %52, %land.lhs.true161.if.end182_crit_edge ], [ %52, %lor.lhs.false154.if.end182_crit_edge ], [ null, %if.end133.if.end182_crit_edge ]
  %call183 = call ptr @rxrpc_find_connection_rcu(ptr noundef nonnull %3, ptr noundef %skb.addr.2, ptr noundef nonnull %peer) #9
  %tobool184.not = icmp eq ptr %call183, null
  br i1 %tobool184.not, label %if.end182.if.then395_crit_edge, label %if.then185

if.end182.if.then395_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then395

if.then185:                                       ; preds = %if.end182
  %securityIndex187 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 8
  %63 = ptrtoint ptr %securityIndex187 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %securityIndex187, align 1
  %security_ix = getelementptr inbounds %struct.rxrpc_connection, ptr %call183, i32 0, i32 27
  %65 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %security_ix, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp190.not = icmp eq i8 %64, %66
  br i1 %cmp190.not, label %if.end193, label %wrong_security

if.end193:                                        ; preds = %if.then185
  %67 = ptrtoint ptr %serviceId to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %serviceId, align 2
  %conv196 = zext i16 %68 to i32
  %service_id = getelementptr inbounds %struct.rxrpc_connection, ptr %call183, i32 0, i32 26
  %69 = ptrtoint ptr %service_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %service_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %conv196)
  %cmp197.not = icmp eq i32 %70, %conv196
  br i1 %cmp197.not, label %if.end193.if.end245_crit_edge, label %if.then199

if.end193.if.end245_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245

if.then199:                                       ; preds = %if.end193
  %flags = getelementptr inbounds %struct.rxrpc_connection, ptr %call183, i32 0, i32 17
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags, align 4
  %73 = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool201.not = icmp eq i32 %73, 0
  br i1 %tobool201.not, label %if.then199.protocol_error_crit_edge, label %if.end203

if.then199.protocol_error_crit_edge:              ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

if.end203:                                        ; preds = %if.then199
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %service_id, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !225
  %service_id216 = getelementptr inbounds %struct.rxrpc_connection, ptr %call183, i32 0, i32 1, i32 5
  %74 = ptrtoint ptr %service_id216 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %service_id216, align 2
  %conv217 = zext i16 %75 to i32
  %76 = ptrtoint ptr %serviceId to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %serviceId, align 2
  %conv220 = zext i16 %77 to i32
  call void @llvm.prefetch.p0(ptr %service_id, i32 1, i32 3, i32 1) #9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end203
  %78 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %service_id, i32 %conv217, i32 %conv220) #9, !srcloc !226
  %asmresult.i = extractvalue { i32, i32 } %78, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %78, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !227
  %79 = ptrtoint ptr %service_id216 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %service_id216, align 2
  %conv231 = zext i16 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i, i32 %conv231)
  %cmp232.not = icmp eq i32 %asmresult1.i, %conv231
  br i1 %cmp232.not, label %__cmpxchg.exit.if.end245_crit_edge, label %land.lhs.true234

__cmpxchg.exit.if.end245_crit_edge:               ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245

land.lhs.true234:                                 ; preds = %__cmpxchg.exit
  %81 = ptrtoint ptr %serviceId to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %serviceId, align 2
  %conv237 = zext i16 %82 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i, i32 %conv237)
  %cmp238.not = icmp eq i32 %asmresult1.i, %conv237
  br i1 %cmp238.not, label %land.lhs.true234.if.end245_crit_edge, label %land.lhs.true234.protocol_error_crit_edge

land.lhs.true234.protocol_error_crit_edge:        ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

land.lhs.true234.if.end245_crit_edge:             ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245

if.end245:                                        ; preds = %land.lhs.true234.if.end245_crit_edge, %__cmpxchg.exit.if.end245_crit_edge, %if.end193.if.end245_crit_edge
  %callNumber247 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 2
  %83 = ptrtoint ptr %callNumber247 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %callNumber247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp248 = icmp eq i32 %84, 0
  br i1 %cmp248, label %do.body251, label %if.end273

do.body251:                                       ; preds = %if.end245
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %85 = load i32, ptr @rxrpc_debug, align 4
  %and252 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %do.body251.do.end272_crit_edge, label %do.end263, !prof !223

do.body251.do.end272_crit_edge:                   ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end272

do.end263:                                        ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #11
  %86 = call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i626 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i626 to ptr
  %task266 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task266 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task266, align 8
  %comm267 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %call183, i32 0, i32 23
  %90 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %debug_id, align 8
  %call269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm267, ptr noundef nonnull %call183, i32 noundef %91) #12
  br label %do.end272

do.end272:                                        ; preds = %do.end263, %do.body251.do.end272_crit_edge
  call fastcc void @rxrpc_post_packet_to_conn(ptr noundef nonnull %call183, ptr noundef %skb.addr.2)
  br label %out

if.end273:                                        ; preds = %if.end245
  %serial = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 4
  %92 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %serial, align 4
  %hi_serial = getelementptr inbounds %struct.rxrpc_connection, ptr %call183, i32 0, i32 25
  %94 = ptrtoint ptr %hi_serial to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hi_serial, align 8
  %sub = sub i32 %93, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp275 = icmp sgt i32 %sub, 0
  br i1 %cmp275, label %if.then277, label %if.end273.if.end281_crit_edge

if.end273.if.end281_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end281

if.then277:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %hi_serial to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %93, ptr %hi_serial, align 8
  br label %if.end281

if.end281:                                        ; preds = %if.then277, %if.end273.if.end281_crit_edge
  %cid = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 1
  %97 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cid, align 4
  %and283 = and i32 %98, 3
  %99 = ptrtoint ptr %callNumber247 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %callNumber247, align 4
  %last_call = getelementptr %struct.rxrpc_connection, ptr %call183, i32 0, i32 6, i32 %and283, i32 5
  %101 = ptrtoint ptr %last_call to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %last_call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp286 = icmp ult i32 %100, %102
  br i1 %cmp286, label %if.end281.discard_crit_edge, label %if.end289

if.end281.discard_crit_edge:                      ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

if.end289:                                        ; preds = %if.end281
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp293 = icmp eq i32 %100, %102
  %call296 = getelementptr %struct.rxrpc_connection, ptr %call183, i32 0, i32 6, i32 %and283, i32 1
  br i1 %cmp293, label %if.then295, label %if.end327

if.then295:                                       ; preds = %if.end289
  %103 = ptrtoint ptr %call296 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call296, align 4
  %tobool297.not = icmp eq ptr %104, null
  br i1 %tobool297.not, label %lor.lhs.false298, label %if.then295.discard_crit_edge

if.then295.discard_crit_edge:                     ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

lor.lhs.false298:                                 ; preds = %if.then295
  %type300 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 5
  %105 = ptrtoint ptr %type300 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %type300, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %106)
  %cmp302 = icmp eq i8 %106, 4
  br i1 %cmp302, label %lor.lhs.false298.discard_crit_edge, label %if.end305

lor.lhs.false298.discard_crit_edge:               ; preds = %lor.lhs.false298
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

if.end305:                                        ; preds = %lor.lhs.false298
  %out_clientflag.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call183, i32 0, i32 28
  %107 = ptrtoint ptr %out_clientflag.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %out_clientflag.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.i.not.i627 = icmp eq i8 %108, 0
  br i1 %tobool.i.not.i627, label %land.lhs.true308, label %if.end305.if.end313_crit_edge

if.end305.if.end313_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end313

land.lhs.true308:                                 ; preds = %if.end305
  %last_type = getelementptr %struct.rxrpc_connection, ptr %call183, i32 0, i32 6, i32 %and283, i32 6
  %109 = ptrtoint ptr %last_type to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %last_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %110)
  %cmp310 = icmp eq i8 %110, 2
  br i1 %cmp310, label %land.lhs.true308.discard_crit_edge, label %land.lhs.true308.if.end313_crit_edge

land.lhs.true308.if.end313_crit_edge:             ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end313

land.lhs.true308.discard_crit_edge:               ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

if.end313:                                        ; preds = %land.lhs.true308.if.end313_crit_edge, %if.end305.if.end313_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp317 = icmp eq i8 %106, 1
  br i1 %cmp317, label %if.then319, label %if.end313.if.end326_crit_edge

if.end313.if.end326_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end326

if.then319:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #11
  %call_debug_id = getelementptr %struct.rxrpc_connection, ptr %call183, i32 0, i32 6, i32 %and283, i32 2
  %111 = ptrtoint ptr %call_debug_id to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %call_debug_id, align 4
  %seq321 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 3
  %113 = ptrtoint ptr %seq321 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %seq321, align 4
  %115 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %serial, align 4
  %117 = ptrtoint ptr %flags.i624 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %flags.i624, align 1
  call fastcc void @trace_rxrpc_rx_data(i32 noundef %112, i32 noundef %114, i32 noundef %116, i8 noundef zeroext %118, i8 noundef zeroext 0)
  br label %if.end326

if.end326:                                        ; preds = %if.then319, %if.end313.if.end326_crit_edge
  call fastcc void @rxrpc_post_packet_to_conn(ptr noundef nonnull %call183, ptr noundef %skb.addr.2)
  br label %out

if.end327:                                        ; preds = %if.end289
  %119 = ptrtoint ptr %call296 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %call296, align 4
  %call334 = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call334)
  %tobool335.not = icmp eq i32 %call334, 0
  br i1 %tobool335.not, label %land.lhs.true336, label %if.end327.do.end344_crit_edge

if.end327.do.end344_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end344

land.lhs.true336:                                 ; preds = %if.end327
  %call337 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call337)
  %tobool338.not = icmp eq i32 %call337, 0
  br i1 %tobool338.not, label %land.lhs.true336.do.end344_crit_edge, label %land.lhs.true339

land.lhs.true336.do.end344_crit_edge:             ; preds = %land.lhs.true336
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end344

land.lhs.true339:                                 ; preds = %land.lhs.true336
  %.b611612 = load i1, ptr @rxrpc_input_packet.__warned.11, align 1
  br i1 %.b611612, label %land.lhs.true339.do.end344_crit_edge, label %if.then341

land.lhs.true339.do.end344_crit_edge:             ; preds = %land.lhs.true339
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end344

if.then341:                                       ; preds = %land.lhs.true339
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rxrpc_input_packet.__warned.11, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1396, ptr noundef nonnull @.str.1) #9
  br label %do.end344

do.end344:                                        ; preds = %if.then341, %land.lhs.true339.do.end344_crit_edge, %land.lhs.true336.do.end344_crit_edge, %if.end327.do.end344_crit_edge
  %121 = ptrtoint ptr %callNumber247 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %callNumber247, align 4
  %call_id = getelementptr %struct.rxrpc_connection, ptr %call183, i32 0, i32 6, i32 %and283, i32 3
  %123 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %call_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp348 = icmp ugt i32 %122, %124
  br i1 %cmp348, label %if.then350, label %if.end357

if.then350:                                       ; preds = %do.end344
  %125 = ptrtoint ptr %flags.i624 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %flags.i624, align 1
  %127 = and i8 %126, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.i.not.i629 = icmp eq i8 %127, 0
  br i1 %tobool.i.not.i629, label %if.then350.reject_packet_crit_edge, label %if.end353

if.then350.reject_packet_crit_edge:               ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject_packet

if.end353:                                        ; preds = %if.then350
  %tobool354.not = icmp eq ptr %120, null
  br i1 %tobool354.not, label %if.end353.if.then395_crit_edge, label %if.then355

if.end353.if.then395_crit_edge:                   ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then395

if.then355:                                       ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rxrpc_input_implicit_end_call(ptr noundef %rx.0, ptr noundef nonnull %call183, ptr noundef nonnull %120)
  br label %if.then395

if.end357:                                        ; preds = %do.end344
  %tobool358.not = icmp eq ptr %120, null
  br i1 %tobool358.not, label %if.end357.if.then395_crit_edge, label %if.then359

if.end357.if.then395_crit_edge:                   ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then395

if.then359:                                       ; preds = %if.end357
  %128 = ptrtoint ptr %serviceId to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %serviceId, align 2
  %service_id363 = getelementptr inbounds %struct.rxrpc_call, ptr %120, i32 0, i32 43
  %130 = ptrtoint ptr %service_id363 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %service_id363, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %129, i16 %131)
  %cmp365.not = icmp eq i16 %129, %131
  br i1 %cmp365.not, label %if.then359.if.end371_crit_edge, label %if.then367

if.then359.if.end371_crit_edge:                   ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end371

if.then367:                                       ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %service_id363 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %129, ptr %service_id363, align 4
  br label %if.end371

if.end371:                                        ; preds = %if.then367, %if.then359.if.end371_crit_edge
  %133 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %serial, align 4
  %rx_serial = getelementptr inbounds %struct.rxrpc_call, ptr %120, i32 0, i32 67
  %135 = ptrtoint ptr %rx_serial to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rx_serial, align 4
  %sub374 = sub i32 %134, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub374)
  %cmp375 = icmp sgt i32 %sub374, 0
  br i1 %cmp375, label %if.then377, label %if.end371.if.end381_crit_edge

if.end371.if.end381_crit_edge:                    ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end381

if.then377:                                       ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %rx_serial to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %134, ptr %rx_serial, align 4
  br label %if.end381

if.end381:                                        ; preds = %if.then377, %if.end371.if.end381_crit_edge
  %flags382 = getelementptr inbounds %struct.rxrpc_call, ptr %120, i32 0, i32 33
  %138 = ptrtoint ptr %flags382 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %flags382, align 4
  %140 = and i32 %139, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool384.not = icmp eq i32 %140, 0
  br i1 %tobool384.not, label %if.then385, label %if.end381.lor.lhs.false391_crit_edge

if.end381.lor.lhs.false391_crit_edge:             ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false391

if.then385:                                       ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 9, ptr noundef %flags382) #9
  br label %lor.lhs.false391

lor.lhs.false391:                                 ; preds = %if.then385, %if.end381.lor.lhs.false391_crit_edge
  %usage = getelementptr inbounds %struct.rxrpc_call, ptr %120, i32 0, i32 42
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #9
  %141 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp393 = icmp eq i32 %142, 0
  br i1 %cmp393, label %lor.lhs.false391.if.then395_crit_edge, label %lor.lhs.false391.if.end416_crit_edge

lor.lhs.false391.if.end416_crit_edge:             ; preds = %lor.lhs.false391
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

lor.lhs.false391.if.then395_crit_edge:            ; preds = %lor.lhs.false391
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then395

if.then395:                                       ; preds = %lor.lhs.false391.if.then395_crit_edge, %if.end357.if.then395_crit_edge, %if.then355, %if.end353.if.then395_crit_edge, %if.end182.if.then395_crit_edge
  %143 = ptrtoint ptr %flags.i624 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %flags.i624, align 1
  %145 = and i8 %144, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.i.not.i631 = icmp eq i8 %145, 0
  br i1 %tobool.i.not.i631, label %if.then395.protocol_error_crit_edge, label %lor.lhs.false398

if.then395.protocol_error_crit_edge:              ; preds = %if.then395
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

lor.lhs.false398:                                 ; preds = %if.then395
  %type400 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 5
  %146 = ptrtoint ptr %type400 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %type400, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %147)
  %cmp402.not = icmp eq i8 %147, 1
  br i1 %cmp402.not, label %if.end405, label %lor.lhs.false398.protocol_error_crit_edge

lor.lhs.false398.protocol_error_crit_edge:        ; preds = %lor.lhs.false398
  call void @__sanitizer_cov_trace_pc() #11
  br label %protocol_error

if.end405:                                        ; preds = %lor.lhs.false398
  %seq407 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 3
  %148 = ptrtoint ptr %seq407 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %seq407, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %149)
  %cmp408.not = icmp eq i32 %149, 1
  br i1 %cmp408.not, label %if.end411, label %if.end405.discard_crit_edge

if.end405.discard_crit_edge:                      ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

if.end411:                                        ; preds = %if.end405
  %call412 = call ptr @rxrpc_new_incoming_call(ptr noundef nonnull %3, ptr noundef %rx.0, ptr noundef %skb.addr.2) #9
  %tobool413.not = icmp eq ptr %call412, null
  br i1 %tobool413.not, label %if.end411.reject_packet_crit_edge, label %if.end411.if.end416_crit_edge

if.end411.if.end416_crit_edge:                    ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

if.end411.reject_packet_crit_edge:                ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject_packet

if.end416:                                        ; preds = %if.end411.if.end416_crit_edge, %lor.lhs.false391.if.end416_crit_edge
  %call10.2 = phi ptr [ %call412, %if.end411.if.end416_crit_edge ], [ %120, %lor.lhs.false391.if.end416_crit_edge ]
  call fastcc void @rxrpc_input_call_packet(ptr noundef nonnull %call10.2, ptr noundef %skb.addr.2)
  br label %out

discard:                                          ; preds = %if.end405.discard_crit_edge, %land.lhs.true308.discard_crit_edge, %lor.lhs.false298.discard_crit_edge, %if.then295.discard_crit_edge, %if.end281.discard_crit_edge, %land.lhs.true174.discard_crit_edge, %if.then168.discard_crit_edge, %sw.bb98.discard_crit_edge, %sw.bb94.discard_crit_edge, %sw.bb56.discard_crit_edge, %sw.bb.discard_crit_edge, %if.end52.discard_crit_edge, %if.end52.discard_crit_edge648, %if.end52.discard_crit_edge649
  %skb.addr.3 = phi ptr [ %skb, %if.end52.discard_crit_edge ], [ %skb, %if.end52.discard_crit_edge648 ], [ %skb, %if.end52.discard_crit_edge649 ], [ %skb, %sw.bb98.discard_crit_edge ], [ %skb.addr.2, %land.lhs.true174.discard_crit_edge ], [ %skb.addr.2, %if.then168.discard_crit_edge ], [ %skb.addr.2, %if.end281.discard_crit_edge ], [ %skb.addr.2, %if.then295.discard_crit_edge ], [ %skb.addr.2, %lor.lhs.false298.discard_crit_edge ], [ %skb.addr.2, %land.lhs.true308.discard_crit_edge ], [ %skb.addr.2, %if.end405.discard_crit_edge ], [ %skb, %sw.bb94.discard_crit_edge ], [ %skb, %sw.bb56.discard_crit_edge ], [ %skb, %sw.bb.discard_crit_edge ]
  call void @rxrpc_free_skb(ptr noundef %skb.addr.3, i32 noundef 1) #9
  br label %out

out:                                              ; preds = %discard, %if.end416, %if.end326, %do.end272, %cleanup, %if.end55
  call fastcc void @trace_rxrpc_rx_done(i32 noundef 0, i32 noundef 0)
  br label %cleanup466

wrong_security:                                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #11
  %cid418 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 1
  %150 = ptrtoint ptr %cid418 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cid418, align 4
  %callNumber420 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 2
  %152 = ptrtoint ptr %callNumber420 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %callNumber420, align 4
  %seq422 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 3
  %154 = ptrtoint ptr %seq422 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %seq422, align 4
  call fastcc void @trace_rxrpc_abort(ptr noundef nonnull @.str.12, i32 noundef %151, i32 noundef %153, i32 noundef %155, i32 noundef 19270400, i32 noundef 74)
  br label %post_abort

unsupported_service:                              ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #11
  %cid424 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 1
  %156 = ptrtoint ptr %cid424 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cid424, align 4
  %callNumber426 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.2, i32 0, i32 4, i32 2
  %158 = ptrtoint ptr %callNumber426 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %callNumber426, align 4
  tail call fastcc void @trace_rxrpc_abort(ptr noundef nonnull @.str.13, i32 noundef %157, i32 noundef %159, i32 noundef 1, i32 noundef -2, i32 noundef 95)
  br label %post_abort

protocol_error:                                   ; preds = %lor.lhs.false398.protocol_error_crit_edge, %if.then395.protocol_error_crit_edge, %land.lhs.true234.protocol_error_crit_edge, %if.then199.protocol_error_crit_edge, %sw.epilog.protocol_error_crit_edge, %do.end115, %do.body103.protocol_error_crit_edge, %if.end75.protocol_error_crit_edge, %lor.lhs.false.protocol_error_crit_edge, %sw.bb66.protocol_error_crit_edge, %sw.bb60.protocol_error_crit_edge, %if.end39.protocol_error_crit_edge
  %sp.3.sink646 = phi ptr [ %sp.2, %if.then199.protocol_error_crit_edge ], [ %sp.2, %land.lhs.true234.protocol_error_crit_edge ], [ %cb, %if.end39.protocol_error_crit_edge ], [ %cb, %do.end115 ], [ %cb, %do.body103.protocol_error_crit_edge ], [ %sp.2, %sw.epilog.protocol_error_crit_edge ], [ %sp.2, %if.then395.protocol_error_crit_edge ], [ %sp.2, %lor.lhs.false398.protocol_error_crit_edge ], [ %cb, %sw.bb66.protocol_error_crit_edge ], [ %cb, %lor.lhs.false.protocol_error_crit_edge ], [ %cb, %if.end75.protocol_error_crit_edge ], [ %cb, %sw.bb60.protocol_error_crit_edge ]
  %.str.15.sink = phi ptr [ @.str.14, %if.then199.protocol_error_crit_edge ], [ @.str.14, %land.lhs.true234.protocol_error_crit_edge ], [ @.str.15, %if.end39.protocol_error_crit_edge ], [ @.str.15, %do.end115 ], [ @.str.15, %do.body103.protocol_error_crit_edge ], [ @.str.15, %sw.epilog.protocol_error_crit_edge ], [ @.str.15, %if.then395.protocol_error_crit_edge ], [ @.str.15, %lor.lhs.false398.protocol_error_crit_edge ], [ @.str.15, %sw.bb66.protocol_error_crit_edge ], [ @.str.15, %lor.lhs.false.protocol_error_crit_edge ], [ @.str.15, %if.end75.protocol_error_crit_edge ], [ @.str.15, %sw.bb60.protocol_error_crit_edge ]
  %skb.addr.5 = phi ptr [ %skb.addr.2, %if.then199.protocol_error_crit_edge ], [ %skb.addr.2, %land.lhs.true234.protocol_error_crit_edge ], [ %skb, %if.end39.protocol_error_crit_edge ], [ %skb, %do.end115 ], [ %skb, %do.body103.protocol_error_crit_edge ], [ %skb.addr.2, %sw.epilog.protocol_error_crit_edge ], [ %skb.addr.2, %if.then395.protocol_error_crit_edge ], [ %skb.addr.2, %lor.lhs.false398.protocol_error_crit_edge ], [ %skb, %sw.bb66.protocol_error_crit_edge ], [ %skb, %lor.lhs.false.protocol_error_crit_edge ], [ %skb, %if.end75.protocol_error_crit_edge ], [ %skb, %sw.bb60.protocol_error_crit_edge ]
  %cid437 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.3.sink646, i32 0, i32 4, i32 1
  %160 = ptrtoint ptr %cid437 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cid437, align 4
  %callNumber439 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.3.sink646, i32 0, i32 4, i32 2
  %162 = ptrtoint ptr %callNumber439 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %callNumber439, align 4
  %seq441 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.3.sink646, i32 0, i32 4, i32 3
  %164 = ptrtoint ptr %seq441 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %seq441, align 4
  call fastcc void @trace_rxrpc_abort(ptr noundef nonnull %.str.15.sink, i32 noundef %161, i32 noundef %163, i32 noundef %165, i32 noundef -5, i32 noundef 74)
  br label %post_abort

post_abort:                                       ; preds = %protocol_error, %unsupported_service, %wrong_security
  %skb.addr.5.sink = phi ptr [ %skb.addr.5, %protocol_error ], [ %skb.addr.2, %unsupported_service ], [ %skb.addr.2, %wrong_security ]
  %.sink = phi i32 [ -5, %protocol_error ], [ -2, %unsupported_service ], [ 19270400, %wrong_security ]
  %priority442 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.5.sink, i32 0, i32 15, i32 0, i32 6
  %166 = ptrtoint ptr %priority442 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %.sink, ptr %priority442, align 4
  %167 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.5.sink, i32 0, i32 15, i32 0, i32 13
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1, ptr %167, align 4
  br label %reject_packet

reject_packet:                                    ; preds = %post_abort, %if.end411.reject_packet_crit_edge, %if.then350.reject_packet_crit_edge
  %skb.addr.7 = phi ptr [ %skb.addr.5.sink, %post_abort ], [ %skb.addr.2, %if.then350.reject_packet_crit_edge ], [ %skb.addr.2, %if.end411.reject_packet_crit_edge ]
  %169 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.7, i32 0, i32 15, i32 0, i32 13
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %priority443 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.7, i32 0, i32 15, i32 0, i32 6
  %172 = ptrtoint ptr %priority443 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %priority443, align 4
  call fastcc void @trace_rxrpc_rx_done(i32 noundef %171, i32 noundef %173)
  %call.i632 = call ptr @rxrpc_get_local_maybe(ptr noundef nonnull %3) #9
  %tobool.not.i633 = icmp eq ptr %call.i632, null
  br i1 %tobool.not.i633, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %reject_packet
  call void @__sanitizer_cov_trace_pc() #11
  %reject_queue.i = getelementptr inbounds %struct.rxrpc_local, ptr %3, i32 0, i32 9
  call void @skb_queue_tail(ptr noundef %reject_queue.i, ptr noundef %skb.addr.7) #9
  call void @rxrpc_queue_local(ptr noundef nonnull %3) #9
  br label %rxrpc_reject_packet.exit

if.else.i:                                        ; preds = %reject_packet
  call void @__sanitizer_cov_trace_pc() #11
  call void @rxrpc_free_skb(ptr noundef %skb.addr.7, i32 noundef 1) #9
  br label %rxrpc_reject_packet.exit

rxrpc_reject_packet.exit:                         ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %174 = load i32, ptr @rxrpc_debug, align 4
  %and445 = and i32 %174, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and445)
  %tobool446.not = icmp eq i32 %and445, 0
  br i1 %tobool446.not, label %rxrpc_reject_packet.exit.cleanup466_crit_edge, label %do.end456, !prof !223

rxrpc_reject_packet.exit.cleanup466_crit_edge:    ; preds = %rxrpc_reject_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup466

do.end456:                                        ; preds = %rxrpc_reject_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  %175 = call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i634 = and i32 %175, -16384
  %176 = inttoptr i32 %and.i634 to ptr
  %task459 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %task459 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %task459, align 8
  %comm460 = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 101
  %call462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm460, ptr noundef nonnull @.str.3) #12
  br label %cleanup466

cleanup466:                                       ; preds = %do.end456, %rxrpc_reject_packet.exit.cleanup466_crit_edge, %out, %if.then47, %if.then35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %peer) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_new_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_extract_header(ptr nocapture noundef %sp, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  %whdr = alloca %struct.rxrpc_wire_header, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %whdr) #9
  %0 = call ptr @memset(ptr %whdr, i32 255, i32 28)
  %call = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %whdr, i32 noundef 28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %serial = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %serial, align 4
  %3 = load ptr, ptr @rxrpc_extract_header.___tp_str, align 4
  call fastcc void @trace_rxrpc_rx_eproto(i32 noundef %2, ptr noundef %3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 10
  %5 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 9
  %6 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 8
  %7 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 7
  %8 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 6
  %9 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 5
  %10 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 4
  %11 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 3
  %12 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 1
  %14 = call ptr @memset(ptr %sp, i32 0, i32 16)
  %15 = ptrtoint ptr %whdr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %whdr, align 4
  %hdr1 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4
  %17 = ptrtoint ptr %hdr1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hdr1, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 4
  %cid4 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %cid4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cid4, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %12, align 4
  %callNumber6 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %callNumber6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %callNumber6, align 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %11, align 4
  %seq8 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %seq8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %seq8, align 4
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %10, align 4
  %serial11 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %serial11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %serial11, align 4
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %8, align 1
  %flags13 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 6
  %32 = ptrtoint ptr %flags13 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %flags13, align 1
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %9, align 4
  %type15 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 5
  %35 = ptrtoint ptr %type15 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %type15, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %7, align 2
  %userStatus17 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 7
  %38 = ptrtoint ptr %userStatus17 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %userStatus17, align 2
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %6, align 1
  %securityIndex19 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 8
  %41 = ptrtoint ptr %securityIndex19 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %securityIndex19, align 1
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %5, align 4
  %44 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 9
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %43, ptr %44, align 4
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %4, align 2
  %serviceId22 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp, i32 0, i32 4, i32 10
  %48 = ptrtoint ptr %serviceId22 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %serviceId22, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -74, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %whdr) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_lose(ptr noundef %sp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_lose, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_lose, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !229
  %call42 = tail call i32 @__traceiter_rxrpc_rx_lose(ptr noundef null, ptr noundef %sp) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !230
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !223

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_lose, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_lose, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_rxrpc_rx_lose.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rx_lose.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1203, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
declare dso_local void @rxrpc_free_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_packet(ptr noundef %sp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_packet, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_packet, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !233
  %call42 = tail call i32 @__traceiter_rxrpc_rx_packet(ptr noundef null, ptr noundef %sp) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !234
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !223

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_packet, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_packet, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_rxrpc_rx_packet.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rx_packet.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 676, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
define internal fastcc void @rxrpc_post_packet_to_local(ptr noundef %local, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !223

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %comm, ptr noundef nonnull @.str.23, ptr noundef %local, ptr noundef %skb) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call ptr @rxrpc_get_local_maybe(ptr noundef %local) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %event_queue = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 10
  tail call void @skb_queue_tail(ptr noundef %event_queue, ptr noundef %skb) #9
  tail call void @rxrpc_queue_local(ptr noundef %local) #9
  br label %if.end9

if.else:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_free_skb(ptr noundef %skb, i32 noundef 1) #9
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rxrpc_validate_data(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %flags = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flags) #9
  %flags2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags2, align 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %flags, align 1
  %nr_subpackets4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  br label %for.cond

for.cond:                                         ; preds = %if.end17.for.cond_crit_edge, %entry
  %offset.0 = phi i32 [ 28, %entry ], [ %add22, %if.end17.for.cond_crit_edge ]
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.cond.if.end_crit_edge, label %if.then

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %nr_subpackets4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_subpackets4, align 4
  %conv3 = zext i8 %10 to i32
  %rem.i = and i32 %conv3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv3, 5
  %add.ptr.i = getelementptr i32, ptr %5, i32 %div2.i
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %12
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.if.end_crit_edge
  %13 = ptrtoint ptr %nr_subpackets4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nr_subpackets4, align 4
  %inc = add i8 %14, 1
  store i8 %inc, ptr %nr_subpackets4, align 4
  %conv5 = zext i8 %7 to i32
  %and6 = and i32 %conv5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end
  %sub = sub i32 %1, %offset.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1415, i32 %sub)
  %cmp = icmp ugt i32 %sub, 1415
  %and14 = and i32 %conv5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %cmp, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.end17, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %add = add i32 %offset.0, 1412
  %call = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %add, ptr noundef nonnull %flags, i32 noundef 1) #9
  %cmp18 = icmp slt i32 %call, 0
  %add22 = add i32 %offset.0, 1416
  br i1 %cmp18, label %if.end17.cleanup_crit_edge, label %if.end17.for.cond_crit_edge

if.end17.for.cond_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %if.end
  %15 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  br i1 %tobool25.not, label %for.end.cleanup_crit_edge, label %if.then26

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rx_flags, align 1
  %18 = or i8 %17, 1
  store i8 %18, ptr %rx_flags, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %for.end.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags) #9
  ret i1 %tobool7.not
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_unshare(ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end13_crit_edge, label %skb_cloned.exit

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

skb_cloned.exit:                                  ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.end13_crit_edge, label %if.then6

skb_cloned.exit.if.end13_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then6:                                         ; preds = %skb_cloned.exit
  %call7 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else, label %if.then11, !prof !224

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %if.end13

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11, %skb_cloned.exit.if.end13_crit_edge, %entry.if.end13_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %skb_cloned.exit.if.end13_crit_edge ], [ null, %if.else ], [ %call7, %if.then11 ], [ %skb, %entry.if.end13_crit_edge ]
  ret ptr %skb.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_eaten_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_find_connection_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_post_packet_to_conn(ptr noundef %conn, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !223

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %comm, ptr noundef nonnull @.str.25, ptr noundef %conn, ptr noundef %skb) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %rx_queue = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 13
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef %skb) #9
  %call6 = tail call zeroext i1 @rxrpc_queue_conn(ptr noundef %conn) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_data(i32 noundef %call, i32 noundef %seq, i32 noundef %serial, i8 noundef zeroext %flags, i8 noundef zeroext %anno) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_data, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_data, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !235
  %call43 = tail call i32 @__traceiter_rxrpc_rx_data(ptr noundef null, i32 noundef %call, i32 noundef %seq, i32 noundef %serial, i8 noundef zeroext %flags, i8 noundef zeroext %anno) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !236
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !223

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_data, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_rx_data.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rx_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 811, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
define internal fastcc void @rxrpc_input_implicit_end_call(ptr noundef %rx, ptr noundef %conn, ptr noundef %call) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %1, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call zeroext i1 @rxrpc_call_completed(ptr noundef %call) #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call2 = tail call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.26, ptr noundef %call, i32 noundef 0, i32 noundef -1, i32 noundef -108) #9
  br i1 %call2, label %if.then, label %sw.default.if.end_crit_edge

sw.default.if.end_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %events = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  tail call void @_set_bit(i32 noundef 1, ptr noundef %events) #9
  %call3 = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default.if.end_crit_edge
  tail call fastcc void @trace_rxrpc_improper_term(ptr noundef %call)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  %incoming_lock = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %incoming_lock) #9
  tail call void @__rxrpc_disconnect_call(ptr noundef %conn, ptr noundef %call) #9
  tail call void @_raw_spin_unlock(ptr noundef %incoming_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_new_incoming_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_input_call_packet(ptr noundef %call, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %avail.i = alloca i32, align 4
  %summary.i143 = alloca %struct.rxrpc_ack_summary, align 4
  %wtmp.i = alloca i32, align 4
  %summary.i = alloca %struct.rxrpc_ack_summary, align 4
  %buf.i = alloca %union.anon.160, align 4
  %summary.i.i = alloca %struct.rxrpc_ack_summary, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !223

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %comm, ptr noundef nonnull @.str.27, ptr noundef %call, ptr noundef %skb) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %next_rx_timo = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %next_rx_timo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %next_rx_timo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %do.end10.if.end24_crit_edge, label %if.then13

do.end10.if.end24_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, %6
  %expect_rx_by19 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 12
  %8 = ptrtoint ptr %expect_rx_by19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %add, ptr %expect_rx_by19, align 4
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 18, i32 noundef %7) #9
  %timer.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %call1.i = tail call i32 @timer_reduce(ptr noundef %timer.i, i32 noundef %add) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then13, %do.end10.if.end24_crit_edge
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %10, label %if.end24.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb25
    i8 3, label %do.body27
    i8 4, label %sw.bb50
    i8 5, label %sw.bb51
  ]

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %serial1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %12 = ptrtoint ptr %serial1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %serial1.i, align 4
  %seq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %14 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %16 = load i32, ptr @rxrpc_debug, align 4
  %and.i91 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool.not.i = icmp eq i32 %and.i91, 0
  br i1 %tobool.not.i, label %sw.bb.do.body10.i_crit_edge, label %do.end.i, !prof !223

sw.bb.do.body10.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i490.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i490.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %rx_hard_ack.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 64
  %21 = ptrtoint ptr %rx_hard_ack.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_hard_ack.i, align 8
  %rx_top.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 65
  %23 = ptrtoint ptr %rx_top.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_top.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %comm.i, ptr noundef nonnull @.str.35, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %15) #12
  br label %do.body10.i

do.body10.i:                                      ; preds = %do.end.i, %sw.bb.do.body10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %27 = load i32, ptr @rxrpc_debug, align 4
  %and11.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body10.i.do.end39.i_crit_edge, label %do.end22.i, !prof !223

do.body10.i.do.end39.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39.i

do.end22.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i491.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i491.i to ptr
  %task25.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task25.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task25.i, align 8
  %comm26.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %32 = ptrtoint ptr %serial1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %serial1.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags.i, align 1
  %conv.i = zext i8 %35 to i32
  %nr_subpackets31.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %nr_subpackets31.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nr_subpackets31.i, align 4
  %conv32.i = zext i8 %37 to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm26.i, i32 noundef %33, i32 noundef %15, i32 noundef %conv.i, i32 noundef %conv32.i) #12
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end22.i, %do.body10.i.do.end39.i_crit_edge
  %state41.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %38 = ptrtoint ptr %state41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %39)
  %cmp.i = icmp ugt i32 %39, 10
  br i1 %cmp.i, label %if.then43.i, label %if.end44.i

if.then43.i:                                      ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_free_skb(ptr noundef %skb, i32 noundef 1) #9
  br label %do.body52

if.end44.i:                                       ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %39)
  %cmp45.i = icmp eq i32 %39, 7
  br i1 %cmp45.i, label %if.then47.i, label %if.end44.i.if.end65.i_crit_edge

if.end44.i.if.end65.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.then47.i:                                      ; preds = %if.end44.i
  %next_req_timo.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 16
  %40 = ptrtoint ptr %next_req_timo.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %next_req_timo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool52.not.i = icmp eq i32 %41, 0
  br i1 %tobool52.not.i, label %if.then47.i.if.end65.i_crit_edge, label %if.then53.i

if.then47.i.if.end65.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.then53.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %42, %41
  %expect_req_by59.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 13
  %43 = ptrtoint ptr %expect_req_by59.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %add.i, ptr %expect_req_by59.i, align 8
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 15, i32 noundef %42) #9
  %timer.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %call1.i.i = tail call i32 @timer_reduce(ptr noundef %timer.i.i, i32 noundef %add.i) #9
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then53.i, %if.then47.i.if.end65.i_crit_edge, %if.end44.i.if.end65.i_crit_edge
  %input_lock.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 72
  tail call void @_raw_spin_lock(ptr noundef %input_lock.i) #9
  %44 = and i32 %39, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %switch.i = icmp eq i32 %44, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.end65.i.if.end72.i_crit_edge

if.end65.i.if.end72.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

land.lhs.true.i:                                  ; preds = %if.end65.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %summary.i.i) #9
  %45 = call ptr @memcpy(ptr %summary.i.i, ptr @__const.rxrpc_input_ackall.summary, i32 16)
  %tx_top.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 55
  %46 = ptrtoint ptr %tx_top.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %tx_top.i.i, align 4
  %ackr_reason.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 73
  %48 = ptrtoint ptr %ackr_reason.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ackr_reason.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.if.end.i.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 35
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #9
  %50 = ptrtoint ptr %ackr_reason.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %ackr_reason.i.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %51, 1073741822
  %resend_at.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 9
  %52 = ptrtoint ptr %resend_at.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %add.i.i, ptr %resend_at.i.i, align 8
  %ack_at.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 7
  %53 = ptrtoint ptr %ack_at.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %add.i.i, ptr %ack_at.i.i, align 8
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 10, i32 noundef %51) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.if.end.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags.i.i, align 4
  %56 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool22.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool22.not.i.i, label %if.then23.i.i, label %if.end.i.i.if.end27.i.i_crit_edge

if.end.i.i.if.end27.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i

if.then23.i.i:                                    ; preds = %if.end.i.i
  %call24.i.i = call fastcc zeroext i1 @rxrpc_rotate_tx_window(ptr noundef %call, i32 noundef %47, ptr noundef nonnull %summary.i.i) #9
  br i1 %call24.i.i, label %if.then23.i.i.if.end27.i.i_crit_edge, label %if.then25.i.i

if.then23.i.i.if.end27.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i

if.then25.i.i:                                    ; preds = %if.then23.i.i
  %call1.i.i.i = tail call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.50, ptr noundef %call, i32 noundef %47, i32 noundef -5, i32 noundef -74) #9
  br i1 %call1.i.i.i, label %if.then.i.i.i, label %if.then25.i.i.rxrpc_receiving_reply.exit.thread.i_crit_edge

if.then25.i.i.rxrpc_receiving_reply.exit.thread.i_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_receiving_reply.exit.thread.i

if.then.i.i.i:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %events.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  tail call void @_set_bit(i32 noundef 1, ptr noundef %events.i.i.i) #9
  %call2.i.i.i = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %rxrpc_receiving_reply.exit.thread.i

if.end27.i.i:                                     ; preds = %if.then23.i.i.if.end27.i.i_crit_edge, %if.end.i.i.if.end27.i.i_crit_edge
  %call28.i.i = tail call fastcc zeroext i1 @rxrpc_end_tx_phase(ptr noundef %call, i1 noundef zeroext true, ptr noundef nonnull @.str.51) #9
  br i1 %call28.i.i, label %rxrpc_receiving_reply.exit.i, label %if.end27.i.i.rxrpc_receiving_reply.exit.thread.i_crit_edge

if.end27.i.i.rxrpc_receiving_reply.exit.thread.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_receiving_reply.exit.thread.i

rxrpc_receiving_reply.exit.thread.i:              ; preds = %if.end27.i.i.rxrpc_receiving_reply.exit.thread.i_crit_edge, %if.then.i.i.i, %if.then25.i.i.rxrpc_receiving_reply.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %summary.i.i) #9
  br label %unlock.i

rxrpc_receiving_reply.exit.i:                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_phase.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 70
  %57 = ptrtoint ptr %tx_phase.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %tx_phase.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %summary.i.i) #9
  br label %if.end72.i

if.end72.i:                                       ; preds = %rxrpc_receiving_reply.exit.i, %if.end65.i.if.end72.i_crit_edge
  %ackr_prev_seq.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 76
  %58 = ptrtoint ptr %ackr_prev_seq.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %15, ptr %ackr_prev_seq.i, align 4
  %rx_hard_ack77.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 64
  %59 = ptrtoint ptr %rx_hard_ack77.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %rx_hard_ack77.i, align 8
  %nr_subpackets78.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %nr_subpackets78.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nr_subpackets78.i, align 4
  %conv79.i = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp80.i = icmp ugt i8 %62, 1
  br i1 %cmp80.i, label %if.then82.i, label %if.end88.i

if.then82.i:                                      ; preds = %if.end72.i
  %nr_jumbo_bad.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 71
  %63 = ptrtoint ptr %nr_jumbo_bad.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nr_jumbo_bad.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %64)
  %cmp84.i = icmp ugt i8 %64, 3
  br i1 %cmp84.i, label %if.then82.i.if.then306.i_crit_edge, label %if.then82.i.for.body.lr.ph.i_crit_edge

if.then82.i.for.body.lr.ph.i_crit_edge:           ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

if.then82.i.if.then306.i_crit_edge:               ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then306.i

if.end88.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp89572.not.i = icmp eq i8 %62, 0
  br i1 %cmp89572.not.i, label %if.end88.i.if.else308.i_crit_edge, label %if.end88.i.for.body.lr.ph.i_crit_edge

if.end88.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

if.end88.i.if.else308.i_crit_edge:                ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else308.i

for.body.lr.ph.i:                                 ; preds = %if.end88.i.for.body.lr.ph.i_crit_edge, %if.then82.i.for.body.lr.ph.i_crit_edge
  %sub.i = add nsw i32 %conv79.i, -1
  %flags145.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %rx_top149.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 65
  %debug_id.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %rxtx_buffer.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 52
  %cmp80.not.i = xor i1 %cmp80.i, true
  %nr_jumbo_bad.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 71
  %rx_winsize.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 68
  %rxtx_annotations.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 53
  %rx_expect_next.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 66
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %skb.addr.0579.i = phi ptr [ %skb, %for.body.lr.ph.i ], [ %skb.addr.2.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %sp.0578.i = phi ptr [ %cb.i, %for.body.lr.ph.i ], [ %sp.2.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %j.0577.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc303.i, %for.inc.i.for.body.i_crit_edge ]
  %ack_serial.0576.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ack_serial.9.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %ack.0575.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %ack.9.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %immediate_ack.0.off0574.i = phi i1 [ false, %for.body.lr.ph.i ], [ %immediate_ack.2.off0.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %jumbo_bad.0573.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %jumbo_bad.2.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %serial93.i = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.0578.i, i32 0, i32 4, i32 4
  %65 = ptrtoint ptr %serial93.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %serial93.i, align 4
  %add94.i = add i32 %66, %j.0577.i
  %add96.i = add i32 %j.0577.i, %15
  %and97.i = and i32 %add96.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0577.i, i32 %sub.i)
  %cmp98.i = icmp eq i32 %j.0577.i, %sub.i
  br i1 %cmp98.i, label %land.rhs.i, label %for.body.i.land.end.i_crit_edge

for.body.i.land.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.rhs.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_flags.i = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.0578.i, i32 0, i32 2
  %67 = ptrtoint ptr %rx_flags.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rx_flags.i, align 1
  %69 = and i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool104.i = icmp ne i8 %69, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %for.body.i.land.end.i_crit_edge
  %70 = phi i1 [ false, %for.body.i.land.end.i_crit_edge ], [ %tobool104.i, %land.rhs.i ]
  %conv107.i = trunc i32 %j.0577.i to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %71 = load i32, ptr @rxrpc_debug, align 4
  %and109.i = and i32 %71, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i)
  %tobool110.not.i = icmp eq i32 %and109.i, 0
  br i1 %tobool110.not.i, label %land.end.i.do.end133.i_crit_edge, label %do.end120.i, !prof !223

land.end.i.do.end133.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end133.i

do.end120.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i492.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i492.i to ptr
  %task123.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task123.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task123.i, align 8
  %comm124.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 101
  %conv127.i = zext i1 %cmp98.i to i32
  %conv129.i = zext i1 %70 to i32
  %call130.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm124.i, i32 noundef %j.0577.i, i32 noundef %add94.i, i32 noundef %add96.i, i32 noundef %conv127.i, i32 noundef %conv129.i) #12
  br label %do.end133.i

do.end133.i:                                      ; preds = %do.end120.i, %land.end.i.do.end133.i_crit_edge
  %76 = ptrtoint ptr %flags145.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags145.i, align 4
  %78 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool138.not.i = icmp eq i32 %78, 0
  br i1 %70, label %if.then135.i, label %if.else.i

if.then135.i:                                     ; preds = %do.end133.i
  br i1 %tobool138.not.i, label %if.then135.i.if.end154.i_crit_edge, label %land.lhs.true139.i

if.then135.i.if.end154.i_crit_edge:               ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154.i

land.lhs.true139.i:                               ; preds = %if.then135.i
  %79 = ptrtoint ptr %rx_top149.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_top149.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add96.i, i32 %80)
  %cmp141.not.i = icmp eq i32 %add96.i, %80
  br i1 %cmp141.not.i, label %land.lhs.true139.i.if.end154.i_crit_edge, label %if.then143.i

land.lhs.true139.i.if.end154.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154.i

if.then143.i:                                     ; preds = %land.lhs.true139.i
  %call1.i493.i = tail call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.42, ptr noundef %call, i32 noundef %add96.i, i32 noundef -5, i32 noundef -74) #9
  br i1 %call1.i493.i, label %if.then.i494.i, label %if.then143.i.unlock.i_crit_edge

if.then143.i.unlock.i_crit_edge:                  ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.then.i494.i:                                   ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #11
  %events.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  tail call void @_set_bit(i32 noundef 1, ptr noundef %events.i.i) #9
  %call2.i.i = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %unlock.i

if.else.i:                                        ; preds = %do.end133.i
  br i1 %tobool138.not.i, label %if.else.i.if.end154.i_crit_edge, label %land.lhs.true148.i

if.else.i.if.end154.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154.i

land.lhs.true148.i:                               ; preds = %if.else.i
  %81 = ptrtoint ptr %rx_top149.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_top149.i, align 4
  %sub.i.i = sub i32 %add96.i, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i.i, label %if.then152.i, label %land.lhs.true148.i.if.end154.i_crit_edge

land.lhs.true148.i.if.end154.i_crit_edge:         ; preds = %land.lhs.true148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154.i

if.then152.i:                                     ; preds = %land.lhs.true148.i
  %call1.i496.i = tail call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.43, ptr noundef %call, i32 noundef %add96.i, i32 noundef -5, i32 noundef -74) #9
  br i1 %call1.i496.i, label %if.then.i499.i, label %if.then152.i.unlock.i_crit_edge

if.then152.i.unlock.i_crit_edge:                  ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.then.i499.i:                                   ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #11
  %events.i497.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  tail call void @_set_bit(i32 noundef 1, ptr noundef %events.i497.i) #9
  %call2.i498.i = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %unlock.i

if.end154.i:                                      ; preds = %land.lhs.true148.i.if.end154.i_crit_edge, %if.else.i.if.end154.i_crit_edge, %land.lhs.true139.i.if.end154.i_crit_edge, %if.then135.i.if.end154.i_crit_edge
  %spec.select.i = phi i8 [ 0, %if.else.i.if.end154.i_crit_edge ], [ 0, %land.lhs.true148.i.if.end154.i_crit_edge ], [ 4, %if.then135.i.if.end154.i_crit_edge ], [ 4, %land.lhs.true139.i.if.end154.i_crit_edge ]
  %83 = or i8 %spec.select.i, 32
  %flags106.1.i = select i1 %cmp98.i, i8 %spec.select.i, i8 %83
  %84 = getelementptr inbounds %struct.rxrpc_skb_priv, ptr %sp.0578.i, i32 0, i32 3
  %div3.i.i = lshr i32 %j.0577.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %84, i32 %div3.i.i
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %j.0577.i, 31
  %87 = shl nuw i32 1, %and.i.i
  %88 = and i32 %86, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool168.not.i = icmp eq i32 %88, 0
  %89 = or i8 %flags106.1.i, 2
  %flags106.2.i = select i1 %tobool168.not.i, i8 %flags106.1.i, i8 %89
  %90 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_rxrpc_rx_data(i32 noundef %91, i32 noundef %add96.i, i32 noundef %add94.i, i8 noundef zeroext %flags106.2.i, i8 noundef zeroext %conv107.i) #9
  %sub.i502.i = sub i32 %add96.i, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i502.i)
  %cmp.i503.i = icmp slt i32 %sub.i502.i, 1
  br i1 %cmp.i503.i, label %if.end154.i.for.inc.i_crit_edge, label %if.end176.i

if.end154.i.for.inc.i_crit_edge:                  ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end176.i:                                      ; preds = %if.end154.i
  %92 = ptrtoint ptr %rxtx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rxtx_buffer.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %93, i32 %and97.i
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i, align 4
  %tobool177.not.i = icmp eq ptr %95, null
  br i1 %tobool177.not.i, label %if.end186.i, label %if.then178.i

if.then178.i:                                     ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %jumbo_bad.0573.i)
  %tobool1.not.i.i = icmp eq i8 %jumbo_bad.0573.i, 0
  %or.cond551.i = select i1 %cmp80.not.i, i1 %tobool1.not.i.i, i1 false
  br i1 %or.cond551.i, label %if.then2.i.i, label %if.then178.i.rxrpc_input_dup_data.exit.i_crit_edge

if.then178.i.rxrpc_input_dup_data.exit.i_crit_edge: ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_input_dup_data.exit.i

if.then2.i.i:                                     ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %nr_jumbo_bad.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %nr_jumbo_bad.i.i, align 1
  %inc.i.i = add i8 %97, 1
  store i8 %inc.i.i, ptr %nr_jumbo_bad.i.i, align 1
  br label %rxrpc_input_dup_data.exit.i

rxrpc_input_dup_data.exit.i:                      ; preds = %if.then2.i.i, %if.then178.i.rxrpc_input_dup_data.exit.i_crit_edge
  %jumbo_bad.1.i = phi i8 [ %jumbo_bad.0573.i, %if.then178.i.rxrpc_input_dup_data.exit.i_crit_edge ], [ 1, %if.then2.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %ack.0575.i)
  %cmp182.not.i = icmp eq i8 %ack.0575.i, 2
  %spec.select479.i = select i1 %cmp182.not.i, i32 %ack_serial.0576.i, i32 %add94.i
  br label %for.inc.i

if.end186.i:                                      ; preds = %if.end176.i
  %98 = ptrtoint ptr %rx_winsize.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rx_winsize.i, align 8
  %conv187.i = zext i8 %99 to i32
  %100 = add i32 %60, %conv187.i
  %sub.i505.i = sub i32 %add96.i, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i505.i)
  %cmp.i506.i = icmp sgt i32 %sub.i505.i, 0
  br i1 %cmp.i506.i, label %if.then190.i, label %if.end200.i

if.then190.i:                                     ; preds = %if.end186.i
  %101 = and i8 %flags106.2.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool193.not.i = icmp ne i8 %101, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %jumbo_bad.0573.i)
  %tobool195.not.i = icmp eq i8 %jumbo_bad.0573.i, 0
  %or.cond552.i = select i1 %tobool193.not.i, i1 %tobool195.not.i, i1 false
  br i1 %or.cond552.i, label %if.then196.i, label %if.then190.i.if.then306.i_crit_edge

if.then190.i.if.then306.i_crit_edge:              ; preds = %if.then190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then306.i

if.then196.i:                                     ; preds = %if.then190.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %nr_jumbo_bad.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %nr_jumbo_bad.i.i, align 1
  %inc.i = add i8 %103, 1
  store i8 %inc.i, ptr %nr_jumbo_bad.i.i, align 1
  br label %if.then306.i

if.end200.i:                                      ; preds = %if.end186.i
  %104 = and i8 %flags106.2.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool203.not.i = icmp ne i8 %104, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ack.0575.i)
  %tobool205.not.i = icmp eq i8 %ack.0575.i, 0
  %or.cond.i = select i1 %tobool203.not.i, i1 %tobool205.not.i, i1 false
  %ack.2.i = select i1 %or.cond.i, i8 1, i8 %ack.0575.i
  %ack_serial.2.i = select i1 %or.cond.i, i32 %add94.i, i32 %ack_serial.0576.i
  br i1 %cmp98.i, label %if.end200.i.if.end210.i_crit_edge, label %if.then209.i

if.end200.i.if.end210.i_crit_edge:                ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end210.i

if.then209.i:                                     ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_get_skb(ptr noundef %skb.addr.0579.i, i32 noundef 2) #9
  br label %if.end210.i

if.end210.i:                                      ; preds = %if.then209.i, %if.end200.i.if.end210.i_crit_edge
  %105 = ptrtoint ptr %rxtx_annotations.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rxtx_annotations.i, align 4
  %arrayidx211.i = getelementptr i8, ptr %106, i32 %and97.i
  %107 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv107.i, ptr %arrayidx211.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !237
  %108 = ptrtoint ptr %rxtx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rxtx_buffer.i, align 8
  %arrayidx219.i = getelementptr ptr, ptr %109, i32 %and97.i
  %110 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %skb.addr.0579.i, ptr %arrayidx219.i, align 4
  %111 = ptrtoint ptr %rx_top149.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_top149.i, align 4
  %sub.i507.i = sub i32 %add96.i, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i507.i)
  %cmp.i508.i = icmp sgt i32 %sub.i507.i, 0
  br i1 %cmp.i508.i, label %do.end230.i, label %if.else245.i

do.end230.i:                                      ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !238
  %113 = ptrtoint ptr %rx_top149.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %add96.i, ptr %rx_top149.i, align 4
  br label %if.end253.i

if.else245.i:                                     ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i507.i)
  %cmp.i510.i = icmp slt i32 %sub.i507.i, 0
  br i1 %cmp.i510.i, label %if.then248.i, label %if.else245.i.if.end253.i_crit_edge

if.else245.i.if.end253.i_crit_edge:               ; preds = %if.else245.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end253.i

if.then248.i:                                     ; preds = %if.else245.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ack.2.i)
  %tobool249.not.i = icmp eq i8 %ack.2.i, 0
  %spec.select480.i = select i1 %tobool249.not.i, i8 8, i8 %ack.2.i
  %spec.select481.i = select i1 %tobool249.not.i, i32 %add94.i, i32 %ack_serial.2.i
  br label %if.end253.i

if.end253.i:                                      ; preds = %if.then248.i, %if.else245.i.if.end253.i_crit_edge, %do.end230.i
  %immediate_ack.1.off0.i = phi i1 [ %immediate_ack.0.off0574.i, %do.end230.i ], [ true, %if.then248.i ], [ %immediate_ack.0.off0574.i, %if.else245.i.if.end253.i_crit_edge ]
  %ack.4.i = phi i8 [ %ack.2.i, %do.end230.i ], [ %spec.select480.i, %if.then248.i ], [ %ack.2.i, %if.else245.i.if.end253.i_crit_edge ]
  %ack_serial.4.i = phi i32 [ %ack_serial.2.i, %do.end230.i ], [ %spec.select481.i, %if.then248.i ], [ %ack_serial.2.i, %if.else245.i.if.end253.i_crit_edge ]
  %spec.select482.i = select i1 %cmp98.i, ptr null, ptr %sp.0578.i
  %spec.select483.i = select i1 %cmp98.i, ptr null, ptr %skb.addr.0579.i
  br i1 %70, label %if.then258.i, label %if.end253.i.if.end264.i_crit_edge

if.end253.i.if.end264.i_crit_edge:                ; preds = %if.end253.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end264.i

if.then258.i:                                     ; preds = %if.end253.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags145.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ack.4.i)
  %tobool260.not.i = icmp eq i8 %ack.4.i, 0
  %spec.select484.i = select i1 %tobool260.not.i, i8 8, i8 %ack.4.i
  %spec.select485.i = select i1 %tobool260.not.i, i32 %add94.i, i32 %ack_serial.4.i
  br label %if.end264.i

if.end264.i:                                      ; preds = %if.then258.i, %if.end253.i.if.end264.i_crit_edge
  %.sink.i = phi i32 [ 4, %if.then258.i ], [ 3, %if.end253.i.if.end264.i_crit_edge ]
  %ack.6.i = phi i8 [ %spec.select484.i, %if.then258.i ], [ %ack.4.i, %if.end253.i.if.end264.i_crit_edge ]
  %ack_serial.6.i = phi i32 [ %spec.select485.i, %if.then258.i ], [ %ack_serial.4.i, %if.end253.i.if.end264.i_crit_edge ]
  tail call fastcc void @trace_rxrpc_receive(ptr noundef %call, i32 noundef %.sink.i, i32 noundef %add94.i, i32 noundef %add96.i) #9
  %114 = ptrtoint ptr %rx_expect_next.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rx_expect_next.i, align 8
  %sub.i511.i = sub i32 %add96.i, %115
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i511.i)
  %cmp.i512.i = icmp sgt i32 %sub.i511.i, -1
  br i1 %cmp.i512.i, label %if.then266.i, label %if.end264.i.for.inc.i_crit_edge

if.end264.i.for.inc.i_crit_edge:                  ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then266.i:                                     ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add96.i, i32 %115)
  %cmp.i514.not.i = icmp eq i32 %add96.i, %115
  br i1 %cmp.i514.not.i, label %if.then266.i.if.end293.i_crit_edge, label %do.body270.i

if.then266.i.if.end293.i_crit_edge:               ; preds = %if.then266.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end293.i

do.body270.i:                                     ; preds = %if.then266.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %116 = load i32, ptr @rxrpc_debug, align 4
  %and271.i = and i32 %116, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271.i)
  %tobool272.not.i = icmp eq i32 %and271.i, 0
  br i1 %tobool272.not.i, label %do.body270.i.if.end293.i_crit_edge, label %do.end282.i, !prof !223

do.body270.i.if.end293.i_crit_edge:               ; preds = %do.body270.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end293.i

do.end282.i:                                      ; preds = %do.body270.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i515.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i515.i to ptr
  %task285.i = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %task285.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task285.i, align 8
  %comm286.i = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 101
  %call289.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %comm286.i, i32 noundef %add96.i, i32 noundef %115) #12
  br label %if.end293.i

if.end293.i:                                      ; preds = %do.end282.i, %do.body270.i.if.end293.i_crit_edge, %if.then266.i.if.end293.i_crit_edge
  %ack.7.i = phi i8 [ %ack.6.i, %if.then266.i.if.end293.i_crit_edge ], [ 3, %do.end282.i ], [ 3, %do.body270.i.if.end293.i_crit_edge ]
  %ack_serial.7.i = phi i32 [ %ack_serial.6.i, %if.then266.i.if.end293.i_crit_edge ], [ %add94.i, %do.end282.i ], [ %add94.i, %do.body270.i.if.end293.i_crit_edge ]
  %add294.i = add i32 %add96.i, 1
  %121 = ptrtoint ptr %rx_expect_next.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add294.i, ptr %rx_expect_next.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end293.i, %if.end264.i.for.inc.i_crit_edge, %rxrpc_input_dup_data.exit.i, %if.end154.i.for.inc.i_crit_edge
  %jumbo_bad.2.ph.i = phi i8 [ %jumbo_bad.1.i, %rxrpc_input_dup_data.exit.i ], [ %jumbo_bad.0573.i, %if.end264.i.for.inc.i_crit_edge ], [ %jumbo_bad.0573.i, %if.end293.i ], [ %jumbo_bad.0573.i, %if.end154.i.for.inc.i_crit_edge ]
  %immediate_ack.2.off0.ph.i = phi i1 [ true, %rxrpc_input_dup_data.exit.i ], [ %immediate_ack.1.off0.i, %if.end264.i.for.inc.i_crit_edge ], [ %immediate_ack.1.off0.i, %if.end293.i ], [ %immediate_ack.0.off0574.i, %if.end154.i.for.inc.i_crit_edge ]
  %ack.9.ph.i = phi i8 [ 2, %rxrpc_input_dup_data.exit.i ], [ %ack.6.i, %if.end264.i.for.inc.i_crit_edge ], [ %ack.7.i, %if.end293.i ], [ 2, %if.end154.i.for.inc.i_crit_edge ]
  %ack_serial.9.ph.i = phi i32 [ %spec.select479.i, %rxrpc_input_dup_data.exit.i ], [ %ack_serial.6.i, %if.end264.i.for.inc.i_crit_edge ], [ %ack_serial.7.i, %if.end293.i ], [ %add94.i, %if.end154.i.for.inc.i_crit_edge ]
  %sp.2.ph.i = phi ptr [ %sp.0578.i, %rxrpc_input_dup_data.exit.i ], [ %spec.select482.i, %if.end264.i.for.inc.i_crit_edge ], [ %spec.select482.i, %if.end293.i ], [ %sp.0578.i, %if.end154.i.for.inc.i_crit_edge ]
  %skb.addr.2.ph.i = phi ptr [ %skb.addr.0579.i, %rxrpc_input_dup_data.exit.i ], [ %spec.select483.i, %if.end264.i.for.inc.i_crit_edge ], [ %spec.select483.i, %if.end293.i ], [ %skb.addr.0579.i, %if.end154.i.for.inc.i_crit_edge ]
  %inc303.i = add nuw nsw i32 %j.0577.i, 1
  %exitcond.not.i = icmp eq i32 %inc303.i, %conv79.i
  br i1 %exitcond.not.i, label %ack304.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ack304.i:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ack.9.ph.i)
  %tobool305.not.i = icmp eq i8 %ack.9.ph.i, 0
  br i1 %tobool305.not.i, label %ack304.i.if.else308.i_crit_edge, label %ack304.i.if.then306.i_crit_edge

ack304.i.if.then306.i_crit_edge:                  ; preds = %ack304.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then306.i

ack304.i.if.else308.i_crit_edge:                  ; preds = %ack304.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else308.i

if.then306.i:                                     ; preds = %ack304.i.if.then306.i_crit_edge, %if.then196.i, %if.then190.i.if.then306.i_crit_edge, %if.then82.i.if.then306.i_crit_edge
  %skb.addr.3550.i = phi ptr [ %skb.addr.2.ph.i, %ack304.i.if.then306.i_crit_edge ], [ %skb.addr.0579.i, %if.then190.i.if.then306.i_crit_edge ], [ %skb.addr.0579.i, %if.then196.i ], [ %skb, %if.then82.i.if.then306.i_crit_edge ]
  %ack_serial.10548.i = phi i32 [ %ack_serial.9.ph.i, %ack304.i.if.then306.i_crit_edge ], [ %add94.i, %if.then190.i.if.then306.i_crit_edge ], [ %add94.i, %if.then196.i ], [ %13, %if.then82.i.if.then306.i_crit_edge ]
  %ack.10547.i = phi i8 [ %ack.9.ph.i, %ack304.i.if.then306.i_crit_edge ], [ 4, %if.then190.i.if.then306.i_crit_edge ], [ 4, %if.then196.i ], [ 5, %if.then82.i.if.then306.i_crit_edge ]
  %immediate_ack.3.off0546.i = phi i1 [ %immediate_ack.2.off0.ph.i, %ack304.i.if.then306.i_crit_edge ], [ %immediate_ack.0.off0574.i, %if.then190.i.if.then306.i_crit_edge ], [ %immediate_ack.0.off0574.i, %if.then196.i ], [ false, %if.then82.i.if.then306.i_crit_edge ]
  tail call void @rxrpc_propose_ACK(ptr noundef %call, i8 noundef zeroext %ack.10547.i, i32 noundef %ack_serial.10548.i, i1 noundef zeroext %immediate_ack.3.off0546.i, i1 noundef zeroext true, i32 noundef 1) #9
  br label %if.end309.i

if.else308.i:                                     ; preds = %ack304.i.if.else308.i_crit_edge, %if.end88.i.if.else308.i_crit_edge
  %skb.addr.0.lcssa605.i = phi ptr [ %skb.addr.2.ph.i, %ack304.i.if.else308.i_crit_edge ], [ %skb, %if.end88.i.if.else308.i_crit_edge ]
  tail call void @rxrpc_propose_ACK(ptr noundef %call, i8 noundef zeroext 8, i32 noundef %13, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 1) #9
  br label %if.end309.i

if.end309.i:                                      ; preds = %if.else308.i, %if.then306.i
  %skb.addr.3549.i = phi ptr [ %skb.addr.0.lcssa605.i, %if.else308.i ], [ %skb.addr.3550.i, %if.then306.i ]
  %debug_id310.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %122 = ptrtoint ptr %debug_id310.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %debug_id310.i, align 4
  tail call fastcc void @trace_rxrpc_notify_socket(i32 noundef %123, i32 noundef %13) #9
  tail call void @rxrpc_notify_socket(ptr noundef %call) #9
  br label %unlock.i

unlock.i:                                         ; preds = %if.end309.i, %if.then.i499.i, %if.then152.i.unlock.i_crit_edge, %if.then.i494.i, %if.then143.i.unlock.i_crit_edge, %rxrpc_receiving_reply.exit.thread.i
  %skb.addr.4.i = phi ptr [ %skb.addr.3549.i, %if.end309.i ], [ %skb, %rxrpc_receiving_reply.exit.thread.i ], [ %skb.addr.0579.i, %if.then143.i.unlock.i_crit_edge ], [ %skb.addr.0579.i, %if.then.i494.i ], [ %skb.addr.0579.i, %if.then152.i.unlock.i_crit_edge ], [ %skb.addr.0579.i, %if.then.i499.i ]
  tail call void @_raw_spin_unlock(ptr noundef %input_lock.i) #9
  tail call void @rxrpc_free_skb(ptr noundef %skb.addr.4.i, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %124 = load i32, ptr @rxrpc_debug, align 4
  %and313.i = and i32 %124, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313.i)
  %tobool314.not.i = icmp eq i32 %and313.i, 0
  br i1 %tobool314.not.i, label %unlock.i.do.body52_crit_edge, label %do.end324.i, !prof !223

unlock.i.do.body52_crit_edge:                     ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

do.end324.i:                                      ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i516.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i516.i to ptr
  %task327.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task327.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task327.i, align 8
  %comm328.i = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 101
  %call330.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm328.i, ptr noundef nonnull @.str.35) #12
  br label %do.body52

sw.bb25:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %summary.i) #9
  %129 = call ptr @memcpy(ptr %summary.i, ptr @__const.rxrpc_input_ackall.summary, i32 16)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #9
  %130 = call ptr @memset(ptr %buf.i, i32 255, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %131 = load i32, ptr @rxrpc_debug, align 4
  %and.i92 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i93 = icmp eq i32 %and.i92, 0
  br i1 %tobool.not.i93, label %sw.bb25.do.end7.i_crit_edge, label %do.end.i97, !prof !223

sw.bb25.do.end7.i_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

do.end.i97:                                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  %132 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i94 = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i94 to ptr
  %task.i95 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %task.i95 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %task.i95, align 8
  %comm.i96 = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 101
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm.i96, ptr noundef nonnull @.str.61) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i97, %sw.bb25.do.end7.i_crit_edge
  %call8.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 28, ptr noundef nonnull %buf.i, i32 noundef 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i98 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i98, label %do.body10.i101, label %if.end32.i

do.body10.i101:                                   ; preds = %do.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %136 = load i32, ptr @rxrpc_debug, align 4
  %and11.i99 = and i32 %136, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i99)
  %tobool12.not.i100 = icmp eq i32 %and11.i99, 0
  br i1 %tobool12.not.i100, label %do.body10.i101.do.end31.i_crit_edge, label %do.end22.i104, !prof !223

do.body10.i101.do.end31.i_crit_edge:              ; preds = %do.body10.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31.i

do.end22.i104:                                    ; preds = %do.body10.i101
  call void @__sanitizer_cov_trace_pc() #11
  %137 = call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i274.i = and i32 %137, -16384
  %138 = inttoptr i32 %and.i274.i to ptr
  %task25.i102 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %task25.i102 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task25.i102, align 8
  %comm26.i103 = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 101
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %comm26.i103) #12
  br label %do.end31.i

do.end31.i:                                       ; preds = %do.end22.i104, %do.body10.i101.do.end31.i_crit_edge
  %call1.i.i105 = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.65, ptr noundef %call, i32 noundef 0, i32 noundef -5, i32 noundef -74) #9
  br i1 %call1.i.i105, label %if.then.i.i108, label %do.end31.i.rxrpc_input_ack.exit_crit_edge

do.end31.i.rxrpc_input_ack.exit_crit_edge:        ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_input_ack.exit

if.then.i.i108:                                   ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %events.i.i106 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  call void @_set_bit(i32 noundef 1, ptr noundef %events.i.i106) #9
  %call2.i.i107 = call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %rxrpc_input_ack.exit

if.end32.i:                                       ; preds = %do.end7.i
  %serial.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %141 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %serial.i, align 4
  %serial33.i = getelementptr inbounds %struct.rxrpc_ackpacket, ptr %buf.i, i32 0, i32 4
  %143 = ptrtoint ptr %serial33.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %serial33.i, align 4
  %firstPacket.i = getelementptr inbounds %struct.rxrpc_ackpacket, ptr %buf.i, i32 0, i32 2
  %145 = ptrtoint ptr %firstPacket.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %firstPacket.i, align 4
  %previousPacket.i = getelementptr inbounds %struct.rxrpc_ackpacket, ptr %buf.i, i32 0, i32 3
  %147 = ptrtoint ptr %previousPacket.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %previousPacket.i, align 4
  %sub.i109 = add i32 %146, -1
  %nAcks.i = getelementptr inbounds %struct.rxrpc_ackpacket, ptr %buf.i, i32 0, i32 6
  %149 = ptrtoint ptr %nAcks.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %nAcks.i, align 1
  %conv.i110 = zext i8 %150 to i32
  %reason.i = getelementptr inbounds %struct.rxrpc_ackpacket, ptr %buf.i, i32 0, i32 5
  %151 = ptrtoint ptr %reason.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %reason.i, align 4
  %153 = call i8 @llvm.umin.i8(i8 %152, i8 10) #9
  %154 = ptrtoint ptr %summary.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %summary.i, align 4
  call fastcc void @trace_rxrpc_rx_ack(ptr noundef %call, i32 noundef %142, i32 noundef %144, i32 noundef %146, i32 noundef %148, i8 noundef zeroext %153, i8 noundef zeroext %150) #9
  %155 = ptrtoint ptr %reason.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %reason.i, align 4
  %157 = zext i8 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %156, label %sw.default.i [
    i8 7, label %sw.bb.i
    i8 1, label %if.end32.i.sw.epilogthread-pre-split.i_crit_edge
  ]

if.end32.i.sw.epilogthread-pre-split.i_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split.i

sw.bb.i:                                          ; preds = %if.end32.i
  %acks_lost_ping.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 85
  %158 = ptrtoint ptr %acks_lost_ping.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %acks_lost_ping.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %144)
  %cmp.i.i111 = icmp eq i32 %159, %144
  br i1 %cmp.i.i111, label %if.then.i275.i, label %sw.bb.i.sw.epilogthread-pre-split.i_crit_edge

sw.bb.i.sw.epilogthread-pre-split.i_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split.i

if.then.i275.i:                                   ; preds = %sw.bb.i
  %lock.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 35
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #9
  %tx_hard_ack.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 54
  %160 = ptrtoint ptr %tx_hard_ack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_hard_ack.i.i.i, align 8
  %add.i.i.i = add i32 %161, 1
  %acks_lost_top.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 84
  %162 = ptrtoint ptr %acks_lost_top.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %acks_lost_top.i.i.i, align 4
  %sub.i.i.i.i = sub i32 %add.i.i.i, %163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end24.critedge.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i275.i
  %rxtx_annotations.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 53
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cleanup.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %resend.045.i.i.i = phi i8 [ 0, %for.body.lr.ph.i.i.i ], [ %resend.1.i.i.i, %cleanup.i.i.i.for.body.i.i.i_crit_edge ]
  %seq.044.i.i.i = phi i32 [ %add.i.i.i, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %cleanup.i.i.i.for.body.i.i.i_crit_edge ]
  %and.i.i.i = and i32 %seq.044.i.i.i, 63
  %164 = ptrtoint ptr %rxtx_annotations.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rxtx_annotations.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %165, i32 %and.i.i.i
  %166 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx.i.i.i, align 1
  %and3.i.i.i = and i8 %167, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %and3.i.i.i)
  %cmp.not.i.i.i = icmp eq i8 %and3.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.cleanup.i.i.i_crit_edge

for.body.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %168 = or i8 %167, 3
  %169 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %arrayidx.i.i.i, align 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.end.i.i.i, %for.body.i.i.i.cleanup.i.i.i_crit_edge
  %resend.1.i.i.i = phi i8 [ 1, %if.end.i.i.i ], [ %resend.045.i.i.i, %for.body.i.i.i.cleanup.i.i.i_crit_edge ]
  %inc.i.i.i = add i32 %seq.044.i.i.i, 1
  %sub.i40.i.i.i = sub i32 %inc.i.i.i, %163
  %cmp.i41.i.i.i = icmp slt i32 %sub.i40.i.i.i, 1
  br i1 %cmp.i41.i.i.i, label %cleanup.i.i.i.for.body.i.i.i_crit_edge, label %if.end17.i.i.i

cleanup.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

if.end17.i.i.i:                                   ; preds = %cleanup.i.i.i
  %170 = and i8 %resend.1.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %extract.t.not.i.i.i = icmp eq i8 %170, 0
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i) #9
  br i1 %extract.t.not.i.i.i, label %if.end17.i.i.i.sw.epilogthread-pre-split.i_crit_edge, label %land.lhs.true.i.i.i

if.end17.i.i.i.sw.epilogthread-pre-split.i_crit_edge: ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split.i

land.lhs.true.i.i.i:                              ; preds = %if.end17.i.i.i
  %events.i.i.i112 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  %call20.i.i.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %events.i.i.i112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %if.then22.i.i.i, label %land.lhs.true.i.i.i.sw.epilogthread-pre-split.i_crit_edge

land.lhs.true.i.i.i.sw.epilogthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split.i

if.then22.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call23.i.i.i = call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %sw.epilogthread-pre-split.i

if.end24.critedge.i.i.i:                          ; preds = %if.then.i275.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i) #9
  br label %sw.epilogthread-pre-split.i

sw.default.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp45.not.i = icmp eq i32 %144, 0
  br i1 %cmp45.not.i, label %sw.default.i.sw.epilog.i_crit_edge, label %sw.default.i.sw.epilogthread-pre-split.i_crit_edge

sw.default.i.sw.epilogthread-pre-split.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split.i

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilogthread-pre-split.i:                      ; preds = %sw.default.i.sw.epilogthread-pre-split.i_crit_edge, %if.end24.critedge.i.i.i, %if.then22.i.i.i, %land.lhs.true.i.i.i.sw.epilogthread-pre-split.i_crit_edge, %if.end17.i.i.i.sw.epilogthread-pre-split.i_crit_edge, %sw.bb.i.sw.epilogthread-pre-split.i_crit_edge, %if.end32.i.sw.epilogthread-pre-split.i_crit_edge
  %cmp20.not.i = phi i1 [ true, %sw.default.i.sw.epilogthread-pre-split.i_crit_edge ], [ false, %if.end32.i.sw.epilogthread-pre-split.i_crit_edge ], [ false, %if.end24.critedge.i.i.i ], [ false, %if.then22.i.i.i ], [ false, %land.lhs.true.i.i.i.sw.epilogthread-pre-split.i_crit_edge ], [ false, %if.end17.i.i.i.sw.epilogthread-pre-split.i_crit_edge ], [ false, %sw.bb.i.sw.epilogthread-pre-split.i_crit_edge ]
  %.sink329.i = phi i32 [ 0, %sw.default.i.sw.epilogthread-pre-split.i_crit_edge ], [ 4, %if.end32.i.sw.epilogthread-pre-split.i_crit_edge ], [ 3, %if.end24.critedge.i.i.i ], [ 3, %if.then22.i.i.i ], [ 3, %land.lhs.true.i.i.i.sw.epilogthread-pre-split.i_crit_edge ], [ 3, %if.end17.i.i.i.sw.epilogthread-pre-split.i_crit_edge ], [ 3, %sw.bb.i.sw.epilogthread-pre-split.i_crit_edge ]
  %.sink330.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %171 = ptrtoint ptr %.sink330.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %.sink330.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail.i)
  %rtt_avail.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 81
  %173 = ptrtoint ptr %rtt_avail.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %rtt_avail.i, align 8
  %175 = ptrtoint ptr %avail.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %avail.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !239
  br label %for.body.i160

for.body.i160:                                    ; preds = %for.inc.i169.for.body.i160_crit_edge, %sw.epilogthread-pre-split.i
  %i.074.i = phi i32 [ 0, %sw.epilogthread-pre-split.i ], [ %inc.i167, %for.inc.i169.for.body.i160_crit_edge ]
  %matched.0.off073.i = phi i1 [ false, %sw.epilogthread-pre-split.i ], [ %matched.2.off0.i, %for.inc.i169.for.body.i160_crit_edge ]
  %add.i158 = add nuw nsw i32 %i.074.i, 8
  %176 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %avail.i.0.avail.i.0.avail.0..i = load volatile i32, ptr %avail.i, align 4
  %177 = shl i32 256, %i.074.i
  %178 = and i32 %avail.i.0.avail.i.0.avail.0..i, %177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.i159 = icmp eq i32 %178, 0
  br i1 %tobool.not.i159, label %for.body.i160.for.inc.i169_crit_edge, label %if.end.i

for.body.i160.for.inc.i169_crit_edge:             ; preds = %for.body.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i169

if.end.i:                                         ; preds = %for.body.i160
  %arrayidx.i161 = getelementptr %struct.rxrpc_call, ptr %call, i32 0, i32 80, i32 %i.074.i
  %179 = ptrtoint ptr %arrayidx.i161 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %arrayidx.i161, align 8
  %arrayidx8.i = getelementptr %struct.rxrpc_call, ptr %call, i32 0, i32 79, i32 %i.074.i
  %181 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %182)
  %cmp9.i162 = icmp eq i32 %144, %182
  br i1 %cmp9.i162, label %if.then10.i163, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then10.i163:                                   ; preds = %if.end.i
  call void @_clear_bit(i32 noundef %add.i158, ptr noundef %rtt_avail.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @_set_bit(i32 noundef %i.074.i, ptr noundef %rtt_avail.i) #9
  br i1 %cmp20.not.i, label %if.else.i164, label %if.then21.i

if.then21.i:                                      ; preds = %if.then10.i163
  call void @__sanitizer_cov_trace_pc() #11
  call void @rxrpc_peer_add_rtt(ptr noundef %call, i32 noundef %.sink329.i, i32 noundef %i.074.i, i32 noundef %144, i32 noundef %142, i64 noundef %180, i64 noundef %172) #9
  br label %if.end23.i

if.else.i164:                                     ; preds = %if.then10.i163
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_rxrpc_rtt_rx(ptr noundef %call, i32 noundef 0, i32 noundef %i.074.i, i32 noundef %144, i32 noundef %144) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i164, %if.then21.i, %if.end.i.if.end23.i_crit_edge
  %matched.1.off0.i = phi i1 [ %matched.0.off073.i, %if.end.i.if.end23.i_crit_edge ], [ true, %if.else.i164 ], [ true, %if.then21.i ]
  %sub.i.i165 = sub i32 %144, %182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i165)
  %cmp.i.i166 = icmp sgt i32 %sub.i.i165, 0
  br i1 %cmp.i.i166, label %if.then25.i, label %if.end23.i.for.inc.i169_crit_edge

if.end23.i.for.inc.i169_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i169

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_rxrpc_rtt_rx(ptr noundef %call, i32 noundef 2, i32 noundef %i.074.i, i32 noundef %182, i32 noundef %144) #9
  call void @_clear_bit(i32 noundef %add.i158, ptr noundef %rtt_avail.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !241
  call void @_set_bit(i32 noundef %i.074.i, ptr noundef %rtt_avail.i) #9
  br label %for.inc.i169

for.inc.i169:                                     ; preds = %if.then25.i, %if.end23.i.for.inc.i169_crit_edge, %for.body.i160.for.inc.i169_crit_edge
  %matched.2.off0.i = phi i1 [ %matched.1.off0.i, %if.then25.i ], [ %matched.1.off0.i, %if.end23.i.for.inc.i169_crit_edge ], [ %matched.0.off073.i, %for.body.i160.for.inc.i169_crit_edge ]
  %inc.i167 = add nuw nsw i32 %i.074.i, 1
  %exitcond.not.i168 = icmp eq i32 %inc.i167, 4
  br i1 %exitcond.not.i168, label %for.end.i, label %for.inc.i169.for.body.i160_crit_edge

for.inc.i169.for.body.i160_crit_edge:             ; preds = %for.inc.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i160

for.end.i:                                        ; preds = %for.inc.i169
  br i1 %matched.2.off0.i, label %for.end.i.rxrpc_complete_rtt_probe.exit_crit_edge, label %if.then37.i

for.end.i.rxrpc_complete_rtt_probe.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_complete_rtt_probe.exit

if.then37.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_rxrpc_rtt_rx(ptr noundef %call, i32 noundef 1, i32 noundef 9, i32 noundef 0, i32 noundef %144) #9
  br label %rxrpc_complete_rtt_probe.exit

rxrpc_complete_rtt_probe.exit:                    ; preds = %if.then37.i, %for.end.i.rxrpc_complete_rtt_probe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail.i)
  %183 = ptrtoint ptr %reason.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %.pr.i = load i8, ptr %reason.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %rxrpc_complete_rtt_probe.exit, %sw.default.i.sw.epilog.i_crit_edge
  %184 = phi i8 [ %.pr.i, %rxrpc_complete_rtt_probe.exit ], [ %156, %sw.default.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %184)
  %cmp51.i = icmp eq i8 %184, 6
  br i1 %cmp51.i, label %do.body54.i, label %if.else.i115

do.body54.i:                                      ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %185 = load i32, ptr @rxrpc_debug, align 4
  %and55.i = and i32 %185, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %do.body54.i.do.end75.i_crit_edge, label %do.end66.i, !prof !223

do.body54.i.do.end75.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75.i

do.end66.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #11
  %186 = call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i276.i = and i32 %186, -16384
  %187 = inttoptr i32 %and.i276.i to ptr
  %task69.i = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %task69.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %task69.i, align 8
  %comm70.i = getelementptr inbounds %struct.task_struct, ptr %189, i32 0, i32 101
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %comm70.i, i32 noundef %142) #12
  br label %do.end75.i

do.end75.i:                                       ; preds = %do.end66.i, %do.body54.i.do.end75.i_crit_edge
  call void @rxrpc_propose_ACK(ptr noundef %call, i8 noundef zeroext 7, i32 noundef %142, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 9) #9
  br label %if.end82.i

if.else.i115:                                     ; preds = %sw.epilog.i
  %flags.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %190 = ptrtoint ptr %flags.i114 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %flags.i114, align 1
  %192 = and i8 %191, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool79.not.i = icmp eq i8 %192, 0
  br i1 %tobool79.not.i, label %if.else.i115.if.end82.i_crit_edge, label %if.then80.i

if.else.i115.if.end82.i_crit_edge:                ; preds = %if.else.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

if.then80.i:                                      ; preds = %if.else.i115
  call void @__sanitizer_cov_trace_pc() #11
  call void @rxrpc_propose_ACK(ptr noundef %call, i8 noundef zeroext 1, i32 noundef %142, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 8) #9
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then80.i, %if.else.i115.if.end82.i_crit_edge, %do.end75.i
  %ackr_first_seq.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 75
  %193 = ptrtoint ptr %ackr_first_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %ackr_first_seq.i.i, align 8
  %sub.i.i.i = sub i32 %146, %194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end82.i.if.end85.i_crit_edge, label %if.end.i.i116

if.end82.i.if.end85.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

if.end.i.i116:                                    ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i18.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i18.i.i, label %if.end.i.i116.if.then84.i_crit_edge, label %if.end4.i.i

if.end.i.i116.if.then84.i_crit_edge:              ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84.i

if.end4.i.i:                                      ; preds = %if.end.i.i116
  %ackr_prev_seq.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 76
  %195 = ptrtoint ptr %ackr_prev_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %ackr_prev_seq.i.i, align 4
  %sub.i19.i.i = sub i32 %148, %196
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i19.i.i)
  %cmp.i20.i.i = icmp sgt i32 %sub.i19.i.i, -1
  br i1 %cmp.i20.i.i, label %if.end4.i.i.if.end85.i_crit_edge, label %rxrpc_is_ack_valid.exit.i

if.end4.i.i.if.end85.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

rxrpc_is_ack_valid.exit.i:                        ; preds = %if.end4.i.i
  %tx_winsize.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 69
  %197 = ptrtoint ptr %tx_winsize.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %tx_winsize.i.i, align 1
  %conv.i.i = zext i8 %198 to i32
  %199 = add i32 %194, %conv.i.i
  %sub.i21.i.i = sub i32 %148, %199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i21.i.i)
  %cmp.i22.i.i = icmp slt i32 %sub.i21.i.i, 0
  br i1 %cmp.i22.i.i, label %rxrpc_is_ack_valid.exit.i.if.end85.i_crit_edge, label %rxrpc_is_ack_valid.exit.i.if.then84.i_crit_edge

rxrpc_is_ack_valid.exit.i.if.then84.i_crit_edge:  ; preds = %rxrpc_is_ack_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84.i

rxrpc_is_ack_valid.exit.i.if.end85.i_crit_edge:   ; preds = %rxrpc_is_ack_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

if.then84.i:                                      ; preds = %rxrpc_is_ack_valid.exit.i.if.then84.i_crit_edge, %if.end.i.i116.if.then84.i_crit_edge
  %debug_id.i117 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %200 = ptrtoint ptr %debug_id.i117 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %debug_id.i117, align 4
  %ackr_prev_seq.i118 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 76
  %202 = ptrtoint ptr %ackr_prev_seq.i118 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %ackr_prev_seq.i118, align 4
  call fastcc void @trace_rxrpc_rx_discard_ack(i32 noundef %201, i32 noundef %142, i32 noundef %146, i32 noundef %194, i32 noundef %148, i32 noundef %203) #9
  br label %rxrpc_input_ack.exit

if.end85.i:                                       ; preds = %rxrpc_is_ack_valid.exit.i.if.end85.i_crit_edge, %if.end4.i.i.if.end85.i_crit_edge, %if.end82.i.if.end85.i_crit_edge
  %204 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %buf.i, align 4
  %len.i119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %205 = ptrtoint ptr %len.i119 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %len.i119, align 4
  %add88.i = add nuw nsw i32 %conv.i110, 65
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %add88.i)
  %cmp89.not.i = icmp ult i32 %206, %add88.i
  br i1 %cmp89.not.i, label %if.end85.i.if.end95.i_crit_edge, label %land.lhs.true.i120

if.end85.i.if.end95.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

land.lhs.true.i120:                               ; preds = %if.end85.i
  %add87.i = add nuw nsw i32 %conv.i110, 49
  %call91.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %add87.i, ptr noundef nonnull %buf.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %cmp92.i = icmp slt i32 %call91.i, 0
  br i1 %cmp92.i, label %if.then94.i, label %land.lhs.true.i120.if.end95.i_crit_edge

land.lhs.true.i120.if.end95.i_crit_edge:          ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

if.then94.i:                                      ; preds = %land.lhs.true.i120
  %call1.i277.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.69, ptr noundef %call, i32 noundef 0, i32 noundef -5, i32 noundef -74) #9
  br i1 %call1.i277.i, label %if.then.i280.i, label %if.then94.i.rxrpc_input_ack.exit_crit_edge

if.then94.i.rxrpc_input_ack.exit_crit_edge:       ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_input_ack.exit

if.then.i280.i:                                   ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #11
  %events.i278.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  call void @_set_bit(i32 noundef 1, ptr noundef %events.i278.i) #9
  %call2.i279.i = call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %rxrpc_input_ack.exit

if.end95.i:                                       ; preds = %land.lhs.true.i120.if.end95.i_crit_edge, %if.end85.i.if.end95.i_crit_edge
  %input_lock.i121 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 72
  call void @_raw_spin_lock(ptr noundef %input_lock.i121) #9
  %207 = ptrtoint ptr %ackr_first_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %ackr_first_seq.i.i, align 8
  %sub.i.i284.i = sub i32 %146, %208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i284.i)
  %cmp.i.i285.i = icmp sgt i32 %sub.i.i284.i, 0
  br i1 %cmp.i.i285.i, label %if.end95.i.if.end101.i_crit_edge, label %if.end.i287.i

if.end95.i.if.end101.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101.i

if.end.i287.i:                                    ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i284.i)
  %cmp.i18.i286.i = icmp slt i32 %sub.i.i284.i, 0
  br i1 %cmp.i18.i286.i, label %if.end.i287.i.if.then97.i_crit_edge, label %if.end4.i291.i

if.end.i287.i.if.then97.i_crit_edge:              ; preds = %if.end.i287.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97.i

if.end4.i291.i:                                   ; preds = %if.end.i287.i
  %ackr_prev_seq.i288.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 76
  %209 = ptrtoint ptr %ackr_prev_seq.i288.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %ackr_prev_seq.i288.i, align 4
  %sub.i19.i289.i = sub i32 %148, %210
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i19.i289.i)
  %cmp.i20.i290.i = icmp sgt i32 %sub.i19.i289.i, -1
  br i1 %cmp.i20.i290.i, label %if.end4.i291.i.if.end101.i_crit_edge, label %rxrpc_is_ack_valid.exit298.i

if.end4.i291.i.if.end101.i_crit_edge:             ; preds = %if.end4.i291.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101.i

rxrpc_is_ack_valid.exit298.i:                     ; preds = %if.end4.i291.i
  %tx_winsize.i292.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 69
  %211 = ptrtoint ptr %tx_winsize.i292.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %tx_winsize.i292.i, align 1
  %conv.i293.i = zext i8 %212 to i32
  %213 = add i32 %208, %conv.i293.i
  %sub.i21.i294.i = sub i32 %148, %213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i21.i294.i)
  %cmp.i22.i295.i = icmp slt i32 %sub.i21.i294.i, 0
  br i1 %cmp.i22.i295.i, label %rxrpc_is_ack_valid.exit298.i.if.end101.i_crit_edge, label %rxrpc_is_ack_valid.exit298.i.if.then97.i_crit_edge

rxrpc_is_ack_valid.exit298.i.if.then97.i_crit_edge: ; preds = %rxrpc_is_ack_valid.exit298.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97.i

rxrpc_is_ack_valid.exit298.i.if.end101.i_crit_edge: ; preds = %rxrpc_is_ack_valid.exit298.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101.i

if.then97.i:                                      ; preds = %rxrpc_is_ack_valid.exit298.i.if.then97.i_crit_edge, %if.end.i287.i.if.then97.i_crit_edge
  %debug_id98.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %214 = ptrtoint ptr %debug_id98.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %debug_id98.i, align 4
  %ackr_prev_seq100.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 76
  %216 = ptrtoint ptr %ackr_prev_seq100.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %ackr_prev_seq100.i, align 4
  call fastcc void @trace_rxrpc_rx_discard_ack(i32 noundef %215, i32 noundef %142, i32 noundef %146, i32 noundef %208, i32 noundef %148, i32 noundef %217) #9
  br label %out.i

if.end101.i:                                      ; preds = %rxrpc_is_ack_valid.exit298.i.if.end101.i_crit_edge, %if.end4.i291.i.if.end101.i_crit_edge, %if.end95.i.if.end101.i_crit_edge
  %218 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %218, align 8
  %acks_latest_ts.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 82
  %221 = ptrtoint ptr %acks_latest_ts.i to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %220, ptr %acks_latest_ts.i, align 8
  %222 = ptrtoint ptr %ackr_first_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %146, ptr %ackr_first_seq.i.i, align 8
  %ackr_prev_seq103.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 76
  %223 = ptrtoint ptr %ackr_prev_seq103.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %148, ptr %ackr_prev_seq103.i, align 4
  %224 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool105.not.i = icmp eq i32 %225, 0
  br i1 %tobool105.not.i, label %if.end101.i.if.end107.i_crit_edge, label %if.then106.i

if.end101.i.if.end107.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107.i

if.then106.i:                                     ; preds = %if.end101.i
  %226 = ptrtoint ptr %previousPacket.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %previousPacket.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %228 = load i32, ptr @rxrpc_debug, align 4
  %and.i299.i = and i32 %228, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i299.i)
  %tobool.not.i.i122 = icmp eq i32 %and.i299.i, 0
  br i1 %tobool.not.i.i122, label %if.then106.i.do.end8.i.i_crit_edge, label %do.end.i.i, !prof !223

if.then106.i.do.end8.i.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i.i

do.end.i.i:                                       ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #11
  %229 = call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i300.i = and i32 %229, -16384
  %230 = inttoptr i32 %and.i.i300.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %230, i32 0, i32 2
  %231 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %232, i32 0, i32 101
  %233 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %serial.i, align 4
  %235 = ptrtoint ptr %firstPacket.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %firstPacket.i, align 4
  %237 = ptrtoint ptr %serial33.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %serial33.i, align 4
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %comm.i.i, i32 noundef %234, i32 noundef %225, i32 noundef %236, i32 noundef %227, i32 noundef %238) #12
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %do.end.i.i, %if.then106.i.do.end8.i.i_crit_edge
  %239 = call i32 @llvm.umin.i32(i32 %227, i32 63) #9
  %tx_winsize.i301.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 69
  %240 = ptrtoint ptr %tx_winsize.i301.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %tx_winsize.i301.i, align 1
  %conv.i302.i = zext i8 %241 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %239, i32 %conv.i302.i)
  %cmp11.not.i.i = icmp eq i32 %239, %conv.i302.i
  br i1 %cmp11.not.i.i, label %do.end8.i.i.if.end25.i.i_crit_edge, label %if.then13.i.i

do.end8.i.i.if.end25.i.i_crit_edge:               ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.then13.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %239, i32 %conv.i302.i)
  %cmp16.i.i = icmp ugt i32 %239, %conv.i302.i
  %242 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %serial.i, align 4
  call fastcc void @trace_rxrpc_rx_rwind_change(ptr noundef %call, i32 noundef %243, i32 noundef %239, i1 noundef zeroext %cmp16.i.i) #9
  %conv23.i.i = trunc i32 %239 to i8
  %244 = ptrtoint ptr %tx_winsize.i301.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv23.i.i, ptr %tx_winsize.i301.i, align 1
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then13.i.i, %do.end8.i.i.if.end25.i.i_crit_edge
  %wake.1.off0.i.i = phi i1 [ %cmp16.i.i, %if.then13.i.i ], [ false, %do.end8.i.i.if.end25.i.i_crit_edge ]
  %cong_ssthresh.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 59
  %245 = ptrtoint ptr %cong_ssthresh.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %cong_ssthresh.i.i, align 4
  %conv26.i.i = zext i8 %246 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %239, i32 %conv26.i.i)
  %cmp27.i.i = icmp ult i32 %239, %conv26.i.i
  br i1 %cmp27.i.i, label %if.then29.i.i, label %if.end25.i.i.if.end32.i.i_crit_edge

if.end25.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

if.then29.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv30.i.i = trunc i32 %239 to i8
  %247 = ptrtoint ptr %cong_ssthresh.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv30.i.i, ptr %cong_ssthresh.i.i, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then29.i.i, %if.end25.i.i.if.end32.i.i_crit_edge
  %248 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %buf.i, align 4
  %250 = ptrtoint ptr %firstPacket.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %firstPacket.i, align 4
  %252 = call i32 @llvm.umin.i32(i32 %249, i32 %251) #9
  %peer38.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %253 = ptrtoint ptr %peer38.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %peer38.i.i, align 4
  %maxdata.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %254, i32 0, i32 13
  %255 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %maxdata.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %252, i32 %256)
  %cmp39.i.i = icmp ult i32 %252, %256
  br i1 %cmp39.i.i, label %if.then41.i.i, label %if.end32.i.i.if.end70.i.i_crit_edge

if.end32.i.i.if.end70.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i.i

if.then41.i.i:                                    ; preds = %if.end32.i.i
  %lock.i.i123 = getelementptr inbounds %struct.rxrpc_peer, ptr %254, i32 0, i32 10
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i123) #9
  %257 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %252, ptr %maxdata.i.i, align 4
  %hdrsize.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %254, i32 0, i32 14
  %258 = ptrtoint ptr %hdrsize.i.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %hdrsize.i.i, align 8
  %conv43.i.i = zext i16 %259 to i32
  %add.i.i124 = add i32 %252, %conv43.i.i
  %mtu44.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %254, i32 0, i32 12
  %260 = ptrtoint ptr %mtu44.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %add.i.i124, ptr %mtu44.i.i, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i123) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %261 = load i32, ptr @rxrpc_debug, align 4
  %and47.i.i = and i32 %261, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.then41.i.i.if.end70.i.i_crit_edge, label %do.end58.i.i, !prof !223

if.then41.i.i.if.end70.i.i_crit_edge:             ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i.i

do.end58.i.i:                                     ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %262 = call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i107.i.i = and i32 %262, -16384
  %263 = inttoptr i32 %and.i107.i.i to ptr
  %task61.i.i = getelementptr inbounds %struct.thread_info, ptr %263, i32 0, i32 2
  %264 = ptrtoint ptr %task61.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %task61.i.i, align 8
  %comm62.i.i = getelementptr inbounds %struct.task_struct, ptr %265, i32 0, i32 101
  %266 = ptrtoint ptr %mtu44.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %mtu44.i.i, align 8
  %268 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %maxdata.i.i, align 4
  %call66.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %comm62.i.i, i32 noundef %267, i32 noundef %269) #12
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %do.end58.i.i, %if.then41.i.i.if.end70.i.i_crit_edge, %if.end32.i.i.if.end70.i.i_crit_edge
  br i1 %wake.1.off0.i.i, label %if.then72.i.i, label %if.end70.i.i.if.end107.i_crit_edge

if.end70.i.i.if.end107.i_crit_edge:               ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107.i

if.then72.i.i:                                    ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %waitq.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  call void @__wake_up(ptr noundef %waitq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then72.i.i, %if.end70.i.i.if.end107.i_crit_edge, %if.end101.i.if.end107.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp108.i = icmp eq i32 %146, 0
  br i1 %cmp108.i, label %if.then110.i, label %do.end114.i

if.then110.i:                                     ; preds = %if.end107.i
  %call1.i303.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.70, ptr noundef %call, i32 noundef 0, i32 noundef -5, i32 noundef -74) #9
  br i1 %call1.i303.i, label %if.then.i306.i, label %if.then110.i.out.i_crit_edge

if.then110.i.out.i_crit_edge:                     ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i306.i:                                   ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #11
  %events.i304.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  call void @_set_bit(i32 noundef 1, ptr noundef %events.i304.i) #9
  %call2.i305.i = call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %out.i

do.end114.i:                                      ; preds = %if.end107.i
  %state.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %270 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load volatile i32, ptr %state.i, align 8
  %272 = zext i32 %271 to i64
  call void @__sanitizer_cov_trace_switch(i64 %272, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %271, label %do.end114.i.out.i_crit_edge [
    i32 2, label %do.end114.i.sw.epilog118.i_crit_edge
    i32 3, label %do.end114.i.sw.epilog118.i_crit_edge271
    i32 9, label %do.end114.i.sw.epilog118.i_crit_edge272
    i32 10, label %do.end114.i.sw.epilog118.i_crit_edge273
  ]

do.end114.i.sw.epilog118.i_crit_edge273:          ; preds = %do.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog118.i

do.end114.i.sw.epilog118.i_crit_edge272:          ; preds = %do.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog118.i

do.end114.i.sw.epilog118.i_crit_edge271:          ; preds = %do.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog118.i

do.end114.i.sw.epilog118.i_crit_edge:             ; preds = %do.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog118.i

do.end114.i.out.i_crit_edge:                      ; preds = %do.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

sw.epilog118.i:                                   ; preds = %do.end114.i.sw.epilog118.i_crit_edge, %do.end114.i.sw.epilog118.i_crit_edge271, %do.end114.i.sw.epilog118.i_crit_edge272, %do.end114.i.sw.epilog118.i_crit_edge273
  %tx_hard_ack.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 54
  %273 = ptrtoint ptr %tx_hard_ack.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %tx_hard_ack.i, align 8
  %sub.i.i125 = sub i32 %sub.i109, %274
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i125)
  %cmp.i309.i = icmp slt i32 %sub.i.i125, 0
  br i1 %cmp.i309.i, label %sw.epilog118.i.if.then123.i_crit_edge, label %lor.lhs.false.i

sw.epilog118.i.if.then123.i_crit_edge:            ; preds = %sw.epilog118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then123.i

lor.lhs.false.i:                                  ; preds = %sw.epilog118.i
  %tx_top.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 55
  %275 = ptrtoint ptr %tx_top.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %tx_top.i, align 4
  %sub.i310.i = sub i32 %sub.i109, %276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i310.i)
  %cmp.i311.i = icmp sgt i32 %sub.i310.i, 0
  br i1 %cmp.i311.i, label %lor.lhs.false.i.if.then123.i_crit_edge, label %if.end124.i

lor.lhs.false.i.if.then123.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then123.i

if.then123.i:                                     ; preds = %lor.lhs.false.i.if.then123.i_crit_edge, %sw.epilog118.i.if.then123.i_crit_edge
  %call1.i312.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.71, ptr noundef %call, i32 noundef 0, i32 noundef -5, i32 noundef -74) #9
  br i1 %call1.i312.i, label %if.then.i315.i, label %if.then123.i.out.i_crit_edge

if.then123.i.out.i_crit_edge:                     ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i315.i:                                   ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #11
  %events.i313.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  call void @_set_bit(i32 noundef 1, ptr noundef %events.i313.i) #9
  %call2.i314.i = call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %out.i

if.end124.i:                                      ; preds = %lor.lhs.false.i
  %sub126.i = sub i32 %276, %sub.i109
  call void @__sanitizer_cov_trace_cmp4(i32 %sub126.i, i32 %conv.i110)
  %cmp127.i = icmp ult i32 %sub126.i, %conv.i110
  br i1 %cmp127.i, label %if.then129.i, label %if.end130.i

if.then129.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rxrpc_proto_abort(ptr noundef nonnull @.str.72, ptr noundef %call, i32 noundef 0) #9
  br label %out.i

if.end130.i:                                      ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i109, i32 %274)
  %cmp.i319.not.i = icmp eq i32 %sub.i109, %274
  br i1 %cmp.i319.not.i, label %if.end130.i.if.end138.i_crit_edge, label %if.then133.i

if.end130.i.if.end138.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.i

if.then133.i:                                     ; preds = %if.end130.i
  %call134.i = call fastcc zeroext i1 @rxrpc_rotate_tx_window(ptr noundef %call, i32 noundef %sub.i109, ptr noundef nonnull %summary.i) #9
  br i1 %call134.i, label %if.then135.i126, label %if.then133.i.if.end138.i_crit_edge

if.then133.i.if.end138.i_crit_edge:               ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.i

if.then135.i126:                                  ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #11
  %call136.i = call fastcc zeroext i1 @rxrpc_end_tx_phase(ptr noundef %call, i1 noundef zeroext false, ptr noundef nonnull @.str.73) #9
  br label %out.i

if.end138.i:                                      ; preds = %if.then133.i.if.end138.i_crit_edge, %if.end130.i.if.end138.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %cmp139.not.i = icmp eq i8 %150, 0
  br i1 %cmp139.not.i, label %if.end138.i.if.end149.i_crit_edge, label %if.then141.i

if.end138.i.if.end149.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i

if.then141.i:                                     ; preds = %if.end138.i
  %call143.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 46, ptr noundef nonnull %buf.i, i32 noundef %conv.i110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i)
  %cmp144.i = icmp slt i32 %call143.i, 0
  br i1 %cmp144.i, label %if.then146.i, label %if.end147.i

if.then146.i:                                     ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rxrpc_proto_abort(ptr noundef nonnull @.str.74, ptr noundef %call, i32 noundef 0) #9
  br label %out.i

if.end147.i:                                      ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rxrpc_input_soft_acks(ptr noundef %call, ptr noundef nonnull %buf.i, i32 noundef %146, i32 noundef %conv.i110, ptr noundef nonnull %summary.i) #9
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.end147.i, %if.end138.i.if.end149.i_crit_edge
  %rxtx_annotations.i127 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 53
  %277 = ptrtoint ptr %rxtx_annotations.i127 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %rxtx_annotations.i127, align 4
  %279 = ptrtoint ptr %tx_top.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %tx_top.i, align 4
  %and151.i = and i32 %280, 63
  %arrayidx.i128 = getelementptr i8, ptr %278, i32 %and151.i
  %281 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx.i128, align 1
  %283 = and i8 %282, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool154.not.i = icmp eq i8 %283, 0
  br i1 %tobool154.not.i, label %if.end149.i.if.end166.i_crit_edge, label %land.lhs.true155.i

if.end149.i.if.end166.i_crit_edge:                ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166.i

land.lhs.true155.i:                               ; preds = %if.end149.i
  %nr_acks156.i = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary.i, i32 0, i32 1
  %284 = ptrtoint ptr %nr_acks156.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %nr_acks156.i, align 1
  %conv157.i = zext i8 %285 to i32
  %sub159.i = sub i32 %280, %sub.i109
  call void @__sanitizer_cov_trace_cmp4(i32 %sub159.i, i32 %conv157.i)
  %cmp160.i = icmp eq i32 %sub159.i, %conv157.i
  br i1 %cmp160.i, label %land.lhs.true162.i, label %land.lhs.true155.i.if.end166.i_crit_edge

land.lhs.true155.i.if.end166.i_crit_edge:         ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166.i

land.lhs.true162.i:                               ; preds = %land.lhs.true155.i
  %flags.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %286 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load volatile i32, ptr %flags.i.i.i, align 4
  %288 = and i32 %287, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool.i.not.i.i = icmp eq i32 %288, 0
  br i1 %tobool.i.not.i.i, label %if.then165.i, label %land.lhs.true162.i.if.end166.i_crit_edge

land.lhs.true162.i.if.end166.i_crit_edge:         ; preds = %land.lhs.true162.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166.i

if.then165.i:                                     ; preds = %land.lhs.true162.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @rxrpc_propose_ACK(ptr noundef %call, i8 noundef zeroext 6, i32 noundef %142, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 5) #9
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.then165.i, %land.lhs.true162.i.if.end166.i_crit_edge, %land.lhs.true155.i.if.end166.i_crit_edge, %if.end149.i.if.end166.i_crit_edge
  call fastcc void @rxrpc_congestion_management(ptr noundef %call, ptr noundef %skb, ptr noundef nonnull %summary.i, i32 noundef %144) #9
  br label %out.i

out.i:                                            ; preds = %if.end166.i, %if.then146.i, %if.then135.i126, %if.then129.i, %if.then.i315.i, %if.then123.i.out.i_crit_edge, %do.end114.i.out.i_crit_edge, %if.then.i306.i, %if.then110.i.out.i_crit_edge, %if.then97.i
  call void @_raw_spin_unlock(ptr noundef %input_lock.i121) #9
  br label %rxrpc_input_ack.exit

rxrpc_input_ack.exit:                             ; preds = %out.i, %if.then.i280.i, %if.then94.i.rxrpc_input_ack.exit_crit_edge, %if.then84.i, %if.then.i.i108, %do.end31.i.rxrpc_input_ack.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %summary.i) #9
  br label %sw.epilog

do.body27:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %289 = load i32, ptr @rxrpc_debug, align 4
  %and28 = and i32 %289, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.sw.epilog_crit_edge, label %do.end39, !prof !223

do.body27.sw.epilog_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end39:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %290 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i129 = and i32 %290, -16384
  %291 = inttoptr i32 %and.i129 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %291, i32 0, i32 2
  %292 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %task42, align 8
  %comm43 = getelementptr inbounds %struct.task_struct, ptr %293, i32 0, i32 101
  %serial = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %294 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %serial, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %comm43, i32 noundef %295) #12
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wtmp.i) #9
  %296 = ptrtoint ptr %wtmp.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 -1, ptr %wtmp.i, align 4, !annotation !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %297 = load i32, ptr @rxrpc_debug, align 4
  %and.i130 = and i32 %297, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  br i1 %tobool.not.i131, label %sw.bb50.do.end7.i139_crit_edge, label %do.end.i136, !prof !223

sw.bb50.do.end7.i139_crit_edge:                   ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i139

do.end.i136:                                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  %298 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i132 = and i32 %298, -16384
  %299 = inttoptr i32 %and.i.i132 to ptr
  %task.i133 = getelementptr inbounds %struct.thread_info, ptr %299, i32 0, i32 2
  %300 = ptrtoint ptr %task.i133 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %task.i133, align 8
  %comm.i134 = getelementptr inbounds %struct.task_struct, ptr %301, i32 0, i32 101
  %call5.i135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm.i134, ptr noundef nonnull @.str.81) #12
  br label %do.end7.i139

do.end7.i139:                                     ; preds = %do.end.i136, %sw.bb50.do.end7.i139_crit_edge
  %len.i137 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %302 = ptrtoint ptr %len.i137 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %len.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %303)
  %cmp.i138 = icmp ugt i32 %303, 3
  br i1 %cmp.i138, label %land.lhs.true.i141, label %do.end7.i139.if.end11.i_crit_edge

do.end7.i139.if.end11.i_crit_edge:                ; preds = %do.end7.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

land.lhs.true.i141:                               ; preds = %do.end7.i139
  %call8.i140 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 28, ptr noundef nonnull %wtmp.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i140)
  %cmp9.i = icmp sgt i32 %call8.i140, -1
  br i1 %cmp9.i, label %if.then10.i, label %land.lhs.true.i141.if.end11.i_crit_edge

land.lhs.true.i141.if.end11.i_crit_edge:          ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then10.i:                                      ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #11
  %304 = ptrtoint ptr %wtmp.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %wtmp.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %land.lhs.true.i141.if.end11.i_crit_edge, %do.end7.i139.if.end11.i_crit_edge
  %abort_code.0.i = phi i32 [ %305, %if.then10.i ], [ -1, %land.lhs.true.i141.if.end11.i_crit_edge ], [ -1, %do.end7.i139.if.end11.i_crit_edge ]
  %serial.i142 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %306 = ptrtoint ptr %serial.i142 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %serial.i142, align 4
  call fastcc void @trace_rxrpc_rx_abort(ptr noundef %call, i32 noundef %307, i32 noundef %abort_code.0.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %308 = load i32, ptr @rxrpc_debug, align 4
  %and13.i = and i32 %308, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.rxrpc_input_abort.exit_crit_edge, label %do.end24.i, !prof !223

if.end11.i.rxrpc_input_abort.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_input_abort.exit

do.end24.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %309 = call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i43.i = and i32 %309, -16384
  %310 = inttoptr i32 %and.i43.i to ptr
  %task27.i = getelementptr inbounds %struct.thread_info, ptr %310, i32 0, i32 2
  %311 = ptrtoint ptr %task27.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %task27.i, align 8
  %comm28.i = getelementptr inbounds %struct.task_struct, ptr %312, i32 0, i32 101
  %313 = ptrtoint ptr %serial.i142 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %serial.i142, align 4
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %comm28.i, i32 noundef %314, i32 noundef %abort_code.0.i) #12
  br label %rxrpc_input_abort.exit

rxrpc_input_abort.exit:                           ; preds = %do.end24.i, %if.end11.i.rxrpc_input_abort.exit_crit_edge
  %call36.i = call zeroext i1 @rxrpc_set_call_completion(ptr noundef %call, i32 noundef 1, i32 noundef %abort_code.0.i, i32 noundef -103) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wtmp.i) #9
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %summary.i143) #9
  %315 = call ptr @memcpy(ptr %summary.i143, ptr @__const.rxrpc_input_ackall.summary, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %316 = load i32, ptr @rxrpc_debug, align 4
  %and.i144 = and i32 %316, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool.not.i145 = icmp eq i32 %and.i144, 0
  br i1 %tobool.not.i145, label %sw.bb51.do.end7.i155_crit_edge, label %do.end.i151, !prof !223

sw.bb51.do.end7.i155_crit_edge:                   ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i155

do.end.i151:                                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  %317 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i146 = and i32 %317, -16384
  %318 = inttoptr i32 %and.i.i146 to ptr
  %task.i147 = getelementptr inbounds %struct.thread_info, ptr %318, i32 0, i32 2
  %319 = ptrtoint ptr %task.i147 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %task.i147, align 8
  %comm.i148 = getelementptr inbounds %struct.task_struct, ptr %320, i32 0, i32 101
  %serial.i149 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %321 = ptrtoint ptr %serial.i149 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %serial.i149, align 4
  %call5.i150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %comm.i148, i32 noundef %322) #12
  br label %do.end7.i155

do.end7.i155:                                     ; preds = %do.end.i151, %sw.bb51.do.end7.i155_crit_edge
  %input_lock.i152 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 72
  tail call void @_raw_spin_lock(ptr noundef %input_lock.i152) #9
  %tx_top.i153 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 55
  %323 = ptrtoint ptr %tx_top.i153 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %tx_top.i153, align 4
  %call8.i154 = call fastcc zeroext i1 @rxrpc_rotate_tx_window(ptr noundef %call, i32 noundef %324, ptr noundef nonnull %summary.i143) #9
  br i1 %call8.i154, label %if.then9.i, label %do.end7.i155.rxrpc_input_ackall.exit_crit_edge

do.end7.i155.rxrpc_input_ackall.exit_crit_edge:   ; preds = %do.end7.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_input_ackall.exit

if.then9.i:                                       ; preds = %do.end7.i155
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = tail call fastcc zeroext i1 @rxrpc_end_tx_phase(ptr noundef %call, i1 noundef zeroext false, ptr noundef nonnull @.str.87) #9
  br label %rxrpc_input_ackall.exit

rxrpc_input_ackall.exit:                          ; preds = %if.then9.i, %do.end7.i155.rxrpc_input_ackall.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %input_lock.i152) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %summary.i143) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %rxrpc_input_ackall.exit, %rxrpc_input_abort.exit, %do.end39, %do.body27.sw.epilog_crit_edge, %rxrpc_input_ack.exit, %if.end24.sw.epilog_crit_edge
  call void @rxrpc_free_skb(ptr noundef %skb, i32 noundef 1) #9
  br label %do.body52

do.body52:                                        ; preds = %sw.epilog, %do.end324.i, %unlock.i.do.body52_crit_edge, %if.then43.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %325 = load i32, ptr @rxrpc_debug, align 4
  %and53 = and i32 %325, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.do.end73_crit_edge, label %do.end64, !prof !223

do.body52.do.end73_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

do.end64:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %326 = call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i157 = and i32 %326, -16384
  %327 = inttoptr i32 %and.i157 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %327, i32 0, i32 2
  %328 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %task67, align 8
  %comm68 = getelementptr inbounds %struct.task_struct, ptr %329, i32 0, i32 101
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %comm68, ptr noundef nonnull @.str.27) #12
  br label %do.end73

do.end73:                                         ; preds = %do.end64, %do.body52.do.end73_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_done(i32 noundef %result, i32 noundef %abort_code) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_done, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_done, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !243
  %call42 = tail call i32 @__traceiter_rxrpc_rx_done(ptr noundef null, i32 noundef %result, i32 noundef %abort_code) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !244
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !223

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_rxrpc_rx_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rx_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 694, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
define internal fastcc void @trace_rxrpc_abort(ptr noundef %why, i32 noundef %cid, i32 noundef %call_id, i32 noundef %seq, i32 noundef %abort_code, i32 noundef %error) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_abort, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !245
  %call42 = tail call i32 @__traceiter_rxrpc_abort(ptr noundef null, i32 noundef 0, ptr noundef %why, i32 noundef %cid, i32 noundef %call_id, i32 noundef %seq, i32 noundef %abort_code, i32 noundef %error) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !246
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !223

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_rxrpc_abort.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_abort.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 726, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_eproto(i32 noundef %serial, ptr noundef %why) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_eproto, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !247
  %call43 = tail call i32 @__traceiter_rxrpc_rx_eproto(ptr noundef null, ptr noundef null, i32 noundef %serial, ptr noundef %why) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !248
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !223

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_rxrpc_rx_eproto.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rx_eproto.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1377, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_eproto(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_lose(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_local_maybe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_queue_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_queue_conn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_call_completed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_abort_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_queue_call(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_improper_term(ptr noundef %call) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_improper_term, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_improper_term, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !249
  %call43 = tail call i32 @__traceiter_rxrpc_improper_term(ptr noundef null, ptr noundef %call) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !250
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !223

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_improper_term, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_improper_term, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_improper_term.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_improper_term.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1353, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
declare dso_local void @__rxrpc_disconnect_call(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_improper_term(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef %why, i32 noundef %now) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_timer, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !251
  %call43 = tail call i32 @__traceiter_rxrpc_timer(ptr noundef null, ptr noundef %call, i32 noundef %why, i32 noundef %now) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !252
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !223

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1181, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_timer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_proto_abort(ptr noundef %why, ptr noundef %call, i32 noundef %seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @rxrpc_abort_call(ptr noundef %why, ptr noundef %call, i32 noundef %seq, i32 noundef -5, i32 noundef -74) #9
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %events = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  tail call void @_set_bit(i32 noundef 1, ptr noundef %events) #9
  %call2 = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_get_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_receive(ptr noundef %call, i32 noundef %why, i32 noundef %serial, i32 noundef %seq) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_receive, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_receive, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !253
  %call43 = tail call i32 @__traceiter_rxrpc_receive(ptr noundef null, ptr noundef %call, i32 noundef %why, i32 noundef %serial, i32 noundef %seq) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !254
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !223

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_receive, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_receive, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_receive.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_receive.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1037, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
declare dso_local void @rxrpc_propose_ACK(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_notify_socket(i32 noundef %debug_id, i32 noundef %serial) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_notify_socket, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_notify_socket, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !255
  %call42 = tail call i32 @__traceiter_rxrpc_notify_socket(ptr noundef null, i32 noundef %debug_id, i32 noundef %serial) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !256
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !223

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_notify_socket, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_notify_socket, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_rxrpc_notify_socket.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_notify_socket.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1534, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
declare dso_local void @rxrpc_notify_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rxrpc_rotate_tx_window(ptr noundef %call, i32 noundef %to, ptr nocapture noundef %summary) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %acks_lowest_nak = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 83
  %0 = ptrtoint ptr %acks_lowest_nak to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %acks_lowest_nak, align 8
  %tx_hard_ack = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 54
  %2 = ptrtoint ptr %tx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_hard_ack, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.if.end6.sink.split_crit_edge, label %if.else

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split

if.else:                                          ; preds = %entry
  %sub.i = sub i32 %1, %to
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i, label %if.then4, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %new_low_nack = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 6
  %4 = ptrtoint ptr %new_low_nack to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %new_low_nack, align 2
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then4, %entry.if.end6.sink.split_crit_edge
  %5 = ptrtoint ptr %acks_lowest_nak to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %to, ptr %acks_lowest_nak, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge
  %lock = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %6 = ptrtoint ptr %tx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_hard_ack, align 8
  %sub.i6870 = sub i32 %7, %to
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i6870)
  %cmp.i6971 = icmp slt i32 %sub.i6870, 0
  br i1 %cmp.i6971, label %while.body.lr.ph, label %while.end.thread

while.end.thread:                                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %29

while.body.lr.ph:                                 ; preds = %if.end6
  %rxtx_buffer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 52
  %rxtx_annotations = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 53
  %flags = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %nr_rot_new_acks = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %7, %while.body.lr.ph ], [ %28, %if.end25.while.body_crit_edge ]
  %rot_last.0.off073 = phi i1 [ false, %while.body.lr.ph ], [ %rot_last.1.off0, %if.end25.while.body_crit_edge ]
  %list.072 = phi ptr [ null, %while.body.lr.ph ], [ %13, %if.end25.while.body_crit_edge ]
  %inc = add i32 %8, 1
  %9 = ptrtoint ptr %tx_hard_ack to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %tx_hard_ack, align 8
  %and = and i32 %inc, 63
  %10 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rxtx_buffer, align 8
  %arrayidx = getelementptr ptr, ptr %11, i32 %and
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rxtx_annotations, align 4
  %arrayidx11 = getelementptr i8, ptr %15, i32 %and
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11, align 1
  tail call void @rxrpc_see_skb(ptr noundef %13, i32 noundef 7) #9
  %18 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rxtx_buffer, align 8
  %arrayidx13 = getelementptr ptr, ptr %19, i32 %and
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx13, align 4
  %21 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rxtx_annotations, align 4
  %arrayidx15 = getelementptr i8, ptr %22, i32 %and
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx15, align 1
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list.072, ptr %13, align 8
  %conv = zext i8 %17 to i32
  %and16 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %while.body.if.end18_crit_edge, label %if.then17

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %while.body.if.end18_crit_edge
  %rot_last.1.off0 = phi i1 [ true, %if.then17 ], [ %rot_last.0.off073, %while.body.if.end18_crit_edge ]
  %and20 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21.not = icmp eq i32 %and20, 0
  br i1 %cmp21.not, label %if.end18.if.end25_crit_edge, label %if.then23

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %nr_rot_new_acks to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr_rot_new_acks, align 1
  %inc24 = add i8 %26, 1
  store i8 %inc24, ptr %nr_rot_new_acks, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end18.if.end25_crit_edge
  %27 = ptrtoint ptr %tx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_hard_ack, align 8
  %sub.i68 = sub i32 %28, %to
  %cmp.i69 = icmp slt i32 %sub.i68, 0
  br i1 %cmp.i69, label %if.end25.while.body_crit_edge, label %while.end

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %spec.select81 = select i1 %rot_last.1.off0, i32 5, i32 4
  br label %29

29:                                               ; preds = %while.end, %while.end.thread
  %rot_last.0.off0.lcssa80 = phi i1 [ false, %while.end.thread ], [ %rot_last.1.off0, %while.end ]
  %list.0.lcssa79 = phi ptr [ null, %while.end.thread ], [ %13, %while.end ]
  %30 = phi i32 [ 4, %while.end.thread ], [ %spec.select81, %while.end ]
  tail call fastcc void @trace_rxrpc_transmit(ptr noundef %call, i32 noundef %30)
  %waitq = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %tobool30.not75 = icmp eq ptr %list.0.lcssa79, null
  br i1 %tobool30.not75, label %.while.end33_crit_edge, label %.while.body31_crit_edge

.while.body31_crit_edge:                          ; preds = %29
  br label %while.body31

.while.end33_crit_edge:                           ; preds = %29
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end33

while.body31:                                     ; preds = %while.body31.while.body31_crit_edge, %.while.body31_crit_edge
  %list.176 = phi ptr [ %32, %while.body31.while.body31_crit_edge ], [ %list.0.lcssa79, %.while.body31_crit_edge ]
  %31 = ptrtoint ptr %list.176 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %list.176, align 8
  store ptr null, ptr %list.176, align 8
  tail call void @rxrpc_free_skb(ptr noundef nonnull %list.176, i32 noundef 1) #9
  %tobool30.not = icmp eq ptr %32, null
  br i1 %tobool30.not, label %while.body31.while.end33_crit_edge, label %while.body31.while.body31_crit_edge

while.body31.while.body31_crit_edge:              ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body31

while.body31.while.end33_crit_edge:               ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end33

while.end33:                                      ; preds = %while.body31.while.end33_crit_edge, %.while.end33_crit_edge
  ret i1 %rot_last.0.off0.lcssa80
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rxrpc_end_tx_phase(ptr noundef %call, i1 noundef zeroext %reply_begun, ptr noundef %abort_why) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %do.end14, !prof !224

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #9, !srcloc !257
  unreachable

do.end14:                                         ; preds = %entry
  %state_lock = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 37
  tail call void @_raw_write_lock(ptr noundef %state_lock) #9
  %state15 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %3 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state15, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %4, label %bad_state [
    i32 2, label %do.end14.sw.bb_crit_edge
    i32 3, label %do.end14.sw.bb_crit_edge72
    i32 10, label %sw.bb21
  ]

do.end14.sw.bb_crit_edge72:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end14.sw.bb_crit_edge:                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %do.end14.sw.bb_crit_edge, %do.end14.sw.bb_crit_edge72
  br i1 %reply_begun, label %if.then17, label %if.else

if.then17:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %state15, align 8
  tail call void @_raw_write_unlock(ptr noundef %state_lock) #9
  br label %if.else26

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %state15, align 8
  tail call void @_raw_write_unlock(ptr noundef %state_lock) #9
  br label %do.body28

sw.bb21:                                          ; preds = %do.end14
  %call22 = tail call zeroext i1 @__rxrpc_call_completed(ptr noundef %call) #9
  %8 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %phi.cmp = icmp eq i32 %9, 3
  tail call void @_raw_write_unlock(ptr noundef %state_lock) #9
  br i1 %phi.cmp, label %sw.bb21.do.body28_crit_edge, label %sw.bb21.if.else26_crit_edge

sw.bb21.if.else26_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else26

sw.bb21.do.body28_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

if.else26:                                        ; preds = %sw.bb21.if.else26_crit_edge, %if.then17
  br label %do.body28

do.body28:                                        ; preds = %if.else26, %sw.bb21.do.body28_crit_edge, %if.else
  %.sink = phi i32 [ 1, %if.else26 ], [ 0, %if.else ], [ 0, %sw.bb21.do.body28_crit_edge ]
  tail call fastcc void @trace_rxrpc_transmit(ptr noundef %call, i32 noundef %.sink)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %10 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %do.body28.cleanup_crit_edge, label %do.end39, !prof !223

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end39:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 101
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %comm, ptr noundef nonnull @.str.53) #12
  br label %cleanup

bad_state:                                        ; preds = %do.end14
  tail call void @_raw_write_unlock(ptr noundef %state_lock) #9
  %15 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i71 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i71 to ptr
  %task52 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task52, align 8
  %comm53 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 101
  %19 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state15, align 8
  %arrayidx = getelementptr [0 x ptr], ptr @rxrpc_call_states, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %comm53, ptr noundef %22) #12
  %tx_top = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 55
  %23 = ptrtoint ptr %tx_top to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_top, align 4
  %call1.i = tail call zeroext i1 @rxrpc_abort_call(ptr noundef %abort_why, ptr noundef %call, i32 noundef %24, i32 noundef -5, i32 noundef -74) #9
  br i1 %call1.i, label %if.then.i, label %bad_state.cleanup_crit_edge

bad_state.cleanup_crit_edge:                      ; preds = %bad_state
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %bad_state
  call void @__sanitizer_cov_trace_pc() #11
  %events.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  tail call void @_set_bit(i32 noundef 1, ptr noundef %events.i) #9
  %call2.i = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %bad_state.cleanup_crit_edge, %do.end39, %do.body28.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end39 ], [ true, %do.body28.cleanup_crit_edge ], [ false, %bad_state.cleanup_crit_edge ], [ false, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_transmit(ptr noundef %call, i32 noundef %why) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_transmit, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_transmit, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !258
  %call43 = tail call i32 @__traceiter_rxrpc_transmit(ptr noundef null, ptr noundef %call, i32 noundef %why) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !259
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !223

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_transmit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_transmit, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_transmit.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_transmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 781, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rxrpc_call_completed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_receive(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_notify_socket(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_ack(ptr noundef %call, i32 noundef %serial, i32 noundef %ack_serial, i32 noundef %first, i32 noundef %prev, i8 noundef zeroext %reason, i8 noundef zeroext %n_acks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_ack, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_ack, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !260
  %call43 = tail call i32 @__traceiter_rxrpc_rx_ack(ptr noundef null, ptr noundef %call, i32 noundef %serial, i32 noundef %ack_serial, i32 noundef %first, i32 noundef %prev, i8 noundef zeroext %reason, i8 noundef zeroext %n_acks) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !261
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !223

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_ack, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_ack, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_rx_ack.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rx_ack.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 848, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_discard_ack(i32 noundef %debug_id, i32 noundef %serial, i32 noundef %first_soft_ack, i32 noundef %call_ackr_first, i32 noundef %prev_pkt, i32 noundef %call_ackr_prev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_discard_ack, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_discard_ack, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !262
  %call42 = tail call i32 @__traceiter_rxrpc_rx_discard_ack(ptr noundef null, i32 noundef %debug_id, i32 noundef %serial, i32 noundef %first_soft_ack, i32 noundef %call_ackr_first, i32 noundef %prev_pkt, i32 noundef %call_ackr_prev) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !263
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !223

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_discard_ack, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_discard_ack, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_rxrpc_rx_discard_ack.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rx_discard_ack.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1569, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
define internal fastcc void @rxrpc_input_soft_acks(ptr noundef %call, ptr nocapture noundef readonly %acks, i32 noundef %seq, i32 noundef %nr_acks, ptr nocapture noundef %summary) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_acks)
  %cmp64 = icmp sgt i32 %nr_acks, 0
  br i1 %cmp64, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rxtx_annotations = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 53
  %nr_nacks = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 2
  %acks_lowest_nak = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 83
  %new_low_nack = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 6
  %nr_new_nacks = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 4
  %nr_acks7 = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 1
  %nr_new_acks = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %acks.addr.069 = phi ptr [ %acks, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %nr_acks.addr.068 = phi i32 [ %nr_acks, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %seq.addr.065 = phi i32 [ %seq, %for.body.lr.ph ], [ %inc40, %for.inc.for.body_crit_edge ]
  %and = and i32 %seq.addr.065, 63
  %0 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxtx_annotations, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %and1 = and i8 %3, 3
  %4 = and i8 %3, -4
  %incdec.ptr = getelementptr i8, ptr %acks.addr.069, i32 1
  %5 = ptrtoint ptr %acks.addr.069 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %acks.addr.069, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %6, label %sw.default [
    i8 1, label %sw.bb
    i8 0, label %sw.bb16
  ]

sw.bb:                                            ; preds = %for.body
  %8 = ptrtoint ptr %nr_acks7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_acks7, align 1
  %inc = add i8 %9, 1
  store i8 %inc, ptr %nr_acks7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1)
  %cmp9 = icmp eq i8 %and1, 0
  br i1 %cmp9, label %sw.bb.for.inc_crit_edge, label %if.end

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %nr_new_acks to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_new_acks, align 1
  %inc11 = add i8 %11, 1
  store i8 %inc11, ptr %nr_new_acks, align 1
  br label %for.inc.sink.split

sw.bb16:                                          ; preds = %for.body
  %12 = ptrtoint ptr %nr_nacks to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_nacks, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb16.if.end21_crit_edge

sw.bb16.if.end21_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true:                                    ; preds = %sw.bb16
  %14 = ptrtoint ptr %acks_lowest_nak to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %acks_lowest_nak, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %seq.addr.065)
  %cmp17.not = icmp eq i32 %15, %seq.addr.065
  br i1 %cmp17.not, label %land.lhs.true.if.end21_crit_edge, label %if.then19

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %acks_lowest_nak to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %seq.addr.065, ptr %acks_lowest_nak, align 8
  %17 = ptrtoint ptr %new_low_nack to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %new_low_nack, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true.if.end21_crit_edge, %sw.bb16.if.end21_crit_edge
  %18 = ptrtoint ptr %nr_nacks to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_nacks, align 2
  %inc23 = add i8 %19, 1
  store i8 %inc23, ptr %nr_nacks, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %and1)
  %cmp25 = icmp eq i8 %and1, 2
  br i1 %cmp25, label %if.end21.for.inc_crit_edge, label %if.end28

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end28:                                         ; preds = %if.end21
  %20 = ptrtoint ptr %nr_new_nacks to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nr_new_nacks, align 4
  %inc29 = add i8 %21, 1
  store i8 %inc29, ptr %nr_new_nacks, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and1)
  %cmp31 = icmp eq i8 %and1, 3
  br i1 %cmp31, label %if.end28.for.inc_crit_edge, label %if.end34

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %22 = or i8 %4, 2
  br label %for.inc.sink.split

sw.default:                                       ; preds = %for.body
  %call1.i = tail call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.80, ptr noundef %call, i32 noundef 0, i32 noundef -5, i32 noundef -74) #9
  br i1 %call1.i, label %if.then.i, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %events.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  tail call void @_set_bit(i32 noundef 1, ptr noundef %events.i) #9
  %call2.i = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %cleanup

for.inc.sink.split:                               ; preds = %if.end34, %if.end
  %.sink = phi i8 [ %4, %if.end ], [ %22, %if.end34 ]
  %23 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rxtx_annotations, align 4
  %arrayidx15 = getelementptr i8, ptr %24, i32 %and
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink, ptr %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end28.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %dec = add nsw i32 %nr_acks.addr.068, -1
  %inc40 = add i32 %seq.addr.065, 1
  %cmp = icmp sgt i32 %nr_acks.addr.068, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.i, %sw.default.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_congestion_management(ptr noundef %call, ptr nocapture noundef readonly %skb, ptr noundef %summary, i32 noundef %acked_serial) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cong_cumul_acks = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 62
  %0 = ptrtoint ptr %cong_cumul_acks to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cong_cumul_acks, align 1
  %conv = zext i8 %1 to i32
  %cong_cwnd = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 57
  %2 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cong_cwnd, align 2
  %conv1 = zext i8 %3 to i32
  %tx_top = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 55
  %4 = ptrtoint ptr %tx_top to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_top, align 4
  %tx_hard_ack = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 54
  %6 = ptrtoint ptr %tx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_hard_ack, align 8
  %nr_acks = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 1
  %8 = ptrtoint ptr %nr_acks to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_acks, align 1
  %conv2 = zext i8 %9 to i32
  %10 = add i32 %7, %conv2
  %sub3 = sub i32 %5, %10
  %conv4 = trunc i32 %sub3 to i8
  %flight_size = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 8
  %11 = ptrtoint ptr %flight_size to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4, ptr %flight_size, align 4
  %flags = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %call5 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %retrans_timeo = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 7
  %12 = ptrtoint ptr %retrans_timeo to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %retrans_timeo, align 1
  %13 = ptrtoint ptr %flight_size to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flight_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %cmp = icmp ugt i8 %14, 5
  %15 = lshr i8 %14, 1
  %cond = select i1 %cmp, i8 %15, i8 2
  %cong_ssthresh = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 59
  %16 = ptrtoint ptr %cong_ssthresh to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %cond, ptr %cong_ssthresh, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then, %entry.if.end18_crit_edge
  %cwnd.0 = phi i32 [ 1, %if.then ], [ %conv1, %entry.if.end18_crit_edge ]
  %nr_new_acks = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 3
  %17 = ptrtoint ptr %nr_new_acks to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nr_new_acks, align 1
  %conv19 = zext i8 %18 to i32
  %add = add nuw nsw i32 %conv19, %conv
  %nr_rot_new_acks = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 5
  %19 = ptrtoint ptr %nr_rot_new_acks to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nr_rot_new_acks, align 1
  %conv20 = zext i8 %20 to i32
  %add21 = add nuw nsw i32 %add, %conv20
  %21 = tail call i32 @llvm.umin.i32(i32 %add21, i32 255)
  %cong_mode26 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 60
  %22 = ptrtoint ptr %cong_mode26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load27 = load i8, ptr %cong_mode26, align 1
  %mode = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 9
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.load27, ptr %mode, align 1
  %24 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cong_cwnd, align 2
  %cwnd30 = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 10
  %26 = ptrtoint ptr %cwnd30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %cwnd30, align 2
  %cong_ssthresh31 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 59
  %27 = ptrtoint ptr %cong_ssthresh31 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cong_ssthresh31, align 4
  %ssthresh = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 11
  %29 = ptrtoint ptr %ssthresh to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ssthresh, align 1
  %conv32 = trunc i32 %21 to i8
  %cumulative_acks33 = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 13
  %30 = ptrtoint ptr %cumulative_acks33 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv32, ptr %cumulative_acks33, align 1
  %cong_dup_acks = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 61
  %31 = ptrtoint ptr %cong_dup_acks to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cong_dup_acks, align 2
  %dup_acks = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 12
  %33 = ptrtoint ptr %dup_acks to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %dup_acks, align 4
  %bf.load35297 = load i8, ptr %cong_mode26, align 1
  %34 = zext i8 %bf.load35297 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %bf.load35297, label %do.body [
    i8 0, label %sw.bb
    i8 1, label %sw.bb57
    i8 2, label %sw.bb80
    i8 3, label %sw.bb123
  ]

sw.bb:                                            ; preds = %if.end18
  %nr_nacks = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 2
  %35 = ptrtoint ptr %nr_nacks to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr_nacks, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp38.not = icmp eq i8 %36, 0
  br i1 %cmp38.not, label %if.end41, label %sw.bb.packet_loss_detected_crit_edge

sw.bb.packet_loss_detected_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %packet_loss_detected

if.end41:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv32)
  %cmp44.not = icmp ne i8 %conv32, 0
  %add47 = zext i1 %cmp44.not to i32
  %spec.select = add nuw nsw i32 %cwnd.0, %add47
  %37 = ptrtoint ptr %cong_ssthresh31 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cong_ssthresh31, align 4
  %conv50 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv50)
  %cmp51.not = icmp ult i32 %spec.select, %conv50
  br i1 %cmp51.not, label %if.end41.out_no_clear_ca_crit_edge, label %if.then53

if.end41.out_no_clear_ca_crit_edge:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_no_clear_ca

if.then53:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %cong_mode26 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %cong_mode26, align 1
  %40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %cong_tstamp55 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 63
  %43 = ptrtoint ptr %cong_tstamp55 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %cong_tstamp55, align 8
  br label %out_no_clear_ca

sw.bb57:                                          ; preds = %if.end18
  %nr_nacks58 = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 2
  %44 = ptrtoint ptr %nr_nacks58 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nr_nacks58, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp60.not = icmp eq i8 %45, 0
  br i1 %cmp60.not, label %if.end63, label %sw.bb57.packet_loss_detected_crit_edge

sw.bb57.packet_loss_detected_crit_edge:           ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  br label %packet_loss_detected

if.end63:                                         ; preds = %sw.bb57
  %peer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %46 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %peer, align 4
  %rtt_count = getelementptr inbounds %struct.rxrpc_peer, ptr %47, i32 0, i32 19
  %48 = ptrtoint ptr %rtt_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rtt_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp64 = icmp eq i32 %49, 0
  br i1 %cmp64, label %if.end63.out_no_clear_ca_crit_edge, label %if.end67

if.end63.out_no_clear_ca_crit_edge:               ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_no_clear_ca

if.end67:                                         ; preds = %if.end63
  %50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %50, align 8
  %cong_tstamp68 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 63
  %53 = ptrtoint ptr %cong_tstamp68 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %cong_tstamp68, align 8
  %srtt_us = getelementptr inbounds %struct.rxrpc_peer, ptr %47, i32 0, i32 20
  %55 = ptrtoint ptr %srtt_us to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %srtt_us, align 4
  %shr = lshr i32 %56, 3
  %conv70 = zext i32 %shr to i64
  %mul.i = mul nuw nsw i64 %conv70, 1000
  %add.i = add i64 %mul.i, %54
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %add.i)
  %cmp.i.i = icmp slt i64 %52, %add.i
  br i1 %cmp.i.i, label %if.end182.critedge303, label %if.end74

if.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %cong_tstamp68 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %52, ptr %cong_tstamp68, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %cwnd.0)
  %cmp76.not = icmp uge i32 %21, %cwnd.0
  %inc = zext i1 %cmp76.not to i32
  %spec.select298 = add nuw nsw i32 %cwnd.0, %inc
  br label %out_no_clear_ca

sw.bb80:                                          ; preds = %if.end18
  %nr_nacks81 = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 2
  %58 = ptrtoint ptr %nr_nacks81 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nr_nacks81, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp83 = icmp eq i8 %59, 0
  br i1 %cmp83, label %sw.bb80.resume_normality_crit_edge, label %if.end86

sw.bb80.resume_normality_crit_edge:               ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  br label %resume_normality

if.end86:                                         ; preds = %sw.bb80
  %new_low_nack = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 6
  %60 = ptrtoint ptr %new_low_nack to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %new_low_nack, align 2, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool87.not = icmp eq i8 %61, 0
  br i1 %tobool87.not, label %if.end96, label %if.then88

if.then88:                                        ; preds = %if.end86
  %62 = ptrtoint ptr %cong_dup_acks to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %cong_dup_acks, align 2
  %cong_extra = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 58
  %63 = ptrtoint ptr %cong_extra to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cong_extra, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp91 = icmp ugt i8 %64, 1
  br i1 %cmp91, label %if.then93, label %if.then88.send_extra_data_crit_edge

if.then88.send_extra_data_crit_edge:              ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %send_extra_data

if.then93:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %cong_extra to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %cong_extra, align 1
  br label %send_extra_data

if.end96:                                         ; preds = %if.end86
  %66 = ptrtoint ptr %cong_dup_acks to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %cong_dup_acks, align 2
  %inc98 = add i8 %67, 1
  store i8 %inc98, ptr %cong_dup_acks, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %inc98)
  %cmp101 = icmp ult i8 %inc98, 3
  br i1 %cmp101, label %if.end96.send_extra_data_crit_edge, label %if.end104

if.end96.send_extra_data_crit_edge:               ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %send_extra_data

if.end104:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %cong_mode26 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %cong_mode26, align 1
  %69 = ptrtoint ptr %flight_size to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %flight_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %70)
  %cmp110 = icmp ugt i8 %70, 5
  %71 = lshr i8 %70, 1
  %cond115 = select i1 %cmp110, i8 %71, i8 2
  %72 = ptrtoint ptr %cong_ssthresh31 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %cond115, ptr %cong_ssthresh31, align 4
  %cong_extra121 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 58
  %73 = ptrtoint ptr %cong_extra121 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %cong_extra121, align 1
  %74 = ptrtoint ptr %cong_dup_acks to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %cong_dup_acks, align 2
  %75 = tail call i8 @llvm.umin.i8(i8 %cond115, i8 60)
  %76 = add nuw nsw i8 %75, 3
  br label %land.lhs.true177

sw.bb123:                                         ; preds = %if.end18
  %new_low_nack124 = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 6
  %77 = ptrtoint ptr %new_low_nack124 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %new_low_nack124, align 2, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool125.not = icmp eq i8 %78, 0
  br i1 %tobool125.not, label %if.then126, label %if.else

if.then126:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp129 = icmp eq i8 %18, 0
  %add132 = zext i1 %cmp129 to i32
  %spec.select299 = add nuw nsw i32 %cwnd.0, %add132
  %79 = ptrtoint ptr %cong_dup_acks to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %cong_dup_acks, align 2
  %inc135 = add i8 %80, 1
  store i8 %inc135, ptr %cong_dup_acks, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc135)
  %cmp138 = icmp eq i8 %inc135, 2
  br i1 %cmp138, label %if.then140, label %if.end182.critedge313

if.then140:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %cong_dup_acks to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %cong_dup_acks, align 2
  %82 = tail call i32 @llvm.umin.i32(i32 %spec.select299, i32 63)
  %conv171.c312 = trunc i32 %82 to i8
  br label %land.lhs.true177

if.else:                                          ; preds = %sw.bb123
  %83 = ptrtoint ptr %cong_ssthresh31 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %cong_ssthresh31, align 4
  %conv144 = zext i8 %84 to i32
  %nr_nacks145 = getelementptr inbounds %struct.rxrpc_ack_summary, ptr %summary, i32 0, i32 2
  %85 = ptrtoint ptr %nr_nacks145 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nr_nacks145, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp147 = icmp eq i8 %86, 0
  br i1 %cmp147, label %if.else.resume_normality_crit_edge, label %if.end182.critedge310

if.else.resume_normality_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %resume_normality

do.body:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #9, !srcloc !265
  unreachable

resume_normality:                                 ; preds = %if.else.resume_normality_crit_edge, %sw.bb80.resume_normality_crit_edge
  %cwnd.3 = phi i32 [ %conv144, %if.else.resume_normality_crit_edge ], [ %cwnd.0, %sw.bb80.resume_normality_crit_edge ]
  %87 = ptrtoint ptr %cong_dup_acks to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %cong_dup_acks, align 2
  %cong_extra156 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 58
  %88 = ptrtoint ptr %cong_extra156 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %cong_extra156, align 1
  %89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %89, align 8
  %cong_tstamp157 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 63
  %92 = ptrtoint ptr %cong_tstamp157 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %cong_tstamp157, align 8
  %93 = ptrtoint ptr %cong_ssthresh31 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %cong_ssthresh31, align 4
  %conv159 = zext i8 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cwnd.3, i32 %conv159)
  %cmp160 = icmp ult i32 %cwnd.3, %conv159
  br i1 %cmp160, label %if.then162, label %if.else164

if.then162:                                       ; preds = %resume_normality
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %cong_mode26 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %cong_mode26, align 1
  %96 = tail call i32 @llvm.umin.i32(i32 %cwnd.3, i32 63)
  %conv171.c307 = trunc i32 %96 to i8
  %97 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv171.c307, ptr %cong_cwnd, align 2
  %98 = ptrtoint ptr %cong_cumul_acks to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %cong_cumul_acks, align 1
  tail call fastcc void @trace_rxrpc_congest(ptr noundef %call, ptr noundef %summary, i32 noundef %acked_serial, i32 noundef 1)
  br label %if.end182

if.else164:                                       ; preds = %resume_normality
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %cong_mode26 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %cong_mode26, align 1
  %100 = tail call i32 @llvm.umin.i32(i32 %cwnd.3, i32 63)
  %conv171.c309 = trunc i32 %100 to i8
  %101 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv171.c309, ptr %cong_cwnd, align 2
  %102 = ptrtoint ptr %cong_cumul_acks to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %cong_cumul_acks, align 1
  tail call fastcc void @trace_rxrpc_congest(ptr noundef %call, ptr noundef %summary, i32 noundef %acked_serial, i32 noundef 1)
  br label %if.end182

out_no_clear_ca:                                  ; preds = %if.end74, %if.end63.out_no_clear_ca_crit_edge, %if.then53, %if.end41.out_no_clear_ca_crit_edge
  %cwnd.5 = phi i32 [ %cwnd.0, %if.end63.out_no_clear_ca_crit_edge ], [ %spec.select, %if.then53 ], [ %spec.select, %if.end41.out_no_clear_ca_crit_edge ], [ %spec.select298, %if.end74 ]
  %change.1 = phi i32 [ 3, %if.end63.out_no_clear_ca_crit_edge ], [ 3, %if.then53 ], [ 3, %if.end41.out_no_clear_ca_crit_edge ], [ 6, %if.end74 ]
  %103 = tail call i32 @llvm.umin.i32(i32 %cwnd.5, i32 63)
  %conv171 = trunc i32 %103 to i8
  %104 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv171, ptr %cong_cwnd, align 2
  %105 = ptrtoint ptr %cong_cumul_acks to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %cong_cumul_acks, align 1
  tail call fastcc void @trace_rxrpc_congest(ptr noundef %call, ptr noundef %summary, i32 noundef %acked_serial, i32 noundef %change.1)
  br label %if.end182

land.lhs.true177:                                 ; preds = %if.then140, %if.end104
  %.sink318 = phi i8 [ %76, %if.end104 ], [ %conv171.c312, %if.then140 ]
  %.sink = phi i32 [ 0, %if.end104 ], [ 5, %if.then140 ]
  %106 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %.sink318, ptr %cong_cwnd, align 2
  %107 = ptrtoint ptr %cong_cumul_acks to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %cong_cumul_acks, align 1
  tail call fastcc void @trace_rxrpc_congest(ptr noundef %call, ptr noundef %summary, i32 noundef %acked_serial, i32 noundef %.sink)
  %events = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  %call178 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %events) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.then180, label %land.lhs.true177.if.end182_crit_edge

land.lhs.true177.if.end182_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

if.then180:                                       ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #11
  %call181 = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #9
  br label %if.end182

if.end182.critedge300:                            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %108 = tail call i32 @llvm.umin.i32(i32 %cwnd.0, i32 63)
  %conv171.c301 = trunc i32 %108 to i8
  %109 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv171.c301, ptr %cong_cwnd, align 2
  %110 = ptrtoint ptr %cong_cumul_acks to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv32, ptr %cong_cumul_acks, align 1
  tail call fastcc void @trace_rxrpc_congest(ptr noundef %call, ptr noundef %summary, i32 noundef %acked_serial, i32 noundef %change.2)
  br label %if.end182

if.end182.critedge303:                            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %111 = tail call i32 @llvm.umin.i32(i32 %cwnd.0, i32 63)
  %conv171.c304 = trunc i32 %111 to i8
  %112 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv171.c304, ptr %cong_cwnd, align 2
  %113 = ptrtoint ptr %cong_cumul_acks to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv32, ptr %cong_cumul_acks, align 1
  tail call fastcc void @trace_rxrpc_congest(ptr noundef %call, ptr noundef %summary, i32 noundef %acked_serial, i32 noundef 3)
  br label %if.end182

if.end182.critedge310:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %114 = tail call i32 @llvm.umin.i32(i32 %conv144, i32 63)
  %conv171.c311 = trunc i32 %114 to i8
  %115 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv171.c311, ptr %cong_cwnd, align 2
  %116 = ptrtoint ptr %cong_cumul_acks to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %cong_cumul_acks, align 1
  tail call fastcc void @trace_rxrpc_congest(ptr noundef %call, ptr noundef %summary, i32 noundef %acked_serial, i32 noundef 4)
  br label %if.end182

if.end182.critedge313:                            ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  %117 = tail call i32 @llvm.umin.i32(i32 %spec.select299, i32 63)
  %conv171.c314 = trunc i32 %117 to i8
  %118 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv171.c314, ptr %cong_cwnd, align 2
  %119 = ptrtoint ptr %cong_cumul_acks to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %cong_cumul_acks, align 1
  tail call fastcc void @trace_rxrpc_congest(ptr noundef %call, ptr noundef %summary, i32 noundef %acked_serial, i32 noundef 3)
  br label %if.end182

if.end182:                                        ; preds = %if.then196, %if.end182.critedge313, %if.end182.critedge310, %if.end182.critedge303, %if.end182.critedge300, %if.then180, %land.lhs.true177.if.end182_crit_edge, %out_no_clear_ca, %if.else164, %if.then162
  ret void

packet_loss_detected:                             ; preds = %sw.bb57.packet_loss_detected_crit_edge, %sw.bb.packet_loss_detected_crit_edge
  %120 = ptrtoint ptr %cong_mode26 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 2, ptr %cong_mode26, align 1
  %121 = ptrtoint ptr %cong_dup_acks to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %cong_dup_acks, align 2
  br label %send_extra_data

send_extra_data:                                  ; preds = %packet_loss_detected, %if.end96.send_extra_data_crit_edge, %if.then93, %if.then88.send_extra_data_crit_edge
  %change.2 = phi i32 [ 2, %if.then93 ], [ 2, %if.then88.send_extra_data_crit_edge ], [ 3, %if.end96.send_extra_data_crit_edge ], [ 7, %packet_loss_detected ]
  %rxtx_annotations = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 53
  %122 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rxtx_annotations, align 4
  %124 = ptrtoint ptr %tx_top to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_top, align 4
  %and = and i32 %125, 63
  %arrayidx = getelementptr i8, ptr %123, i32 %and
  %126 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx, align 1
  %128 = and i8 %127, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool188.not = icmp eq i8 %128, 0
  br i1 %tobool188.not, label %lor.lhs.false, label %send_extra_data.if.then196_crit_edge

send_extra_data.if.then196_crit_edge:             ; preds = %send_extra_data
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then196

lor.lhs.false:                                    ; preds = %send_extra_data
  %129 = ptrtoint ptr %nr_acks to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %nr_acks, align 1
  %conv190 = zext i8 %130 to i32
  %131 = ptrtoint ptr %tx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_hard_ack, align 8
  %sub193 = sub i32 %125, %132
  call void @__sanitizer_cov_trace_cmp4(i32 %sub193, i32 %conv190)
  %cmp194.not = icmp eq i32 %sub193, %conv190
  br i1 %cmp194.not, label %if.end182.critedge300, label %lor.lhs.false.if.then196_crit_edge

lor.lhs.false.if.then196_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then196

if.then196:                                       ; preds = %lor.lhs.false.if.then196_crit_edge, %send_extra_data.if.then196_crit_edge
  %cong_extra197 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 58
  %133 = ptrtoint ptr %cong_extra197 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %cong_extra197, align 1
  %inc198 = add i8 %134, 1
  store i8 %inc198, ptr %cong_extra197, align 1
  %waitq = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %135 = tail call i32 @llvm.umin.i32(i32 %cwnd.0, i32 63)
  %conv171.c = trunc i32 %135 to i8
  %136 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv171.c, ptr %cong_cwnd, align 2
  %137 = ptrtoint ptr %cong_cumul_acks to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv32, ptr %cong_cumul_acks, align 1
  tail call fastcc void @trace_rxrpc_congest(ptr noundef %call, ptr noundef %summary, i32 noundef %acked_serial, i32 noundef %change.2)
  br label %if.end182
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_ack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_peer_add_rtt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rtt_rx(ptr noundef %call, i32 noundef %why, i32 noundef %slot, i32 noundef %send_serial, i32 noundef %resp_serial) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rtt_rx, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rtt_rx, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !266
  %call43 = tail call i32 @__traceiter_rxrpc_rtt_rx(ptr noundef null, ptr noundef %call, i32 noundef %why, i32 noundef %slot, i32 noundef %send_serial, i32 noundef %resp_serial, i32 noundef 0, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !267
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !223

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rtt_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rtt_rx, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_rxrpc_rtt_rx.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rtt_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1136, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
declare dso_local i32 @__traceiter_rxrpc_rtt_rx(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_discard_ack(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_rwind_change(ptr noundef %call, i32 noundef %serial, i32 noundef %rwind, i1 noundef zeroext %wake) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_rwind_change, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_rwind_change, %do.body)) #9
          to label %if.end50 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i77 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i77
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end71_crit_edge, label %cleanup.thread

cpu_online.exit.if.end71_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !268
  %call44 = tail call i32 @__traceiter_rxrpc_rx_rwind_change(ptr noundef null, ptr noundef %call, i32 noundef %serial, i32 noundef %rwind, i1 noundef zeroext %wake) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !269
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i75 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i75 to ptr
  %preempt_count.i.i76 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i76 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i76, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i76, align 4
  br label %if.end50

if.end50:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i78 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i78 to ptr
  %cpu52 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu52, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i79 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i79, label %if.end50.cpu_online.exit87_crit_edge, label %land.rhs.i.i.i.i81

if.end50.cpu_online.exit87_crit_edge:             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit87

land.rhs.i.i.i.i81:                               ; preds = %if.end50
  %.b37.i.i.i.i80 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i80, label %land.rhs.i.i.i.i81.cpu_online.exit87_crit_edge, label %if.then.i.i.i.i82, !prof !223

land.rhs.i.i.i.i81.cpu_online.exit87_crit_edge:   ; preds = %land.rhs.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit87

if.then.i.i.i.i82:                                ; preds = %land.rhs.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit87

cpu_online.exit87:                                ; preds = %if.then.i.i.i.i82, %land.rhs.i.i.i.i81.cpu_online.exit87_crit_edge, %if.end50.cpu_online.exit87_crit_edge
  %div3.i.i.i83 = lshr i32 %20, 5
  %arrayidx.i.i.i84 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i83
  %22 = ptrtoint ptr %arrayidx.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i84, align 4
  %and.i.i.i85 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i85
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i86.not = icmp eq i32 %25, 0
  br i1 %tobool.i86.not, label %cpu_online.exit87.if.end71_crit_edge, label %if.then54

cpu_online.exit87.if.end71_crit_edge:             ; preds = %cpu_online.exit87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then54:                                        ; preds = %cpu_online.exit87
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_rwind_change, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_rwind_change, i32 0, i32 7), align 4
  %call60 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true, label %if.then54.do.end69_crit_edge

if.then54.do.end69_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

land.lhs.true:                                    ; preds = %if.then54
  %call62 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true.do.end69_crit_edge, label %land.lhs.true64

land.lhs.true.do.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

land.lhs.true64:                                  ; preds = %land.lhs.true
  %.b74 = load i1, ptr @trace_rxrpc_rx_rwind_change.__warned, align 1
  br i1 %.b74, label %land.lhs.true64.do.end69_crit_edge, label %if.then66

land.lhs.true64.do.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rx_rwind_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 899, ptr noundef nonnull @.str.1) #9
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %land.lhs.true64.do.end69_crit_edge, %land.lhs.true.do.end69_crit_edge, %if.then54.do.end69_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i88 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i88 to ptr
  %preempt_count.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i89, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i89, align 4
  br label %if.end71

if.end71:                                         ; preds = %do.end69, %cpu_online.exit87.if.end71_crit_edge, %cpu_online.exit.if.end71_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_rwind_change(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_congest(ptr noundef %call, ptr noundef %summary, i32 noundef %ack_serial, i32 noundef %change) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_congest, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_congest, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !270
  %call43 = tail call i32 @__traceiter_rxrpc_congest(ptr noundef null, ptr noundef %call, ptr noundef %summary, i32 noundef %ack_serial, i32 noundef %change) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !271
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !223

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_congest, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_congest, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_congest.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_congest.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1313, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
declare dso_local i32 @__traceiter_rxrpc_congest(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_abort(ptr noundef %call, i32 noundef %serial, i32 noundef %abort_code) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_abort, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_abort, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !223

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !272
  %call43 = tail call i32 @__traceiter_rxrpc_rx_abort(ptr noundef null, ptr noundef %call, i32 noundef %serial, i32 noundef %abort_code) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !273
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !223

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_abort, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_abort, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_rx_abort.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_rx_abort.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 872, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #9
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
declare dso_local i32 @__traceiter_rxrpc_rx_abort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_abort(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !13, !14, !15, !17, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !64, !65, !67, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !105, !106, !108, !109, !110, !112, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !149, !150, !151, !153, !155, !157, !159, !161, !163, !165, !166, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !204, !205, !207, !209, !210, !212}
!llvm.named.register.sp = !{!213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/rxrpc/input.c", i32 1209, i32 30}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/rxrpc/input.c", i32 1218, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rxrpc_input_packet._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @rxrpc_input_packet._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @rxrpc_input_packet.lose, !10, !"lose", i1 false, i1 false}
!10 = !{!"../net/rxrpc/input.c", i32 1241, i32 14}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/rxrpc/input.c", i32 1314, i32 3}
!13 = !{ptr @rxrpc_input_packet._entry.4, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @rxrpc_input_packet._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/rxrpc/input.c", i32 1326, i32 8}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/rxrpc/input.c", i32 1356, i32 4}
!19 = !{ptr @rxrpc_input_packet._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @rxrpc_input_packet._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/rxrpc/input.c", i32 1396, i32 10}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/rxrpc/input.c", i32 1440, i32 23}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/rxrpc/input.c", i32 1446, i32 23}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/rxrpc/input.c", i32 1452, i32 23}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/rxrpc/input.c", i32 1457, i32 23}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/rxrpc/input.c", i32 1466, i32 2}
!33 = !{ptr @rxrpc_input_packet._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rxrpc_input_packet._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/rxrpc/input.c", i32 1178, i32 11}
!37 = !{ptr @rxrpc_extract_header.___tp_str, !36, !"___tp_str", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/trace/events/rxrpc.h", i32 1355, i32 1}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/trace/events/rxrpc.h", i32 1183, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/trace/events/rxrpc.h", i32 656, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/rxrpc/input.c", i32 1142, i32 2}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rxrpc_post_packet_to_local._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rxrpc_post_packet_to_local._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/skbuff.h", i32 1846, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/rxrpc/input.c", i32 1129, i32 2}
!60 = !{ptr @rxrpc_post_packet_to_conn._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rxrpc_post_packet_to_conn._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/trace/events/rxrpc.h", i32 783, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/rxrpc/input.c", i32 1108, i32 24}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/trace/events/rxrpc.h", i32 1335, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/rxrpc/input.c", i32 1044, i32 2}
!72 = !{ptr @rxrpc_input_call_packet._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @rxrpc_input_call_packet._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/rxrpc/input.c", i32 1066, i32 3}
!76 = !{ptr @rxrpc_input_call_packet._entry.28, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @rxrpc_input_call_packet._entry_ptr.30, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/rxrpc/input.c", i32 1088, i32 2}
!80 = !{ptr @rxrpc_input_call_packet._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rxrpc_input_call_packet._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/trace/events/rxrpc.h", i32 1138, i32 1}
!84 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/rxrpc/input.c", i32 421, i32 2}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rxrpc_input_data._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @rxrpc_input_data._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/rxrpc/input.c", i32 424, i32 2}
!92 = !{ptr @rxrpc_input_data._entry.36, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @rxrpc_input_data._entry_ptr.38, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/rxrpc/input.c", i32 476, i32 3}
!96 = !{ptr @rxrpc_input_data._entry.39, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @rxrpc_input_data._entry_ptr.41, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/rxrpc/input.c", i32 482, i32 23}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/rxrpc/input.c", i32 488, i32 23}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/rxrpc/input.c", i32 583, i32 5}
!104 = !{ptr @rxrpc_input_data._entry.44, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @rxrpc_input_data._entry_ptr.46, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/rxrpc/input.c", i32 607, i32 2}
!108 = !{ptr @rxrpc_input_data._entry.47, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @rxrpc_input_data._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/rxrpc/input.c", i32 322, i32 22}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/rxrpc/input.c", i32 326, i32 38}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../include/trace/events/rxrpc.h", i32 754, i32 1}
!116 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/rxrpc/input.c", i32 262, i32 2}
!119 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @rxrpc_end_tx_phase._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @rxrpc_end_tx_phase._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/rxrpc/input.c", i32 290, i32 2}
!124 = !{ptr @rxrpc_end_tx_phase._entry.54, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @rxrpc_end_tx_phase._entry_ptr.56, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/rxrpc/input.c", i32 295, i32 2}
!128 = !{ptr @rxrpc_end_tx_phase._entry.57, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @rxrpc_end_tx_phase._entry_ptr.59, !127, !"_entry_ptr", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../include/trace/events/rxrpc.h", i32 1006, i32 1}
!132 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/trace/events/rxrpc.h", i32 1516, i32 1}
!135 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/rxrpc/input.c", i32 855, i32 2}
!138 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @rxrpc_input_ack._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @rxrpc_input_ack._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/rxrpc/input.c", i32 859, i32 3}
!143 = !{ptr @rxrpc_input_ack._entry.62, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @rxrpc_input_ack._entry_ptr.64, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/rxrpc/input.c", i32 860, i32 28}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/rxrpc/input.c", i32 896, i32 3}
!149 = !{ptr @rxrpc_input_ack._entry.66, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @rxrpc_input_ack._entry_ptr.68, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/rxrpc/input.c", i32 918, i32 28}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/rxrpc/input.c", i32 939, i32 21}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/rxrpc/input.c", i32 956, i32 21}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/rxrpc/input.c", i32 960, i32 21}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/rxrpc/input.c", i32 966, i32 36}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../net/rxrpc/input.c", i32 973, i32 22}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../include/trace/events/rxrpc.h", i32 813, i32 1}
!165 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!166 = distinct !{null, !167, !"__already_done", i1 false, i1 false}
!167 = !{!"../include/trace/events/rxrpc.h", i32 1100, i32 1}
!168 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!169 = distinct !{null, !170, !"__already_done", i1 false, i1 false}
!170 = !{!"../include/trace/events/rxrpc.h", i32 1536, i32 1}
!171 = distinct !{null, !170, !"__warned", i1 false, i1 false}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/rxrpc/input.c", i32 725, i32 2}
!174 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @rxrpc_input_ackinfo._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @rxrpc_input_ackinfo._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/rxrpc/input.c", i32 750, i32 3}
!179 = !{ptr @rxrpc_input_ackinfo._entry.77, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @rxrpc_input_ackinfo._entry_ptr.79, !178, !"_entry_ptr", i1 false, i1 false}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../include/trace/events/rxrpc.h", i32 874, i32 1}
!183 = distinct !{null, !182, !"__warned", i1 false, i1 false}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/rxrpc/input.c", i32 803, i32 29}
!186 = distinct !{null, !187, !"__already_done", i1 false, i1 false}
!187 = !{!"../include/trace/events/rxrpc.h", i32 1270, i32 1}
!188 = distinct !{null, !187, !"__warned", i1 false, i1 false}
!189 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/rxrpc/input.c", i32 1020, i32 2}
!191 = !{ptr @rxrpc_input_abort._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @rxrpc_input_abort._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/rxrpc/input.c", i32 1029, i32 2}
!195 = !{ptr @rxrpc_input_abort._entry.82, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @rxrpc_input_abort._entry_ptr.84, !194, !"_entry_ptr", i1 false, i1 false}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../include/trace/events/rxrpc.h", i32 850, i32 1}
!199 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../net/rxrpc/input.c", i32 1001, i32 2}
!202 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @rxrpc_input_ackall._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @rxrpc_input_ackall._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../net/rxrpc/input.c", i32 1006, i32 35}
!207 = distinct !{null, !208, !"__already_done", i1 false, i1 false}
!208 = !{!"../include/trace/events/rxrpc.h", i32 678, i32 1}
!209 = distinct !{null, !208, !"__warned", i1 false, i1 false}
!210 = distinct !{null, !211, !"__already_done", i1 false, i1 false}
!211 = !{!"../include/trace/events/rxrpc.h", i32 696, i32 1}
!212 = distinct !{null, !211, !"__warned", i1 false, i1 false}
!213 = !{!"sp"}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{!"branch_weights", i32 2000, i32 1}
!224 = !{!"branch_weights", i32 1, i32 2000}
!225 = !{i64 2158313101}
!226 = !{i64 886519, i64 886540, i64 886563, i64 886582, i64 886601}
!227 = !{i64 2158313540}
!228 = !{i64 2148990404, i64 2148990409, i64 2148990422, i64 2148990466, i64 2148990500, i64 2148990521}
!229 = !{i64 2157944171}
!230 = !{i64 2157944364}
!231 = !{i64 2149401745}
!232 = !{i64 2149402781}
!233 = !{i64 2157632384}
!234 = !{i64 2157632581}
!235 = !{i64 2157720536}
!236 = !{i64 2157720785}
!237 = !{i64 2158237145}
!238 = !{i64 2158243283}
!239 = !{i64 2158252393}
!240 = !{i64 2158253095}
!241 = !{i64 2158253459}
!242 = !{!"auto-init"}
!243 = !{i64 2157648532}
!244 = !{i64 2157648757}
!245 = !{i64 2157666090}
!246 = !{i64 2157666375}
!247 = !{i64 2158053322}
!248 = !{i64 2158053549}
!249 = !{i64 2158036260}
!250 = !{i64 2158036469}
!251 = !{i64 2157924133}
!252 = !{i64 2157924346}
!253 = !{i64 2157848885}
!254 = !{i64 2157849118}
!255 = !{i64 2158161167}
!256 = !{i64 2158161400}
!257 = !{i64 2158207157, i64 2158207639, i64 2158207194, i64 2158207250, i64 2158207284, i64 2158207308, i64 2158207349, i64 2158207370, i64 2158207398, i64 2158207432}
!258 = !{i64 2157703422}
!259 = !{i64 2157703631}
!260 = !{i64 2157738873}
!261 = !{i64 2157739166}
!262 = !{i64 2158180463}
!263 = !{i64 2158180828}
!264 = !{i8 0, i8 2}
!265 = !{i64 2158203239, i64 2158203721, i64 2158203276, i64 2158203332, i64 2158203366, i64 2158203390, i64 2158203431, i64 2158203452, i64 2158203480, i64 2158203514}
!266 = !{i64 2157906886}
!267 = !{i64 2157907175}
!268 = !{i64 2157773614}
!269 = !{i64 2157777930}
!270 = !{i64 2157999023}
!271 = !{i64 2157999278}
!272 = !{i64 2157756203}
!273 = !{i64 2157756442}
