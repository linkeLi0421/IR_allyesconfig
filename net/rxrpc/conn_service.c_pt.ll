; ModuleID = '/llk/IR_all_yes/net/rxrpc/conn_service.c_pt.bc'
source_filename = "../net/rxrpc/conn_service.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rxrpc_bundle = type { %struct.rxrpc_conn_parameters, %struct.atomic_t, i32, i8, i8, i16, %struct.spinlock, %struct.rb_node, %struct.list_head, i32, [4 x ptr] }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%union.anon.122 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
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
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.139, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon }
%union.anon = type { i64 }
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
%struct.rxrpc_net = type { ptr, i32, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, %struct.work_struct, %struct.timer_list, i8, i8, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.timer_list, %struct.list_head, %struct.mutex, [1024 x %struct.hlist_head], %struct.spinlock, i8, i64, [32 x %struct.list_head], %struct.list_head, %struct.timer_list, %struct.work_struct }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon = type { i32, i32 }
%struct.rxrpc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rwlock_t, ptr, ptr, %struct.rb_root, i32, %struct.rwlock_t, i32, i8, i16, %struct.anon.137, i16, %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.anon.137 = type { i16, i16 }

@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_find_service_conn_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rxrpc_find_service_conn_rcu\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/rxrpc/conn_service.c\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_find_service_conn_rcu._entry_ptr = internal global ptr @rxrpc_find_service_conn_rcu._entry, section ".printk_index", align 4
@rxrpc_service_dummy_bundle = internal global { %struct.rxrpc_bundle, [44 x i8] } { %struct.rxrpc_bundle { %struct.rxrpc_conn_parameters zeroinitializer, %struct.atomic_t { i32 1 }, i32 -1, i8 0, i8 0, i16 0, %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.rb_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@rxrpc_new_incoming_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rxrpc_new_incoming_connection\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_new_incoming_connection._entry_ptr = internal global ptr @rxrpc_new_incoming_connection._entry, section ".printk_index", align 4
@rxrpc_new_incoming_connection._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s] @@@ CONNECTION new %d {%x}\0A\00", [59 x i8] zeroinitializer }, align 32
@rxrpc_new_incoming_connection._entry_ptr.7 = internal global ptr @rxrpc_new_incoming_connection._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"&rxrpc_service_dummy_bundle.channel_lock\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_conn = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_conn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_publish_service_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = %d [new]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxrpc_publish_service_conn\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_publish_service_conn._entry_ptr = internal global ptr @rxrpc_publish_service_conn._entry, section ".printk_index", align 4
@rxrpc_publish_service_conn._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     replace conn\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_publish_service_conn._entry_ptr.16 = internal global ptr @rxrpc_publish_service_conn._entry.14, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 61, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"rxrpc_service_dummy_bundle\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 11, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 163, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 188, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 14, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 536, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 108, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 98, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [28 x i8] c"../net/rxrpc/conn_service.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 113, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @rxrpc_find_service_conn_rcu._entry, ptr @rxrpc_find_service_conn_rcu._entry_ptr, ptr @rxrpc_new_incoming_connection._entry, ptr @rxrpc_new_incoming_connection._entry.5, ptr @rxrpc_new_incoming_connection._entry_ptr, ptr @rxrpc_new_incoming_connection._entry_ptr.7, ptr @rxrpc_publish_service_conn._entry, ptr @rxrpc_publish_service_conn._entry.14, ptr @rxrpc_publish_service_conn._entry_ptr, ptr @rxrpc_publish_service_conn._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rxrpc_service_dummy_bundle, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_service_conn_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_dummy_bundle to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_incoming_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_incoming_connection._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_publish_service_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_publish_service_conn._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_find_service_conn_rcu(ptr noundef %peer, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %cid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %2 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cid, align 4
  %service_conn_lock = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 9
  %lock.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 9, i32 1
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 9, i32 0, i32 0, i32 1
  %service_conns = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 6
  %k.sroa.0.0.insert.ext = zext i32 %1 to i64
  %k.sroa.0.0.insert.shift = shl nuw i64 %k.sroa.0.0.insert.ext, 32
  %4 = and i32 %3, -4
  %k.sroa.0.0.insert.mask = zext i32 %4 to i64
  %k.sroa.0.0.insert.insert = or i64 %k.sroa.0.0.insert.shift, %k.sroa.0.0.insert.mask
  br label %do.body

do.body:                                          ; preds = %need_seqretry.exit.do.body_crit_edge, %entry
  %seq.0 = phi i32 [ 0, %entry ], [ %seq.1, %need_seqretry.exit.do.body_crit_edge ]
  %conn.0 = phi ptr [ null, %entry ], [ %conn.2, %need_seqretry.exit.do.body_crit_edge ]
  %and.i = and i32 %seq.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !46
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %6 = tail call ptr @llvm.returnaddress(i32 0) #7
  %7 = ptrtoint ptr %6 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %7) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %7) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call ptr @llvm.returnaddress(i32 0) #7
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %9) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %9) #7
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !47
  %and.i.i.i.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !48

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #7, !srcloc !49
  %11 = ptrtoint ptr %service_conn_lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %service_conn_lock, align 4
  %and18.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !51
  %13 = ptrtoint ptr %service_conn_lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %service_conn_lock, align 4
  %and.i.i = and i32 %14, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %12, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge ], [ %14, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !52
  br label %read_seqbegin_or_lock.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #7
  br label %read_seqbegin_or_lock.exit

read_seqbegin_or_lock.exit:                       ; preds = %if.else.i, %read_seqbegin.exit.i
  %seq.1 = phi i32 [ %.lcssa.i.i, %read_seqbegin.exit.i ], [ %seq.0, %if.else.i ]
  %15 = ptrtoint ptr %service_conns to i32
  call void @__asan_load4_noabort(i32 %15)
  %p.079 = load volatile ptr, ptr %service_conns, align 4
  %tobool.not80 = icmp eq ptr %p.079, null
  br i1 %tobool.not80, label %read_seqbegin_or_lock.exit.do.cond22_crit_edge, label %read_seqbegin_or_lock.exit.while.body_crit_edge

read_seqbegin_or_lock.exit.while.body_crit_edge:  ; preds = %read_seqbegin_or_lock.exit
  br label %while.body

read_seqbegin_or_lock.exit.do.cond22_crit_edge:   ; preds = %read_seqbegin_or_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond22

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %read_seqbegin_or_lock.exit.while.body_crit_edge
  %p.081 = phi ptr [ %p.0, %if.end21.while.body_crit_edge ], [ %p.079, %read_seqbegin_or_lock.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %p.081, i32 -276
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %k.sroa.0.0.insert.insert)
  %cmp = icmp ult i64 %17, %k.sroa.0.0.insert.insert
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %p.081, i32 0, i32 2
  br label %if.end21

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %k.sroa.0.0.insert.insert)
  %cmp13 = icmp ugt i64 %17, %k.sroa.0.0.insert.insert
  br i1 %cmp13, label %if.then14, label %do.cond22.loopexit.split.loop.exit

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %p.081, i32 0, i32 1
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.then
  %p.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then14 ]
  %18 = ptrtoint ptr %p.1.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %p.0 = load volatile ptr, ptr %p.1.in, align 4
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %if.end21.do.cond22_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end21.do.cond22_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond22

