; ModuleID = '/llk/IR_all_yes/net/rxrpc/conn_object.c_pt.bc'
source_filename = "../net/rxrpc/conn_object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rxrpc_security = type { ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%union.anon.122 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.114 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.139, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon }
%union.anon = type { i64 }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.rxrpc_channel = type { i32, ptr, i32, i32, i32, i32, i8, %union.anon.138 }
%union.anon.138 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { ptr, [4 x i8], %struct.rxrpc_crypt, i32, [4 x i8] }
%struct.rxrpc_crypt = type { %union.anon.141 }
%union.anon.141 = type { [2 x i32] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.135 }
%union.anon.135 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
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
%struct.rxrpc_local = type { %struct.callback_head, %struct.atomic_t, %struct.atomic_t, ptr, %struct.list_head, ptr, %struct.work_struct, ptr, %struct.rw_semaphore, %struct.sk_buff_head, %struct.sk_buff_head, %struct.rb_root, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i8, i8, %struct.sockaddr_rxrpc }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rxrpc_bundle = type { %struct.rxrpc_conn_parameters, %struct.atomic_t, i32, i8, i8, i16, %struct.spinlock, %struct.rb_node, %struct.list_head, i32, [4 x ptr] }
%struct.rxrpc_net = type { ptr, i32, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, %struct.work_struct, %struct.timer_list, i8, i8, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.timer_list, %struct.list_head, %struct.mutex, [1024 x %struct.hlist_head], %struct.spinlock, i8, i64, [32 x %struct.list_head], %struct.list_head, %struct.timer_list, %struct.work_struct }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@rxrpc_connection_expiry = dso_local local_unnamed_addr global i32 600, section ".data..read_mostly", align 4
@rxrpc_closed_conn_expiry = dso_local local_unnamed_addr global i32 10, section ".data..read_mostly", align 4
@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_alloc_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxrpc_alloc_connection\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/rxrpc/conn_object.c\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_alloc_connection._entry_ptr = internal global ptr @rxrpc_alloc_connection._entry, section ".printk_index", align 4
@rxrpc_alloc_connection.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&conn->timer)\00", [17 x i8] zeroinitializer }, align 32
@rxrpc_alloc_connection.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&conn->processor)\00", [60 x i8] zeroinitializer }, align 32
@rxrpc_no_security = external dso_local constant %struct.rxrpc_security, align 4
@rxrpc_alloc_connection.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&conn->state_lock\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_debug_id = external dso_local global %struct.atomic_t, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rxrpc_alloc_connection._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() = %p{%d}\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_alloc_connection._entry_ptr.10 = internal global ptr @rxrpc_alloc_connection._entry.8, section ".printk_index", align 4
@rxrpc_find_connection_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s] ==> %s(,%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rxrpc_find_connection_rcu\00", [38 x i8] zeroinitializer }, align 32
@rxrpc_find_connection_rcu._entry_ptr = internal global ptr @rxrpc_find_connection_rcu._entry, section ".printk_index", align 4
@rxrpc_find_connection_rcu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@rxrpc_find_connection_rcu._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014rxrpc: AF_RXRPC: Protocol mismatch %u not %u\0A\00", [48 x i8] zeroinitializer }, align 32
@rxrpc_find_connection_rcu._entry_ptr.16 = internal global ptr @rxrpc_find_connection_rcu._entry.14, section ".printk_index", align 4
@rxrpc_find_connection_rcu._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_find_connection_rcu._entry_ptr.19 = internal global ptr @rxrpc_find_connection_rcu._entry.17, section ".printk_index", align 4
@rxrpc_client_conn_ids = external dso_local global %struct.idr, align 4
@rxrpc_find_connection_rcu._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s]     no conn\0A\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_find_connection_rcu._entry_ptr.22 = internal global ptr @rxrpc_find_connection_rcu._entry.20, section ".printk_index", align 4
@rxrpc_find_connection_rcu._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_find_connection_rcu._entry_ptr.24 = internal global ptr @rxrpc_find_connection_rcu._entry.23, section ".printk_index", align 4
@rxrpc_find_connection_rcu._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] <== %s() = NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@rxrpc_find_connection_rcu._entry_ptr.27 = internal global ptr @rxrpc_find_connection_rcu._entry.25, section ".printk_index", align 4
@__rxrpc_disconnect_call._entry = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 169, ptr null, ptr null }, align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s(%d,%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__rxrpc_disconnect_call\00", [40 x i8] zeroinitializer }, align 32
@__rxrpc_disconnect_call._entry_ptr = internal global ptr @__rxrpc_disconnect_call._entry, section ".printk_index", align 4
@__rxrpc_disconnect_call._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 199, ptr null, ptr null }, align 1
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@__rxrpc_disconnect_call._entry_ptr.32 = internal global ptr @__rxrpc_disconnect_call._entry.30, section ".printk_index", align 4
@rxrpc_kill_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rxrpc: Assertion failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxrpc_kill_connection\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_kill_connection._entry_ptr = internal global ptr @rxrpc_kill_connection._entry, section ".printk_index", align 4
@rxrpc_kill_connection._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_kill_connection._entry_ptr.36 = internal global ptr @rxrpc_kill_connection._entry.35, section ".printk_index", align 4
@rxrpc_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@rxrpc_put_service_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rxrpc: Assertion failed - %lu(0x%lx) %s %lu(0x%lx) is false\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxrpc_put_service_conn\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_put_service_conn._entry_ptr = internal global ptr @rxrpc_put_service_conn._entry, section ".printk_index", align 4
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c">=\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_service_connection_reaper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.40, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rxrpc_service_connection_reaper\00", [32 x i8] zeroinitializer }, align 32
@rxrpc_service_connection_reaper._entry_ptr = internal global ptr @rxrpc_service_connection_reaper._entry, section ".printk_index", align 4
@rxrpc_service_connection_reaper._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.40, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_service_connection_reaper._entry_ptr.42 = internal global ptr @rxrpc_service_connection_reaper._entry.41, section ".printk_index", align 4
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c">\00", [30 x i8] zeroinitializer }, align 32
@rxrpc_service_connection_reaper._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%-6.6s]     reap CONN %d { u=%d,t=%ld }\0A\00", [54 x i8] zeroinitializer }, align 32
@rxrpc_service_connection_reaper._entry_ptr.46 = internal global ptr @rxrpc_service_connection_reaper._entry.44, section ".printk_index", align 4
@rxrpc_service_connection_reaper._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s]     reschedule reaper %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@rxrpc_service_connection_reaper._entry_ptr.49 = internal global ptr @rxrpc_service_connection_reaper._entry.47, section ".printk_index", align 4
@rxrpc_service_connection_reaper._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.40, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_service_connection_reaper._entry_ptr.51 = internal global ptr @rxrpc_service_connection_reaper._entry.50, section ".printk_index", align 4
@rxrpc_service_connection_reaper._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.40, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_service_connection_reaper._entry_ptr.53 = internal global ptr @rxrpc_service_connection_reaper._entry.52, section ".printk_index", align 4
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_service_connection_reaper._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.40, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_service_connection_reaper._entry_ptr.56 = internal global ptr @rxrpc_service_connection_reaper._entry.55, section ".printk_index", align 4
@rxrpc_destroy_all_connections._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.57, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rxrpc_destroy_all_connections\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_connections._entry_ptr = internal global ptr @rxrpc_destroy_all_connections._entry, section ".printk_index", align 4
@rxrpc_destroy_all_connections._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rxrpc: AF_RXRPC: Leaked conn %p {%d}\0A\00", [56 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_connections._entry_ptr.60 = internal global ptr @rxrpc_destroy_all_connections._entry.58, section ".printk_index", align 4
@rxrpc_destroy_all_connections._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.57, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_connections._entry_ptr.62 = internal global ptr @rxrpc_destroy_all_connections._entry.61, section ".printk_index", align 4
@rxrpc_destroy_all_connections._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.57, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_connections._entry_ptr.64 = internal global ptr @rxrpc_destroy_all_connections._entry.63, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_disconnect_call = external dso_local global %struct.tracepoint, align 4
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_disconnect_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_conn = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_conn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_destroy_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] ==> %s({%d,u=%d})\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxrpc_destroy_connection\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_destroy_connection._entry_ptr = internal global ptr @rxrpc_destroy_connection._entry, section ".printk_index", align 4
@rxrpc_destroy_connection._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.70, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_destroy_connection._entry_ptr.72 = internal global ptr @rxrpc_destroy_connection._entry.71, section ".printk_index", align 4
@rxrpc_destroy_connection._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.70, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] @@@ DESTROY CONN %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_destroy_connection._entry_ptr.75 = internal global ptr @rxrpc_destroy_connection._entry.73, section ".printk_index", align 4
@rxrpc_destroy_connection._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.70, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_destroy_connection._entry_ptr.77 = internal global ptr @rxrpc_destroy_connection._entry.76, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 39, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 44, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 45, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 50, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 55, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 80, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 88, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 109, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 118, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 149, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 154, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 169, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 199, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 236, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 240, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 340, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 388, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 395, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 407, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 435, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 436, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 445, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 449, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 461, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 472, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 479, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 485, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1984, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1315, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 108, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 354, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 356, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 358, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private constant [27 x i8] c"../net/rxrpc/conn_object.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 373, i32 2 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__rxrpc_disconnect_call._entry, ptr @__rxrpc_disconnect_call._entry.30, ptr @__rxrpc_disconnect_call._entry_ptr, ptr @__rxrpc_disconnect_call._entry_ptr.32, ptr @rxrpc_alloc_connection._entry, ptr @rxrpc_alloc_connection._entry.8, ptr @rxrpc_alloc_connection._entry_ptr, ptr @rxrpc_alloc_connection._entry_ptr.10, ptr @rxrpc_destroy_all_connections._entry, ptr @rxrpc_destroy_all_connections._entry.58, ptr @rxrpc_destroy_all_connections._entry.61, ptr @rxrpc_destroy_all_connections._entry.63, ptr @rxrpc_destroy_all_connections._entry_ptr, ptr @rxrpc_destroy_all_connections._entry_ptr.60, ptr @rxrpc_destroy_all_connections._entry_ptr.62, ptr @rxrpc_destroy_all_connections._entry_ptr.64, ptr @rxrpc_destroy_connection._entry, ptr @rxrpc_destroy_connection._entry.71, ptr @rxrpc_destroy_connection._entry.73, ptr @rxrpc_destroy_connection._entry.76, ptr @rxrpc_destroy_connection._entry_ptr, ptr @rxrpc_destroy_connection._entry_ptr.72, ptr @rxrpc_destroy_connection._entry_ptr.75, ptr @rxrpc_destroy_connection._entry_ptr.77, ptr @rxrpc_find_connection_rcu._entry, ptr @rxrpc_find_connection_rcu._entry.14, ptr @rxrpc_find_connection_rcu._entry.17, ptr @rxrpc_find_connection_rcu._entry.20, ptr @rxrpc_find_connection_rcu._entry.23, ptr @rxrpc_find_connection_rcu._entry.25, ptr @rxrpc_find_connection_rcu._entry_ptr, ptr @rxrpc_find_connection_rcu._entry_ptr.16, ptr @rxrpc_find_connection_rcu._entry_ptr.19, ptr @rxrpc_find_connection_rcu._entry_ptr.22, ptr @rxrpc_find_connection_rcu._entry_ptr.24, ptr @rxrpc_find_connection_rcu._entry_ptr.27, ptr @rxrpc_kill_connection._entry, ptr @rxrpc_kill_connection._entry.35, ptr @rxrpc_kill_connection._entry_ptr, ptr @rxrpc_kill_connection._entry_ptr.36, ptr @rxrpc_put_service_conn._entry, ptr @rxrpc_put_service_conn._entry_ptr, ptr @rxrpc_service_connection_reaper._entry, ptr @rxrpc_service_connection_reaper._entry.41, ptr @rxrpc_service_connection_reaper._entry.44, ptr @rxrpc_service_connection_reaper._entry.47, ptr @rxrpc_service_connection_reaper._entry.50, ptr @rxrpc_service_connection_reaper._entry.52, ptr @rxrpc_service_connection_reaper._entry.55, ptr @rxrpc_service_connection_reaper._entry_ptr, ptr @rxrpc_service_connection_reaper._entry_ptr.42, ptr @rxrpc_service_connection_reaper._entry_ptr.46, ptr @rxrpc_service_connection_reaper._entry_ptr.49, ptr @rxrpc_service_connection_reaper._entry_ptr.51, ptr @rxrpc_service_connection_reaper._entry_ptr.53, ptr @rxrpc_service_connection_reaper._entry_ptr.56, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rxrpc_alloc_connection.__key, ptr @.str.3, ptr @rxrpc_alloc_connection.__key.4, ptr @.str.5, ptr @rxrpc_alloc_connection.__key.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @rxrpc_find_connection_rcu._rs, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @skb_queue_head_init.__key, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.74], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_connection.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_connection.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_connection.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_connection._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_connection_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_connection_rcu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_connection_rcu._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_connection_rcu._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_connection_rcu._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_connection_rcu._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_connection_rcu._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kill_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kill_connection._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_put_service_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_connection_reaper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_connection_reaper._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_connection_reaper._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_connection_reaper._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_connection_reaper._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_connection_reaper._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_connection_reaper._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_connections._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_connections._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_connections._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_connections._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_connection._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_connection._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_connection._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_alloc_connection(i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !151

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end6.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !151