do.cond22.loopexit.split.loop.exit:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.le = getelementptr i8, ptr %p.081, i32 -276
  br label %do.cond22

do.cond22:                                        ; preds = %do.cond22.loopexit.split.loop.exit, %if.end21.do.cond22_crit_edge, %read_seqbegin_or_lock.exit.do.cond22_crit_edge
  %conn.2 = phi ptr [ %conn.0, %read_seqbegin_or_lock.exit.do.cond22_crit_edge ], [ %add.ptr.le, %do.cond22.loopexit.split.loop.exit ], [ null, %if.end21.do.cond22_crit_edge ]
  %and.i63 = and i32 %seq.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.not.i64 = icmp eq i32 %and.i63, 0
  br i1 %tobool.not.i64, label %need_seqretry.exit, label %if.then.i68

need_seqretry.exit:                               ; preds = %do.cond22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  %19 = ptrtoint ptr %service_conn_lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %service_conn_lock, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %20, %seq.1
  br i1 %cmp.i.i.i.i.not, label %need_seqretry.exit.done_seqretry.exit_crit_edge, label %need_seqretry.exit.do.body_crit_edge

need_seqretry.exit.do.body_crit_edge:             ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

need_seqretry.exit.done_seqretry.exit_crit_edge:  ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %done_seqretry.exit