do.end6.kzalloc.exit_crit_edge:                   ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %do.end6
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %do.end6.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %do.end6.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 9
  %5 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef %or.i, i32 noundef 480) #14
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %kzalloc.exit.do.body27_crit_edge, label %if.then9

kzalloc.exit.do.body27_crit_edge:                 ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

if.then9:                                         ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cache_link = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %cache_link to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %cache_link, ptr %cache_link, align 8
  %prev.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cache_link, ptr %prev.i, align 4
  %timer = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @rxrpc_connection_timer, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @rxrpc_alloc_connection.__key) #10
  %processor = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %processor, i32 noundef 0) #10
  %9 = ptrtoint ptr %processor to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %processor, align 4
  %lockdep_map = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @rxrpc_alloc_connection.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry17 = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry17, ptr %entry17, align 8
  %prev.i69 = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i69 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry17, ptr %prev.i69, align 4
  %func = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rxrpc_process_connection, ptr %func, align 8
  %proc_link = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %proc_link to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %proc_link, ptr %proc_link, align 8
  %prev.i70 = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %proc_link, ptr %prev.i70, align 4
  %link = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %link, ptr %link, align 8
  %prev.i71 = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %link, ptr %prev.i71, align 4
  %rx_queue = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 13
  %lock.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 13, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %17 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rx_queue, ptr %rx_queue, align 8
  %prev.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qlen.i.i, align 8
  %security = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 14
  %20 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rxrpc_no_security, ptr %security, align 8
  %state_lock = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %state_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @rxrpc_alloc_connection.__key.6, i16 noundef signext 3) #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rxrpc_debug_id, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr nonnull @rxrpc_debug_id, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rxrpc_debug_id, ptr nonnull @rxrpc_debug_id, i32 1, ptr nonnull elementtype(i32) @rxrpc_debug_id) #10, !srcloc !153
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !154
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 23
  %22 = ptrtoint ptr %debug_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %asmresult.i.i.i.i, ptr %debug_id, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %idle_timestamp = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %idle_timestamp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %idle_timestamp, align 8
  br label %do.body27

do.body27:                                        ; preds = %if.then9, %kzalloc.exit.do.body27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %25 = load i32, ptr @rxrpc_debug, align 4
  %and28 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.do.end50_crit_edge, label %do.end39, !prof !151

do.body27.do.end50_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end39:                                         ; preds = %do.body27
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i72 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i72 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task42, align 8
  %comm43 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  br i1 %tobool8.not, label %do.end39.cond.end_crit_edge, label %cond.true

do.end39.cond.end_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  %debug_id46 = getelementptr inbounds %struct.rxrpc_connection, ptr %call7.i.i, i32 0, i32 23
  %30 = ptrtoint ptr %debug_id46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_id46, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end39.cond.end_crit_edge
  %cond = phi i32 [ %31, %cond.true ], [ 0, %do.end39.cond.end_crit_edge ]
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm43, ptr noundef nonnull @.str.1, ptr noundef %call7.i.i, i32 noundef %cond) #13
  br label %do.end50

do.end50:                                         ; preds = %cond.end, %do.body27.do.end50_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_connection_timer(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -180
  %call = tail call zeroext i1 @rxrpc_queue_conn(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_process_connection(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_find_connection_rcu(ptr noundef %local, ptr noundef %skb, ptr nocapture noundef writeonly %_peer) local_unnamed_addr #0 align 64 {
entry:
  %srx = alloca %struct.sockaddr_rxrpc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %srx) #10
  %0 = call ptr @memset(ptr %srx, i32 255, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %1 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !151

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %cid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %6 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cid, align 4
  %and4 = and i32 %7, -4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm, ptr noundef nonnull @.str.12, i32 noundef %and4) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call8 = call i32 @rxrpc_extract_addr_from_skb(ptr noundef nonnull %srx, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end7.do.body195_crit_edge, label %if.end10

do.end7.do.body195_crit_edge:                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

if.end10:                                         ; preds = %do.end7
  %transport = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %8 = ptrtoint ptr %transport to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport, align 4
  %transport12 = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 18, i32 4
  %10 = ptrtoint ptr %transport12 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport12, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp18 = icmp ne i16 %9, 2
  %12 = and i16 %11, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %13 = icmp eq i16 %12, 2
  %14 = or i1 %cmp18, %13
  br i1 %14, label %if.end41, label %if.then26

if.then26:                                        ; preds = %if.end10
  %call27 = call i32 @___ratelimit(ptr noundef nonnull @rxrpc_find_connection_rcu._rs, ptr noundef nonnull @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.do.body195_crit_edge, label %do.end32

if.then26.do.body195_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

do.end32:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %transport to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport, align 4
  %conv35 = zext i16 %16 to i32
  %17 = ptrtoint ptr %transport12 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %transport12, align 4
  %conv38 = zext i16 %18 to i32
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv35, i32 noundef %conv38) #13
  br label %do.body195

if.end41:                                         ; preds = %if.end10
  %hdr42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %19 = ptrtoint ptr %hdr42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hdr42, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not = icmp eq i8 %23, 0
  br i1 %tobool.i.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end41
  %call50 = call ptr @rxrpc_lookup_peer_rcu(ptr noundef %local, ptr noundef nonnull %srx) #10
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.then49.do.body195_crit_edge, label %if.end53

if.then49.do.body195_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

if.end53:                                         ; preds = %if.then49
  %24 = ptrtoint ptr %_peer to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call50, ptr %_peer, align 4
  %call54 = call ptr @rxrpc_find_service_conn_rcu(ptr noundef nonnull %call50, ptr noundef %skb) #10
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.end53.do.body195_crit_edge, label %lor.lhs.false

if.end53.do.body195_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

lor.lhs.false:                                    ; preds = %if.end53
  %usage = getelementptr inbounds %struct.rxrpc_connection, ptr %call54, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %25 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp57 = icmp eq i32 %26, 0
  br i1 %cmp57, label %lor.lhs.false.do.body195_crit_edge, label %do.body61

lor.lhs.false.do.body195_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

do.body61:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %27 = load i32, ptr @rxrpc_debug, align 4
  %and62 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.body61.cleanup_crit_edge, label %do.end73, !prof !151

do.body61.cleanup_crit_edge:                      ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end73:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %28 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i249 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i249 to ptr
  %task76 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task76, align 8
  %comm77 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm77, ptr noundef nonnull @.str.12, ptr noundef nonnull %call54) #13
  br label %cleanup

if.else:                                          ; preds = %if.end41
  %cid45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %32 = ptrtoint ptr %cid45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cid45, align 4
  %shr = lshr i32 %33, 2
  %call85 = call ptr @idr_find(ptr noundef nonnull @rxrpc_client_conn_ids, i32 noundef %shr) #10
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %if.else.do.body93_crit_edge, label %lor.lhs.false87

if.else.do.body93_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body93

lor.lhs.false87:                                  ; preds = %if.else
  %usage88 = getelementptr inbounds %struct.rxrpc_connection, ptr %call85, i32 0, i32 2
  %call.i.i248 = call zeroext i1 @__kasan_check_read(ptr noundef %usage88, i32 noundef 4) #10
  %34 = ptrtoint ptr %usage88 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %usage88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp90 = icmp eq i32 %35, 0
  br i1 %cmp90, label %lor.lhs.false87.do.body93_crit_edge, label %if.end115

lor.lhs.false87.do.body93_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body93

do.body93:                                        ; preds = %lor.lhs.false87.do.body93_crit_edge, %if.else.do.body93_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %36 = load i32, ptr @rxrpc_debug, align 4
  %and94 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %do.body93.do.body195_crit_edge, label %do.end105, !prof !151

do.body93.do.body195_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

do.end105:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  %37 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i250 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i250 to ptr
  %task108 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task108 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task108, align 8
  %comm109 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %comm109) #13
  br label %do.body195

if.end115:                                        ; preds = %lor.lhs.false87
  %41 = ptrtoint ptr %call85 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call85, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %20)
  %cmp118.not = icmp eq i32 %42, %20
  br i1 %cmp118.not, label %lor.lhs.false120, label %if.end115.do.body195_crit_edge

if.end115.do.body195_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

lor.lhs.false120:                                 ; preds = %if.end115
  %params = getelementptr inbounds %struct.rxrpc_connection, ptr %call85, i32 0, i32 1
  %43 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %params, align 8
  %cmp122.not = icmp eq ptr %44, %local
  br i1 %cmp122.not, label %if.end125, label %lor.lhs.false120.do.body195_crit_edge

lor.lhs.false120.do.body195_crit_edge:            ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

if.end125:                                        ; preds = %lor.lhs.false120
  %peer127 = getelementptr inbounds %struct.rxrpc_connection, ptr %call85, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %peer127 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %peer127, align 4
  %47 = ptrtoint ptr %transport to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %transport, align 4
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i16 %48, label %do.body167 [
    i16 2, label %sw.bb
    i16 10, label %sw.bb148
  ]

sw.bb:                                            ; preds = %if.end125
  %sin_port = getelementptr inbounds %struct.rxrpc_peer, ptr %46, i32 0, i32 16, i32 4, i32 0, i32 1
  %50 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sin_port, align 2
  %sin_port134 = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %52 = ptrtoint ptr %sin_port134 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sin_port134, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp136.not = icmp eq i16 %51, %53
  br i1 %cmp136.not, label %lor.lhs.false138, label %sw.bb.do.body195_crit_edge

sw.bb.do.body195_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

lor.lhs.false138:                                 ; preds = %sw.bb
  %sin_addr = getelementptr inbounds %struct.rxrpc_peer, ptr %46, i32 0, i32 16, i32 4, i32 0, i32 2
  %54 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sin_addr, align 4
  %sin_addr142 = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 2
  %56 = ptrtoint ptr %sin_addr142 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sin_addr142, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp144.not = icmp eq i32 %55, %57
  br i1 %cmp144.not, label %lor.lhs.false138.do.body173_crit_edge, label %lor.lhs.false138.do.body195_crit_edge

lor.lhs.false138.do.body195_crit_edge:            ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

lor.lhs.false138.do.body173_crit_edge:            ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body173

sw.bb148:                                         ; preds = %if.end125
  %sin6_port = getelementptr inbounds %struct.rxrpc_peer, ptr %46, i32 0, i32 16, i32 4, i32 0, i32 1
  %58 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sin6_port, align 2
  %sin6_port153 = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %60 = ptrtoint ptr %sin6_port153 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sin6_port153, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %61)
  %cmp155.not = icmp eq i16 %59, %61
  br i1 %cmp155.not, label %lor.lhs.false157, label %sw.bb148.do.body195_crit_edge

sw.bb148.do.body195_crit_edge:                    ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

lor.lhs.false157:                                 ; preds = %sw.bb148
  %sin6_addr = getelementptr inbounds %struct.rxrpc_peer, ptr %46, i32 0, i32 16, i32 4, i32 0, i32 3
  %sin6_addr161 = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 3
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr, ptr noundef dereferenceable(16) %sin6_addr161, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp163.not = icmp eq i32 %bcmp, 0
  br i1 %cmp163.not, label %lor.lhs.false157.do.body173_crit_edge, label %lor.lhs.false157.do.body195_crit_edge

lor.lhs.false157.do.body195_crit_edge:            ; preds = %lor.lhs.false157
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body195

lor.lhs.false157.do.body173_crit_edge:            ; preds = %lor.lhs.false157
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body173

do.body167:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #10, !srcloc !155
  unreachable

do.body173:                                       ; preds = %lor.lhs.false157.do.body173_crit_edge, %lor.lhs.false138.do.body173_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %62 = load i32, ptr @rxrpc_debug, align 4
  %and174 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %do.body173.cleanup_crit_edge, label %do.end185, !prof !151

do.body173.cleanup_crit_edge:                     ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end185:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #12
  %63 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i251 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i251 to ptr
  %task188 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task188 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task188, align 8
  %comm189 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 101
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm189, ptr noundef nonnull @.str.12, ptr noundef nonnull %call85) #13
  br label %cleanup

do.body195:                                       ; preds = %lor.lhs.false157.do.body195_crit_edge, %sw.bb148.do.body195_crit_edge, %lor.lhs.false138.do.body195_crit_edge, %sw.bb.do.body195_crit_edge, %lor.lhs.false120.do.body195_crit_edge, %if.end115.do.body195_crit_edge, %do.end105, %do.body93.do.body195_crit_edge, %lor.lhs.false.do.body195_crit_edge, %if.end53.do.body195_crit_edge, %if.then49.do.body195_crit_edge, %do.end32, %if.then26.do.body195_crit_edge, %do.end7.do.body195_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %67 = load i32, ptr @rxrpc_debug, align 4
  %and196 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %do.body195.cleanup_crit_edge, label %do.end207, !prof !151