if.then.i68:                                      ; preds = %do.cond22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #7
  br label %done_seqretry.exit

done_seqretry.exit:                               ; preds = %if.then.i68, %need_seqretry.exit.done_seqretry.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %21 = load i32, ptr @rxrpc_debug, align 4
  %and28 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %done_seqretry.exit.do.end42_crit_edge, label %do.end35, !prof !54

done_seqretry.exit.do.end42_crit_edge:            ; preds = %done_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end35:                                         ; preds = %done_seqretry.exit
  %22 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i69 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i69 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 101
  %tobool38.not = icmp eq ptr %conn.2, null
  br i1 %tobool38.not, label %do.end35.cond.end_crit_edge, label %cond.true

do.end35.cond.end_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn.2, i32 0, i32 23
  %26 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_id, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end35.cond.end_crit_edge
  %cond = phi i32 [ %27, %cond.true ], [ -1, %do.end35.cond.end_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %cond) #10
  br label %do.end42

do.end42:                                         ; preds = %cond.end, %done_seqretry.exit.do.end42_crit_edge
  ret ptr %conn.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_prealloc_service_connection(ptr noundef %rxnet, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rxrpc_alloc_connection(i32 noundef %gfp) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.rxrpc_connection, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %state, align 8
  %usage = getelementptr inbounds %struct.rxrpc_connection, ptr %call, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #7
  %1 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 2, ptr %usage, align 4
  %call1 = tail call ptr @rxrpc_get_bundle(ptr noundef nonnull @rxrpc_service_dummy_bundle) #7
  %bundle = getelementptr inbounds %struct.rxrpc_connection, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %bundle to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %bundle, align 8
  %nr_conns = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 5
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_conns, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %nr_conns, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_conns, ptr %nr_conns, i32 1, ptr elementtype(i32) %nr_conns) #7, !srcloc !55
  %conn_lock = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 8
  tail call void @_raw_write_lock(ptr noundef %conn_lock) #7
  %link = getelementptr inbounds %struct.rxrpc_connection, ptr %call, i32 0, i32 12
  %service_conns = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i19 = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %5, ptr noundef %service_conns) #7
  br i1 %call.i.i19, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %link, ptr %prev.i, align 4
  %7 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %service_conns, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %link, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %proc_link = getelementptr inbounds %struct.rxrpc_connection, ptr %call, i32 0, i32 11
  %conn_proc_list = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 6
  %prev.i20 = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i20, align 4
  %call.i.i21 = tail call zeroext i1 @__list_add_valid(ptr noundef %proc_link, ptr noundef %11, ptr noundef %conn_proc_list) #7
  br i1 %call.i.i21, label %if.end.i.i23, label %list_add_tail.exit.list_add_tail.exit24_crit_edge

list_add_tail.exit.list_add_tail.exit24_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit24

if.end.i.i23:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %proc_link, ptr %prev.i20, align 4
  %13 = ptrtoint ptr %proc_link to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %conn_proc_list, ptr %proc_link, align 4
  %prev3.i.i22 = getelementptr inbounds %struct.rxrpc_connection, ptr %call, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %prev3.i.i22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i22, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %proc_link, ptr %11, align 4
  br label %list_add_tail.exit24