do.body195.cleanup_crit_edge:                     ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end207:                                        ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #12
  %68 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i252 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i252 to ptr
  %task210 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task210 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task210, align 8
  %comm211 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 101
  %call213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %comm211, ptr noundef nonnull @.str.12) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end207, %do.body195.cleanup_crit_edge, %do.end185, %do.body173.cleanup_crit_edge, %do.end73, %do.body61.cleanup_crit_edge
  %retval.0 = phi ptr [ %call54, %do.end73 ], [ %call54, %do.body61.cleanup_crit_edge ], [ %call85, %do.end185 ], [ %call85, %do.body173.cleanup_crit_edge ], [ null, %do.end207 ], [ null, %do.body195.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %srx) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_extract_addr_from_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_lookup_peer_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_find_service_conn_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rxrpc_disconnect_call(ptr noundef %conn, ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cid = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %0 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cid, align 8
  %and = and i32 %1, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %2 = load i32, ptr @rxrpc_debug, align 4
  %and1 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !151

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %7 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_id, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm, ptr noundef nonnull @.str.29, i32 noundef %8, i32 noundef %1) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %call14 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %and, i32 1
  %9 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %call14, align 4
  %cmp = icmp eq ptr %10, %call
  br i1 %cmp, label %if.then16, label %do.end9.do.body66_crit_edge

do.end9.do.body66_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

if.then16:                                        ; preds = %do.end9
  tail call fastcc void @trace_rxrpc_disconnect_call(ptr noundef %call)
  %completion = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %11 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %completion, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %12, label %if.then16.do.end23_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb17
  ]

if.then16.do.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

sw.bb:                                            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %rx_hard_ack = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 64
  br label %do.end23.sink.split

sw.bb17:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %abort_code = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  br label %do.end23.sink.split

do.end23.sink.split:                              ; preds = %sw.bb17, %sw.bb
  %abort_code.sink = phi ptr [ %abort_code, %sw.bb17 ], [ %rx_hard_ack, %sw.bb ]
  %.sink.ph = phi i8 [ 4, %sw.bb17 ], [ 2, %sw.bb ]
  %14 = ptrtoint ptr %abort_code.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %abort_code.sink, align 8
  br label %do.end23

do.end23:                                         ; preds = %do.end23.sink.split, %if.then16.do.end23_crit_edge
  %.sink110 = phi i32 [ -6, %if.then16.do.end23_crit_edge ], [ %15, %do.end23.sink.split ]
  %.sink = phi i8 [ 4, %if.then16.do.end23_crit_edge ], [ %.sink.ph, %do.end23.sink.split ]
  %16 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %and, i32 7
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink110, ptr %16, align 4
  %last_type19 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %and, i32 6
  %18 = ptrtoint ptr %last_type19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %last_type19, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  %call_id = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %and, i32 3
  %19 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call_id, align 4
  %last_call = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %and, i32 5
  %21 = ptrtoint ptr %last_call to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_call, align 4
  %call_counter = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %and, i32 4
  %22 = ptrtoint ptr %call_counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call_counter, align 4
  store i32 %23, ptr %call_id, align 4
  %24 = ptrtoint ptr %call14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr null, ptr %call14, align 4
  br label %do.body66

do.body66:                                        ; preds = %do.end23, %do.end9.do.body66_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %25 = load i32, ptr @rxrpc_debug, align 4
  %and67 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body66.do.end87_crit_edge, label %do.end78, !prof !151

do.body66.do.end87_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end87

do.end78:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i109 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i109 to ptr
  %task81 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task81 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task81, align 8
  %comm82 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm82, ptr noundef nonnull @.str.29) #13
  br label %do.end87

do.end87:                                         ; preds = %do.end78, %do.body66.do.end87_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_disconnect_call(ptr noundef %call) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_disconnect_call, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_disconnect_call, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !157

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !158
  %call43 = tail call i32 @__traceiter_rxrpc_disconnect_call(ptr noundef null, ptr noundef %call) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !159
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !151

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_disconnect_call, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_disconnect_call, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_rxrpc_disconnect_call.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rxrpc_disconnect_call.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 1333, ptr noundef nonnull @.str.67) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !161
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define dso_local void @rxrpc_disconnect_call(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %cong_cwnd = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 57
  %2 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cong_cwnd, align 2
  %peer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer, align 4
  %cong_cwnd2 = getelementptr inbounds %struct.rxrpc_peer, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %cong_cwnd2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %3, ptr %cong_cwnd2, align 1
  %pprev.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 23, i32 1
  %7 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %error_link = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 23
  %9 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peer, align 4
  %lock = getelementptr inbounds %struct.rxrpc_peer, ptr %10, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %11 = ptrtoint ptr %error_link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %error_link, align 4
  %13 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %12, ptr %14, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.then.hlist_del_rcu.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.then.hlist_del_rcu.exit_crit_edge
  %17 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i, align 4
  %18 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %peer, align 4
  %lock7 = getelementptr inbounds %struct.rxrpc_peer, ptr %19, i32 0, i32 10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock7) #10
  br label %if.end

if.end:                                           ; preds = %hlist_del_rcu.exit, %entry.if.end_crit_edge
  %flags.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i.i, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  %bundle = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bundle, align 8
  br i1 %tobool.i.not.i, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_disconnect_client_call(ptr noundef %24, ptr noundef %call) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %channel_lock = getelementptr inbounds %struct.rxrpc_bundle, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %channel_lock) #10
  tail call void @__rxrpc_disconnect_call(ptr noundef %1, ptr noundef %call)
  %25 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bundle, align 8
  %channel_lock13 = getelementptr inbounds %struct.rxrpc_bundle, ptr %26, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock13) #10
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %idle_timestamp = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %idle_timestamp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %idle_timestamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_disconnect_client_call(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_kill_connection(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 8
  %rxnet1 = getelementptr inbounds %struct.rxrpc_local, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rxnet1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxnet1, align 4
  %call = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 0, i32 1
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %call, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end38_crit_edge, !prof !151

entry.do.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

land.lhs.true:                                    ; preds = %entry
  %call10 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 1, i32 1
  %6 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %call10, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %land.lhs.true13, label %land.lhs.true.do.end38_crit_edge, !prof !151

land.lhs.true.do.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

land.lhs.true13:                                  ; preds = %land.lhs.true
  %call20 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 2, i32 1
  %8 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %call20, align 4
  %tobool22.not = icmp eq ptr %9, null
  br i1 %tobool22.not, label %land.rhs, label %land.lhs.true13.do.end38_crit_edge, !prof !151

land.lhs.true13.do.end38_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

land.rhs:                                         ; preds = %land.lhs.true13
  %call29 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 3, i32 1
  %10 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %call29, align 4
  %tobool31.not.not = icmp eq ptr %11, null
  br i1 %tobool31.not.not, label %do.body49, label %land.rhs.do.end38_crit_edge, !prof !151

land.rhs.do.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

do.end38:                                         ; preds = %land.rhs.do.end38_crit_edge, %land.lhs.true13.do.end38_crit_edge, %land.lhs.true.do.end38_crit_edge, %entry.do.end38_crit_edge
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #10, !srcloc !162
  unreachable

do.body49:                                        ; preds = %land.rhs
  %cache_link = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 4
  %12 = ptrtoint ptr %cache_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %cache_link, align 4
  %cmp.i.not = icmp eq ptr %13, %cache_link
  br i1 %cmp.i.not, label %do.end74, label %do.end63, !prof !151

do.end63:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #10, !srcloc !163
  unreachable

do.end74:                                         ; preds = %do.body49
  %conn_lock = getelementptr inbounds %struct.rxrpc_net, ptr %3, i32 0, i32 8
  tail call void @_raw_write_lock(ptr noundef %conn_lock) #10
  %proc_link = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %proc_link) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end74.list_del_init.exit_crit_edge

do.end74.list_del_init.exit_crit_edge:            ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %proc_link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %proc_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end74.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %proc_link to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %proc_link, ptr %proc_link, align 4
  %prev.i3.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 11, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %proc_link, ptr %prev.i3.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %conn_lock) #10
  %rx_queue = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 13
  tail call void @rxrpc_purge_queue(ptr noundef %rx_queue) #10
  %rcu = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @rxrpc_destroy_connection) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_purge_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_destroy_connection(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.end, !prof !151

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr i8, ptr %rcu, i32 424
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 8
  %usage = getelementptr i8, ptr %rcu, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %7 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %usage, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %comm, ptr noundef nonnull @.str.70, i32 noundef %6, i32 noundef %8) #13
  br label %do.body9