list_add_tail.exit24:                             ; preds = %if.end.i.i23, %list_add_tail.exit.list_add_tail.exit24_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %conn_lock) #7
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %call, i32 0, i32 23
  %16 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_id, align 8
  %call.i.i18 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #7
  %18 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %usage, align 4
  %20 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_rxrpc_conn(i32 noundef %17, i32 noundef %19, ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit24, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_alloc_connection(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_bundle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_conn(i32 noundef %conn_debug_id, i32 noundef %usage, ptr noundef %where) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_conn, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_conn, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !56

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !54

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %call42 = tail call i32 @__traceiter_rxrpc_conn(ptr noundef null, i32 noundef %conn_debug_id, i32 noundef 2, i32 noundef %usage, ptr noundef %where) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %13 = tail call i32 @llvm.read_register.i32(metadata !36) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !36) #7
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !54

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_conn, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_conn, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_rxrpc_conn.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_conn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 561, ptr noundef nonnull @.str.10) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %31 = tail call i32 @llvm.read_register.i32(metadata !36) #7
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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_new_incoming_connection(ptr nocapture noundef readonly %rx, ptr noundef %conn, ptr noundef %sec, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !54

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.4) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %hdr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hdr, align 4
  %7 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %conn, align 8
  %cid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %8 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cid, align 4
  %and9 = and i32 %9, -4
  %cid11 = getelementptr inbounds %struct.anon, ptr %conn, i32 0, i32 1
  %10 = ptrtoint ptr %cid11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and9, ptr %cid11, align 4
  %serviceId = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 42
  %11 = ptrtoint ptr %serviceId to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %serviceId, align 2
  %service_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %service_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %service_id, align 2
  %14 = load i16, ptr %serviceId, align 2
  %conv = zext i16 %14 to i32
  %service_id15 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 26
  %15 = ptrtoint ptr %service_id15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %service_id15, align 4
  %securityIndex = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 39
  %16 = ptrtoint ptr %securityIndex to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %securityIndex, align 1
  %security_ix = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 27
  %18 = ptrtoint ptr %security_ix to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %security_ix, align 8
  %out_clientflag = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 28
  %19 = ptrtoint ptr %out_clientflag to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %out_clientflag, align 1
  %security = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 14
  %20 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sec, ptr %security, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool18.not, i32 5, i32 3
  %21 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 21
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %21, align 8
  %userStatus = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %23 = ptrtoint ptr %userStatus to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %userStatus, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp = icmp eq i8 %24, 1
  br i1 %cmp, label %land.lhs.true, label %do.end6.if.end33_crit_edge

do.end6.if.end33_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true:                                    ; preds = %do.end6
  %service_upgrade = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 18
  %25 = ptrtoint ptr %service_upgrade to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %service_upgrade, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %26)
  %cmp27 = icmp eq i16 %14, %26
  br i1 %cmp27, label %if.then29, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %to = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %to to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %to, align 2
  %conv31 = zext i16 %28 to i32
  %29 = ptrtoint ptr %service_id15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv31, ptr %service_id15, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %land.lhs.true.if.end33_crit_edge, %do.end6.if.end33_crit_edge
  %peer = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %peer, align 4
  %32 = ptrtoint ptr %conn to i32
  call void @__asan_load8_noabort(i32 %32)
  %k.sroa.0.0.copyload.i = load i64, ptr %conn, align 8
  %service_conn_lock.i = getelementptr inbounds %struct.rxrpc_peer, ptr %31, i32 0, i32 9
  %lock.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %31, i32 0, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #7
  %33 = ptrtoint ptr %service_conn_lock.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %service_conn_lock.i, align 4
  %inc.i.i.i.i.i = add i32 %34, 1
  store i32 %inc.i.i.i.i.i, ptr %service_conn_lock.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  %dep_map.i.i.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %31, i32 0, i32 9, i32 0, i32 0, i32 1
  %35 = tail call ptr @llvm.returnaddress(i32 0) #7
  %36 = ptrtoint ptr %35 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %36) #7
  %service_conns.i = getelementptr inbounds %struct.rxrpc_peer, ptr %31, i32 0, i32 6
  %37 = ptrtoint ptr %service_conns.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %service_conns.i, align 4
  %tobool.not83.i = icmp eq ptr %38, null
  br i1 %tobool.not83.i, label %if.end33.while.end.i_crit_edge, label %if.end33.while.body.i_crit_edge