do.body9:                                         ; preds = %do.end, %entry.do.body9_crit_edge
  %usage10 = getelementptr i8, ptr %rcu, i32 -4
  %call.i.i110 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage10, i32 noundef 4) #10
  %9 = ptrtoint ptr %usage10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %usage10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end32, label %do.end23, !prof !151

do.end23:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %10, i32 noundef %10, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 0) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 356, 0\0A.popsection", ""() #10, !srcloc !164
  unreachable

if.end32:                                         ; preds = %do.body9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %11 = load i32, ptr @rxrpc_debug, align 4
  %and36 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end32.do.end57_crit_edge, label %do.end47, !prof !151

if.end32.do.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

do.end47:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i112 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i112 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %debug_id53 = getelementptr i8, ptr %rcu, i32 424
  %16 = ptrtoint ptr %debug_id53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_id53, align 8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %comm51, i32 noundef %17) #13
  br label %do.end57

do.end57:                                         ; preds = %do.end47, %if.end32.do.end57_crit_edge
  %timer = getelementptr i8, ptr %rcu, i32 148
  %call58 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  %rx_queue = getelementptr i8, ptr %rcu, i32 272
  tail call void @rxrpc_purge_queue(ptr noundef %rx_queue) #10
  %security = getelementptr i8, ptr %rcu, i32 328
  %18 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security, align 8
  %clear = getelementptr inbounds %struct.rxrpc_security, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %clear to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clear, align 4
  tail call void %21(ptr noundef %add.ptr) #10
  %params = getelementptr i8, ptr %rcu, i32 -24
  %key = getelementptr i8, ptr %rcu, i32 -16
  %22 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %key, align 8
  tail call void @key_put(ptr noundef %23) #10
  %bundle = getelementptr i8, ptr %rcu, i32 240
  %24 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bundle, align 8
  tail call void @rxrpc_put_bundle(ptr noundef %25) #10
  %peer = getelementptr i8, ptr %rcu, i32 -20
  %26 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %peer, align 4
  tail call void @rxrpc_put_peer(ptr noundef %27) #10
  %28 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %params, align 8
  %rxnet = getelementptr inbounds %struct.rxrpc_local, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %rxnet to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rxnet, align 4
  %nr_conns = getelementptr inbounds %struct.rxrpc_net, ptr %31, i32 0, i32 5
  %call.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_conns, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %nr_conns, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_conns, ptr %nr_conns, i32 1, ptr elementtype(i32) %nr_conns) #10, !srcloc !166
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then62, label %do.end57.if.end67_crit_edge

do.end57.if.end67_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then62:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %params, align 8
  %rxnet65 = getelementptr inbounds %struct.rxrpc_local, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %rxnet65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rxnet65, align 4
  %nr_conns66 = getelementptr inbounds %struct.rxrpc_net, ptr %36, i32 0, i32 5
  tail call void @wake_up_var(ptr noundef %nr_conns66) #10
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %do.end57.if.end67_crit_edge
  %37 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %params, align 8
  tail call void @rxrpc_put_local(ptr noundef %38) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %39 = load i32, ptr @rxrpc_debug, align 4
  %and71 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end67.do.end91_crit_edge, label %do.end82, !prof !151

if.end67.do.end91_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

do.end82:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %40 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i113 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i113 to ptr
  %task85 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task85, align 8
  %comm86 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 101
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm86, ptr noundef nonnull @.str.70) #13
  br label %do.end91

do.end91:                                         ; preds = %do.end82, %if.end67.do.end91_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rxrpc_queue_conn(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %usage = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 0, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !169
  %asmresult.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.not.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_workqueue to i32))
  %2 = load ptr, ptr @rxrpc_workqueue, align 4
  %processor = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %processor) #10
  br i1 %call.i, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 8
  %add = add i32 %asmresult.i.i, 1
  tail call fastcc void @trace_rxrpc_conn(i32 noundef %4, i32 noundef 5, i32 noundef %add, ptr noundef %0)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %conn, null
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %out_clientflag.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 28
  %5 = ptrtoint ptr %out_clientflag.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %out_clientflag.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not.i = icmp eq i8 %6, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_client_conn(ptr noundef nonnull %conn) #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_service_conn(ptr noundef nonnull %conn) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then1.i, %if.else.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %7 = xor i1 %cmp.not.i.i, true
  ret i1 %7
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_conn(i32 noundef %conn_debug_id, i32 noundef %op, i32 noundef %usage, ptr noundef %where) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_conn, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_conn, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !157

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  %call42 = tail call i32 @__traceiter_rxrpc_conn(ptr noundef null, i32 noundef %conn_debug_id, i32 noundef %op, i32 noundef %usage, ptr noundef %where) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_conn, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_conn, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rxrpc_conn.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rxrpc_conn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 561, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !161
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define dso_local void @rxrpc_see_connection(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %conn, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %usage = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %1 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %usage, align 4
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 8
  tail call fastcc void @trace_rxrpc_conn(i32 noundef %4, i32 noundef 7, i32 noundef %2, ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_get_connection(ptr noundef returned %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %usage = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !153
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !154
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %2 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id, align 8
  tail call fastcc void @trace_rxrpc_conn(i32 noundef %3, i32 noundef 0, i32 noundef %asmresult.i.i.i.i, ptr noundef %0)
  ret ptr %conn
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_get_connection_maybe(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %tobool.not = icmp eq ptr %conn, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 0, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !169
  %asmresult.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.not.i.i, label %if.then.if.end2_crit_edge, label %atomic_fetch_add_unless.exit

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

atomic_fetch_add_unless.exit:                     ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i, 0
  br i1 %cmp, label %if.then1, label %atomic_fetch_add_unless.exit.if.end2_crit_edge

atomic_fetch_add_unless.exit.if.end2_crit_edge:   ; preds = %atomic_fetch_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then1:                                         ; preds = %atomic_fetch_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #12
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %2 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id, align 8
  %add = add nuw i32 %asmresult.i.i, 1
  tail call fastcc void @trace_rxrpc_conn(i32 noundef %3, i32 noundef 0, i32 noundef %add, ptr noundef %0)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %atomic_fetch_add_unless.exit.if.end2_crit_edge, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %conn.addr.1 = phi ptr [ null, %entry.if.end2_crit_edge ], [ %conn, %if.then1 ], [ null, %atomic_fetch_add_unless.exit.if.end2_crit_edge ], [ null, %if.then.if.end2_crit_edge ]
  ret ptr %conn.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_put_service_conn(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %debug_id1 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %1 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug_id1, align 8
  %usage = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !166
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !167
  tail call fastcc void @trace_rxrpc_conn(i32 noundef %2, i32 noundef 4, i32 noundef %asmresult.i.i.i.i, ptr noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %do.end, label %if.end, !prof !173

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %asmresult.i.i.i.i, i32 noundef %asmresult.i.i.i.i, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 0) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #10, !srcloc !174
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp14 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp14, label %if.then15, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %if.end
  %params = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params, align 8
  %rxnet = getelementptr inbounds %struct.rxrpc_local, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rxnet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxnet, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %live.i = getelementptr inbounds %struct.rxrpc_net, ptr %7, i32 0, i32 11
  %9 = ptrtoint ptr %live.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %live.i, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then15.if.end16_crit_edge, label %if.then.i

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %11 = load i32, ptr @rxrpc_connection_expiry, align 4
  %add = add i32 %11, %8
  %service_conn_reap_timer.i = getelementptr inbounds %struct.rxrpc_net, ptr %7, i32 0, i32 10
  %call.i = tail call i32 @timer_reduce(ptr noundef %service_conn_reap_timer.i, i32 noundef %add) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then.i, %if.then15.if.end16_crit_edge, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_service_connection_reaper(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %graveyard = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %graveyard) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %graveyard, i32 0, i32 1
  %1 = ptrtoint ptr %graveyard to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %graveyard, ptr %graveyard, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %graveyard, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %3 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !151

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.40) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 1073741822
  %conn_lock = getelementptr i8, ptr %work, i32 -44
  call void @_raw_write_lock(ptr noundef %conn_lock) #10
  %service_conns = getelementptr i8, ptr %work, i32 -52
  %9 = ptrtoint ptr %service_conns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %service_conns, align 4
  %cmp.not305 = icmp eq ptr %10, %service_conns
  br i1 %cmp.not305, label %for.end.thread, label %do.body20.lr.ph

for.end.thread:                                   ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_write_unlock(ptr noundef %conn_lock) #10
  br label %if.end183

do.body20.lr.ph:                                  ; preds = %do.end7
  %live = getelementptr i8, ptr %work, i32 92
  br label %do.body20

do.body20:                                        ; preds = %for.inc.do.body20_crit_edge, %do.body20.lr.ph
  %.pn.in308 = phi ptr [ %10, %do.body20.lr.ph ], [ %.pn310, %for.inc.do.body20_crit_edge ]
  %earliest.0306 = phi i32 [ %add, %do.body20.lr.ph ], [ %earliest.1, %for.inc.do.body20_crit_edge ]
  %conn.0309 = getelementptr i8, ptr %.pn.in308, i32 -296
  %11 = ptrtoint ptr %.pn.in308 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn310 = load ptr, ptr %.pn.in308, align 8
  %usage = getelementptr i8, ptr %.pn.in308, i32 -268
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %12 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp22 = icmp slt i32 %13, 1
  br i1 %cmp22, label %do.end34, label %if.end43, !prof !173

do.end34:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %13, i32 noundef %13, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 395, 0\0A.popsection", ""() #10, !srcloc !176
  unreachable

if.end43:                                         ; preds = %do.body20
  %call.i.i290 = call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %14 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp48 = icmp sgt i32 %15, 1
  br i1 %cmp48, label %if.end43.for.inc_crit_edge, label %if.end56, !prof !151

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end56:                                         ; preds = %if.end43
  %state = getelementptr i8, ptr %.pn.in308, i32 152
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp57 = icmp eq i32 %17, 2
  br i1 %cmp57, label %if.end56.for.inc_crit_edge, label %if.end59

if.end56.for.inc_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end59:                                         ; preds = %if.end56
  %18 = ptrtoint ptr %live to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %live, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool60.not = icmp eq i8 %19, 0
  br i1 %tobool60.not, label %if.end59.if.end108_crit_edge, label %land.lhs.true

if.end59.if.end108_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

land.lhs.true:                                    ; preds = %if.end59
  %params = getelementptr i8, ptr %.pn.in308, i32 -288
  %20 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %params, align 8
  %dead = getelementptr inbounds %struct.rxrpc_local, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dead, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool61.not = icmp eq i8 %23, 0
  br i1 %tobool61.not, label %do.end65, label %land.lhs.true.if.end108_crit_edge

land.lhs.true.if.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

do.end65:                                         ; preds = %land.lhs.true
  %idle_timestamp67 = getelementptr i8, ptr %.pn.in308, i32 104
  %24 = ptrtoint ptr %idle_timestamp67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %idle_timestamp67, align 8
  %service_closed = getelementptr inbounds %struct.rxrpc_local, ptr %21, i32 0, i32 17
  %26 = ptrtoint ptr %service_closed to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %service_closed, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool71.not = icmp eq i8 %27, 0
  %rxrpc_connection_expiry.val = load i32, ptr @rxrpc_connection_expiry, align 4
  %rxrpc_closed_conn_expiry.val = load i32, ptr @rxrpc_closed_conn_expiry, align 4
  %mul73.pn.in = select i1 %tobool71.not, i32 %rxrpc_connection_expiry.val, i32 %rxrpc_closed_conn_expiry.val
  %mul73.pn = mul i32 %mul73.pn.in, 100
  %expire_at.0 = add i32 %mul73.pn, %25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %28 = load i32, ptr @rxrpc_debug, align 4
  %and77 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.end65.do.end99_crit_edge, label %do.end88, !prof !151

do.end65.do.end99_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99

do.end88:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  %29 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i294 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i294 to ptr
  %task91 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task91, align 8
  %comm92 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 101
  %debug_id = getelementptr i8, ptr %.pn.in308, i32 160
  %33 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug_id, align 8
  %call.i.i291 = call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %35 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %usage, align 4
  %sub = sub i32 %expire_at.0, %8
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %comm92, i32 noundef %34, i32 noundef %36, i32 noundef %sub) #13
  br label %do.end99

do.end99:                                         ; preds = %do.end88, %do.end65.do.end99_crit_edge
  %sub100 = sub i32 %8, %expire_at.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub100)
  %cmp101 = icmp slt i32 %sub100, 0
  br i1 %cmp101, label %if.then102, label %do.end99.if.end108_crit_edge

do.end99.if.end108_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then102:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  %sub103 = sub i32 %expire_at.0, %earliest.0306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub103)
  %cmp104 = icmp slt i32 %sub103, 0
  %spec.select289 = select i1 %cmp104, i32 %expire_at.0, i32 %earliest.0306
  br label %for.inc

if.end108:                                        ; preds = %do.end99.if.end108_crit_edge, %land.lhs.true.if.end108_crit_edge, %if.end59.if.end108_crit_edge
  %call.i.i292 = call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !177
  call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end108
  %37 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, i32 0, ptr elementtype(i32) %usage) #10, !srcloc !178
  %asmresult.i.i.i = extractvalue { i32, i32 } %37, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %37, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i)
  %cmp111.not = icmp eq i32 %asmresult3.i.i.i, 1
  br i1 %cmp111.not, label %if.end113, label %atomic_cmpxchg.exit.for.inc_crit_edge

atomic_cmpxchg.exit.for.inc_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end113:                                        ; preds = %atomic_cmpxchg.exit
  %debug_id114 = getelementptr i8, ptr %.pn.in308, i32 160
  %38 = ptrtoint ptr %debug_id114 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug_id114, align 8
  call fastcc void @trace_rxrpc_conn(i32 noundef %39, i32 noundef 6, i32 noundef 0, ptr noundef null)
  %out_clientflag.i = getelementptr i8, ptr %.pn.in308, i32 177
  %40 = ptrtoint ptr %out_clientflag.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %out_clientflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.i.not = icmp eq i8 %41, 0
  br i1 %tobool.i.not, label %if.else, label %do.body117

do.body117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #10, !srcloc !180
  unreachable

if.else:                                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  call void @rxrpc_unpublish_service_conn(ptr noundef %conn.0309) #10
  call fastcc void @list_move_tail(ptr noundef %.pn.in308, ptr noundef nonnull %graveyard)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %atomic_cmpxchg.exit.for.inc_crit_edge, %if.then102, %if.end56.for.inc_crit_edge, %if.end43.for.inc_crit_edge
  %earliest.1 = phi i32 [ %earliest.0306, %if.end43.for.inc_crit_edge ], [ %earliest.0306, %if.end56.for.inc_crit_edge ], [ %earliest.0306, %atomic_cmpxchg.exit.for.inc_crit_edge ], [ %earliest.0306, %if.else ], [ %spec.select289, %if.then102 ]
  %cmp.not = icmp eq ptr %.pn310, %service_conns
  br i1 %cmp.not, label %for.end, label %for.inc.do.body20_crit_edge

for.inc.do.body20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

for.end:                                          ; preds = %for.inc
  call void @_raw_write_unlock(ptr noundef %conn_lock) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %earliest.1, i32 %add)
  %cmp132.not = icmp eq i32 %earliest.1, %add
  br i1 %cmp132.not, label %for.end.if.end183_crit_edge, label %do.body134

for.end.if.end183_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

do.body134:                                       ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %42 = load i32, ptr @rxrpc_debug, align 4
  %and135 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.body134.do.body157_crit_edge, label %do.end146, !prof !151

do.body134.do.body157_crit_edge:                  ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body157

do.end146:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #12
  %43 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i295 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i295 to ptr
  %task149 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task149 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task149, align 8
  %comm150 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 101
  %sub152 = sub i32 %earliest.1, %8
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm150, i32 noundef %sub152) #13
  br label %do.body157

do.body157:                                       ; preds = %do.end146, %do.body134.do.body157_crit_edge
  %sub158 = sub i32 %8, %earliest.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub158)
  %cmp159 = icmp sgt i32 %sub158, -1
  br i1 %cmp159, label %do.end171, label %do.end182, !prof !173

do.end171:                                        ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #12
  %call173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 436, 0\0A.popsection", ""() #10, !srcloc !181
  unreachable

do.end182:                                        ; preds = %do.body157
  %live.i = getelementptr i8, ptr %work, i32 92
  %47 = ptrtoint ptr %live.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %live.i, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %do.end182.if.end183_crit_edge, label %if.then.i

do.end182.if.end183_crit_edge:                    ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.then.i:                                        ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #12
  %service_conn_reap_timer.i = getelementptr i8, ptr %work, i32 44
  %call.i = call i32 @timer_reduce(ptr noundef %service_conn_reap_timer.i, i32 noundef %earliest.1) #10
  br label %if.end183

if.end183:                                        ; preds = %if.then.i, %do.end182.if.end183_crit_edge, %for.end.if.end183_crit_edge, %for.end.thread
  %49 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %graveyard, align 4
  %cmp.i.not311 = icmp eq ptr %50, %graveyard
  br i1 %cmp.i.not311, label %if.end183.do.body222_crit_edge, label %if.end183.while.body_crit_edge

if.end183.while.body_crit_edge:                   ; preds = %if.end183
  br label %while.body