if.end33.while.body.i_crit_edge:                  ; preds = %if.end33
  br label %while.body.i

if.end33.while.end.i_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.end33.while.body.i_crit_edge
  %39 = phi ptr [ %43, %if.end6.i.while.body.i_crit_edge ], [ %38, %if.end33.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %39, i32 -276
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %k.sroa.0.0.copyload.i)
  %cmp.i = icmp ult i64 %41, %k.sroa.0.0.copyload.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %39, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %k.sroa.0.0.copyload.i)
  %cmp3.i = icmp ugt i64 %41, %k.sroa.0.0.copyload.i
  br i1 %cmp3.i, label %if.then4.i, label %found_extant_conn.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %39, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %pp.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %42 = ptrtoint ptr %pp.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pp.1.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i = ptrtoint ptr %39 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.end33.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end33.while.end.i_crit_edge ]
  %pp.0.lcssa.i = phi ptr [ %pp.1.i, %while.cond.while.end_crit_edge.i ], [ %service_conns.i, %if.end33.while.end.i_crit_edge ]
  %service_node.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 10
  %44 = ptrtoint ptr %service_node.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %parent.0.lcssa.i, ptr %service_node.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 10, i32 2
  %46 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rb_left.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %47 = ptrtoint ptr %pp.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %service_node.i, ptr %pp.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %service_node.i, ptr noundef %service_conns.i) #7
  br label %conn_published.i

conn_published.i:                                 ; preds = %do.end52.i, %while.end.i
  %flags.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #7
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  %48 = ptrtoint ptr %service_conn_lock.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %service_conn_lock.i, align 4
  %inc.i.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i.i, ptr %service_conn_lock.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %50 = load i32, ptr @rxrpc_debug, align 4
  %and.i80 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool10.not.i = icmp eq i32 %and.i80, 0
  br i1 %tobool10.not.i, label %conn_published.i.rxrpc_publish_service_conn.exit_crit_edge, label %do.end.i, !prof !54

conn_published.i.rxrpc_publish_service_conn.exit_crit_edge: ; preds = %conn_published.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_publish_service_conn.exit

do.end.i:                                         ; preds = %conn_published.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 101
  %debug_id.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %55 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %debug_id.i, align 8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm.i, ptr noundef nonnull @.str.13, i32 noundef %56) #10
  br label %rxrpc_publish_service_conn.exit

found_extant_conn.i:                              ; preds = %if.else.i
  %usage.i = getelementptr i8, ptr %39, i32 -248
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage.i, i32 noundef 4) #7
  %57 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %usage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp21.i = icmp eq i32 %58, 0
  br i1 %cmp21.i, label %do.body31.i, label %if.end23.i

if.end23.i:                                       ; preds = %found_extant_conn.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @write_sequnlock_bh(ptr noundef %service_conn_lock.i) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_service.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 109, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

do.body31.i:                                      ; preds = %found_extant_conn.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %59 = load i32, ptr @rxrpc_debug, align 4
  %and32.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %do.body31.i.do.end52.i_crit_edge, label %do.end43.i, !prof !54

do.body31.i.do.end52.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52.i

do.end43.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i79.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i79.i to ptr
  %task46.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task46.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task46.i, align 8
  %comm47.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 101
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %comm47.i) #10
  br label %do.end52.i

do.end52.i:                                       ; preds = %do.end43.i, %do.body31.i.do.end52.i_crit_edge
  %service_node54.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 10
  tail call void @rb_replace_node_rcu(ptr noundef nonnull %39, ptr noundef %service_node54.i, ptr noundef %service_conns.i) #7
  %flags56.i = getelementptr i8, ptr %39, i32 116
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags56.i) #7
  br label %conn_published.i