if.end183.do.body222_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body222

while.body:                                       ; preds = %if.end219.while.body_crit_edge, %if.end183.while.body_crit_edge
  %51 = phi ptr [ %63, %if.end219.while.body_crit_edge ], [ %50, %if.end183.while.body_crit_edge ]
  %call.i.i296 = call zeroext i1 @__list_del_entry_valid(ptr noundef %51) #10
  br i1 %call.i.i296, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %51, ptr %51, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %51, ptr %prev.i3.i, align 4
  %usage195 = getelementptr i8, ptr %51, i32 -268
  %call.i.i293 = call zeroext i1 @__kasan_check_read(ptr noundef %usage195, i32 noundef 4) #10
  %60 = ptrtoint ptr %usage195 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %usage195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp198.not = icmp eq i32 %61, 0
  br i1 %cmp198.not, label %if.end219, label %do.end210, !prof !151

do.end210:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %61, i32 noundef %61, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 0) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #10, !srcloc !182
  unreachable

if.end219:                                        ; preds = %list_del_init.exit
  %add.ptr191 = getelementptr i8, ptr %51, i32 -296
  call void @rxrpc_kill_connection(ptr noundef %add.ptr191)
  %62 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %graveyard, align 4
  %cmp.i.not = icmp eq ptr %63, %graveyard
  br i1 %cmp.i.not, label %if.end219.do.body222_crit_edge, label %if.end219.while.body_crit_edge

if.end219.while.body_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end219.do.body222_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body222

do.body222:                                       ; preds = %if.end219.do.body222_crit_edge, %if.end183.do.body222_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %64 = load i32, ptr @rxrpc_debug, align 4
  %and223 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %do.body222.do.end243_crit_edge, label %do.end234, !prof !151

do.body222.do.end243_crit_edge:                   ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end243

do.end234:                                        ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #12
  %65 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i297 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i297 to ptr
  %task237 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task237 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task237, align 8
  %comm238 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 101
  %call240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm238, ptr noundef nonnull @.str.40) #13
  br label %do.end243

do.end243:                                        ; preds = %do.end234, %do.body222.do.end243_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %graveyard) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_unpublish_service_conn(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move_tail(ptr noundef %list, ptr noundef %head) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %head) #10
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add_tail.exit_crit_edge

__list_del_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__list_del_entry.exit.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_destroy_all_connections(ptr noundef %rxnet) local_unnamed_addr #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !151

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.57) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %nr_conns = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_conns, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nr_conns, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_conns, ptr %nr_conns, i32 1, ptr elementtype(i32) %nr_conns) #10, !srcloc !183
  tail call void @rxrpc_destroy_all_client_connections(ptr noundef %rxnet) #10
  %service_conn_reap_timer = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 10
  %call7 = tail call i32 @del_timer_sync(ptr noundef %service_conn_reap_timer) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_workqueue to i32))
  %6 = load ptr, ptr @rxrpc_workqueue, align 4
  %service_conn_reaper = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %service_conn_reaper) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_workqueue to i32))
  %7 = load ptr, ptr @rxrpc_workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %7) #10
  %conn_lock = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 8
  tail call void @_raw_write_lock(ptr noundef %conn_lock) #10
  %service_conns = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 7
  %8 = ptrtoint ptr %service_conns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %service_conns, align 4
  %cmp.not147 = icmp eq ptr %9, %service_conns
  br i1 %cmp.not147, label %do.body48.critedge, label %do.end6.do.end20_crit_edge

do.end6.do.end20_crit_edge:                       ; preds = %do.end6
  br label %do.end20

do.end20:                                         ; preds = %do.end20.do.end20_crit_edge, %do.end6.do.end20_crit_edge
  %.pn.in148 = phi ptr [ %.pn, %do.end20.do.end20_crit_edge ], [ %9, %do.end6.do.end20_crit_edge ]
  %conn.0 = getelementptr i8, ptr %.pn.in148, i32 -296
  %10 = ptrtoint ptr %.pn.in148 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in148, align 8
  %usage = getelementptr i8, ptr %.pn.in148, i32 -268
  %call.i.i141 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %11 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %usage, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %conn.0, i32 noundef %12) #13
  %cmp.not = icmp eq ptr %.pn, %service_conns
  br i1 %cmp.not, label %for.end, label %do.end20.do.end20_crit_edge

do.end20.do.end20_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

for.end:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock(ptr noundef %conn_lock) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 477, 0\0A.popsection", ""() #10, !srcloc !184
  unreachable

do.body48.critedge:                               ; preds = %do.end6
  tail call void @_raw_write_unlock(ptr noundef %conn_lock) #10
  %conn_proc_list = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 6
  %13 = ptrtoint ptr %conn_proc_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %conn_proc_list, align 4
  %cmp.i.not = icmp eq ptr %14, %conn_proc_list
  br i1 %cmp.i.not, label %do.body75, label %do.end62, !prof !151

do.end62:                                         ; preds = %do.body48.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 479, 0\0A.popsection", ""() #10, !srcloc !185
  unreachable

do.body75:                                        ; preds = %do.body48.critedge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 484) #10
  %call.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_conns, i32 noundef 4) #10
  %15 = ptrtoint ptr %nr_conns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %nr_conns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool83.not = icmp eq i32 %16, 0
  br i1 %tobool83.not, label %do.body75.do.body101_crit_edge, label %if.end85

do.body75.do.body101_crit_edge:                   ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body101

if.end85:                                         ; preds = %do.body75
  %call87 = tail call ptr @__var_waitqueue(ptr noundef %nr_conns) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #10
  %17 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %18 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %nr_conns, i32 noundef 0) #10
  %call90149 = call i32 @prepare_to_wait_event(ptr noundef %call87, ptr noundef %17, i32 noundef 2) #10
  %call.i.i143150 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_conns, i32 noundef 4) #10
  %19 = ptrtoint ptr %nr_conns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %nr_conns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool93.not151 = icmp eq i32 %20, 0
  br i1 %tobool93.not151, label %if.end85.for.end96_crit_edge, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  br label %cleanup

if.end85.for.end96_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end96

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end85.cleanup_crit_edge
  call void @schedule() #10
  %call90 = call i32 @prepare_to_wait_event(ptr noundef %call87, ptr noundef %17, i32 noundef 2) #10
  %call.i.i143 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_conns, i32 noundef 4) #10
  %21 = ptrtoint ptr %nr_conns to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %nr_conns, align 4
  %tobool93.not = icmp eq i32 %22, 0
  br i1 %tobool93.not, label %cleanup.for.end96_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end96_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end96

for.end96:                                        ; preds = %cleanup.for.end96_crit_edge, %if.end85.for.end96_crit_edge
  call void @finish_wait(ptr noundef %call87, ptr noundef %17) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #10
  br label %do.body101

do.body101:                                       ; preds = %for.end96, %do.body75.do.body101_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %23 = load i32, ptr @rxrpc_debug, align 4
  %and102 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %do.body101.do.end122_crit_edge, label %do.end113, !prof !151

do.body101.do.end122_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

do.end113:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #12
  %24 = call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i144 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i144 to ptr
  %task116 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task116, align 8
  %comm117 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm117, ptr noundef nonnull @.str.57) #13
  br label %do.end122

do.end122:                                        ; preds = %do.end113, %do.body101.do.end122_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_destroy_all_client_connections(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_disconnect_call(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_conn(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_client_conn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_bundle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_peer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !119, !120, !122, !123, !125, !126, !128, !129, !130, !131, !133, !134, !136, !137, !138, !140}
!llvm.named.register.sp = !{!141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @rxrpc_connection_expiry, !1, !"rxrpc_connection_expiry", i1 false, i1 false}
!1 = !{!"../net/rxrpc/conn_object.c", i32 19, i32 28}
!2 = !{ptr @rxrpc_closed_conn_expiry, !3, !"rxrpc_closed_conn_expiry", i1 false, i1 false}
!3 = !{!"../net/rxrpc/conn_object.c", i32 20, i32 28}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/rxrpc/conn_object.c", i32 39, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rxrpc_alloc_connection._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rxrpc_alloc_connection._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @rxrpc_alloc_connection.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../net/rxrpc/conn_object.c", i32 44, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rxrpc_alloc_connection.__key.4, !14, !"__key", i1 false, i1 false}
!14 = !{!"../net/rxrpc/conn_object.c", i32 45, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rxrpc_alloc_connection.__key.6, !17, !"__key", i1 false, i1 false}
!17 = !{!"../net/rxrpc/conn_object.c", i32 50, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/rxrpc/conn_object.c", i32 55, i32 2}
!21 = !{ptr @rxrpc_alloc_connection._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @rxrpc_alloc_connection._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/rxrpc/conn_object.c", i32 80, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rxrpc_find_connection_rcu._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @rxrpc_find_connection_rcu._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/rxrpc/conn_object.c", i32 88, i32 3}
!30 = !{ptr @rxrpc_find_connection_rcu._rs, !29, !"_rs", i1 false, i1 false}
!31 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rxrpc_find_connection_rcu._entry.14, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @rxrpc_find_connection_rcu._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/rxrpc/conn_object.c", i32 109, i32 3}
!36 = !{ptr @rxrpc_find_connection_rcu._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rxrpc_find_connection_rcu._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/rxrpc/conn_object.c", i32 118, i32 4}
!40 = !{ptr @rxrpc_find_connection_rcu._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rxrpc_find_connection_rcu._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @rxrpc_find_connection_rcu._entry.23, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../net/rxrpc/conn_object.c", i32 149, i32 3}
!44 = !{ptr @rxrpc_find_connection_rcu._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/rxrpc/conn_object.c", i32 154, i32 2}
!47 = !{ptr @rxrpc_find_connection_rcu._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rxrpc_find_connection_rcu._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/rxrpc/conn_object.c", i32 169, i32 2}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__rxrpc_disconnect_call._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @__rxrpc_disconnect_call._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/rxrpc/conn_object.c", i32 199, i32 2}
!56 = !{ptr @__rxrpc_disconnect_call._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @__rxrpc_disconnect_call._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/rxrpc/conn_object.c", i32 236, i32 2}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rxrpc_kill_connection._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @rxrpc_kill_connection._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @rxrpc_kill_connection._entry.35, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../net/rxrpc/conn_object.c", i32 240, i32 2}
!65 = !{ptr @rxrpc_kill_connection._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/rxrpc/conn_object.c", i32 340, i32 2}
!68 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rxrpc_put_service_conn._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @rxrpc_put_service_conn._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/rxrpc/conn_object.c", i32 388, i32 2}
!74 = !{ptr @rxrpc_service_connection_reaper._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rxrpc_service_connection_reaper._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @rxrpc_service_connection_reaper._entry.41, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../net/rxrpc/conn_object.c", i32 395, i32 3}
!78 = !{ptr @rxrpc_service_connection_reaper._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/rxrpc/conn_object.c", i32 407, i32 4}
!82 = !{ptr @rxrpc_service_connection_reaper._entry.44, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rxrpc_service_connection_reaper._entry_ptr.46, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/rxrpc/conn_object.c", i32 435, i32 3}
!86 = !{ptr @rxrpc_service_connection_reaper._entry.47, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rxrpc_service_connection_reaper._entry_ptr.49, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @rxrpc_service_connection_reaper._entry.50, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../net/rxrpc/conn_object.c", i32 436, i32 3}
!90 = !{ptr @rxrpc_service_connection_reaper._entry_ptr.51, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @rxrpc_service_connection_reaper._entry.52, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../net/rxrpc/conn_object.c", i32 445, i32 3}
!93 = !{ptr @rxrpc_service_connection_reaper._entry_ptr.53, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @rxrpc_service_connection_reaper._entry.55, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../net/rxrpc/conn_object.c", i32 449, i32 2}
!97 = !{ptr @rxrpc_service_connection_reaper._entry_ptr.56, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/rxrpc/conn_object.c", i32 461, i32 2}
!100 = !{ptr @rxrpc_destroy_all_connections._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @rxrpc_destroy_all_connections._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/rxrpc/conn_object.c", i32 472, i32 3}
!104 = !{ptr @rxrpc_destroy_all_connections._entry.58, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @rxrpc_destroy_all_connections._entry_ptr.60, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @rxrpc_destroy_all_connections._entry.61, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../net/rxrpc/conn_object.c", i32 479, i32 2}
!108 = !{ptr @rxrpc_destroy_all_connections._entry_ptr.62, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @rxrpc_destroy_all_connections._entry.63, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../net/rxrpc/conn_object.c", i32 485, i32 2}
!111 = !{ptr @rxrpc_destroy_all_connections._entry_ptr.64, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @skb_queue_head_init.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!114 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/trace/events/rxrpc.h", i32 1315, i32 1}
!117 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!119 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!122 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/trace/events/rxrpc.h", i32 536, i32 1}
!125 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/rxrpc/conn_object.c", i32 354, i32 2}
!128 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rxrpc_destroy_connection._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @rxrpc_destroy_connection._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @rxrpc_destroy_connection._entry.71, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../net/rxrpc/conn_object.c", i32 356, i32 2}
!133 = !{ptr @rxrpc_destroy_connection._entry_ptr.72, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/rxrpc/conn_object.c", i32 358, i32 2}
!136 = !{ptr @rxrpc_destroy_connection._entry.73, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @rxrpc_destroy_connection._entry_ptr.75, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @rxrpc_destroy_connection._entry.76, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../net/rxrpc/conn_object.c", i32 373, i32 2}
!140 = !{ptr @rxrpc_destroy_connection._entry_ptr.77, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{!"sp"}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2148436449}
!153 = !{i64 2148351734, i64 2148351766, i64 2148351795, i64 2148351829, i64 2148351860, i64 2148351883}
!154 = !{i64 2148436678}
!155 = !{i64 2158130550, i64 2158131038, i64 2158130587, i64 2158130643, i64 2158130677, i64 2158130701, i64 2158130742, i64 2158130763, i64 2158130791, i64 2158130825}
!156 = !{i64 2158140995}
!157 = !{i64 2148964391, i64 2148964396, i64 2148964409, i64 2148964453, i64 2148964487, i64 2148964508}
!158 = !{i64 2157932104}
!159 = !{i64 2157932317}
!160 = !{i64 2149375732}
!161 = !{i64 2149376768}
!162 = !{i64 2158178206, i64 2158178694, i64 2158178243, i64 2158178299, i64 2158178333, i64 2158178357, i64 2158178398, i64 2158178419, i64 2158178447, i64 2158178481}
!163 = !{i64 2158181476, i64 2158181964, i64 2158181513, i64 2158181569, i64 2158181603, i64 2158181627, i64 2158181668, i64 2158181689, i64 2158181717, i64 2158181751}
!164 = !{i64 2158193009, i64 2158193497, i64 2158193046, i64 2158193102, i64 2158193136, i64 2158193160, i64 2158193201, i64 2158193222, i64 2158193250, i64 2158193284}
!165 = !{i64 2148439490}
!166 = !{i64 2148354199, i64 2148354231, i64 2148354260, i64 2148354294, i64 2148354325, i64 2148354348}
!167 = !{i64 2148439719}
!168 = !{i64 2148350433}
!169 = !{i64 836053, i64 836078, i64 836100, i64 836116, i64 836128, i64 836148, i64 836172, i64 836188, i64 836200}
!170 = !{i64 2148350621}
!171 = !{i64 2157472714}
!172 = !{i64 2157472959}
!173 = !{!"branch_weights", i32 1, i32 2000}
!174 = !{i64 2158185648, i64 2158186136, i64 2158185685, i64 2158185741, i64 2158185775, i64 2158185799, i64 2158185840, i64 2158185861, i64 2158185889, i64 2158185923}
!175 = !{i8 0, i8 2}
!176 = !{i64 2158208823, i64 2158209311, i64 2158208860, i64 2158208916, i64 2158208950, i64 2158208974, i64 2158209015, i64 2158209036, i64 2158209064, i64 2158209098}
!177 = !{i64 2148452861}
!178 = !{i64 835547, i64 835571, i64 835592, i64 835609, i64 835626}
!179 = !{i64 2148453087}
!180 = !{i64 2158216524, i64 2158217012, i64 2158216561, i64 2158216617, i64 2158216651, i64 2158216675, i64 2158216716, i64 2158216737, i64 2158216765, i64 2158216799}
!181 = !{i64 2158222655, i64 2158223143, i64 2158222692, i64 2158222748, i64 2158222782, i64 2158222806, i64 2158222847, i64 2158222868, i64 2158222896, i64 2158222930}
!182 = !{i64 2158228151, i64 2158228639, i64 2158228188, i64 2158228244, i64 2158228278, i64 2158228302, i64 2158228343, i64 2158228364, i64 2158228392, i64 2158228426}
!183 = !{i64 2148353479, i64 2148353505, i64 2148353534, i64 2148353568, i64 2148353599, i64 2148353622}
!184 = !{i64 2158244093, i64 2158244581, i64 2158244130, i64 2158244186, i64 2158244220, i64 2158244244, i64 2158244285, i64 2158244306, i64 2158244334, i64 2158244368}
!185 = !{i64 2158247373, i64 2158247861, i64 2158247410, i64 2158247466, i64 2158247500, i64 2158247524, i64 2158247565, i64 2158247586, i64 2158247614, i64 2158247648}