rxrpc_publish_service_conn.exit:                  ; preds = %do.end.i, %conn_published.i.rxrpc_publish_service_conn.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %64 = load i32, ptr @rxrpc_debug, align 4
  %and36 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %rxrpc_publish_service_conn.exit.do.end58_crit_edge, label %do.end47, !prof !54

rxrpc_publish_service_conn.exit.do.end58_crit_edge: ; preds = %rxrpc_publish_service_conn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

do.end47:                                         ; preds = %rxrpc_publish_service_conn.exit
  call void @__sanitizer_cov_trace_pc() #9
  %65 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i81 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i81 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %69 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %debug_id, align 8
  %71 = ptrtoint ptr %cid11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cid11, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm51, i32 noundef %70, i32 noundef %72) #10
  br label %do.end58

do.end58:                                         ; preds = %do.end47, %rxrpc_publish_service_conn.exit.do.end58_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_unpublish_service_conn(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %peer1 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 4
  %service_conn_lock = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 9
  %lock.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #7
  %2 = ptrtoint ptr %service_conn_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %service_conn_lock, align 4
  %inc.i.i.i.i = add i32 %3, 1
  store i32 %inc.i.i.i.i, ptr %service_conn_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  %dep_map.i.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %4 = tail call ptr @llvm.returnaddress(i32 0) #7
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %5) #7
  %flags = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 17
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %service_node = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 10
  %service_conns = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 6
  tail call void @rb_erase(ptr noundef %service_node, ptr noundef %service_conns) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  %6 = ptrtoint ptr %service_conn_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %service_conn_lock, align 4
  %inc.i.i.i = add i32 %7, 1
  store i32 %inc.i.i.i, ptr %service_conn_lock, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_sequnlock_bh(ptr noundef %sl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %dep_map.i = getelementptr inbounds %struct.seqcount, ptr %sl, i32 0, i32 1
  %0 = tail call ptr @llvm.returnaddress(i32 0) #7
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  %2 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sl, align 4
  %inc.i.i = add i32 %3, 1
  store i32 %inc.i.i, ptr %sl, align 4
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %sl, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_conn(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/conn_service.c", i32 61, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rxrpc_find_service_conn_rcu._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rxrpc_find_service_conn_rcu._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rxrpc/conn_service.c", i32 163, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rxrpc_new_incoming_connection._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rxrpc_new_incoming_connection._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/rxrpc/conn_service.c", i32 188, i32 2}
!13 = !{ptr @rxrpc_new_incoming_connection._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @rxrpc_new_incoming_connection._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/rxrpc/conn_service.c", i32 14, i32 18}
!17 = !{ptr @rxrpc_service_dummy_bundle, !18, !"rxrpc_service_dummy_bundle", i1 false, i1 false}
!18 = !{!"../net/rxrpc/conn_service.c", i32 11, i32 28}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/trace/events/rxrpc.h", i32 536, i32 1}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/rxrpc/conn_service.c", i32 98, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rxrpc_publish_service_conn._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @rxrpc_publish_service_conn._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/rxrpc/conn_service.c", i32 113, i32 2}
!34 = !{ptr @rxrpc_publish_service_conn._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rxrpc_publish_service_conn._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 989421, i64 989482}
!47 = !{i64 992153}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 992438}
!50 = !{i64 2149778893}
!51 = !{i64 2149778735}
!52 = !{i64 2149779063}
!53 = !{i64 2149764140}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2148584741, i64 2148584767, i64 2148584796, i64 2148584830, i64 2148584861, i64 2148584884}
!56 = !{i64 2148205467, i64 2148205472, i64 2148205485, i64 2148205529, i64 2148205563, i64 2148205584}
!57 = !{i64 2157461381}
!58 = !{i64 2157461626}
!59 = !{i64 2149930171}
!60 = !{i64 2149931207}
!61 = !{i64 2149764465}
!62 = !{i64 2149940523}
!63 = !{i64 2149764790}
!64 = !{i64 2158121748, i64 2158122237, i64 2158121785, i64 2158121841, i64 2158121875, i64 2158121899, i64 2158121940, i64 2158121961, i64 2158121989, i64 2158122023}
