; ModuleID = '/llk/IR_all_yes/net/rxrpc/conn_client.c_pt.bc'
source_filename = "../net/rxrpc/conn_client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%union.anon.122 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.139, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rxrpc_channel = type { i32, ptr, i32, i32, i32, i32, i8, %union.anon.138 }
%union.anon.138 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.rxrpc_bundle = type { %struct.rxrpc_conn_parameters, %struct.atomic_t, i32, i8, i8, i16, %struct.spinlock, %struct.rb_node, %struct.list_head, i32, [4 x ptr] }
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
%struct.rxrpc_local = type { %struct.callback_head, %struct.atomic_t, %struct.atomic_t, ptr, %struct.list_head, ptr, %struct.work_struct, ptr, %struct.rw_semaphore, %struct.sk_buff_head, %struct.sk_buff_head, %struct.rb_root, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i8, i8, %struct.sockaddr_rxrpc }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.135 }
%union.anon.135 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rxrpc_net = type { ptr, i32, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, %struct.work_struct, %struct.timer_list, i8, i8, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.timer_list, %struct.list_head, %struct.mutex, [1024 x %struct.hlist_head], %struct.spinlock, i8, i64, [32 x %struct.list_head], %struct.list_head, %struct.timer_list, %struct.work_struct }
%struct.hlist_head = type { ptr }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.9, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.10, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.11, %union.anon.15, ptr }
%union.anon.9 = type { %struct.rb_node }
%union.anon.10 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.11 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.12, ptr, ptr, ptr }
%union.anon.12 = type { i32 }
%union.anon.15 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.anon.3 = type { i32, i32 }

@rxrpc_reap_client_connections = dso_local local_unnamed_addr global i32 900, section ".data..read_mostly", align 4
@rxrpc_conn_idle_client_expiry = dso_local local_unnamed_addr global i32 12000, section ".data..read_mostly", align 4
@rxrpc_conn_idle_client_fast_expiry = dso_local local_unnamed_addr global i32 200, section ".data..read_mostly", align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rxrpc_client_conn_ids.xa_lock\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_client_conn_ids = dso_local global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rxrpc_destroy_client_conn_ids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013rxrpc: AF_RXRPC: Leaked client conn %p {%d}\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rxrpc_destroy_client_conn_ids\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/rxrpc/conn_client.c\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_destroy_client_conn_ids._entry_ptr = internal global ptr @rxrpc_destroy_client_conn_ids._entry, section ".printk_index", align 4
@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_put_bundle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s]     PUT B=%x %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxrpc_put_bundle\00", [47 x i8] zeroinitializer }, align 32
@rxrpc_put_bundle._entry_ptr = internal global ptr @rxrpc_put_bundle._entry, section ".printk_index", align 4
@rxrpc_connect_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] ==> %s({%d,%lx},)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_connect_call\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_connect_call._entry_ptr = internal global ptr @rxrpc_connect_call._entry, section ".printk_index", align 4
@rxrpc_connect_call._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_connect_call._entry_ptr.10 = internal global ptr @rxrpc_connect_call._entry.8, section ".printk_index", align 4
@rxrpc_disconnect_client_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s(c=%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rxrpc_disconnect_client_call\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_disconnect_client_call._entry_ptr = internal global ptr @rxrpc_disconnect_client_call._entry, section ".printk_index", align 4
@rxrpc_disconnect_client_call._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     call is waiting\0A\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_disconnect_client_call._entry_ptr.15 = internal global ptr @rxrpc_disconnect_client_call._entry.13, section ".printk_index", align 4
@rxrpc_disconnect_client_call._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rxrpc: Assertion failed - %lu(0x%lx) %s %lu(0x%lx) is false\0A\00", [33 x i8] zeroinitializer }, align 32
@rxrpc_disconnect_client_call._entry_ptr.18 = internal global ptr @rxrpc_disconnect_client_call._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_disconnect_client_call._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.3, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rxrpc: Assertion failed\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_disconnect_client_call._entry_ptr.22 = internal global ptr @rxrpc_disconnect_client_call._entry.20, section ".printk_index", align 4
@rxrpc_disconnect_client_call._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.12, ptr @.str.3, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     exposed %u,%u\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_disconnect_client_call._entry_ptr.25 = internal global ptr @rxrpc_disconnect_client_call._entry.23, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rxrpc_disconnect_client_call._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.3, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_disconnect_client_call._entry_ptr.28 = internal global ptr @rxrpc_disconnect_client_call._entry.26, section ".printk_index", align 4
@rxrpc_put_client_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.29, ptr @.str.3, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxrpc_put_client_conn\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_put_client_conn._entry_ptr = internal global ptr @rxrpc_put_client_conn._entry, section ".printk_index", align 4
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c">=\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_discard_expired_client_conns._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rxrpc_discard_expired_client_conns\00", [61 x i8] zeroinitializer }, align 32
@rxrpc_discard_expired_client_conns._entry_ptr = internal global ptr @rxrpc_discard_expired_client_conns._entry, section ".printk_index", align 4
@rxrpc_discard_expired_client_conns._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] <== %s() [empty]\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_discard_expired_client_conns._entry_ptr.35 = internal global ptr @rxrpc_discard_expired_client_conns._entry.33, section ".printk_index", align 4
@rxrpc_discard_expired_client_conns._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() [already]\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_discard_expired_client_conns._entry_ptr.38 = internal global ptr @rxrpc_discard_expired_client_conns._entry.36, section ".printk_index", align 4
@rxrpc_closed_conn_expiry = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_discard_expired_client_conns._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s]     not yet\0A\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_discard_expired_client_conns._entry_ptr.41 = internal global ptr @rxrpc_discard_expired_client_conns._entry.39, section ".printk_index", align 4
@rxrpc_discard_expired_client_conns._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.32, ptr @.str.3, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_discard_expired_client_conns._entry_ptr.43 = internal global ptr @rxrpc_discard_expired_client_conns._entry.42, section ".printk_index", align 4
@rxrpc_destroy_all_client_connections._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.44, ptr @.str.3, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rxrpc_destroy_all_client_connections\00", [59 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_client_connections._entry_ptr = internal global ptr @rxrpc_destroy_all_client_connections._entry, section ".printk_index", align 4
@rxrpc_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@rxrpc_destroy_all_client_connections._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s]     destroy: queue failed\0A\00", [60 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_client_connections._entry_ptr.47 = internal global ptr @rxrpc_destroy_all_client_connections._entry.45, section ".printk_index", align 4
@rxrpc_destroy_all_client_connections._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.44, ptr @.str.3, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_client_connections._entry_ptr.49 = internal global ptr @rxrpc_destroy_all_client_connections._entry.48, section ".printk_index", align 4
@rxrpc_clean_up_local_conns._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.50, ptr @.str.3, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxrpc_clean_up_local_conns\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_clean_up_local_conns._entry_ptr = internal global ptr @rxrpc_clean_up_local_conns._entry, section ".printk_index", align 4
@rxrpc_clean_up_local_conns._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() [culled]\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_clean_up_local_conns._entry_ptr.53 = internal global ptr @rxrpc_clean_up_local_conns._entry.51, section ".printk_index", align 4
@rxrpc_prep_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.54, ptr @.str.3, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxrpc_prep_call\00", [16 x i8] zeroinitializer }, align 32
@rxrpc_prep_call._entry_ptr = internal global ptr @rxrpc_prep_call._entry, section ".printk_index", align 4
@rxrpc_prep_call._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() = [B=%x]\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_prep_call._entry_ptr.57 = internal global ptr @rxrpc_prep_call._entry.55, section ".printk_index", align 4
@rxrpc_prep_call._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.3, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = -ENOMEM\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_prep_call._entry_ptr.60 = internal global ptr @rxrpc_prep_call._entry.58, section ".printk_index", align 4
@rxrpc_look_up_bundle.rxrpc_bundle_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rxrpc_look_up_bundle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s({%px,%x,%u,%u})\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxrpc_look_up_bundle\00", [43 x i8] zeroinitializer }, align 32
@rxrpc_look_up_bundle._entry_ptr = internal global ptr @rxrpc_look_up_bundle._entry, section ".printk_index", align 4
@rxrpc_look_up_bundle._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     search 1\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_look_up_bundle._entry_ptr.65 = internal global ptr @rxrpc_look_up_bundle._entry.63, section ".printk_index", align 4
@rxrpc_look_up_bundle._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     not found\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_look_up_bundle._entry_ptr.68 = internal global ptr @rxrpc_look_up_bundle._entry.66, section ".printk_index", align 4
@rxrpc_look_up_bundle._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.3, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     search 2\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_look_up_bundle._entry_ptr.71 = internal global ptr @rxrpc_look_up_bundle._entry.69, section ".printk_index", align 4
@rxrpc_look_up_bundle._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.3, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s]     new bundle\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_look_up_bundle._entry_ptr.74 = internal global ptr @rxrpc_look_up_bundle._entry.72, section ".printk_index", align 4
@rxrpc_look_up_bundle._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.3, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = %u [new]\0A\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_look_up_bundle._entry_ptr.77 = internal global ptr @rxrpc_look_up_bundle._entry.75, section ".printk_index", align 4
@rxrpc_look_up_bundle._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.62, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] <== %s() = %u [found]\0A\00", [32 x i8] zeroinitializer }, align 32
@rxrpc_look_up_bundle._entry_ptr.80 = internal global ptr @rxrpc_look_up_bundle._entry.78, section ".printk_index", align 4
@rxrpc_alloc_bundle.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&bundle->channel_lock\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rxrpc_wait_for_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxrpc_wait_for_channel\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_wait_for_channel._entry_ptr = internal global ptr @rxrpc_wait_for_channel._entry, section ".printk_index", align 4
@rxrpc_wait_for_channel._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.83, ptr @.str.3, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_wait_for_channel._entry_ptr.87 = internal global ptr @rxrpc_wait_for_channel._entry.86, section ".printk_index", align 4
@rxrpc_maybe_add_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.88, ptr @.str.3, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxrpc_maybe_add_conn\00", [43 x i8] zeroinitializer }, align 32
@rxrpc_maybe_add_conn._entry_ptr = internal global ptr @rxrpc_maybe_add_conn._entry, section ".printk_index", align 4
@rxrpc_maybe_add_conn._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.88, ptr @.str.3, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_maybe_add_conn._entry_ptr.90 = internal global ptr @rxrpc_maybe_add_conn._entry.89, section ".printk_index", align 4
@rxrpc_add_conn_to_bundle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.91, ptr @.str.3, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxrpc_add_conn_to_bundle\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_add_conn_to_bundle._entry_ptr = internal global ptr @rxrpc_add_conn_to_bundle._entry, section ".printk_index", align 4
@rxrpc_add_conn_to_bundle._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.3, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] <== %s() [conf]\0A\00", [38 x i8] zeroinitializer }, align 32
@rxrpc_add_conn_to_bundle._entry_ptr.94 = internal global ptr @rxrpc_add_conn_to_bundle._entry.92, section ".printk_index", align 4
@rxrpc_add_conn_to_bundle._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.3, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() [err %ld]\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_add_conn_to_bundle._entry_ptr.97 = internal global ptr @rxrpc_add_conn_to_bundle._entry.95, section ".printk_index", align 4
@rxrpc_add_conn_to_bundle._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.91, ptr @.str.3, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     discard C=%x\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_add_conn_to_bundle._entry_ptr.100 = internal global ptr @rxrpc_add_conn_to_bundle._entry.98, section ".printk_index", align 4
@rxrpc_add_conn_to_bundle._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.91, ptr @.str.3, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_add_conn_to_bundle._entry_ptr.102 = internal global ptr @rxrpc_add_conn_to_bundle._entry.101, section ".printk_index", align 4
@rxrpc_alloc_client_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.103, ptr @.str.3, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rxrpc_alloc_client_connection\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_alloc_client_connection._entry_ptr = internal global ptr @rxrpc_alloc_client_connection._entry, section ".printk_index", align 4
@rxrpc_alloc_client_connection._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.103, ptr @.str.3, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_alloc_client_connection._entry_ptr.105 = internal global ptr @rxrpc_alloc_client_connection._entry.104, section ".printk_index", align 4
@rxrpc_alloc_client_connection._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.103, ptr @.str.3, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_alloc_client_connection._entry_ptr.108 = internal global ptr @rxrpc_alloc_client_connection._entry.106, section ".printk_index", align 4
@rxrpc_alloc_client_connection._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.103, ptr @.str.3, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_alloc_client_connection._entry_ptr.110 = internal global ptr @rxrpc_alloc_client_connection._entry.109, section ".printk_index", align 4
@rxrpc_get_client_connection_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.111, ptr @.str.3, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rxrpc_get_client_connection_id\00", [33 x i8] zeroinitializer }, align 32
@rxrpc_get_client_connection_id._entry_ptr = internal global ptr @rxrpc_get_client_connection_id._entry, section ".printk_index", align 4
@rxrpc_conn_id_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.117, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rxrpc_get_client_connection_id._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.3, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() [CID %x]\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_get_client_connection_id._entry_ptr.114 = internal global ptr @rxrpc_get_client_connection_id._entry.112, section ".printk_index", align 4
@rxrpc_get_client_connection_id._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.111, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_get_client_connection_id._entry_ptr.116 = internal global ptr @rxrpc_get_client_connection_id._entry.115, section ".printk_index", align 4
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_conn_id_lock\00", [45 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_activate_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s(B=%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rxrpc_activate_channels\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_activate_channels._entry_ptr = internal global ptr @rxrpc_activate_channels._entry, section ".printk_index", align 4
@rxrpc_activate_channels._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.122, ptr @.str.3, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_activate_channels._entry_ptr.124 = internal global ptr @rxrpc_activate_channels._entry.123, section ".printk_index", align 4
@__tracepoint_rxrpc_client = external dso_local global %struct.tracepoint, align 4
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_client.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.126 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_activate_one_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.3, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s(C=%x,%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxrpc_activate_one_channel\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_activate_one_channel._entry_ptr = internal global ptr @rxrpc_activate_one_channel._entry, section ".printk_index", align 4
@rxrpc_activate_one_channel._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.3, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%-6.6s] @@@ CONNECT call %08x:%08x as call %d on conn %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_activate_one_channel._entry_ptr.132 = internal global ptr @rxrpc_activate_one_channel._entry.130, section ".printk_index", align 4
@__tracepoint_rxrpc_connect_call = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_connect_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_conn = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_conn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_kill_client_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s(C=%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxrpc_kill_client_conn\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_kill_client_conn._entry_ptr = internal global ptr @rxrpc_kill_client_conn._entry, section ".printk_index", align 4
@rxrpc_unbundle_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.135, ptr @.str.3, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxrpc_unbundle_conn\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_unbundle_conn._entry_ptr = internal global ptr @rxrpc_unbundle_conn._entry, section ".printk_index", align 4
@rxrpc_unbundle_conn._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.3, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     clear slot %u\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_unbundle_conn._entry_ptr.138 = internal global ptr @rxrpc_unbundle_conn._entry.136, section ".printk_index", align 4
@rxrpc_unbundle_conn._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.3, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s]     maybe unbundle\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_unbundle_conn._entry_ptr.141 = internal global ptr @rxrpc_unbundle_conn._entry.139, section ".printk_index", align 4
@rxrpc_unbundle_conn._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.3, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     erase bundle\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_unbundle_conn._entry_ptr.144 = internal global ptr @rxrpc_unbundle_conn._entry.142, section ".printk_index", align 4
@rxrpc_unbundle_conn._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.135, ptr @.str.3, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_unbundle_conn._entry_ptr.146 = internal global ptr @rxrpc_unbundle_conn._entry.145, section ".printk_index", align 4
@___asan_gen_.150 = private unnamed_addr constant [22 x i8] c"rxrpc_client_conn_ids\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 40, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 104, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 149, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 704, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 727, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 795, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 805, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 806, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 807, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 834, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 890, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 974, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 994, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 997, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1003, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1059, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1066, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1075, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1084, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1086, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1098, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1120, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 357, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 383, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 387, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [16 x i8] c"rxrpc_bundle_id\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 263, i32 18 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 269, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 276, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 296, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 303, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 325, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 331, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 339, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 126, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 645, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 686, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 466, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 493, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 401, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 408, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 420, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 448, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 454, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 164, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 168, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 203, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 210, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 55, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [19 x i8] c"rxrpc_conn_id_lock\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 71, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 77, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 41, i32 8 }
@___asan_gen_.463 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 36, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 623, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 633, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 563, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 108, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 514, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 535, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 953, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 905, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 913, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 923, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 930, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.535 = private constant [27 x i8] c"../net/rxrpc/conn_client.c\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 942, i32 2 }
@llvm.compiler.used = appending global [187 x ptr] [ptr @rxrpc_activate_channels._entry, ptr @rxrpc_activate_channels._entry.123, ptr @rxrpc_activate_channels._entry_ptr, ptr @rxrpc_activate_channels._entry_ptr.124, ptr @rxrpc_activate_one_channel._entry, ptr @rxrpc_activate_one_channel._entry.130, ptr @rxrpc_activate_one_channel._entry_ptr, ptr @rxrpc_activate_one_channel._entry_ptr.132, ptr @rxrpc_add_conn_to_bundle._entry, ptr @rxrpc_add_conn_to_bundle._entry.101, ptr @rxrpc_add_conn_to_bundle._entry.92, ptr @rxrpc_add_conn_to_bundle._entry.95, ptr @rxrpc_add_conn_to_bundle._entry.98, ptr @rxrpc_add_conn_to_bundle._entry_ptr, ptr @rxrpc_add_conn_to_bundle._entry_ptr.100, ptr @rxrpc_add_conn_to_bundle._entry_ptr.102, ptr @rxrpc_add_conn_to_bundle._entry_ptr.94, ptr @rxrpc_add_conn_to_bundle._entry_ptr.97, ptr @rxrpc_alloc_client_connection._entry, ptr @rxrpc_alloc_client_connection._entry.104, ptr @rxrpc_alloc_client_connection._entry.106, ptr @rxrpc_alloc_client_connection._entry.109, ptr @rxrpc_alloc_client_connection._entry_ptr, ptr @rxrpc_alloc_client_connection._entry_ptr.105, ptr @rxrpc_alloc_client_connection._entry_ptr.108, ptr @rxrpc_alloc_client_connection._entry_ptr.110, ptr @rxrpc_clean_up_local_conns._entry, ptr @rxrpc_clean_up_local_conns._entry.51, ptr @rxrpc_clean_up_local_conns._entry_ptr, ptr @rxrpc_clean_up_local_conns._entry_ptr.53, ptr @rxrpc_connect_call._entry, ptr @rxrpc_connect_call._entry.8, ptr @rxrpc_connect_call._entry_ptr, ptr @rxrpc_connect_call._entry_ptr.10, ptr @rxrpc_destroy_all_client_connections._entry, ptr @rxrpc_destroy_all_client_connections._entry.45, ptr @rxrpc_destroy_all_client_connections._entry.48, ptr @rxrpc_destroy_all_client_connections._entry_ptr, ptr @rxrpc_destroy_all_client_connections._entry_ptr.47, ptr @rxrpc_destroy_all_client_connections._entry_ptr.49, ptr @rxrpc_destroy_client_conn_ids._entry, ptr @rxrpc_destroy_client_conn_ids._entry_ptr, ptr @rxrpc_discard_expired_client_conns._entry, ptr @rxrpc_discard_expired_client_conns._entry.33, ptr @rxrpc_discard_expired_client_conns._entry.36, ptr @rxrpc_discard_expired_client_conns._entry.39, ptr @rxrpc_discard_expired_client_conns._entry.42, ptr @rxrpc_discard_expired_client_conns._entry_ptr, ptr @rxrpc_discard_expired_client_conns._entry_ptr.35, ptr @rxrpc_discard_expired_client_conns._entry_ptr.38, ptr @rxrpc_discard_expired_client_conns._entry_ptr.41, ptr @rxrpc_discard_expired_client_conns._entry_ptr.43, ptr @rxrpc_disconnect_client_call._entry, ptr @rxrpc_disconnect_client_call._entry.13, ptr @rxrpc_disconnect_client_call._entry.16, ptr @rxrpc_disconnect_client_call._entry.20, ptr @rxrpc_disconnect_client_call._entry.23, ptr @rxrpc_disconnect_client_call._entry.26, ptr @rxrpc_disconnect_client_call._entry_ptr, ptr @rxrpc_disconnect_client_call._entry_ptr.15, ptr @rxrpc_disconnect_client_call._entry_ptr.18, ptr @rxrpc_disconnect_client_call._entry_ptr.22, ptr @rxrpc_disconnect_client_call._entry_ptr.25, ptr @rxrpc_disconnect_client_call._entry_ptr.28, ptr @rxrpc_get_client_connection_id._entry, ptr @rxrpc_get_client_connection_id._entry.112, ptr @rxrpc_get_client_connection_id._entry.115, ptr @rxrpc_get_client_connection_id._entry_ptr, ptr @rxrpc_get_client_connection_id._entry_ptr.114, ptr @rxrpc_get_client_connection_id._entry_ptr.116, ptr @rxrpc_kill_client_conn._entry, ptr @rxrpc_kill_client_conn._entry_ptr, ptr @rxrpc_look_up_bundle._entry, ptr @rxrpc_look_up_bundle._entry.63, ptr @rxrpc_look_up_bundle._entry.66, ptr @rxrpc_look_up_bundle._entry.69, ptr @rxrpc_look_up_bundle._entry.72, ptr @rxrpc_look_up_bundle._entry.75, ptr @rxrpc_look_up_bundle._entry.78, ptr @rxrpc_look_up_bundle._entry_ptr, ptr @rxrpc_look_up_bundle._entry_ptr.65, ptr @rxrpc_look_up_bundle._entry_ptr.68, ptr @rxrpc_look_up_bundle._entry_ptr.71, ptr @rxrpc_look_up_bundle._entry_ptr.74, ptr @rxrpc_look_up_bundle._entry_ptr.77, ptr @rxrpc_look_up_bundle._entry_ptr.80, ptr @rxrpc_maybe_add_conn._entry, ptr @rxrpc_maybe_add_conn._entry.89, ptr @rxrpc_maybe_add_conn._entry_ptr, ptr @rxrpc_maybe_add_conn._entry_ptr.90, ptr @rxrpc_prep_call._entry, ptr @rxrpc_prep_call._entry.55, ptr @rxrpc_prep_call._entry.58, ptr @rxrpc_prep_call._entry_ptr, ptr @rxrpc_prep_call._entry_ptr.57, ptr @rxrpc_prep_call._entry_ptr.60, ptr @rxrpc_put_bundle._entry, ptr @rxrpc_put_bundle._entry_ptr, ptr @rxrpc_put_client_conn._entry, ptr @rxrpc_put_client_conn._entry_ptr, ptr @rxrpc_unbundle_conn._entry, ptr @rxrpc_unbundle_conn._entry.136, ptr @rxrpc_unbundle_conn._entry.139, ptr @rxrpc_unbundle_conn._entry.142, ptr @rxrpc_unbundle_conn._entry.145, ptr @rxrpc_unbundle_conn._entry_ptr, ptr @rxrpc_unbundle_conn._entry_ptr.138, ptr @rxrpc_unbundle_conn._entry_ptr.141, ptr @rxrpc_unbundle_conn._entry_ptr.144, ptr @rxrpc_unbundle_conn._entry_ptr.146, ptr @rxrpc_wait_for_channel._entry, ptr @rxrpc_wait_for_channel._entry.86, ptr @rxrpc_wait_for_channel._entry_ptr, ptr @rxrpc_wait_for_channel._entry_ptr.87, ptr @.str, ptr @rxrpc_client_conn_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.44, ptr @.str.46, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @rxrpc_look_up_bundle.rxrpc_bundle_id, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @rxrpc_alloc_bundle.__key, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.103, ptr @.str.107, ptr @.str.111, ptr @rxrpc_conn_id_lock, ptr @.str.113, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_client_conn_ids to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_client_conn_ids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_put_bundle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_connect_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_connect_call._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_disconnect_client_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_disconnect_client_call._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_disconnect_client_call._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_disconnect_client_call._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_disconnect_client_call._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_disconnect_client_call._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_put_client_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_discard_expired_client_conns._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_discard_expired_client_conns._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_discard_expired_client_conns._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_discard_expired_client_conns._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_discard_expired_client_conns._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_client_connections._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_client_connections._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_client_connections._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_clean_up_local_conns._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_clean_up_local_conns._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_prep_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_prep_call._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_prep_call._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_look_up_bundle.rxrpc_bundle_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_look_up_bundle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_look_up_bundle._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_look_up_bundle._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_look_up_bundle._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_look_up_bundle._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_look_up_bundle._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_look_up_bundle._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_bundle.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_wait_for_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_wait_for_channel._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_maybe_add_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_maybe_add_conn._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_add_conn_to_bundle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_add_conn_to_bundle._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_add_conn_to_bundle._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_add_conn_to_bundle._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_add_conn_to_bundle._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_client_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_client_connection._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_client_connection._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_client_connection._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_get_client_connection_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_conn_id_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_get_client_connection_id._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_get_client_connection_id._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_activate_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_activate_channels._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_activate_one_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_activate_one_channel._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kill_client_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_unbundle_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_unbundle_conn._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_unbundle_conn._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_unbundle_conn._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_unbundle_conn._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_destroy_client_conn_ids() local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #10
  %0 = load ptr, ptr getelementptr inbounds (%struct.idr, ptr @rxrpc_client_conn_ids, i32 0, i32 0, i32 2), align 4
  %cmp.i.i = icmp eq ptr %0, null
  br i1 %cmp.i.i, label %land.rhs.i, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

land.rhs.i:                                       ; preds = %entry
  %call2.i = tail call i32 @radix_tree_tagged(ptr noundef nonnull @rxrpc_client_conn_ids, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.i.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.i.not, label %land.rhs.i.for.cond.preheader_crit_edge, label %if.end

land.rhs.i.for.cond.preheader_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.rhs.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %id, align 4
  %call111 = call ptr @idr_get_next(ptr noundef nonnull @rxrpc_client_conn_ids, ptr noundef nonnull %id) #10
  %cmp.not12 = icmp eq ptr %call111, null
  br i1 %cmp.not12, label %for.cond.preheader.do.body4_crit_edge, label %for.cond.preheader.do.end_crit_edge

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  br label %do.end

for.cond.preheader.do.body4_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

do.end:                                           ; preds = %do.end.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %call113 = phi ptr [ %call1, %do.end.do.end_crit_edge ], [ %call111, %for.cond.preheader.do.end_crit_edge ]
  %usage = getelementptr inbounds %struct.rxrpc_connection, ptr %call113, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %2 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usage, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %call113, i32 noundef %3) #13
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %add = add i32 %5, 1
  store i32 %add, ptr %id, align 4
  %call1 = call ptr @idr_get_next(ptr noundef nonnull @rxrpc_client_conn_ids, ptr noundef nonnull %id) #10
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %do.end.do.body4_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.do.body4_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

do.body4:                                         ; preds = %do.end.do.body4_crit_edge, %for.cond.preheader.do.body4_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_client.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #10, !srcloc !282
  unreachable

if.end:                                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @idr_destroy(ptr noundef nonnull @rxrpc_client_conn_ids) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_get_bundle(ptr noundef returned %bundle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !283
  ret ptr %bundle
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_put_bundle(ptr noundef %bundle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_id = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 2
  %0 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_id, align 4
  %usage = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !284
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !285
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %3 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !287

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm, i32 noundef %1, i32 noundef %asmresult.i.i.i.i) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then8, label %do.end7.if.end9_crit_edge

do.end7.if.end9_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %peer.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %bundle, i32 0, i32 1
  %8 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer.i, align 4
  tail call void @rxrpc_put_peer(ptr noundef %9) #10
  tail call void @kfree(ptr noundef %bundle) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end7.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_connect_call(ptr noundef %rx, ptr noundef %call, ptr nocapture noundef %cp, ptr noundef %srx, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 4
  %rxnet1 = getelementptr inbounds %struct.rxrpc_local, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rxnet1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxnet1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %4 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !287

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %9 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_id, align 4
  %user_call_ID = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 32
  %11 = ptrtoint ptr %user_call_ID to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %user_call_ID, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm, ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef %12) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %client_conn_reaper = getelementptr inbounds %struct.rxrpc_net, ptr %3, i32 0, i32 17
  tail call void @rxrpc_discard_expired_client_conns(ptr noundef %client_conn_reaper)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %13 = load i32, ptr @rxrpc_debug, align 4
  %and.i75 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %tobool.not.i = icmp eq i32 %and.i75, 0
  br i1 %tobool.not.i, label %do.end8.do.end7.i_crit_edge, label %do.end.i, !prof !287

do.end8.do.end7.i_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

do.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %debug_id.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %18 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_id.i, align 4
  %user_call_ID.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 32
  %20 = ptrtoint ptr %user_call_ID.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %user_call_ID.i, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm.i, ptr noundef nonnull @.str.54, i32 noundef %19, i32 noundef %21) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.end8.do.end7.i_crit_edge
  %22 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cp, align 4
  %call8.i = tail call ptr @rxrpc_lookup_peer(ptr noundef %rx, ptr noundef %23, ptr noundef %srx, i32 noundef %gfp) #10
  %peer.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp, i32 0, i32 1
  %24 = ptrtoint ptr %peer.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i, ptr %peer.i, align 4
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %do.end7.i.do.body52.i_crit_edge, label %if.end12.i

do.end7.i.do.body52.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52.i

if.end12.i:                                       ; preds = %do.end7.i
  %cong_cwnd.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call8.i, i32 0, i32 26
  %25 = ptrtoint ptr %cong_cwnd.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cong_cwnd.i, align 1
  %cong_cwnd14.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 57
  %27 = ptrtoint ptr %cong_cwnd14.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %cong_cwnd14.i, align 2
  %cong_ssthresh.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 59
  %28 = ptrtoint ptr %cong_ssthresh.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cong_ssthresh.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %29)
  %cmp.not.i = icmp uge i8 %26, %29
  %spec.select.i = zext i1 %cmp.not.i to i8
  %30 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 60
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.select.i, ptr %30, align 1
  %upgrade.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp, i32 0, i32 4
  %32 = ptrtoint ptr %upgrade.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %upgrade.i, align 1, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool21.not.i = icmp eq i8 %33, 0
  br i1 %tobool21.not.i, label %if.end12.i.if.end23.i_crit_edge, label %if.then22.i

if.end12.i.if.end23.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %35, 8192
  store i32 %or.i.i, ptr %flags.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.end12.i.if.end23.i_crit_edge
  %36 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %38 = load i32, ptr @rxrpc_debug, align 4
  %and.i94.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94.i)
  %tobool.not.i.i = icmp eq i32 %and.i94.i, 0
  br i1 %tobool.not.i.i, label %if.end23.i.do.end9.i.i_crit_edge, label %do.end.i.i, !prof !287

if.end23.i.do.end9.i.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i

do.end.i.i:                                       ; preds = %if.end23.i
  %39 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 101
  %43 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %peer.i, align 4
  %key.i.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp, i32 0, i32 2
  %45 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %key.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.key_serial.exit.i.i_crit_edge, label %cond.true.i.i.i

do.end.i.i.key_serial.exit.i.i_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit.i.i

cond.true.i.i.i:                                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i.i.i = getelementptr inbounds %struct.key, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %serial.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %serial.i.i.i, align 4
  br label %key_serial.exit.i.i

key_serial.exit.i.i:                              ; preds = %cond.true.i.i.i, %do.end.i.i.key_serial.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %48, %cond.true.i.i.i ], [ 0, %do.end.i.i.key_serial.exit.i.i_crit_edge ]
  %security_level.i.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp, i32 0, i32 6
  %49 = ptrtoint ptr %security_level.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %security_level.i.i, align 4
  %51 = ptrtoint ptr %upgrade.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %upgrade.i, align 1, !range !288
  %53 = zext i8 %52 to i32
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %comm.i.i, ptr noundef nonnull @.str.62, ptr noundef %44, i32 noundef %cond.i.i.i, i32 noundef %50, i32 noundef %53) #13
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %key_serial.exit.i.i, %if.end23.i.do.end9.i.i_crit_edge
  %exclusive.i.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp, i32 0, i32 3
  %54 = ptrtoint ptr %exclusive.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %exclusive.i.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool10.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool10.not.i.i, label %do.body14.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i.i = tail call fastcc ptr @rxrpc_alloc_bundle(ptr noundef %cp, i32 noundef %gfp) #10
  br label %rxrpc_look_up_bundle.exit.i

do.body14.i.i:                                    ; preds = %do.end9.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %56 = load i32, ptr @rxrpc_debug, align 4
  %and15.i.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %do.body14.i.i.do.end35.i.i_crit_edge, label %do.end26.i.i, !prof !287

do.body14.i.i.do.end35.i.i_crit_edge:             ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35.i.i

do.end26.i.i:                                     ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i313.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i313.i.i to ptr
  %task29.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task29.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task29.i.i, align 8
  %comm30.i.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 101
  %call32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %comm30.i.i) #13
  br label %do.end35.i.i

do.end35.i.i:                                     ; preds = %do.end26.i.i, %do.body14.i.i.do.end35.i.i_crit_edge
  %client_bundles_lock.i.i = getelementptr inbounds %struct.rxrpc_local, ptr %37, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %client_bundles_lock.i.i) #10
  %client_bundles.i.i = getelementptr inbounds %struct.rxrpc_local, ptr %37, i32 0, i32 11
  %61 = ptrtoint ptr %client_bundles.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %p.0325.i.i = load ptr, ptr %client_bundles.i.i, align 4
  %tobool36.not326.i.i = icmp eq ptr %p.0325.i.i, null
  br i1 %tobool36.not326.i.i, label %do.end35.i.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

do.end35.i.i.while.end.i.i_crit_edge:             ; preds = %do.end35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %do.end35.i.i
  %62 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %peer.i, align 4
  %64 = ptrtoint ptr %63 to i32
  %key43.i.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp, i32 0, i32 2
  %security_level50.i.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp, i32 0, i32 6
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end74.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %p.0327.i.i = phi ptr [ %p.0325.i.i, %while.body.lr.ph.i.i ], [ %p.0.i.i, %if.end74.i.i.while.body.i.i_crit_edge ]
  %peer38.i.i = getelementptr i8, ptr %p.0327.i.i, i32 -72
  %65 = ptrtoint ptr %peer38.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %peer38.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  %sub.i.i = sub i32 %67, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool40.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool40.not.i.i, label %cond.false.i.i, label %while.body.i.i.cond.end65.i.i_crit_edge

while.body.i.i.cond.end65.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end65.i.i

cond.false.i.i:                                   ; preds = %while.body.i.i
  %key42.i.i = getelementptr i8, ptr %p.0327.i.i, i32 -68
  %68 = ptrtoint ptr %key42.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %key42.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  %71 = ptrtoint ptr %key43.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %key43.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  %sub44.i.i = sub i32 %70, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub44.i.i)
  %tobool45.not.i.i = icmp eq i32 %sub44.i.i, 0
  br i1 %tobool45.not.i.i, label %cond.false47.i.i, label %cond.false.i.i.cond.end65.i.i_crit_edge

cond.false.i.i.cond.end65.i.i_crit_edge:          ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end65.i.i

cond.false47.i.i:                                 ; preds = %cond.false.i.i
  %security_level49.i.i = getelementptr i8, ptr %p.0327.i.i, i32 -60
  %74 = ptrtoint ptr %security_level49.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %security_level49.i.i, align 4
  %76 = ptrtoint ptr %security_level50.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %security_level50.i.i, align 4
  %sub51.i.i = sub i32 %75, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub51.i.i)
  %tobool52.not.i.i = icmp eq i32 %sub51.i.i, 0
  br i1 %tobool52.not.i.i, label %cond.false54.i.i, label %cond.false47.i.i.cond.end65.i.i_crit_edge

cond.false47.i.i.cond.end65.i.i_crit_edge:        ; preds = %cond.false47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end65.i.i

cond.false54.i.i:                                 ; preds = %cond.false47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %upgrade56.i.i = getelementptr i8, ptr %p.0327.i.i, i32 -63
  %78 = ptrtoint ptr %upgrade56.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %upgrade56.i.i, align 1, !range !288
  %80 = zext i8 %79 to i32
  %81 = ptrtoint ptr %upgrade.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %upgrade.i, align 1, !range !288
  %83 = zext i8 %82 to i32
  %sub62.i.i = sub nsw i32 %80, %83
  br label %cond.end65.i.i

cond.end65.i.i:                                   ; preds = %cond.false54.i.i, %cond.false47.i.i.cond.end65.i.i_crit_edge, %cond.false.i.i.cond.end65.i.i_crit_edge, %while.body.i.i.cond.end65.i.i_crit_edge
  %cond66.i.i = phi i32 [ %sub.i.i, %while.body.i.i.cond.end65.i.i_crit_edge ], [ %sub44.i.i, %cond.false.i.i.cond.end65.i.i_crit_edge ], [ %sub62.i.i, %cond.false54.i.i ], [ %sub51.i.i, %cond.false47.i.i.cond.end65.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond66.i.i)
  %cmp.i.i = icmp slt i32 %cond66.i.i, 0
  br i1 %cmp.i.i, label %if.then68.i.i, label %if.else.i.i

if.then68.i.i:                                    ; preds = %cond.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %p.0327.i.i, i32 0, i32 2
  br label %if.end74.i.i

if.else.i.i:                                      ; preds = %cond.end65.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond66.i.i)
  %cmp69.not.i.i = icmp eq i32 %cond66.i.i, 0
  br i1 %cmp69.not.i.i, label %if.else.i.i.found_bundle.i.i_crit_edge, label %if.then71.i.i

if.else.i.i.found_bundle.i.i_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %found_bundle.i.i

if.then71.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %p.0327.i.i, i32 0, i32 1
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.then71.i.i, %if.then68.i.i
  %p.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then68.i.i ], [ %rb_right.i.i, %if.then71.i.i ]
  %84 = ptrtoint ptr %p.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %p.0.i.i = load ptr, ptr %p.1.in.i.i, align 4
  %tobool36.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool36.not.i.i, label %if.end74.i.i.while.end.i.i_crit_edge, label %if.end74.i.i.while.body.i.i_crit_edge

if.end74.i.i.while.body.i.i_crit_edge:            ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end74.i.i.while.end.i.i_crit_edge:             ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end74.i.i.while.end.i.i_crit_edge, %do.end35.i.i.while.end.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client_bundles_lock.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %85 = load i32, ptr @rxrpc_debug, align 4
  %and77.i.i = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i.i)
  %tobool78.not.i.i = icmp eq i32 %and77.i.i, 0
  br i1 %tobool78.not.i.i, label %while.end.i.i.do.end97.i.i_crit_edge, label %do.end88.i.i, !prof !287

while.end.i.i.do.end97.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97.i.i

do.end88.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i314.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i314.i.i to ptr
  %task91.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task91.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task91.i.i, align 8
  %comm92.i.i = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 101
  %call94.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %comm92.i.i) #13
  br label %do.end97.i.i

do.end97.i.i:                                     ; preds = %do.end88.i.i, %while.end.i.i.do.end97.i.i_crit_edge
  %call98.i.i = tail call fastcc ptr @rxrpc_alloc_bundle(ptr noundef %cp, i32 noundef %gfp) #10
  %tobool99.not.i.i = icmp eq ptr %call98.i.i, null
  br i1 %tobool99.not.i.i, label %do.end97.i.i.do.body52.i_crit_edge, label %do.body102.i.i

do.end97.i.i.do.body52.i_crit_edge:               ; preds = %do.end97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52.i

do.body102.i.i:                                   ; preds = %do.end97.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %90 = load i32, ptr @rxrpc_debug, align 4
  %and103.i.i = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i.i)
  %tobool104.not.i.i = icmp eq i32 %and103.i.i, 0
  br i1 %tobool104.not.i.i, label %do.body102.i.i.do.end123.i.i_crit_edge, label %do.end114.i.i, !prof !287

do.body102.i.i.do.end123.i.i_crit_edge:           ; preds = %do.body102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end123.i.i

do.end114.i.i:                                    ; preds = %do.body102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i315.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i315.i.i to ptr
  %task117.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task117.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task117.i.i, align 8
  %comm118.i.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 101
  %call120.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %comm118.i.i) #13
  br label %do.end123.i.i

do.end123.i.i:                                    ; preds = %do.end114.i.i, %do.body102.i.i.do.end123.i.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %client_bundles_lock.i.i) #10
  %95 = ptrtoint ptr %client_bundles.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %client_bundles.i.i, align 4
  %tobool128.not328.i.i = icmp eq ptr %96, null
  br i1 %tobool128.not328.i.i, label %do.end123.i.i.do.body181.i.i_crit_edge, label %while.body129.lr.ph.i.i

do.end123.i.i.do.body181.i.i_crit_edge:           ; preds = %do.end123.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body181.i.i

while.body129.lr.ph.i.i:                          ; preds = %do.end123.i.i
  %97 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %peer.i, align 4
  %99 = ptrtoint ptr %98 to i32
  %key142.i.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp, i32 0, i32 2
  %security_level149.i.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp, i32 0, i32 6
  br label %while.body129.i.i

while.body129.i.i:                                ; preds = %if.end179.i.i.while.body129.i.i_crit_edge, %while.body129.lr.ph.i.i
  %100 = phi ptr [ %96, %while.body129.lr.ph.i.i ], [ %121, %if.end179.i.i.while.body129.i.i_crit_edge ]
  %peer134.i.i = getelementptr i8, ptr %100, i32 -72
  %101 = ptrtoint ptr %peer134.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %peer134.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  %sub136.i.i = sub i32 %103, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub136.i.i)
  %tobool137.not.i.i = icmp eq i32 %sub136.i.i, 0
  br i1 %tobool137.not.i.i, label %cond.false139.i.i, label %while.body129.i.i.cond.end166.i.i_crit_edge

while.body129.i.i.cond.end166.i.i_crit_edge:      ; preds = %while.body129.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end166.i.i

cond.false139.i.i:                                ; preds = %while.body129.i.i
  %key141.i.i = getelementptr i8, ptr %100, i32 -68
  %104 = ptrtoint ptr %key141.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %key141.i.i, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = ptrtoint ptr %key142.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %key142.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  %sub143.i.i = sub i32 %106, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub143.i.i)
  %tobool144.not.i.i = icmp eq i32 %sub143.i.i, 0
  br i1 %tobool144.not.i.i, label %cond.false146.i.i, label %cond.false139.i.i.cond.end166.i.i_crit_edge

cond.false139.i.i.cond.end166.i.i_crit_edge:      ; preds = %cond.false139.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end166.i.i

cond.false146.i.i:                                ; preds = %cond.false139.i.i
  %security_level148.i.i = getelementptr i8, ptr %100, i32 -60
  %110 = ptrtoint ptr %security_level148.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %security_level148.i.i, align 4
  %112 = ptrtoint ptr %security_level149.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %security_level149.i.i, align 4
  %sub150.i.i = sub i32 %111, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub150.i.i)
  %tobool151.not.i.i = icmp eq i32 %sub150.i.i, 0
  br i1 %tobool151.not.i.i, label %cond.false153.i.i, label %cond.false146.i.i.cond.end166.i.i_crit_edge

cond.false146.i.i.cond.end166.i.i_crit_edge:      ; preds = %cond.false146.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end166.i.i

cond.false153.i.i:                                ; preds = %cond.false146.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %upgrade155.i.i = getelementptr i8, ptr %100, i32 -63
  %114 = ptrtoint ptr %upgrade155.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %upgrade155.i.i, align 1, !range !288
  %116 = zext i8 %115 to i32
  %117 = ptrtoint ptr %upgrade.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %upgrade.i, align 1, !range !288
  %119 = zext i8 %118 to i32
  %sub161.i.i = sub nsw i32 %116, %119
  br label %cond.end166.i.i

cond.end166.i.i:                                  ; preds = %cond.false153.i.i, %cond.false146.i.i.cond.end166.i.i_crit_edge, %cond.false139.i.i.cond.end166.i.i_crit_edge, %while.body129.i.i.cond.end166.i.i_crit_edge
  %cond167.i.i = phi i32 [ %sub136.i.i, %while.body129.i.i.cond.end166.i.i_crit_edge ], [ %sub143.i.i, %cond.false139.i.i.cond.end166.i.i_crit_edge ], [ %sub161.i.i, %cond.false153.i.i ], [ %sub150.i.i, %cond.false146.i.i.cond.end166.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond167.i.i)
  %cmp168.i.i = icmp slt i32 %cond167.i.i, 0
  br i1 %cmp168.i.i, label %if.then170.i.i, label %if.else172.i.i

if.then170.i.i:                                   ; preds = %cond.end166.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left171.i.i = getelementptr inbounds %struct.rb_node, ptr %100, i32 0, i32 2
  br label %if.end179.i.i

if.else172.i.i:                                   ; preds = %cond.end166.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond167.i.i)
  %cmp173.not.i.i = icmp eq i32 %cond167.i.i, 0
  br i1 %cmp173.not.i.i, label %found_bundle_free.i.i, label %if.then175.i.i

if.then175.i.i:                                   ; preds = %if.else172.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right176.i.i = getelementptr inbounds %struct.rb_node, ptr %100, i32 0, i32 1
  br label %if.end179.i.i

if.end179.i.i:                                    ; preds = %if.then175.i.i, %if.then170.i.i
  %pp.1.i.i = phi ptr [ %rb_left171.i.i, %if.then170.i.i ], [ %rb_right176.i.i, %if.then175.i.i ]
  %120 = ptrtoint ptr %pp.1.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pp.1.i.i, align 4
  %tobool128.not.i.i = icmp eq ptr %121, null
  br i1 %tobool128.not.i.i, label %while.cond127.do.body181_crit_edge.i.i, label %if.end179.i.i.while.body129.i.i_crit_edge

if.end179.i.i.while.body129.i.i_crit_edge:        ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body129.i.i

while.cond127.do.body181_crit_edge.i.i:           ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le.i.i = ptrtoint ptr %100 to i32
  br label %do.body181.i.i

do.body181.i.i:                                   ; preds = %while.cond127.do.body181_crit_edge.i.i, %do.end123.i.i.do.body181.i.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond127.do.body181_crit_edge.i.i ], [ 0, %do.end123.i.i.do.body181.i.i_crit_edge ]
  %pp.0.lcssa.i.i = phi ptr [ %pp.1.i.i, %while.cond127.do.body181_crit_edge.i.i ], [ %client_bundles.i.i, %do.end123.i.i.do.body181.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %122 = load i32, ptr @rxrpc_debug, align 4
  %and182.i.i = and i32 %122, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i.i)
  %tobool183.not.i.i = icmp eq i32 %and182.i.i, 0
  br i1 %tobool183.not.i.i, label %do.body181.i.i.do.end202.i.i_crit_edge, label %do.end193.i.i, !prof !287

do.body181.i.i.do.end202.i.i_crit_edge:           ; preds = %do.body181.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end202.i.i

do.end193.i.i:                                    ; preds = %do.body181.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i316.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i316.i.i to ptr
  %task196.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task196.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task196.i.i, align 8
  %comm197.i.i = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 101
  %call199.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %comm197.i.i) #13
  br label %do.end202.i.i

do.end202.i.i:                                    ; preds = %do.end193.i.i, %do.body181.i.i.do.end202.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rxrpc_look_up_bundle.rxrpc_bundle_id, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !289
  tail call void @llvm.prefetch.p0(ptr nonnull @rxrpc_look_up_bundle.rxrpc_bundle_id, i32 1, i32 3, i32 1) #10
  %127 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rxrpc_look_up_bundle.rxrpc_bundle_id, ptr nonnull @rxrpc_look_up_bundle.rxrpc_bundle_id, i32 1, ptr nonnull elementtype(i32) @rxrpc_look_up_bundle.rxrpc_bundle_id) #10, !srcloc !290
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %127, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !291
  %debug_id.i.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %call98.i.i, i32 0, i32 2
  %128 = ptrtoint ptr %debug_id.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %asmresult.i.i.i.i.i.i, ptr %debug_id.i.i, align 4
  %local_node.i.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %call98.i.i, i32 0, i32 7
  %129 = ptrtoint ptr %local_node.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %parent.0.lcssa.i.i, ptr %local_node.i.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %call98.i.i, i32 0, i32 7, i32 1
  %130 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %call98.i.i, i32 0, i32 7, i32 2
  %131 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %132 = ptrtoint ptr %pp.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %local_node.i.i, ptr %pp.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %local_node.i.i, ptr noundef %client_bundles.i.i) #10
  %usage.i.i.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %call98.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage.i.i.i, i32 1, i32 3, i32 1) #10
  %133 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i.i, ptr %usage.i.i.i, i32 1, ptr elementtype(i32) %usage.i.i.i) #10, !srcloc !283
  tail call void @_raw_spin_unlock(ptr noundef %client_bundles_lock.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %134 = load i32, ptr @rxrpc_debug, align 4
  %and209.i.i = and i32 %134, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209.i.i)
  %tobool210.not.i.i = icmp eq i32 %and209.i.i, 0
  br i1 %tobool210.not.i.i, label %do.end202.i.i.rxrpc_look_up_bundle.exit.i_crit_edge, label %do.end220.i.i, !prof !287

do.end202.i.i.rxrpc_look_up_bundle.exit.i_crit_edge: ; preds = %do.end202.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_look_up_bundle.exit.i

do.end220.i.i:                                    ; preds = %do.end202.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %135 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i317.i.i = and i32 %135, -16384
  %136 = inttoptr i32 %and.i317.i.i to ptr
  %task223.i.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task223.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task223.i.i, align 8
  %comm224.i.i = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 101
  %139 = ptrtoint ptr %debug_id.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %debug_id.i.i, align 4
  %call227.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %comm224.i.i, ptr noundef nonnull @.str.62, i32 noundef %140) #13
  br label %rxrpc_look_up_bundle.exit.i

found_bundle_free.i.i:                            ; preds = %if.else172.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %peer.i.i.i = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %call98.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %peer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %peer.i.i.i, align 4
  tail call void @rxrpc_put_peer(ptr noundef %142) #10
  tail call void @kfree(ptr noundef nonnull %call98.i.i) #10
  br label %found_bundle.i.i

found_bundle.i.i:                                 ; preds = %found_bundle_free.i.i, %if.else.i.i.found_bundle.i.i_crit_edge
  %p.0.pn.i.i = phi ptr [ %100, %found_bundle_free.i.i ], [ %p.0327.i.i, %if.else.i.i.found_bundle.i.i_crit_edge ]
  %bundle.0.i.i = getelementptr i8, ptr %p.0.pn.i.i, i32 -76
  %usage.i318.i.i = getelementptr i8, ptr %p.0.pn.i.i, i32 -56
  %call.i.i.i319.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i318.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage.i318.i.i, i32 1, i32 3, i32 1) #10
  %143 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i318.i.i, ptr %usage.i318.i.i, i32 1, ptr elementtype(i32) %usage.i318.i.i) #10, !srcloc !283
  tail call void @_raw_spin_unlock(ptr noundef %client_bundles_lock.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %144 = load i32, ptr @rxrpc_debug, align 4
  %and234.i.i = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234.i.i)
  %tobool235.not.i.i = icmp eq i32 %and234.i.i, 0
  br i1 %tobool235.not.i.i, label %found_bundle.i.i.rxrpc_look_up_bundle.exit.i_crit_edge, label %do.end245.i.i, !prof !287

found_bundle.i.i.rxrpc_look_up_bundle.exit.i_crit_edge: ; preds = %found_bundle.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_look_up_bundle.exit.i

do.end245.i.i:                                    ; preds = %found_bundle.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %145 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i320.i.i = and i32 %145, -16384
  %146 = inttoptr i32 %and.i320.i.i to ptr
  %task248.i.i = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %task248.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %task248.i.i, align 8
  %comm249.i.i = getelementptr inbounds %struct.task_struct, ptr %148, i32 0, i32 101
  %debug_id251.i.i = getelementptr i8, ptr %p.0.pn.i.i, i32 -52
  %149 = ptrtoint ptr %debug_id251.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %debug_id251.i.i, align 4
  %call252.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %comm249.i.i, ptr noundef nonnull @.str.62, i32 noundef %150) #13
  br label %rxrpc_look_up_bundle.exit.i

rxrpc_look_up_bundle.exit.i:                      ; preds = %do.end245.i.i, %found_bundle.i.i.rxrpc_look_up_bundle.exit.i_crit_edge, %do.end220.i.i, %do.end202.i.i.rxrpc_look_up_bundle.exit.i_crit_edge, %if.then11.i.i
  %retval.0.i.i = phi ptr [ %call12.i.i, %if.then11.i.i ], [ %call98.i.i, %do.end220.i.i ], [ %call98.i.i, %do.end202.i.i.rxrpc_look_up_bundle.exit.i_crit_edge ], [ %bundle.0.i.i, %do.end245.i.i ], [ %bundle.0.i.i, %found_bundle.i.i.rxrpc_look_up_bundle.exit.i_crit_edge ]
  %tobool25.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool25.not.i, label %rxrpc_look_up_bundle.exit.i.do.body52.i_crit_edge, label %if.end27.i

rxrpc_look_up_bundle.exit.i.do.body52.i_crit_edge: ; preds = %rxrpc_look_up_bundle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52.i

if.end27.i:                                       ; preds = %rxrpc_look_up_bundle.exit.i
  %channel_lock.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %retval.0.i.i, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %channel_lock.i) #10
  %chan_wait_link.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 22
  %waiting_calls.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %retval.0.i.i, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %retval.0.i.i, i32 0, i32 8, i32 1
  %151 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chan_wait_link.i, ptr noundef %152, ptr noundef %waiting_calls.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.i.list_add_tail.exit.i_crit_edge

if.end27.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %chan_wait_link.i, ptr %prev.i.i, align 4
  %154 = ptrtoint ptr %chan_wait_link.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %waiting_calls.i, ptr %chan_wait_link.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 22, i32 1
  %155 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %152, ptr %prev3.i.i.i, align 4
  %156 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %chan_wait_link.i, ptr %152, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end27.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %157 = load i32, ptr @rxrpc_debug, align 4
  %and30.i = and i32 %157, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %list_add_tail.exit.i.rxrpc_prep_call.exit_crit_edge, label %do.end41.i, !prof !287

list_add_tail.exit.i.rxrpc_prep_call.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_prep_call.exit

do.end41.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %158 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i95.i = and i32 %158, -16384
  %159 = inttoptr i32 %and.i95.i to ptr
  %task44.i = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %task44.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %task44.i, align 8
  %comm45.i = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 101
  %debug_id47.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %retval.0.i.i, i32 0, i32 2
  %162 = ptrtoint ptr %debug_id47.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %debug_id47.i, align 4
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %comm45.i, ptr noundef nonnull @.str.54, i32 noundef %163) #13
  br label %rxrpc_prep_call.exit

do.body52.i:                                      ; preds = %rxrpc_look_up_bundle.exit.i.do.body52.i_crit_edge, %do.end97.i.i.do.body52.i_crit_edge, %do.end7.i.do.body52.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %164 = load i32, ptr @rxrpc_debug, align 4
  %and53.i = and i32 %164, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %do.body52.i.if.then11_crit_edge, label %do.end64.i, !prof !287

do.body52.i.if.then11_crit_edge:                  ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.end64.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #12
  %165 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i96.i = and i32 %165, -16384
  %166 = inttoptr i32 %and.i96.i to ptr
  %task67.i = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %task67.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %task67.i, align 8
  %comm68.i = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 101
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %comm68.i, ptr noundef nonnull @.str.54) #13
  br label %if.then11

rxrpc_prep_call.exit:                             ; preds = %do.end41.i, %list_add_tail.exit.i.rxrpc_prep_call.exit_crit_edge
  %cmp.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rxrpc_prep_call.exit.if.then11_crit_edge, label %if.end13

rxrpc_prep_call.exit.if.then11_crit_edge:         ; preds = %rxrpc_prep_call.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %rxrpc_prep_call.exit.if.then11_crit_edge, %do.end64.i, %do.body52.i.if.then11_crit_edge
  %retval.0.i82 = phi ptr [ %retval.0.i.i, %rxrpc_prep_call.exit.if.then11_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end64.i ], [ inttoptr (i32 -12 to ptr), %do.body52.i.if.then11_crit_edge ]
  %169 = ptrtoint ptr %retval.0.i82 to i32
  br label %do.body26

if.end13:                                         ; preds = %rxrpc_prep_call.exit
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %170 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp = icmp eq i32 %171, 1
  br i1 %cmp, label %if.then14, label %if.end13.do.end23_crit_edge

if.end13.do.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

if.then14:                                        ; preds = %if.end13
  %call15 = tail call fastcc i32 @rxrpc_wait_for_channel(ptr noundef nonnull %retval.0.i.i, ptr noundef %call, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %wait_failed, label %if.then14.do.end23_crit_edge

if.then14.do.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

do.end23:                                         ; preds = %list_del_init.exit.do.end23_crit_edge, %if.then14.do.end23_crit_edge, %if.end13.do.end23_crit_edge
  %ret.0 = phi i32 [ %call15, %if.then14.do.end23_crit_edge ], [ 0, %if.end13.do.end23_crit_edge ], [ 0, %list_del_init.exit.do.end23_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !292
  br label %out_put_bundle

out_put_bundle:                                   ; preds = %if.end52, %do.end23
  %ret.1 = phi i32 [ %ret.0, %do.end23 ], [ %call15, %if.end52 ]
  tail call void @rxrpc_put_bundle(ptr noundef nonnull %retval.0.i.i)
  br label %do.body26

do.body26:                                        ; preds = %out_put_bundle, %if.then11
  %ret.2 = phi i32 [ %169, %if.then11 ], [ %ret.1, %out_put_bundle ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %172 = load i32, ptr @rxrpc_debug, align 4
  %and27 = and i32 %172, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.do.end47_crit_edge, label %do.end38, !prof !287

do.body26.do.end47_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.end38:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %173 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i76 = and i32 %173, -16384
  %174 = inttoptr i32 %and.i76 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %task41, align 8
  %comm42 = getelementptr inbounds %struct.task_struct, ptr %176, i32 0, i32 101
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm42, ptr noundef nonnull @.str.7, i32 noundef %ret.2) #13
  br label %do.end47

do.end47:                                         ; preds = %do.end38, %do.body26.do.end47_crit_edge
  ret i32 %ret.2

wait_failed:                                      ; preds = %if.then14
  tail call void @_raw_spin_lock(ptr noundef %channel_lock.i) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chan_wait_link.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %wait_failed.list_del_init.exit_crit_edge

wait_failed.list_del_init.exit_crit_edge:         ; preds = %wait_failed
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %wait_failed
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i77 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 22, i32 1
  %177 = ptrtoint ptr %prev.i.i77 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %prev.i.i77, align 4
  %179 = ptrtoint ptr %chan_wait_link.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %chan_wait_link.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %178, ptr %prev1.i.i.i, align 4
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %180, ptr %178, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %wait_failed.list_del_init.exit_crit_edge
  %183 = ptrtoint ptr %chan_wait_link.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile ptr %chan_wait_link.i, ptr %chan_wait_link.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 22, i32 1
  %184 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %chan_wait_link.i, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock.i) #10
  %185 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %186)
  %cmp50.not = icmp eq i32 %186, 1
  br i1 %cmp50.not, label %if.end52, label %list_del_init.exit.do.end23_crit_edge

list_del_init.exit.do.end23_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

if.end52:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conn = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %187 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %conn, align 8
  tail call fastcc void @trace_rxrpc_client(ptr noundef %188, i32 noundef %call15, i32 noundef 5)
  %call53 = tail call zeroext i1 @rxrpc_set_call_completion(ptr noundef %call, i32 noundef 3, i32 noundef 0, i32 noundef %call15) #10
  tail call void @rxrpc_disconnect_client_call(ptr noundef nonnull %retval.0.i.i, ptr noundef %call)
  br label %out_put_bundle
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_discard_expired_client_conns(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !287

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm, ptr noundef nonnull @.str.32) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %idle_client_conns = getelementptr i8, ptr %work, i32 -8
  %5 = ptrtoint ptr %idle_client_conns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %idle_client_conns, align 4
  %cmp.i.not = icmp eq ptr %6, %idle_client_conns
  br i1 %cmp.i.not, label %do.body11, label %if.end33

do.body11:                                        ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %7 = load i32, ptr @rxrpc_debug, align 4
  %and12 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %do.body11.cleanup.sink.split_crit_edge, !prof !287

do.body11.cleanup.sink.split_crit_edge:           ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %do.end7
  %client_conn_discard_lock = getelementptr i8, ptr %work, i32 -52
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %client_conn_discard_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %do.body37, label %if.end59

do.body37:                                        ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %8 = load i32, ptr @rxrpc_debug, align 4
  %and38 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.cleanup_crit_edge, label %do.body37.cleanup.sink.split_crit_edge, !prof !287

do.body37.cleanup.sink.split_crit_edge:           ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59:                                         ; preds = %if.end33
  %nr_client_conns = getelementptr i8, ptr %work, i32 -100
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_client_conns, i32 noundef 4) #10
  %9 = ptrtoint ptr %nr_client_conns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %nr_client_conns, align 4
  %client_conn_cache_lock = getelementptr i8, ptr %work, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %client_conn_cache_lock) #10
  %11 = ptrtoint ptr %idle_client_conns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %idle_client_conns, align 4
  %cmp.i163.not170 = icmp eq ptr %12, %idle_client_conns
  br i1 %cmp.i163.not170, label %if.end59.out_crit_edge, label %if.end65.lr.ph

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end65.lr.ph:                                   ; preds = %if.end59
  %kill_all_client_conns = getelementptr i8, ptr %work, i32 -103
  br label %if.end65

if.end65:                                         ; preds = %rxrpc_put_connection.exit.if.end65_crit_edge, %if.end65.lr.ph
  %13 = phi ptr [ %12, %if.end65.lr.ph ], [ %36, %rxrpc_put_connection.exit.if.end65_crit_edge ]
  %nr_conns.0171 = phi i32 [ %10, %if.end65.lr.ph ], [ %dec, %rxrpc_put_connection.exit.if.end65_crit_edge ]
  %add.ptr70 = getelementptr i8, ptr %13, i32 -40
  %14 = ptrtoint ptr %kill_all_client_conns to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %kill_all_client_conns, align 1, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool71.not = icmp eq i8 %15, 0
  br i1 %tobool71.not, label %if.then72, label %if.end65.if.end85_crit_edge

if.end65.if.end85_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then72:                                        ; preds = %if.end65
  %16 = load i32, ptr @rxrpc_reap_client_connections, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_conns.0171, i32 %16)
  %cmp = icmp ugt i32 %nr_conns.0171, %16
  %rxrpc_conn_idle_client_fast_expiry.val = load i32, ptr @rxrpc_conn_idle_client_fast_expiry, align 4
  %rxrpc_conn_idle_client_expiry.val = load i32, ptr @rxrpc_conn_idle_client_expiry, align 4
  %expiry.0 = select i1 %cmp, i32 %rxrpc_conn_idle_client_fast_expiry.val, i32 %rxrpc_conn_idle_client_expiry.val
  %params = getelementptr i8, ptr %13, i32 -32
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params, align 8
  %service_closed = getelementptr inbounds %struct.rxrpc_local, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %service_closed to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %service_closed, align 1, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool75.not = icmp eq i8 %20, 0
  br i1 %tobool75.not, label %if.then72.if.end77_crit_edge, label %if.then76

if.then72.if.end77_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then76:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_closed_conn_expiry to i32))
  %21 = load i32, ptr @rxrpc_closed_conn_expiry, align 4
  %mul = mul i32 %21, 100
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.then72.if.end77_crit_edge
  %expiry.1 = phi i32 [ %mul, %if.then76 ], [ %expiry.0, %if.then72.if.end77_crit_edge ]
  %idle_timestamp = getelementptr i8, ptr %13, i32 360
  %22 = ptrtoint ptr %idle_timestamp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idle_timestamp, align 8
  %add = add i32 %23, %expiry.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %24, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp82 = icmp slt i32 %sub, 0
  br i1 %cmp82, label %do.body87, label %if.end77.if.end85_crit_edge

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.end85:                                         ; preds = %if.end77.if.end85_crit_edge, %if.end65.if.end85_crit_edge
  tail call fastcc void @trace_rxrpc_client(ptr noundef %add.ptr70, i32 noundef -1, i32 noundef 7)
  %call.i.i165 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #10
  br i1 %call.i.i165, label %if.end.i.i, label %if.end85.list_del_init.exit_crit_edge

if.end85.list_del_init.exit_crit_edge:            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %13, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end85.list_del_init.exit_crit_edge
  %31 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %13, ptr %13, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %13, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %client_conn_cache_lock) #10
  tail call fastcc void @rxrpc_unbundle_conn(ptr noundef %add.ptr70)
  %tobool.not.i = icmp eq ptr %add.ptr70, null
  br i1 %tobool.not.i, label %list_del_init.exit.rxrpc_put_connection.exit_crit_edge, label %if.end.i

list_del_init.exit.rxrpc_put_connection.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_put_connection.exit

if.end.i:                                         ; preds = %list_del_init.exit
  %out_clientflag.i.i = getelementptr i8, ptr %13, i32 433
  %33 = ptrtoint ptr %out_clientflag.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %out_clientflag.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.i.not.i = icmp eq i8 %34, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_client_conn(ptr noundef nonnull %add.ptr70) #10
  br label %rxrpc_put_connection.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_service_conn(ptr noundef nonnull %add.ptr70) #10
  br label %rxrpc_put_connection.exit

rxrpc_put_connection.exit:                        ; preds = %if.else.i, %if.then1.i, %list_del_init.exit.rxrpc_put_connection.exit_crit_edge
  %dec = add i32 %nr_conns.0171, -1
  tail call void @_raw_spin_lock(ptr noundef %client_conn_cache_lock) #10
  %35 = ptrtoint ptr %idle_client_conns to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %idle_client_conns, align 4
  %cmp.i163.not = icmp eq ptr %36, %idle_client_conns
  br i1 %cmp.i163.not, label %rxrpc_put_connection.exit.out_crit_edge, label %rxrpc_put_connection.exit.if.end65_crit_edge

rxrpc_put_connection.exit.if.end65_crit_edge:     ; preds = %rxrpc_put_connection.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

rxrpc_put_connection.exit.out_crit_edge:          ; preds = %rxrpc_put_connection.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body87:                                        ; preds = %if.end77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %37 = load i32, ptr @rxrpc_debug, align 4
  %and88 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body87.do.end108_crit_edge, label %do.end99, !prof !287

do.body87.do.end108_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end108

do.end99:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  %38 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i166 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i166 to ptr
  %task102 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task102 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task102, align 8
  %comm103 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 101
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm103) #13
  br label %do.end108

do.end108:                                        ; preds = %do.end99, %do.body87.do.end108_crit_edge
  %42 = ptrtoint ptr %kill_all_client_conns to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %kill_all_client_conns, align 1, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool110.not = icmp eq i8 %43, 0
  br i1 %tobool110.not, label %if.then111, label %do.end108.out_crit_edge

do.end108.out_crit_edge:                          ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then111:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #12
  %client_conn_reap_timer = getelementptr i8, ptr %work, i32 44
  %call112 = tail call i32 @timer_reduce(ptr noundef %client_conn_reap_timer, i32 noundef %add) #10
  br label %out

out:                                              ; preds = %if.then111, %do.end108.out_crit_edge, %rxrpc_put_connection.exit.out_crit_edge, %if.end59.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client_conn_cache_lock) #10
  tail call void @_raw_spin_unlock(ptr noundef %client_conn_discard_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %44 = load i32, ptr @rxrpc_debug, align 4
  %and117 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %out.cleanup_crit_edge, label %out.cleanup.sink.split_crit_edge, !prof !287

out.cleanup.sink.split_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %out.cleanup.sink.split_crit_edge, %do.body37.cleanup.sink.split_crit_edge, %do.body11.cleanup.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.34, %do.body11.cleanup.sink.split_crit_edge ], [ @.str.37, %do.body37.cleanup.sink.split_crit_edge ], [ @.str.27, %out.cleanup.sink.split_crit_edge ]
  %45 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i167 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i167 to ptr
  %task131 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task131 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task131, align 8
  %comm132 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 101
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.27.sink, ptr noundef %comm132, ptr noundef nonnull @.str.32) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out.cleanup_crit_edge, %do.body37.cleanup_crit_edge, %do.body11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_wait_for_channel(ptr noundef %bundle, ptr noundef %call, i32 noundef %gfp) #0 align 64 {
entry:
  %myself = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %myself) #10
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %myself to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %myself, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %13 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !287

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %16 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_id, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %comm, ptr noundef nonnull @.str.83, i32 noundef %17) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %and.i313 = and i32 %gfp, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i313)
  %tobool.i.not = icmp eq i32 %and.i313, 0
  br i1 %tobool.i.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rxrpc_maybe_add_conn(ptr noundef %bundle, i32 noundef %gfp)
  tail call fastcc void @rxrpc_activate_channels(ptr noundef %bundle)
  %alloc_error = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 5
  %18 = ptrtoint ptr %alloc_error to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %alloc_error, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool13.not = icmp eq i16 %19, 0
  %narrow = select i1 %tobool13.not, i16 -11, i16 %19
  %conv. = sext i16 %narrow to i32
  br label %do.body269

if.end14:                                         ; preds = %do.end10
  %waitq = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  call void @add_wait_queue_exclusive(ptr noundef %waitq, ptr noundef nonnull %myself) #10
  call fastcc void @rxrpc_maybe_add_conn(ptr noundef %bundle, i32 noundef %gfp)
  call fastcc void @rxrpc_activate_channels(ptr noundef %bundle)
  %alloc_error15 = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 5
  %20 = ptrtoint ptr %alloc_error15 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %alloc_error15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp324 = icmp slt i16 %21, 0
  br i1 %cmp324, label %if.end14.for.end.split.loop.exit320_crit_edge, label %if.end19.lr.ph

if.end14.for.end.split.loop.exit320_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.split.loop.exit320

if.end19.lr.ph:                                   ; preds = %if.end14
  %interruptibility = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 45
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  br label %if.end19

if.end19:                                         ; preds = %if.end195.if.end19_crit_edge, %if.end19.lr.ph
  %22 = phi i16 [ %21, %if.end19.lr.ph ], [ %49, %if.end195.if.end19_crit_edge ]
  %23 = ptrtoint ptr %interruptibility to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %interruptibility, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %switch = icmp ult i32 %24, 2
  br i1 %switch, label %__here, label %__here146

__here:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 ptrtoint (ptr blockaddress(@rxrpc_wait_for_channel, %__here) to i32), ptr %task_state_change, align 4
  %28 = load ptr, ptr %task, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %28, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !293
  br label %do.end178

__here146:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %task_state_change150 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change150 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@rxrpc_wait_for_channel, %__here146) to i32), ptr %task_state_change150, align 4
  %33 = load ptr, ptr %task, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 2, ptr %33, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !294
  br label %do.end178

do.end178:                                        ; preds = %__here146, %__here
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp180.not = icmp eq i32 %36, 1
  br i1 %cmp180.not, label %if.end183, label %for.end.split.loop.exit318

if.end183:                                        ; preds = %do.end178
  %37 = ptrtoint ptr %interruptibility to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %interruptibility, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %switch312 = icmp ult i32 %38, 2
  br i1 %switch312, label %land.lhs.true, label %if.end183.if.end195_crit_edge

if.end183.if.end195_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

land.lhs.true:                                    ; preds = %if.end183
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stack.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true.for.end_crit_edge, !prof !287

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

signal_pending.exit:                              ; preds = %land.lhs.true
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %and1.i.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool193.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool193.not, label %signal_pending.exit.if.end195_crit_edge, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

signal_pending.exit.if.end195_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

if.end195:                                        ; preds = %signal_pending.exit.if.end195_crit_edge, %if.end183.if.end195_crit_edge
  call void @schedule() #10
  call fastcc void @rxrpc_maybe_add_conn(ptr noundef %bundle, i32 noundef %gfp)
  call fastcc void @rxrpc_activate_channels(ptr noundef %bundle)
  %48 = ptrtoint ptr %alloc_error15 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %alloc_error15, align 2
  %cmp = icmp slt i16 %49, 0
  br i1 %cmp, label %if.end195.for.end.split.loop.exit320_crit_edge, label %if.end195.if.end19_crit_edge

if.end195.if.end19_crit_edge:                     ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end195.for.end.split.loop.exit320_crit_edge:   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.split.loop.exit320

for.end.split.loop.exit318:                       ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #12
  %conv16.le322329 = zext i16 %22 to i32
  br label %for.end

for.end.split.loop.exit320:                       ; preds = %if.end195.for.end.split.loop.exit320_crit_edge, %if.end14.for.end.split.loop.exit320_crit_edge
  %.lcssa = phi i16 [ %21, %if.end14.for.end.split.loop.exit320_crit_edge ], [ %49, %if.end195.for.end.split.loop.exit320_crit_edge ]
  %conv16.le = sext i16 %.lcssa to i32
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit320, %for.end.split.loop.exit318, %signal_pending.exit.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %ret.0 = phi i32 [ %conv16.le322329, %for.end.split.loop.exit318 ], [ %conv16.le, %for.end.split.loop.exit320 ], [ -512, %land.lhs.true.for.end_crit_edge ], [ -512, %signal_pending.exit.for.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %waitq, ptr noundef nonnull %myself) #10
  br label %__here248

__here248:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %task_state_change252 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 212
  %52 = ptrtoint ptr %task_state_change252 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 ptrtoint (ptr blockaddress(@rxrpc_wait_for_channel, %__here248) to i32), ptr %task_state_change252, align 4
  %53 = load ptr, ptr %task, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %53, align 128
  br label %do.body269

do.body269:                                       ; preds = %__here248, %if.then12
  %ret.1 = phi i32 [ %ret.0, %__here248 ], [ %conv., %if.then12 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %55 = load i32, ptr @rxrpc_debug, align 4
  %and270 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %do.body269.do.end290_crit_edge, label %do.end281, !prof !287

do.body269.do.end290_crit_edge:                   ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end290

do.end281:                                        ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task, align 8
  %comm285 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 101
  %call287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm285, ptr noundef nonnull @.str.83, i32 noundef %ret.1) #13
  br label %do.end290

do.end290:                                        ; preds = %do.end281, %do.body269.do.end290_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %myself) #10
  ret i32 %ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_client(ptr noundef %conn, i32 noundef %channel, i32 noundef %op) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_client, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_client, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !295

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !287

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !296
  %call42 = tail call i32 @__traceiter_rxrpc_client(ptr noundef null, ptr noundef %conn, i32 noundef %channel, i32 noundef %op) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !297
  %13 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !287

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !298
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_client, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_client, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_rxrpc_client.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rxrpc_client.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 591, ptr noundef nonnull @.str.126) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !299
  %31 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
declare dso_local zeroext i1 @rxrpc_set_call_completion(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_disconnect_client_call(ptr noundef %bundle, ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bundle, align 4
  %rxnet1 = getelementptr inbounds %struct.rxrpc_local, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rxnet1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxnet1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %4 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !287

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %9 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_id, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm, ptr noundef nonnull @.str.12, i32 noundef %10) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %channel_lock = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %channel_lock) #10
  %flags = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags) #10
  %conn9 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn9, align 8
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %do.body12, label %if.end87

do.body12:                                        ; preds = %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %13 = load i32, ptr @rxrpc_debug, align 4
  %and13 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.body34_crit_edge, label %do.end24, !prof !287

do.body12.do.body34_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

do.end24:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i308 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i308 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task27, align 8
  %comm28 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm28) #13
  br label %do.body34

do.body34:                                        ; preds = %do.end24, %do.body12.do.body34_crit_edge
  %call_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 46
  %18 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.end55, label %do.end46, !prof !287

do.end46:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %19, i32 noundef %19, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_client.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 806, 0\0A.popsection", ""() #10, !srcloc !300
  unreachable

if.end55:                                         ; preds = %do.body34
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool61.not = icmp eq i32 %22, 0
  br i1 %tobool61.not, label %do.end86, label %do.end75, !prof !287

do.end75:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_client.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 807, 0\0A.popsection", ""() #10, !srcloc !301
  unreachable

do.end86:                                         ; preds = %if.end55
  %chan_wait_link = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chan_wait_link) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end86.list_del_init.exit_crit_edge

do.end86.list_del_init.exit_crit_edge:            ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 22, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %chan_wait_link to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan_wait_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end86.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %chan_wait_link to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %chan_wait_link, ptr %chan_wait_link, align 4
  %prev.i3.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 22, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %chan_wait_link, ptr %prev.i3.i, align 4
  br label %out

if.end87:                                         ; preds = %do.end8
  %cid88 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %31 = ptrtoint ptr %cid88 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cid88, align 8
  %and89 = and i32 %32, 3
  %arrayidx = getelementptr %struct.rxrpc_connection, ptr %12, i32 0, i32 6, i32 %and89
  tail call fastcc void @trace_rxrpc_client(ptr noundef nonnull %12, i32 noundef %and89, i32 noundef 3)
  %call94 = getelementptr %struct.rxrpc_connection, ptr %12, i32 0, i32 6, i32 %and89, i32 1
  %33 = ptrtoint ptr %call94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %call94, align 4
  %cmp96.not = icmp eq ptr %34, %call
  br i1 %cmp96.not, label %if.end.i, label %if.then97

if.then97:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_client.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 819, 0\0A.popsection", ""() #10, !srcloc !302
  unreachable

if.end.i:                                         ; preds = %if.end87
  %params.i = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 1
  %35 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %params.i, align 8
  %rxnet1.i = getelementptr inbounds %struct.rxrpc_local, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %rxnet1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rxnet1.i, align 4
  %flags.i = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 17
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i = icmp eq i32 %41, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.rxrpc_may_reuse_conn.exit_crit_edge

if.end.i.rxrpc_may_reuse_conn.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_may_reuse_conn.exit

if.end4.i:                                        ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 21
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.not.i = icmp eq i32 %43, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end4.i.mark_dont_reuse.i_crit_edge

if.end4.i.mark_dont_reuse.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %12, align 8
  %epoch5.i = getelementptr inbounds %struct.rxrpc_net, ptr %38, i32 0, i32 1
  %46 = ptrtoint ptr %epoch5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %epoch5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp6.not.i = icmp eq i32 %45, %47
  br i1 %cmp6.not.i, label %if.end8.i, label %lor.lhs.false.i.mark_dont_reuse.i_crit_edge

lor.lhs.false.i.mark_dont_reuse.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.idr, ptr @rxrpc_client_conn_ids, i32 0, i32 2), align 4
  %cid.i = getelementptr inbounds %struct.anon.3, ptr %12, i32 0, i32 1
  %49 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cid.i, align 4
  %shr.i309 = lshr i32 %50, 2
  %sub.i = sub i32 %shr.i309, %48
  %51 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #10
  %nr_conns.i = getelementptr inbounds %struct.rxrpc_net, ptr %38, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_conns.i, i32 noundef 4) #10
  %52 = ptrtoint ptr %nr_conns.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %nr_conns.i, align 4
  %mul.i = shl i32 %53, 2
  %54 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 1024) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %54)
  %cmp17.i = icmp sgt i32 %51, %54
  br i1 %cmp17.i, label %if.end8.i.mark_dont_reuse.i_crit_edge, label %if.end8.i.rxrpc_may_reuse_conn.exit_crit_edge

if.end8.i.rxrpc_may_reuse_conn.exit_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_may_reuse_conn.exit

if.end8.i.mark_dont_reuse.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i

mark_dont_reuse.i:                                ; preds = %if.end8.i.mark_dont_reuse.i_crit_edge, %lor.lhs.false.i.mark_dont_reuse.i_crit_edge, %if.end4.i.mark_dont_reuse.i_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #10
  br label %rxrpc_may_reuse_conn.exit

rxrpc_may_reuse_conn.exit:                        ; preds = %mark_dont_reuse.i, %if.end8.i.rxrpc_may_reuse_conn.exit_crit_edge, %if.end.i.rxrpc_may_reuse_conn.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.end8.i.rxrpc_may_reuse_conn.exit_crit_edge ], [ false, %if.end.i.rxrpc_may_reuse_conn.exit_crit_edge ], [ false, %mark_dont_reuse.i ]
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags, align 4
  %57 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool109.not = icmp eq i32 %57, 0
  br i1 %tobool109.not, label %rxrpc_may_reuse_conn.exit.if.end142_crit_edge, label %do.body111

rxrpc_may_reuse_conn.exit.if.end142_crit_edge:    ; preds = %rxrpc_may_reuse_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

do.body111:                                       ; preds = %rxrpc_may_reuse_conn.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %58 = load i32, ptr @rxrpc_debug, align 4
  %and112 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body111.do.end133_crit_edge, label %do.end123, !prof !287

do.body111.do.end133_crit_edge:                   ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end133

do.end123:                                        ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #12
  %59 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i310 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i310 to ptr
  %task126 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task126 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task126, align 8
  %comm127 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 101
  %call_id129 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 46
  %63 = ptrtoint ptr %call_id129 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call_id129, align 4
  %abort_code = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %65 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %abort_code, align 8
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm127, i32 noundef %64, i32 noundef %66) #13
  br label %do.end133

do.end133:                                        ; preds = %do.end123, %do.body111.do.end133_crit_edge
  tail call void @__rxrpc_disconnect_call(ptr noundef nonnull %12, ptr noundef %call) #10
  %call135 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %do.end133.if.end142_crit_edge, label %if.then137

do.end133.if.end142_crit_edge:                    ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

if.then137:                                       ; preds = %do.end133
  tail call fastcc void @trace_rxrpc_client(ptr noundef nonnull %12, i32 noundef %and89, i32 noundef 11)
  %try_upgrade = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 3
  %67 = ptrtoint ptr %try_upgrade to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %try_upgrade, align 4
  br i1 %retval.0.i, label %if.then139, label %if.then137.if.end147_crit_edge

if.then137.if.end147_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then139:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rxrpc_activate_channels_locked(ptr noundef %bundle)
  br label %land.lhs.true

if.end142:                                        ; preds = %do.end133.if.end142_crit_edge, %rxrpc_may_reuse_conn.exit.if.end142_crit_edge
  br i1 %retval.0.i, label %if.end142.land.lhs.true_crit_edge, label %if.end142.if.end147_crit_edge

if.end142.if.end147_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.end142.land.lhs.true_crit_edge:                ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end142.land.lhs.true_crit_edge, %if.then139
  %waiting_calls = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 8
  %68 = ptrtoint ptr %waiting_calls to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %waiting_calls, align 4
  %cmp.i.not = icmp eq ptr %69, %waiting_calls
  br i1 %cmp.i.not, label %land.lhs.true.if.end147_crit_edge, label %if.then146

land.lhs.true.if.end147_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then146:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_rxrpc_client(ptr noundef nonnull %12, i32 noundef %and89, i32 noundef 4)
  tail call fastcc void @rxrpc_activate_one_channel(ptr noundef nonnull %12, i32 noundef %and89)
  br label %out

if.end147:                                        ; preds = %land.lhs.true.if.end147_crit_edge, %if.end142.if.end147_crit_edge, %if.then137.if.end147_crit_edge
  %completion = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %70 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %completion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp148 = icmp eq i32 %71, 0
  br i1 %cmp148, label %land.lhs.true149, label %if.end147.do.body180_crit_edge

if.end147.do.body180_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body180

land.lhs.true149:                                 ; preds = %if.end147
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags, align 4
  %74 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool152.not = icmp eq i32 %74, 0
  br i1 %tobool152.not, label %land.lhs.true149.do.body180_crit_edge, label %if.then153

land.lhs.true149.do.body180_crit_edge:            ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body180

if.then153:                                       ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %75, 2
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %add, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !303
  %add170 = or i32 %and89, 4
  tail call void @_set_bit(i32 noundef %add170, ptr noundef %flags.i) #10
  %timer.i = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 7
  %call.i = tail call i32 @timer_reduce(ptr noundef %timer.i, i32 noundef %add) #10
  br label %do.body180

do.body180:                                       ; preds = %if.then153, %land.lhs.true149.do.body180_crit_edge, %if.end147.do.body180_crit_edge
  %77 = ptrtoint ptr %call94 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr null, ptr %call94, align 4
  %bundle_shift = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 29
  %78 = ptrtoint ptr %bundle_shift to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bundle_shift, align 2
  %conv = zext i8 %79 to i32
  %add211 = add nuw nsw i32 %and89, %conv
  %bundle212 = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 9
  %80 = ptrtoint ptr %bundle212 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bundle212, align 8
  %avail_chans = getelementptr inbounds %struct.rxrpc_bundle, ptr %81, i32 0, i32 9
  tail call void @_set_bit(i32 noundef %add211, ptr noundef %avail_chans) #10
  %shl = shl nuw nsw i32 1, %and89
  %act_chans = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 5
  %82 = ptrtoint ptr %act_chans to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %act_chans, align 8
  %84 = trunc i32 %shl to i8
  %85 = xor i8 %84, -1
  %conv215 = and i8 %83, %85
  store i8 %conv215, ptr %act_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv215)
  %tobool217.not = icmp eq i8 %conv215, 0
  br i1 %tobool217.not, label %if.then218, label %do.body180.out_crit_edge

do.body180.out_crit_edge:                         ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then218:                                       ; preds = %do.body180
  tail call fastcc void @trace_rxrpc_client(ptr noundef nonnull %12, i32 noundef %and89, i32 noundef 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %idle_timestamp = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 19
  %87 = ptrtoint ptr %idle_timestamp to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %idle_timestamp, align 8
  %call219 = tail call ptr @rxrpc_get_connection(ptr noundef nonnull %12) #10
  %client_conn_cache_lock = getelementptr inbounds %struct.rxrpc_net, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %client_conn_cache_lock) #10
  %cache_link = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 4
  %idle_client_conns = getelementptr inbounds %struct.rxrpc_net, ptr %3, i32 0, i32 16
  %call.i.i311 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cache_link) #10
  br i1 %call.i.i311, label %if.end.i.i314, label %if.then218.__list_del_entry.exit.i_crit_edge

if.then218.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i314:                                    ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i312 = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 4, i32 1
  %88 = ptrtoint ptr %prev.i.i312 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i312, align 4
  %90 = ptrtoint ptr %cache_link to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cache_link, align 4
  %prev1.i.i.i313 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i.i313 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev1.i.i.i313, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %91, ptr %89, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i314, %if.then218.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.rxrpc_net, ptr %3, i32 0, i32 16, i32 1
  %94 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i315 = tail call zeroext i1 @__list_add_valid(ptr noundef %cache_link, ptr noundef %95, ptr noundef %idle_client_conns) #10
  br i1 %call.i.i.i315, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %cache_link, ptr %prev.i2.i, align 4
  %97 = ptrtoint ptr %cache_link to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %idle_client_conns, ptr %cache_link, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 4, i32 1
  %98 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev3.i.i.i, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %cache_link, ptr %95, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client_conn_cache_lock) #10
  %kill_all_client_conns.i = getelementptr inbounds %struct.rxrpc_net, ptr %3, i32 0, i32 12
  %100 = ptrtoint ptr %kill_all_client_conns.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %kill_all_client_conns.i, align 1, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i316 = icmp eq i8 %101, 0
  br i1 %tobool.not.i316, label %if.then.i, label %list_move_tail.exit.out_crit_edge

list_move_tail.exit.out_crit_edge:                ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i:                                        ; preds = %list_move_tail.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %live.i = getelementptr inbounds %struct.rxrpc_net, ptr %3, i32 0, i32 11
  %103 = ptrtoint ptr %live.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %live.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool1.not.i = icmp eq i8 %104, 0
  br i1 %tobool1.not.i, label %if.then.i.out_crit_edge, label %if.then2.i

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = load i32, ptr @rxrpc_conn_idle_client_expiry, align 4
  %add.i = add i32 %105, %102
  %client_conn_reap_timer.i = getelementptr inbounds %struct.rxrpc_net, ptr %3, i32 0, i32 18
  %call.i317 = tail call i32 @timer_reduce(ptr noundef %client_conn_reap_timer.i, i32 noundef %add.i) #10
  br label %out

out:                                              ; preds = %if.then2.i, %if.then.i.out_crit_edge, %list_move_tail.exit.out_crit_edge, %do.body180.out_crit_edge, %if.then146, %list_del_init.exit
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %106 = load i32, ptr @rxrpc_debug, align 4
  %and224 = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %out.do.end244_crit_edge, label %do.end235, !prof !287

out.do.end244_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end244

do.end235:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %107 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i318 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i318 to ptr
  %task238 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task238 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task238, align 8
  %comm239 = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 101
  %call241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm239, ptr noundef nonnull @.str.12) #13
  br label %do.end244

do.end244:                                        ; preds = %do.end235, %out.do.end244_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_expose_client_call(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cid = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %0 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cid, align 8
  %and = and i32 %1, 3
  %conn1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn1, align 8
  %flags = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %call_counter = getelementptr %struct.rxrpc_connection, ptr %3, i32 0, i32 6, i32 %and, i32 4
  %4 = ptrtoint ptr %call_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call_counter, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %call_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %inc)
  %cmp = icmp ugt i32 %inc, 2147483646
  br i1 %cmp, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %flags5 = getelementptr inbounds %struct.rxrpc_connection, ptr %3, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags5) #10
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  tail call fastcc void @trace_rxrpc_client(ptr noundef %3, i32 noundef %and, i32 noundef 9)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rxrpc_disconnect_call(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_activate_channels_locked(ptr noundef %bundle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %try_upgrade = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 3
  %0 = ptrtoint ptr %try_upgrade to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %try_upgrade, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 -1, i32 1
  %avail_chans = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 9
  %waiting_calls = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 8
  %2 = ptrtoint ptr %waiting_calls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %waiting_calls, align 4
  %cmp.i.not32 = icmp eq ptr %3, %waiting_calls
  br i1 %cmp.i.not32, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %rxrpc_unidle_conn.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = ptrtoint ptr %avail_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avail_chans, align 4
  %and = and i32 %5, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %if.end4

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end4:                                          ; preds = %while.body
  %6 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true) #10, !range !304
  tail call void @_clear_bit(i32 noundef %6, ptr noundef %avail_chans) #10
  %div31 = lshr i32 %6, 2
  %arrayidx = getelementptr %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 10, i32 %div31
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end4.while.end_crit_edge, label %if.end9

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end9:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %try_upgrade to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %try_upgrade, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.rxrpc_connection, ptr %8, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %11 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bundle, align 4
  %rxnet1.i = getelementptr inbounds %struct.rxrpc_local, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %rxnet1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rxnet1.i, align 4
  %cache_link.i = getelementptr inbounds %struct.rxrpc_connection, ptr %8, i32 0, i32 4
  %15 = ptrtoint ptr %cache_link.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %cache_link.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %cache_link.i
  br i1 %cmp.i.not.i, label %if.end13.rxrpc_unidle_conn.exit_crit_edge, label %if.then.i

if.end13.rxrpc_unidle_conn.exit_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_unidle_conn.exit

if.then.i:                                        ; preds = %if.end13
  %client_conn_cache_lock.i = getelementptr inbounds %struct.rxrpc_net, ptr %14, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %client_conn_cache_lock.i) #10
  %17 = ptrtoint ptr %cache_link.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %cache_link.i, align 4
  %cmp.i16.not.i = icmp eq ptr %18, %cache_link.i
  br i1 %cmp.i16.not.i, label %if.end11.critedge.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cache_link.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then5.i.if.end.i.i_crit_edge

if.then5.i.if.end.i.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %8, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %cache_link.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cache_link.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i, %if.then5.i.if.end.i.i_crit_edge
  %25 = ptrtoint ptr %cache_link.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %cache_link.i, ptr %cache_link.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %8, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cache_link.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %client_conn_cache_lock.i) #10
  %out_clientflag.i.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %8, i32 0, i32 28
  %27 = ptrtoint ptr %out_clientflag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %out_clientflag.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.i.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_client_conn(ptr noundef nonnull %8) #10
  br label %rxrpc_unidle_conn.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_service_conn(ptr noundef nonnull %8) #10
  br label %rxrpc_unidle_conn.exit

if.end11.critedge.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %client_conn_cache_lock.i) #10
  br label %rxrpc_unidle_conn.exit

rxrpc_unidle_conn.exit:                           ; preds = %if.end11.critedge.i, %if.else.i.i, %if.then1.i.i, %if.end13.rxrpc_unidle_conn.exit_crit_edge
  %and14 = and i32 %6, 3
  %shl = shl nuw nsw i32 1, %and14
  %act_chans = getelementptr inbounds %struct.rxrpc_connection, ptr %8, i32 0, i32 5
  %29 = ptrtoint ptr %act_chans to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %act_chans, align 8
  %31 = trunc i32 %shl to i8
  %conv15 = or i8 %30, %31
  store i8 %conv15, ptr %act_chans, align 8
  tail call fastcc void @rxrpc_activate_one_channel(ptr noundef nonnull %8, i32 noundef %and14)
  %32 = ptrtoint ptr %waiting_calls to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %waiting_calls, align 4
  %cmp.i.not = icmp eq ptr %33, %waiting_calls
  br i1 %cmp.i.not, label %rxrpc_unidle_conn.exit.while.end_crit_edge, label %rxrpc_unidle_conn.exit.while.body_crit_edge

rxrpc_unidle_conn.exit.while.body_crit_edge:      ; preds = %rxrpc_unidle_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

rxrpc_unidle_conn.exit.while.end_crit_edge:       ; preds = %rxrpc_unidle_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %rxrpc_unidle_conn.exit.while.end_crit_edge, %if.end4.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_activate_one_channel(ptr noundef %conn, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bundle1 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bundle1, align 8
  %waiting_calls = getelementptr inbounds %struct.rxrpc_bundle, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %waiting_calls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %waiting_calls, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -268
  %call_counter = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %channel, i32 4
  %4 = ptrtoint ptr %call_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call_counter, align 4
  %add = add i32 %5, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %6 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !287

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %11 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_id, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %comm, ptr noundef nonnull @.str.129, i32 noundef %12, i32 noundef %channel) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  tail call fastcc void @trace_rxrpc_client(ptr noundef %conn, i32 noundef %channel, i32 noundef 2)
  %add10 = add i32 %channel, 4
  %flags = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef %add10, ptr noundef %flags) #10
  %bundle_shift = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 29
  %13 = ptrtoint ptr %bundle_shift to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bundle_shift, align 2
  %conv = zext i8 %14 to i32
  %add11 = add i32 %conv, %channel
  %avail_chans = getelementptr inbounds %struct.rxrpc_bundle, ptr %1, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef %add11, ptr noundef %avail_chans) #10
  tail call void @rxrpc_see_call(ptr noundef %add.ptr) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end9.list_del_init.exit_crit_edge

do.end9.list_del_init.exit_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end9.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %prev.i3.i, align 4
  %peer = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %peer, align 4
  %call12 = tail call ptr @rxrpc_get_peer(ptr noundef %24) #10
  %peer13 = getelementptr i8, ptr %3, i32 -256
  %25 = ptrtoint ptr %peer13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call12, ptr %peer13, align 4
  %call14 = tail call ptr @rxrpc_get_connection(ptr noundef %conn) #10
  %conn15 = getelementptr i8, ptr %3, i32 -260
  %26 = ptrtoint ptr %conn15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call14, ptr %conn15, align 8
  %cid = getelementptr inbounds %struct.anon.3, ptr %conn, i32 0, i32 1
  %27 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cid, align 4
  %or = or i32 %28, %channel
  %cid16 = getelementptr i8, ptr %3, i32 300
  %29 = ptrtoint ptr %cid16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %cid16, align 8
  %call_id17 = getelementptr i8, ptr %3, i32 296
  %30 = ptrtoint ptr %call_id17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %call_id17, align 4
  %security = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 14
  %31 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %security, align 8
  %security18 = getelementptr i8, ptr %3, i32 -244
  %33 = ptrtoint ptr %security18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %security18, align 8
  %security_ix = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 27
  %34 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %security_ix, align 8
  %security_ix19 = getelementptr i8, ptr %3, i32 290
  %36 = ptrtoint ptr %security_ix19 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %security_ix19, align 2
  %service_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 26
  %37 = ptrtoint ptr %service_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %service_id, align 4
  %conv20 = trunc i32 %38 to i16
  %service_id21 = getelementptr i8, ptr %3, i32 288
  %39 = ptrtoint ptr %service_id21 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv20, ptr %service_id21, align 4
  tail call fastcc void @trace_rxrpc_connect_call(ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %40 = load i32, ptr @rxrpc_debug, align 4
  %and23 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %list_del_init.exit.do.end47_crit_edge, label %do.end34, !prof !287

list_del_init.exit.do.end47_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.end34:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %41 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i135 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i135 to ptr
  %task37 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task37, align 8
  %comm38 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 101
  %45 = ptrtoint ptr %cid16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cid16, align 8
  %47 = ptrtoint ptr %call_id17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call_id17, align 4
  %debug_id42 = getelementptr i8, ptr %3, i32 304
  %49 = ptrtoint ptr %debug_id42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug_id42, align 4
  %debug_id43 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %51 = ptrtoint ptr %debug_id43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug_id43, align 8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %comm38, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #13
  br label %do.end47

do.end47:                                         ; preds = %do.end34, %list_del_init.exit.do.end47_crit_edge
  %state_lock = getelementptr i8, ptr %3, i32 224
  tail call void @_raw_write_lock_bh(ptr noundef %state_lock) #10
  %state = getelementptr i8, ptr %3, i32 276
  %53 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %state, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %state_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !305
  %call_id55 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %channel, i32 3
  %54 = ptrtoint ptr %call_id55 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add, ptr %call_id55, align 4
  %debug_id56 = getelementptr i8, ptr %3, i32 304
  %55 = ptrtoint ptr %debug_id56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %debug_id56, align 4
  %call_debug_id = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %channel, i32 2
  %57 = ptrtoint ptr %call_debug_id to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %call_debug_id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !306
  %call83 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %channel, i32 1
  %58 = ptrtoint ptr %call83 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %add.ptr, ptr %call83, align 4
  %waitq = getelementptr i8, ptr %3, i32 56
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_connection(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_put_client_conn(ptr noundef %conn) local_unnamed_addr #0 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !284
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !285
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call fastcc void @trace_rxrpc_conn(i32 noundef %2, i32 noundef 3, i32 noundef %asmresult.i.i.i.i, ptr noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %do.body, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp2.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp2.not, label %if.end, label %do.end, !prof !287

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %asmresult.i.i.i.i, i32 noundef %asmresult.i.i.i.i, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 0) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/conn_client.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 974, 0\0A.popsection", ""() #10, !srcloc !307
  unreachable

if.end:                                           ; preds = %do.body
  %params.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1
  %4 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params.i, align 8
  %rxnet2.i = getelementptr inbounds %struct.rxrpc_local, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rxnet2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxnet2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %8 = load i32, ptr @rxrpc_debug, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.do.end8.i_crit_edge, label %do.end.i, !prof !287

if.end.do.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 101
  %13 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_id1, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %comm.i, ptr noundef nonnull @.str.134, i32 noundef %14) #13
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %if.end.do.end8.i_crit_edge
  tail call fastcc void @trace_rxrpc_client(ptr noundef %conn, i32 noundef -1, i32 noundef 6) #10
  %nr_client_conns.i = getelementptr inbounds %struct.rxrpc_net, ptr %7, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_client_conns.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nr_client_conns.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_client_conns.i, ptr %nr_client_conns.i, i32 1, ptr elementtype(i32) %nr_client_conns.i) #10, !srcloc !308
  %flags.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 17
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.end8.i.rxrpc_kill_client_conn.exit_crit_edge, label %if.then.i.i

do.end8.i.rxrpc_kill_client_conn.exit_crit_edge:  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_kill_client_conn.exit

if.then.i.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @rxrpc_conn_id_lock) #10
  %cid.i.i = getelementptr inbounds %struct.anon.3, ptr %conn, i32 0, i32 1
  %18 = ptrtoint ptr %cid.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cid.i.i, align 4
  %shr.i.i = lshr i32 %19, 2
  %call1.i.i = tail call ptr @idr_remove(ptr noundef nonnull @rxrpc_client_conn_ids, i32 noundef %shr.i.i) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rxrpc_conn_id_lock) #10
  br label %rxrpc_kill_client_conn.exit

rxrpc_kill_client_conn.exit:                      ; preds = %if.then.i.i, %do.end8.i.rxrpc_kill_client_conn.exit_crit_edge
  tail call void @rxrpc_kill_connection(ptr noundef %conn) #10
  br label %if.end16

if.end16:                                         ; preds = %rxrpc_kill_client_conn.exit, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_conn(i32 noundef %conn_debug_id, i32 noundef %op, i32 noundef %usage, ptr noundef %where) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_conn, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_conn, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !295

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !287

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !309
  %call42 = tail call i32 @__traceiter_rxrpc_conn(ptr noundef null, i32 noundef %conn_debug_id, i32 noundef %op, i32 noundef %usage, ptr noundef %where) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !310
  %13 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !287

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !298
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 561, ptr noundef nonnull @.str.126) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !299
  %31 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
define internal fastcc void @rxrpc_unbundle_conn(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bundle1 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bundle1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %4 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !287

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %9 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_id, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %comm, ptr noundef nonnull @.str.135, i32 noundef %10) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %flags = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 17
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and9 = and i32 %12, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end8.if.end12_crit_edge, label %if.then11

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_process_delayed_final_acks(ptr noundef %conn, i1 noundef zeroext true) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end8.if.end12_crit_edge
  %channel_lock = getelementptr inbounds %struct.rxrpc_bundle, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %channel_lock) #10
  %bundle_shift = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 29
  %13 = ptrtoint ptr %bundle_shift to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bundle_shift, align 2
  %15 = lshr i8 %14, 2
  %div = zext i8 %15 to i32
  %arrayidx = getelementptr %struct.rxrpc_bundle, ptr %1, i32 0, i32 10, i32 %div
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %17, %conn
  br i1 %cmp, label %do.body15, label %if.end12.if.end43_crit_edge

if.end12.if.end43_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.body15:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %18 = load i32, ptr @rxrpc_debug, align 4
  %and16 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.end36_crit_edge, label %do.end27, !prof !287

do.body15.do.end36_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

do.end27:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %19 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i167 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i167 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task30, align 8
  %comm31 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %comm31, i32 noundef %div) #13
  br label %do.end36

do.end36:                                         ; preds = %do.end27, %do.body15.do.end36_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx, align 4
  %avail_chans = getelementptr inbounds %struct.rxrpc_bundle, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %bundle_shift to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bundle_shift, align 2
  %conv42 = zext i8 %25 to i32
  tail call void @_clear_bit(i32 noundef %conv42, ptr noundef %avail_chans) #10
  %26 = ptrtoint ptr %bundle_shift to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bundle_shift, align 2
  %conv42.1 = zext i8 %27 to i32
  %add.1 = add nuw nsw i32 %conv42.1, 1
  tail call void @_clear_bit(i32 noundef %add.1, ptr noundef %avail_chans) #10
  %28 = ptrtoint ptr %bundle_shift to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bundle_shift, align 2
  %conv42.2 = zext i8 %29 to i32
  %add.2 = add nuw nsw i32 %conv42.2, 2
  tail call void @_clear_bit(i32 noundef %add.2, ptr noundef %avail_chans) #10
  %30 = ptrtoint ptr %bundle_shift to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bundle_shift, align 2
  %conv42.3 = zext i8 %31 to i32
  %add.3 = add nuw nsw i32 %conv42.3, 3
  tail call void @_clear_bit(i32 noundef %add.3, ptr noundef %avail_chans) #10
  br label %if.end43

if.end43:                                         ; preds = %do.end36, %if.end12.if.end43_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock) #10
  %avail_chans45 = getelementptr inbounds %struct.rxrpc_bundle, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %avail_chans45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %avail_chans45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not = icmp eq i32 %33, 0
  br i1 %tobool46.not, label %do.body48, label %if.end43.if.end114_crit_edge

if.end43.if.end114_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

do.body48:                                        ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %34 = load i32, ptr @rxrpc_debug, align 4
  %and49 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.do.end69_crit_edge, label %do.end60, !prof !287

do.body48.do.end69_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

do.end60:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %35 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i168 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i168 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task63, align 8
  %comm64 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 101
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %comm64) #13
  br label %do.end69

do.end69:                                         ; preds = %do.end60, %do.body48.do.end69_crit_edge
  %client_bundles_lock = getelementptr inbounds %struct.rxrpc_local, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %client_bundles_lock) #10
  %arrayidx75 = getelementptr %struct.rxrpc_bundle, ptr %1, i32 0, i32 10, i32 0
  %39 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx75, align 4
  %tobool76.not = icmp eq ptr %40, null
  br i1 %tobool76.not, label %for.inc79, label %do.end69.if.end109_crit_edge

do.end69.if.end109_crit_edge:                     ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

for.inc79:                                        ; preds = %do.end69
  %arrayidx75.1 = getelementptr %struct.rxrpc_bundle, ptr %1, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx75.1, align 4
  %tobool76.not.1 = icmp eq ptr %42, null
  br i1 %tobool76.not.1, label %for.inc79.1, label %for.inc79.if.end109_crit_edge

for.inc79.if.end109_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

for.inc79.1:                                      ; preds = %for.inc79
  %arrayidx75.2 = getelementptr %struct.rxrpc_bundle, ptr %1, i32 0, i32 10, i32 2
  %43 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx75.2, align 4
  %tobool76.not.2 = icmp eq ptr %44, null
  br i1 %tobool76.not.2, label %for.inc79.2, label %for.inc79.1.if.end109_crit_edge

for.inc79.1.if.end109_crit_edge:                  ; preds = %for.inc79.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

for.inc79.2:                                      ; preds = %for.inc79.1
  %arrayidx75.3 = getelementptr %struct.rxrpc_bundle, ptr %1, i32 0, i32 10, i32 3
  %45 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx75.3, align 4
  %tobool76.not.3 = icmp eq ptr %46, null
  br i1 %tobool76.not.3, label %land.lhs.true, label %for.inc79.2.if.end109_crit_edge

for.inc79.2.if.end109_crit_edge:                  ; preds = %for.inc79.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

land.lhs.true:                                    ; preds = %for.inc79.2
  %exclusive = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %exclusive to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %exclusive, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool85.not = icmp eq i8 %48, 0
  br i1 %tobool85.not, label %do.body87, label %if.end114.critedge

do.body87:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %49 = load i32, ptr @rxrpc_debug, align 4
  %and88 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body87.do.end108_crit_edge, label %do.end99, !prof !287

do.body87.do.end108_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end108

do.end99:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  %50 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i169 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i169 to ptr
  %task102 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task102, align 8
  %comm103 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 101
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %comm103) #13
  br label %do.end108

do.end108:                                        ; preds = %do.end99, %do.body87.do.end108_crit_edge
  %local_node = getelementptr inbounds %struct.rxrpc_bundle, ptr %1, i32 0, i32 7
  %client_bundles = getelementptr inbounds %struct.rxrpc_local, ptr %3, i32 0, i32 11
  tail call void @rb_erase(ptr noundef %local_node, ptr noundef %client_bundles) #10
  tail call void @_raw_spin_unlock(ptr noundef %client_bundles_lock) #10
  tail call void @rxrpc_put_bundle(ptr noundef %1)
  br label %if.end114

if.end109:                                        ; preds = %for.inc79.2.if.end109_crit_edge, %for.inc79.1.if.end109_crit_edge, %for.inc79.if.end109_crit_edge, %do.end69.if.end109_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client_bundles_lock) #10
  br label %if.end114

if.end114.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %client_bundles_lock) #10
  br label %if.end114

if.end114:                                        ; preds = %if.end114.critedge, %if.end109, %do.end108, %if.end43.if.end114_crit_edge
  %tobool.not.i = icmp ne ptr %conn, null
  %54 = and i1 %tobool.not.i, %cmp
  br i1 %54, label %if.end.i, label %if.end114.do.body118_crit_edge

if.end114.do.body118_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body118

if.end.i:                                         ; preds = %if.end114
  %out_clientflag.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 28
  %55 = ptrtoint ptr %out_clientflag.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %out_clientflag.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.i.not.i = icmp eq i8 %56, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_client_conn(ptr noundef nonnull %conn) #10
  br label %do.body118

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_service_conn(ptr noundef nonnull %conn) #10
  br label %do.body118

do.body118:                                       ; preds = %if.else.i, %if.then1.i, %if.end114.do.body118_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %57 = load i32, ptr @rxrpc_debug, align 4
  %and119 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %do.body118.do.end139_crit_edge, label %do.end130, !prof !287

do.body118.do.end139_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end139

do.end130:                                        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #12
  %58 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i170 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i170 to ptr
  %task133 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task133 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task133, align 8
  %comm134 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 101
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm134, ptr noundef nonnull @.str.135) #13
  br label %do.end139

do.end139:                                        ; preds = %do.end130, %do.body118.do.end139_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_destroy_all_client_connections(ptr noundef %rxnet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !287

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm, ptr noundef nonnull @.str.44) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %client_conn_cache_lock = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %client_conn_cache_lock) #10
  %kill_all_client_conns = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 12
  %5 = ptrtoint ptr %kill_all_client_conns to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %kill_all_client_conns, align 1
  tail call void @_raw_spin_unlock(ptr noundef %client_conn_cache_lock) #10
  %client_conn_reap_timer = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 18
  %call7 = tail call i32 @del_timer_sync(ptr noundef %client_conn_reap_timer) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_workqueue to i32))
  %6 = load ptr, ptr @rxrpc_workqueue, align 4
  %client_conn_reaper = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 17
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %client_conn_reaper) #10
  br i1 %call.i, label %do.end5.do.body31_crit_edge, label %do.body10

do.end5.do.body31_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

do.body10:                                        ; preds = %do.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %7 = load i32, ptr @rxrpc_debug, align 4
  %and11 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.body31_crit_edge, label %do.end21, !prof !287

do.body10.do.body31_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

do.end21:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i55 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i55 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %comm25) #13
  br label %do.body31

do.body31:                                        ; preds = %do.end21, %do.body10.do.body31_crit_edge, %do.end5.do.body31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %12 = load i32, ptr @rxrpc_debug, align 4
  %and32 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end50_crit_edge, label %do.end42, !prof !287

do.body31.do.end50_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end42:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i56 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i56 to ptr
  %task45 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task45, align 8
  %comm46 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm46, ptr noundef nonnull @.str.44) #13
  br label %do.end50

do.end50:                                         ; preds = %do.end42, %do.body31.do.end50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_clean_up_local_conns(ptr noundef readonly %local) local_unnamed_addr #0 align 64 {
entry:
  %graveyard = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxnet1 = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 3
  %0 = ptrtoint ptr %rxnet1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxnet1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %graveyard) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %graveyard, i32 0, i32 1
  %3 = ptrtoint ptr %graveyard to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %graveyard, ptr %graveyard, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %graveyard, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %5 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !287

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm, ptr noundef nonnull @.str.50) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %client_conn_cache_lock = getelementptr inbounds %struct.rxrpc_net, ptr %1, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %client_conn_cache_lock) #10
  %idle_client_conns = getelementptr inbounds %struct.rxrpc_net, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %idle_client_conns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %idle_client_conns, align 4
  %cmp.not82 = icmp eq ptr %11, %idle_client_conns
  br i1 %cmp.not82, label %do.end8.for.end_crit_edge, label %do.end8.for.body_crit_edge

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end8.for.body_crit_edge
  %.pn.in83 = phi ptr [ %.pn86, %for.inc.for.body_crit_edge ], [ %11, %do.end8.for.body_crit_edge ]
  %12 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn86 = load ptr, ptr %.pn.in83, align 8
  %params = getelementptr i8, ptr %.pn.in83, i32 -32
  %13 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %params, align 8
  %cmp20 = icmp eq ptr %14, %local
  br i1 %cmp20, label %if.then21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then21:                                        ; preds = %for.body
  %conn.085 = getelementptr i8, ptr %.pn.in83, i32 -40
  call fastcc void @trace_rxrpc_client(ptr noundef %conn.085, i32 noundef -1, i32 noundef 7)
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in83) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.__list_del_entry.exit.i_crit_edge

if.then21.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in83, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in83, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then21.__list_del_entry.exit.i_crit_edge
  %21 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %graveyard, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in83, ptr noundef nonnull %graveyard, ptr noundef %22) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.pn.in83, ptr %prev1.i.i2.i, align 4
  %24 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %.pn.in83, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in83, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %graveyard, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %graveyard to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %.pn.in83, ptr %graveyard, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn86, %idle_client_conns
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end8.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %client_conn_cache_lock) #10
  %27 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %graveyard, align 4
  %cmp.i.not87 = icmp eq ptr %28, %graveyard
  br i1 %cmp.i.not87, label %for.end.do.body39_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.do.body39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39

while.body:                                       ; preds = %rxrpc_put_connection.exit.while.body_crit_edge, %for.end.while.body_crit_edge
  %29 = phi ptr [ %41, %rxrpc_put_connection.exit.while.body_crit_edge ], [ %28, %for.end.while.body_crit_edge ]
  %add.ptr37 = getelementptr i8, ptr %29, i32 -40
  %call.i.i74 = call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #10
  br i1 %call.i.i74, label %if.end.i.i77, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i77:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i75 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i75, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %prev1.i.i.i76 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i76, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i77, %while.body.list_del_init.exit_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %29, ptr %prev.i3.i, align 4
  call fastcc void @rxrpc_unbundle_conn(ptr noundef %add.ptr37)
  %tobool.not.i = icmp eq ptr %add.ptr37, null
  br i1 %tobool.not.i, label %list_del_init.exit.rxrpc_put_connection.exit_crit_edge, label %if.end.i

list_del_init.exit.rxrpc_put_connection.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_put_connection.exit

if.end.i:                                         ; preds = %list_del_init.exit
  %out_clientflag.i.i = getelementptr i8, ptr %29, i32 433
  %38 = ptrtoint ptr %out_clientflag.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %out_clientflag.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.i.not.i = icmp eq i8 %39, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @rxrpc_put_client_conn(ptr noundef nonnull %add.ptr37) #10
  br label %rxrpc_put_connection.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @rxrpc_put_service_conn(ptr noundef nonnull %add.ptr37) #10
  br label %rxrpc_put_connection.exit

rxrpc_put_connection.exit:                        ; preds = %if.else.i, %if.then1.i, %list_del_init.exit.rxrpc_put_connection.exit_crit_edge
  %40 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %graveyard, align 4
  %cmp.i.not = icmp eq ptr %41, %graveyard
  br i1 %cmp.i.not, label %rxrpc_put_connection.exit.do.body39_crit_edge, label %rxrpc_put_connection.exit.while.body_crit_edge

rxrpc_put_connection.exit.while.body_crit_edge:   ; preds = %rxrpc_put_connection.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

rxrpc_put_connection.exit.do.body39_crit_edge:    ; preds = %rxrpc_put_connection.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39

do.body39:                                        ; preds = %rxrpc_put_connection.exit.do.body39_crit_edge, %for.end.do.body39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %42 = load i32, ptr @rxrpc_debug, align 4
  %and40 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.do.end60_crit_edge, label %do.end51, !prof !287

do.body39.do.end60_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

do.end51:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %43 = call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i79 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i79 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task54, align 8
  %comm55 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 101
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %comm55, ptr noundef nonnull @.str.50) #13
  br label %do.end60

do.end60:                                         ; preds = %do.end51, %do.body39.do.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %graveyard) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_peer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_lookup_peer(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rxrpc_alloc_bundle(ptr nocapture noundef readonly %cp, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !287

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
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

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 116) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.if.end_crit_edge, label %if.then

kzalloc.exit.if.end_crit_edge:                    ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %2 = call ptr @memcpy(ptr %call7.i.i, ptr %cp, i32 20)
  %peer = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %peer, align 4
  %call2 = tail call ptr @rxrpc_get_peer(ptr noundef %4) #10
  %usage = getelementptr inbounds %struct.rxrpc_bundle, ptr %call7.i.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  %5 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %usage, align 4
  %channel_lock = getelementptr inbounds %struct.rxrpc_bundle, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %channel_lock, ptr noundef nonnull @.str.81, ptr noundef nonnull @rxrpc_alloc_bundle.__key, i16 noundef signext 3) #10
  %waiting_calls = getelementptr inbounds %struct.rxrpc_bundle, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %waiting_calls to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %waiting_calls, ptr %waiting_calls, align 8
  %prev.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %call7.i.i, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %waiting_calls, ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %kzalloc.exit.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_peer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_maybe_add_conn(ptr noundef %bundle, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !287

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm, ptr noundef nonnull @.str.88) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %channel_lock = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %channel_lock) #10
  br label %for.body

for.body:                                         ; preds = %rxrpc_may_reuse_conn.exit.thread.for.body_crit_edge, %do.end7
  %i.089 = phi i32 [ 0, %do.end7 ], [ %inc11, %rxrpc_may_reuse_conn.exit.thread.for.body_crit_edge ]
  %usable.088 = phi i32 [ 0, %do.end7 ], [ %28, %rxrpc_may_reuse_conn.exit.thread.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 10, i32 %i.089
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.rxrpc_may_reuse_conn.exit.thread_crit_edge, label %if.end.i

for.body.rxrpc_may_reuse_conn.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_may_reuse_conn.exit.thread

if.end.i:                                         ; preds = %for.body
  %params.i = getelementptr inbounds %struct.rxrpc_connection, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %params.i, align 8
  %rxnet1.i = getelementptr inbounds %struct.rxrpc_local, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %rxnet1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rxnet1.i, align 4
  %flags.i = getelementptr inbounds %struct.rxrpc_connection, ptr %6, i32 0, i32 17
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i = icmp eq i32 %13, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.rxrpc_may_reuse_conn.exit.thread_crit_edge

if.end.i.rxrpc_may_reuse_conn.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_may_reuse_conn.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.rxrpc_connection, ptr %6, i32 0, i32 21
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end4.i.mark_dont_reuse.i_crit_edge

if.end4.i.mark_dont_reuse.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %6, align 8
  %epoch5.i = getelementptr inbounds %struct.rxrpc_net, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %epoch5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %epoch5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp6.not.i = icmp eq i32 %17, %19
  br i1 %cmp6.not.i, label %if.end8.i, label %lor.lhs.false.i.mark_dont_reuse.i_crit_edge

lor.lhs.false.i.mark_dont_reuse.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.idr, ptr @rxrpc_client_conn_ids, i32 0, i32 2), align 4
  %cid.i = getelementptr inbounds %struct.anon.3, ptr %6, i32 0, i32 1
  %21 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cid.i, align 4
  %shr.i79 = lshr i32 %22, 2
  %sub.i = sub i32 %shr.i79, %20
  %23 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #10
  %nr_conns.i = getelementptr inbounds %struct.rxrpc_net, ptr %10, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_conns.i, i32 noundef 4) #10
  %24 = ptrtoint ptr %nr_conns.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %nr_conns.i, align 4
  %mul.i = shl i32 %25, 2
  %26 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 1024) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %26)
  %cmp17.i = icmp sgt i32 %23, %26
  br i1 %cmp17.i, label %if.end8.i.mark_dont_reuse.i_crit_edge, label %27

if.end8.i.mark_dont_reuse.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i

mark_dont_reuse.i:                                ; preds = %if.end8.i.mark_dont_reuse.i_crit_edge, %lor.lhs.false.i.mark_dont_reuse.i_crit_edge, %if.end4.i.mark_dont_reuse.i_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #10
  br label %rxrpc_may_reuse_conn.exit.thread

27:                                               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %usable.088, 1
  br label %rxrpc_may_reuse_conn.exit.thread

rxrpc_may_reuse_conn.exit.thread:                 ; preds = %27, %mark_dont_reuse.i, %if.end.i.rxrpc_may_reuse_conn.exit.thread_crit_edge, %for.body.rxrpc_may_reuse_conn.exit.thread_crit_edge
  %28 = phi i32 [ %inc, %27 ], [ %usable.088, %if.end.i.rxrpc_may_reuse_conn.exit.thread_crit_edge ], [ %usable.088, %for.body.rxrpc_may_reuse_conn.exit.thread_crit_edge ], [ %usable.088, %mark_dont_reuse.i ]
  %inc11 = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc11, 4
  br i1 %exitcond.not, label %for.end, label %rxrpc_may_reuse_conn.exit.thread.for.body_crit_edge

rxrpc_may_reuse_conn.exit.thread.for.body_crit_edge: ; preds = %rxrpc_may_reuse_conn.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %rxrpc_may_reuse_conn.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.not = icmp eq i32 %28, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end25.critedge

land.lhs.true:                                    ; preds = %for.end
  %waiting_calls = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 8
  %29 = ptrtoint ptr %waiting_calls to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %waiting_calls, align 4
  %cmp.i.not = icmp eq ptr %30, %waiting_calls
  br i1 %cmp.i.not, label %land.lhs.true.alloc_conn_crit_edge, label %if.then15

land.lhs.true.alloc_conn_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_conn

if.then15:                                        ; preds = %land.lhs.true
  %flags = getelementptr i8, ptr %30, i32 128
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags, align 4
  %33 = and i32 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool19.not = icmp eq i32 %33, 0
  br i1 %tobool19.not, label %if.then15.alloc_conn_crit_edge, label %if.then20

if.then15.alloc_conn_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_conn

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %try_upgrade = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 3
  %34 = ptrtoint ptr %try_upgrade to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %try_upgrade, align 4
  br label %alloc_conn

if.end25.critedge:                                ; preds = %for.end
  %avail_chans = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 9
  %35 = ptrtoint ptr %avail_chans to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %avail_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool26.not = icmp eq i32 %36, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %if.end25.critedge.if.end37_crit_edge

if.end25.critedge.if.end37_crit_edge:             ; preds = %if.end25.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true27:                                  ; preds = %if.end25.critedge
  %try_upgrade28 = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 3
  %37 = ptrtoint ptr %try_upgrade28 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %try_upgrade28, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool29.not = icmp eq i8 %38, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %land.lhs.true27.if.end37_crit_edge

land.lhs.true27.if.end37_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %waiting_calls31 = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 8
  %39 = ptrtoint ptr %waiting_calls31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %waiting_calls31, align 4
  %cmp.i80 = icmp ne ptr %40, %waiting_calls31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp35 = icmp ult i32 %28, 4
  %or.cond = select i1 %cmp.i80, i1 %cmp35, i1 false
  br i1 %or.cond, label %land.lhs.true30.alloc_conn_crit_edge, label %land.lhs.true30.if.end37_crit_edge

land.lhs.true30.if.end37_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true30.alloc_conn_crit_edge:             ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_conn

if.end37:                                         ; preds = %land.lhs.true30.if.end37_crit_edge, %land.lhs.true27.if.end37_crit_edge, %if.end25.critedge.if.end37_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %41 = load i32, ptr @rxrpc_debug, align 4
  %and40 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.cleanup_crit_edge, label %do.end51, !prof !287

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end51:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %42 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i82 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i82 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task54, align 8
  %comm55 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm55, ptr noundef nonnull @.str.88) #13
  br label %cleanup

alloc_conn:                                       ; preds = %land.lhs.true30.alloc_conn_crit_edge, %if.then20, %if.then15.alloc_conn_crit_edge, %land.lhs.true.alloc_conn_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %46 = load i32, ptr @rxrpc_debug, align 4
  %and.i83 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i84 = icmp eq i32 %and.i83, 0
  br i1 %tobool.not.i84, label %alloc_conn.do.end6.i_crit_edge, label %do.end.i, !prof !287

alloc_conn.do.end6.i_crit_edge:                   ; preds = %alloc_conn
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

do.end.i:                                         ; preds = %alloc_conn
  call void @__sanitizer_cov_trace_pc() #12
  %47 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm.i, ptr noundef nonnull @.str.91) #13
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %alloc_conn.do.end6.i_crit_edge
  %alloc_conn.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 4
  %51 = ptrtoint ptr %alloc_conn.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %alloc_conn.i, align 1, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool7.not.i = icmp eq i8 %52, 0
  br i1 %tobool7.not.i, label %if.end36.i, label %do.body14.i

do.body14.i:                                      ; preds = %do.end6.i
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %53 = load i32, ptr @rxrpc_debug, align 4
  %and15.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %do.body14.i.cleanup_crit_edge, label %do.end26.i, !prof !287

do.body14.i.cleanup_crit_edge:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end26.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i172.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i172.i to ptr
  %task29.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task29.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task29.i, align 8
  %comm30.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 101
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %comm30.i, ptr noundef nonnull @.str.91) #13
  br label %cleanup

if.end36.i:                                       ; preds = %do.end6.i
  %58 = ptrtoint ptr %alloc_conn.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %alloc_conn.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock) #10
  %59 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bundle, align 4
  %rxnet1.i.i = getelementptr inbounds %struct.rxrpc_local, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %rxnet1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rxnet1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %63 = load i32, ptr @rxrpc_debug, align 4
  %and.i173.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i173.i)
  %tobool.not.i.i = icmp eq i32 %and.i173.i, 0
  br i1 %tobool.not.i.i, label %if.end36.i.do.end7.i.i_crit_edge, label %do.end.i.i, !prof !287

if.end36.i.do.end7.i.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

do.end.i.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 101
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm.i.i, ptr noundef nonnull @.str.103) #13
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i.i, %if.end36.i.do.end7.i.i_crit_edge
  %call8.i.i = tail call ptr @rxrpc_alloc_connection(i32 noundef %gfp) #10
  %tobool9.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not.i.i, label %do.body11.i.i, label %if.end34.i.i

do.body11.i.i:                                    ; preds = %do.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %68 = load i32, ptr @rxrpc_debug, align 4
  %and12.i.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %do.body11.i.i.rxrpc_alloc_client_connection.exit.thread.i_crit_edge, label %do.end23.i.i, !prof !287

do.body11.i.i.rxrpc_alloc_client_connection.exit.thread.i_crit_edge: ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_alloc_client_connection.exit.thread.i

do.end23.i.i:                                     ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i141.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i141.i.i to ptr
  %task26.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task26.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task26.i.i, align 8
  %comm27.i.i = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 101
  %call29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %comm27.i.i, ptr noundef nonnull @.str.103) #13
  br label %rxrpc_alloc_client_connection.exit.thread.i

if.end34.i.i:                                     ; preds = %do.end7.i.i
  %usage.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #10
  %73 = ptrtoint ptr %usage.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 1, ptr %usage.i.i, align 4
  %bundle35.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 9
  %74 = ptrtoint ptr %bundle35.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %bundle, ptr %bundle35.i.i, align 8
  %params36.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 1
  %75 = call ptr @memcpy(ptr %params36.i.i, ptr %bundle, i32 20)
  %out_clientflag.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 28
  %76 = ptrtoint ptr %out_clientflag.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %out_clientflag.i.i, align 1
  %state.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 21
  %77 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %state.i.i, align 8
  %service_id.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 1, i32 5
  %78 = ptrtoint ptr %service_id.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %service_id.i.i, align 2
  %conv.i.i = zext i16 %79 to i32
  %service_id39.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 26
  %80 = ptrtoint ptr %service_id39.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i.i, ptr %service_id39.i.i, align 4
  %81 = ptrtoint ptr %params36.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %params36.i.i, align 8
  %rxnet1.i.i.i = getelementptr inbounds %struct.rxrpc_local, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %rxnet1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rxnet1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %85 = load i32, ptr @rxrpc_debug, align 4
  %and.i142.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i142.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end34.i.i.do.end7.i.i.i_crit_edge, label %do.end.i.i.i, !prof !287

if.end34.i.i.do.end7.i.i.i_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

do.end.i.i.i:                                     ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task.i.i.i, align 8
  %comm.i.i.i = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 101
  %call5.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm.i.i.i, ptr noundef nonnull @.str.111) #13
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %do.end.i.i.i, %if.end34.i.i.do.end7.i.i.i_crit_edge
  tail call void @idr_preload(i32 noundef %gfp) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @rxrpc_conn_id_lock) #10
  %call8.i.i.i = tail call i32 @idr_alloc_cyclic(ptr noundef nonnull @rxrpc_client_conn_ids, ptr noundef nonnull %call8.i.i, i32 noundef 1, i32 noundef 1073741824, i32 noundef 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call8.i.i.i, 0
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rxrpc_conn_id_lock) #10
  %90 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i69.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i69.i.i.i to ptr
  %cpu.i70.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %cpu.i70.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu.i70.i.i.i, align 4
  %arrayidx.i71.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx.i71.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i71.i.i.i, align 4
  %add.i72.i.i.i = add i32 %95, ptrtoint (ptr @radix_tree_preloads to i32)
  %96 = inttoptr i32 %add.i72.i.i.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %96) #10
  tail call void asm sideeffect "", "~{memory}"() #10
  %97 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i.i.i73.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i73.i.i.i to ptr
  %preempt_count.i.i.i74.i.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i74.i.i.i, align 4
  %sub.i.i75.i.i.i = add i32 %100, -1
  store volatile i32 %sub.i.i75.i.i.i, ptr %preempt_count.i.i.i74.i.i.i, align 4
  br i1 %cmp.i.i.i, label %error.i.i.i, label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %do.end7.i.i.i
  %epoch.i.i.i = getelementptr inbounds %struct.rxrpc_net, ptr %84, i32 0, i32 1
  %101 = ptrtoint ptr %epoch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %epoch.i.i.i, align 4
  %103 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %call8.i.i, align 8
  %shl.i.i.i = shl i32 %call8.i.i.i, 2
  %cid.i.i.i = getelementptr inbounds %struct.anon.3, ptr %call8.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %cid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %shl.i.i.i, ptr %cid.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %105 = load i32, ptr @rxrpc_debug, align 4
  %and14.i.i.i = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %and14.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %if.end10.i.i.i.if.end43.i.i_crit_edge, label %do.end25.i.i.i, !prof !287

if.end10.i.i.i.if.end43.i.i_crit_edge:            ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i.i

do.end25.i.i.i:                                   ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i68.i.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i68.i.i.i to ptr
  %task28.i.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task28.i.i.i, align 8
  %comm29.i.i.i = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 101
  %110 = ptrtoint ptr %cid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cid.i.i.i, align 4
  %call33.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %comm29.i.i.i, ptr noundef nonnull @.str.111, i32 noundef %111) #13
  br label %if.end43.i.i

error.i.i.i:                                      ; preds = %do.end7.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %112 = load i32, ptr @rxrpc_debug, align 4
  %and38.i.i.i = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i.i)
  %tobool39.not.i.i.i = icmp eq i32 %and38.i.i.i, 0
  br i1 %tobool39.not.i.i.i, label %error.i.i.i.error_0.i.i_crit_edge, label %do.end49.i.i.i, !prof !287

error.i.i.i.error_0.i.i_crit_edge:                ; preds = %error.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_0.i.i

do.end49.i.i.i:                                   ; preds = %error.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %113 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i76.i.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i76.i.i.i to ptr
  %task52.i.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task52.i.i.i, align 8
  %comm53.i.i.i = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 101
  %call55.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm53.i.i.i, ptr noundef nonnull @.str.111, i32 noundef %call8.i.i.i) #13
  br label %error_0.i.i

if.end43.i.i:                                     ; preds = %do.end25.i.i.i, %if.end10.i.i.i.if.end43.i.i_crit_edge
  %call44.i.i = tail call i32 @rxrpc_init_client_conn_security(ptr noundef nonnull %call8.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %cmp45.i.i = icmp slt i32 %call44.i.i, 0
  br i1 %cmp45.i.i, label %error_1.i.i, label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.end43.i.i
  %nr_conns.i.i = getelementptr inbounds %struct.rxrpc_net, ptr %62, i32 0, i32 5
  %call.i.i138.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_conns.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nr_conns.i.i, i32 1, i32 3, i32 1) #10
  %117 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_conns.i.i, ptr %nr_conns.i.i, i32 1, ptr elementtype(i32) %nr_conns.i.i) #10, !srcloc !283
  %conn_lock.i.i = getelementptr inbounds %struct.rxrpc_net, ptr %62, i32 0, i32 8
  tail call void @_raw_write_lock(ptr noundef %conn_lock.i.i) #10
  %proc_link.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 11
  %conn_proc_list.i.i = getelementptr inbounds %struct.rxrpc_net, ptr %62, i32 0, i32 6
  %prev.i.i.i = getelementptr inbounds %struct.rxrpc_net, ptr %62, i32 0, i32 6, i32 1
  %118 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i143.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %proc_link.i.i, ptr noundef %119, ptr noundef %conn_proc_list.i.i) #10
  br i1 %call.i.i143.i.i, label %if.end.i.i.i.i, label %if.end48.i.i.list_add_tail.exit.i.i_crit_edge

if.end48.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %proc_link.i.i, ptr %prev.i.i.i, align 4
  %121 = ptrtoint ptr %proc_link.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %conn_proc_list.i.i, ptr %proc_link.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 11, i32 1
  %122 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev3.i.i.i.i, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %proc_link.i.i, ptr %119, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end48.i.i.list_add_tail.exit.i.i_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %conn_lock.i.i) #10
  %usage.i.i.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage.i.i.i, i32 1, i32 3, i32 1) #10
  %124 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i.i, ptr %usage.i.i.i, i32 1, ptr elementtype(i32) %usage.i.i.i) #10, !srcloc !283
  %peer.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %peer.i.i, align 4
  %call52.i.i = tail call ptr @rxrpc_get_peer(ptr noundef %126) #10
  %127 = ptrtoint ptr %params36.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %params36.i.i, align 8
  %call55.i.i = tail call ptr @rxrpc_get_local(ptr noundef %128) #10
  %key.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 1, i32 2
  %129 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %key.i.i, align 8
  %tobool.not.i144.i.i = icmp eq ptr %130, null
  br i1 %tobool.not.i144.i.i, label %list_add_tail.exit.i.i.key_get.exit.i.i_crit_edge, label %cond.true.i.i.i

list_add_tail.exit.i.i.key_get.exit.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_get.exit.i.i

cond.true.i.i.i:                                  ; preds = %list_add_tail.exit.i.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %130, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %130, i32 1, i32 3, i32 1) #10
  %131 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %130, ptr nonnull %130, i32 1, ptr nonnull elementtype(i32) %130) #10, !srcloc !311
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %131, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %cond.true.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !312

cond.true.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %cond.true.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %132 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %132)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %132, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.key_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !287

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.key_get.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %cond.true.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %cond.true.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %130, i32 noundef %.sink.i.i.i.i.i.i.i) #10
  br label %key_get.exit.i.i

key_get.exit.i.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.key_get.exit.i.i_crit_edge, %list_add_tail.exit.i.i.key_get.exit.i.i_crit_edge
  %debug_id.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %call8.i.i, i32 0, i32 23
  %133 = ptrtoint ptr %debug_id.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %debug_id.i.i, align 8
  %call.i.i139.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage.i.i, i32 noundef 4) #10
  %135 = ptrtoint ptr %usage.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %usage.i.i, align 4
  %137 = tail call ptr @llvm.returnaddress(i32 0) #10
  tail call fastcc void @trace_rxrpc_conn(i32 noundef %134, i32 noundef 1, i32 noundef %136, ptr noundef %137) #10
  %nr_client_conns.i.i = getelementptr inbounds %struct.rxrpc_net, ptr %62, i32 0, i32 13
  %call.i.i140.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_client_conns.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nr_client_conns.i.i, i32 1, i32 3, i32 1) #10
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_client_conns.i.i, ptr %nr_client_conns.i.i, i32 1, ptr elementtype(i32) %nr_client_conns.i.i) #10, !srcloc !283
  tail call fastcc void @trace_rxrpc_client(ptr noundef nonnull %call8.i.i, i32 noundef -1, i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %139 = load i32, ptr @rxrpc_debug, align 4
  %and61.i.i = and i32 %139, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  br i1 %tobool62.not.i.i, label %key_get.exit.i.i.rxrpc_alloc_client_connection.exit.i_crit_edge, label %do.end72.i.i, !prof !287

key_get.exit.i.i.rxrpc_alloc_client_connection.exit.i_crit_edge: ; preds = %key_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_alloc_client_connection.exit.i

do.end72.i.i:                                     ; preds = %key_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %140 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i145.i.i = and i32 %140, -16384
  %141 = inttoptr i32 %and.i145.i.i to ptr
  %task75.i.i = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %task75.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %task75.i.i, align 8
  %comm76.i.i = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 101
  %call78.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %comm76.i.i, ptr noundef nonnull @.str.103, ptr noundef nonnull %call8.i.i) #13
  br label %rxrpc_alloc_client_connection.exit.i

error_1.i.i:                                      ; preds = %if.end43.i.i
  %144 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i147.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i147.i.i, label %error_1.i.i.error_0.i.i_crit_edge, label %if.then.i.i.i

error_1.i.i.error_0.i.i_crit_edge:                ; preds = %error_1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_0.i.i

if.then.i.i.i:                                    ; preds = %error_1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @rxrpc_conn_id_lock) #10
  %146 = ptrtoint ptr %cid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cid.i.i.i, align 4
  %shr.i.i.i = lshr i32 %147, 2
  %call1.i.i.i = tail call ptr @idr_remove(ptr noundef nonnull @rxrpc_client_conn_ids, i32 noundef %shr.i.i.i) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rxrpc_conn_id_lock) #10
  br label %error_0.i.i

error_0.i.i:                                      ; preds = %if.then.i.i.i, %error_1.i.i.error_0.i.i_crit_edge, %do.end49.i.i.i, %error.i.i.i.error_0.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call44.i.i, %error_1.i.i.error_0.i.i_crit_edge ], [ %call44.i.i, %if.then.i.i.i ], [ %call8.i.i.i, %do.end49.i.i.i ], [ %call8.i.i.i, %error.i.i.i.error_0.i.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %148 = load i32, ptr @rxrpc_debug, align 4
  %and83.i.i = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i.i)
  %tobool84.not.i.i = icmp eq i32 %and83.i.i, 0
  br i1 %tobool84.not.i.i, label %error_0.i.i.do.end103.i.i_crit_edge, label %do.end94.i.i, !prof !287

error_0.i.i.do.end103.i.i_crit_edge:              ; preds = %error_0.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end103.i.i

do.end94.i.i:                                     ; preds = %error_0.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %149 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i149.i.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i149.i.i to ptr
  %task97.i.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %task97.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task97.i.i, align 8
  %comm98.i.i = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 101
  %call100.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm98.i.i, ptr noundef nonnull @.str.103, i32 noundef %ret.0.i.i) #13
  br label %do.end103.i.i

do.end103.i.i:                                    ; preds = %do.end94.i.i, %error_0.i.i.do.end103.i.i_crit_edge
  %153 = inttoptr i32 %ret.0.i.i to ptr
  br label %rxrpc_alloc_client_connection.exit.i

rxrpc_alloc_client_connection.exit.thread.i:      ; preds = %do.end23.i.i, %do.body11.i.i.rxrpc_alloc_client_connection.exit.thread.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %channel_lock) #10
  %154 = ptrtoint ptr %alloc_conn.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %alloc_conn.i, align 1
  br label %if.then41.i

rxrpc_alloc_client_connection.exit.i:             ; preds = %do.end103.i.i, %do.end72.i.i, %key_get.exit.i.i.rxrpc_alloc_client_connection.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %153, %do.end103.i.i ], [ %call8.i.i, %do.end72.i.i ], [ %call8.i.i, %key_get.exit.i.i.rxrpc_alloc_client_connection.exit.i_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %channel_lock) #10
  %155 = ptrtoint ptr %alloc_conn.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %alloc_conn.i, align 1
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rxrpc_alloc_client_connection.exit.i.if.then41.i_crit_edge, label %if.end67.i

rxrpc_alloc_client_connection.exit.i.if.then41.i_crit_edge: ; preds = %rxrpc_alloc_client_connection.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41.i

if.then41.i:                                      ; preds = %rxrpc_alloc_client_connection.exit.i.if.then41.i_crit_edge, %rxrpc_alloc_client_connection.exit.thread.i
  %retval.0.i196.i = phi ptr [ inttoptr (i32 -12 to ptr), %rxrpc_alloc_client_connection.exit.thread.i ], [ %retval.0.i.i, %rxrpc_alloc_client_connection.exit.i.if.then41.i_crit_edge ]
  %156 = ptrtoint ptr %retval.0.i196.i to i32
  %conv.i85 = trunc i32 %156 to i16
  %alloc_error.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 5
  %157 = ptrtoint ptr %alloc_error.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv.i85, ptr %alloc_error.i, align 2
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %158 = load i32, ptr @rxrpc_debug, align 4
  %and45.i = and i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then41.i.cleanup_crit_edge, label %do.end56.i, !prof !287

if.then41.i.cleanup_crit_edge:                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end56.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  %159 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i174.i = and i32 %159, -16384
  %160 = inttoptr i32 %and.i174.i to ptr
  %task59.i = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %task59.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %task59.i, align 8
  %comm60.i = getelementptr inbounds %struct.task_struct, ptr %162, i32 0, i32 101
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %comm60.i, ptr noundef nonnull @.str.91, i32 noundef %156) #13
  br label %cleanup

if.end67.i:                                       ; preds = %rxrpc_alloc_client_connection.exit.i
  %alloc_error68.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 5
  %163 = ptrtoint ptr %alloc_error68.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %alloc_error68.i, align 2
  %arrayidx.i = getelementptr %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 10, i32 0
  %164 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i175.i = icmp eq ptr %165, null
  br i1 %tobool.not.i175.i, label %if.end67.i.if.end74.i_crit_edge, label %if.end.i.i

if.end67.i.if.end74.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.end.i.i:                                       ; preds = %if.end67.i
  %params.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %params.i.i, align 8
  %rxnet1.i176.i = getelementptr inbounds %struct.rxrpc_local, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %rxnet1.i176.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rxnet1.i176.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %165, i32 0, i32 17
  %170 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %flags.i.i, align 4
  %172 = and i32 %171, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool2.not.i.i = icmp eq i32 %172, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.then73.i_crit_edge

if.end.i.i.if.then73.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %state.i177.i = getelementptr inbounds %struct.rxrpc_connection, ptr %165, i32 0, i32 21
  %173 = ptrtoint ptr %state.i177.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %state.i177.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp.not.i.i = icmp eq i32 %174, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end4.i.i.mark_dont_reuse.i.i_crit_edge

if.end4.i.i.mark_dont_reuse.i.i_crit_edge:        ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

lor.lhs.false.i.i:                                ; preds = %if.end4.i.i
  %175 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %165, align 8
  %epoch5.i.i = getelementptr inbounds %struct.rxrpc_net, ptr %169, i32 0, i32 1
  %177 = ptrtoint ptr %epoch5.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %epoch5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %178)
  %cmp6.not.i.i = icmp eq i32 %176, %178
  br i1 %cmp6.not.i.i, label %if.end8.i.i, label %lor.lhs.false.i.i.mark_dont_reuse.i.i_crit_edge

lor.lhs.false.i.i.mark_dont_reuse.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

if.end8.i.i:                                      ; preds = %lor.lhs.false.i.i
  %179 = load volatile i32, ptr getelementptr inbounds (%struct.idr, ptr @rxrpc_client_conn_ids, i32 0, i32 2), align 4
  %cid.i.i = getelementptr inbounds %struct.anon.3, ptr %165, i32 0, i32 1
  %180 = ptrtoint ptr %cid.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cid.i.i, align 4
  %shr.i.i = lshr i32 %181, 2
  %sub.i.i = sub i32 %shr.i.i, %179
  %182 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #10
  %nr_conns.i178.i = getelementptr inbounds %struct.rxrpc_net, ptr %169, i32 0, i32 5
  %call.i.i.i179.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_conns.i178.i, i32 noundef 4) #10
  %183 = ptrtoint ptr %nr_conns.i178.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %nr_conns.i178.i, align 4
  %mul.i.i = shl i32 %184, 2
  %185 = tail call i32 @llvm.umax.i32(i32 %mul.i.i, i32 1024) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %185)
  %cmp17.i.i = icmp sgt i32 %182, %185
  br i1 %cmp17.i.i, label %if.end8.i.i.mark_dont_reuse.i.i_crit_edge, label %for.inc84.i

if.end8.i.i.mark_dont_reuse.i.i_crit_edge:        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

mark_dont_reuse.i.i:                              ; preds = %if.end8.i.3.i.mark_dont_reuse.i.i_crit_edge, %lor.lhs.false.i.3.i.mark_dont_reuse.i.i_crit_edge, %if.end4.i.3.i.mark_dont_reuse.i.i_crit_edge, %if.end8.i.2.i.mark_dont_reuse.i.i_crit_edge, %lor.lhs.false.i.2.i.mark_dont_reuse.i.i_crit_edge, %if.end4.i.2.i.mark_dont_reuse.i.i_crit_edge, %if.end8.i.1.i.mark_dont_reuse.i.i_crit_edge, %lor.lhs.false.i.1.i.mark_dont_reuse.i.i_crit_edge, %if.end4.i.1.i.mark_dont_reuse.i.i_crit_edge, %if.end8.i.i.mark_dont_reuse.i.i_crit_edge, %lor.lhs.false.i.i.mark_dont_reuse.i.i_crit_edge, %if.end4.i.i.mark_dont_reuse.i.i_crit_edge
  %i.0226.lcssa237.i = phi i32 [ 0, %if.end8.i.i.mark_dont_reuse.i.i_crit_edge ], [ 0, %lor.lhs.false.i.i.mark_dont_reuse.i.i_crit_edge ], [ 0, %if.end4.i.i.mark_dont_reuse.i.i_crit_edge ], [ 4, %if.end4.i.1.i.mark_dont_reuse.i.i_crit_edge ], [ 4, %lor.lhs.false.i.1.i.mark_dont_reuse.i.i_crit_edge ], [ 4, %if.end8.i.1.i.mark_dont_reuse.i.i_crit_edge ], [ 8, %if.end4.i.2.i.mark_dont_reuse.i.i_crit_edge ], [ 8, %lor.lhs.false.i.2.i.mark_dont_reuse.i.i_crit_edge ], [ 8, %if.end8.i.2.i.mark_dont_reuse.i.i_crit_edge ], [ 12, %if.end4.i.3.i.mark_dont_reuse.i.i_crit_edge ], [ 12, %lor.lhs.false.i.3.i.mark_dont_reuse.i.i_crit_edge ], [ 12, %if.end8.i.3.i.mark_dont_reuse.i.i_crit_edge ]
  %arrayidx.lcssa232.i = phi ptr [ %arrayidx.i, %if.end8.i.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.i, %lor.lhs.false.i.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.i, %if.end4.i.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.1.i, %if.end4.i.1.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.1.i, %lor.lhs.false.i.1.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.1.i, %if.end8.i.1.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.2.i, %if.end4.i.2.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.2.i, %lor.lhs.false.i.2.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.2.i, %if.end8.i.2.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.3.i, %if.end4.i.3.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.3.i, %lor.lhs.false.i.3.i.mark_dont_reuse.i.i_crit_edge ], [ %arrayidx.3.i, %if.end8.i.3.i.mark_dont_reuse.i.i_crit_edge ]
  %.lcssa229.i = phi ptr [ %165, %if.end8.i.i.mark_dont_reuse.i.i_crit_edge ], [ %165, %lor.lhs.false.i.i.mark_dont_reuse.i.i_crit_edge ], [ %165, %if.end4.i.i.mark_dont_reuse.i.i_crit_edge ], [ %191, %if.end4.i.1.i.mark_dont_reuse.i.i_crit_edge ], [ %191, %lor.lhs.false.i.1.i.mark_dont_reuse.i.i_crit_edge ], [ %191, %if.end8.i.1.i.mark_dont_reuse.i.i_crit_edge ], [ %213, %if.end4.i.2.i.mark_dont_reuse.i.i_crit_edge ], [ %213, %lor.lhs.false.i.2.i.mark_dont_reuse.i.i_crit_edge ], [ %213, %if.end8.i.2.i.mark_dont_reuse.i.i_crit_edge ], [ %235, %if.end4.i.3.i.mark_dont_reuse.i.i_crit_edge ], [ %235, %lor.lhs.false.i.3.i.mark_dont_reuse.i.i_crit_edge ], [ %235, %if.end8.i.3.i.mark_dont_reuse.i.i_crit_edge ]
  %flags.i.le.i = getelementptr inbounds %struct.rxrpc_connection, ptr %.lcssa229.i, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i.le.i) #10
  br label %if.then73.i

if.then73.i:                                      ; preds = %if.end.i.3.i.if.then73.i_crit_edge, %if.end.i.2.i.if.then73.i_crit_edge, %if.end.i.1.i.if.then73.i_crit_edge, %mark_dont_reuse.i.i, %if.end.i.i.if.then73.i_crit_edge
  %i.0226240.i = phi i32 [ %i.0226.lcssa237.i, %mark_dont_reuse.i.i ], [ 0, %if.end.i.i.if.then73.i_crit_edge ], [ 4, %if.end.i.1.i.if.then73.i_crit_edge ], [ 8, %if.end.i.2.i.if.then73.i_crit_edge ], [ 12, %if.end.i.3.i.if.then73.i_crit_edge ]
  %arrayidx235.i = phi ptr [ %arrayidx.lcssa232.i, %mark_dont_reuse.i.i ], [ %arrayidx.i, %if.end.i.i.if.then73.i_crit_edge ], [ %arrayidx.1.i, %if.end.i.1.i.if.then73.i_crit_edge ], [ %arrayidx.2.i, %if.end.i.2.i.if.then73.i_crit_edge ], [ %arrayidx.3.i, %if.end.i.3.i.if.then73.i_crit_edge ]
  %186 = phi ptr [ %.lcssa229.i, %mark_dont_reuse.i.i ], [ %165, %if.end.i.i.if.then73.i_crit_edge ], [ %191, %if.end.i.1.i.if.then73.i_crit_edge ], [ %213, %if.end.i.2.i.if.then73.i_crit_edge ], [ %235, %if.end.i.3.i.if.then73.i_crit_edge ]
  tail call fastcc void @trace_rxrpc_client(ptr noundef nonnull %186, i32 noundef -1, i32 noundef 10) #10
  br label %if.end74.i

if.end74.i:                                       ; preds = %for.inc84.2.i.if.end74.i_crit_edge, %for.inc84.1.i.if.end74.i_crit_edge, %for.inc84.i.if.end74.i_crit_edge, %if.then73.i, %if.end67.i.if.end74.i_crit_edge
  %i.0226239.i = phi i32 [ %i.0226240.i, %if.then73.i ], [ 0, %if.end67.i.if.end74.i_crit_edge ], [ 4, %for.inc84.i.if.end74.i_crit_edge ], [ 8, %for.inc84.1.i.if.end74.i_crit_edge ], [ 12, %for.inc84.2.i.if.end74.i_crit_edge ]
  %arrayidx234.i = phi ptr [ %arrayidx235.i, %if.then73.i ], [ %arrayidx.i, %if.end67.i.if.end74.i_crit_edge ], [ %arrayidx.1.i, %for.inc84.i.if.end74.i_crit_edge ], [ %arrayidx.2.i, %for.inc84.1.i.if.end74.i_crit_edge ], [ %arrayidx.3.i, %for.inc84.2.i.if.end74.i_crit_edge ]
  %187 = phi ptr [ %186, %if.then73.i ], [ null, %if.end67.i.if.end74.i_crit_edge ], [ null, %for.inc84.i.if.end74.i_crit_edge ], [ null, %for.inc84.1.i.if.end74.i_crit_edge ], [ null, %for.inc84.2.i.if.end74.i_crit_edge ]
  %conv75.i = trunc i32 %i.0226239.i to i8
  %bundle_shift.i = getelementptr inbounds %struct.rxrpc_connection, ptr %retval.0.i.i, i32 0, i32 29
  %188 = ptrtoint ptr %bundle_shift.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv75.i, ptr %bundle_shift.i, align 2
  %189 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %retval.0.i.i, ptr %arrayidx234.i, align 4
  %avail_chans.i = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 9
  tail call void @_set_bit(i32 noundef %i.0226239.i, ptr noundef %avail_chans.i) #10
  %add.1.i = add nuw nsw i32 %i.0226239.i, 1
  tail call void @_set_bit(i32 noundef %add.1.i, ptr noundef %avail_chans.i) #10
  %add.2.i = add nuw nsw i32 %i.0226239.i, 2
  tail call void @_set_bit(i32 noundef %add.2.i, ptr noundef %avail_chans.i) #10
  %add.3.i = add nuw nsw i32 %i.0226239.i, 3
  tail call void @_set_bit(i32 noundef %add.3.i, ptr noundef %avail_chans.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock) #10
  %tobool.not.i184.i = icmp eq ptr %187, null
  br i1 %tobool.not.i184.i, label %if.end74.i.rxrpc_put_connection.exit190.i_crit_edge, label %if.end.i187.i

if.end74.i.rxrpc_put_connection.exit190.i_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_put_connection.exit190.i

for.inc84.i:                                      ; preds = %if.end8.i.i
  %arrayidx.1.i = getelementptr %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 10, i32 1
  %190 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i175.1.i = icmp eq ptr %191, null
  br i1 %tobool.not.i175.1.i, label %for.inc84.i.if.end74.i_crit_edge, label %if.end.i.1.i

for.inc84.i.if.end74.i_crit_edge:                 ; preds = %for.inc84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.end.i.1.i:                                     ; preds = %for.inc84.i
  %params.i.1.i = getelementptr inbounds %struct.rxrpc_connection, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %params.i.1.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %params.i.1.i, align 8
  %rxnet1.i176.1.i = getelementptr inbounds %struct.rxrpc_local, ptr %193, i32 0, i32 3
  %194 = ptrtoint ptr %rxnet1.i176.1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rxnet1.i176.1.i, align 4
  %flags.i.1.i = getelementptr inbounds %struct.rxrpc_connection, ptr %191, i32 0, i32 17
  %196 = ptrtoint ptr %flags.i.1.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %flags.i.1.i, align 4
  %198 = and i32 %197, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool2.not.i.1.i = icmp eq i32 %198, 0
  br i1 %tobool2.not.i.1.i, label %if.end4.i.1.i, label %if.end.i.1.i.if.then73.i_crit_edge

if.end.i.1.i.if.then73.i_crit_edge:               ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

if.end4.i.1.i:                                    ; preds = %if.end.i.1.i
  %state.i177.1.i = getelementptr inbounds %struct.rxrpc_connection, ptr %191, i32 0, i32 21
  %199 = ptrtoint ptr %state.i177.1.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %state.i177.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %200)
  %cmp.not.i.1.i = icmp eq i32 %200, 1
  br i1 %cmp.not.i.1.i, label %lor.lhs.false.i.1.i, label %if.end4.i.1.i.mark_dont_reuse.i.i_crit_edge

if.end4.i.1.i.mark_dont_reuse.i.i_crit_edge:      ; preds = %if.end4.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

lor.lhs.false.i.1.i:                              ; preds = %if.end4.i.1.i
  %201 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %191, align 8
  %epoch5.i.1.i = getelementptr inbounds %struct.rxrpc_net, ptr %195, i32 0, i32 1
  %203 = ptrtoint ptr %epoch5.i.1.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %epoch5.i.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %204)
  %cmp6.not.i.1.i = icmp eq i32 %202, %204
  br i1 %cmp6.not.i.1.i, label %if.end8.i.1.i, label %lor.lhs.false.i.1.i.mark_dont_reuse.i.i_crit_edge

lor.lhs.false.i.1.i.mark_dont_reuse.i.i_crit_edge: ; preds = %lor.lhs.false.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

if.end8.i.1.i:                                    ; preds = %lor.lhs.false.i.1.i
  %205 = load volatile i32, ptr getelementptr inbounds (%struct.idr, ptr @rxrpc_client_conn_ids, i32 0, i32 2), align 4
  %cid.i.1.i = getelementptr inbounds %struct.anon.3, ptr %191, i32 0, i32 1
  %206 = ptrtoint ptr %cid.i.1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %cid.i.1.i, align 4
  %shr.i.1.i = lshr i32 %207, 2
  %sub.i.1.i = sub i32 %shr.i.1.i, %205
  %208 = tail call i32 @llvm.abs.i32(i32 %sub.i.1.i, i1 false) #10
  %nr_conns.i178.1.i = getelementptr inbounds %struct.rxrpc_net, ptr %195, i32 0, i32 5
  %call.i.i.i179.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_conns.i178.1.i, i32 noundef 4) #10
  %209 = ptrtoint ptr %nr_conns.i178.1.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %nr_conns.i178.1.i, align 4
  %mul.i.1.i = shl i32 %210, 2
  %211 = tail call i32 @llvm.umax.i32(i32 %mul.i.1.i, i32 1024) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %211)
  %cmp17.i.1.i = icmp sgt i32 %208, %211
  br i1 %cmp17.i.1.i, label %if.end8.i.1.i.mark_dont_reuse.i.i_crit_edge, label %for.inc84.1.i

if.end8.i.1.i.mark_dont_reuse.i.i_crit_edge:      ; preds = %if.end8.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

for.inc84.1.i:                                    ; preds = %if.end8.i.1.i
  %arrayidx.2.i = getelementptr %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 10, i32 2
  %212 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.i175.2.i = icmp eq ptr %213, null
  br i1 %tobool.not.i175.2.i, label %for.inc84.1.i.if.end74.i_crit_edge, label %if.end.i.2.i

for.inc84.1.i.if.end74.i_crit_edge:               ; preds = %for.inc84.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.end.i.2.i:                                     ; preds = %for.inc84.1.i
  %params.i.2.i = getelementptr inbounds %struct.rxrpc_connection, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %params.i.2.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %params.i.2.i, align 8
  %rxnet1.i176.2.i = getelementptr inbounds %struct.rxrpc_local, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %rxnet1.i176.2.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %rxnet1.i176.2.i, align 4
  %flags.i.2.i = getelementptr inbounds %struct.rxrpc_connection, ptr %213, i32 0, i32 17
  %218 = ptrtoint ptr %flags.i.2.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %flags.i.2.i, align 4
  %220 = and i32 %219, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool2.not.i.2.i = icmp eq i32 %220, 0
  br i1 %tobool2.not.i.2.i, label %if.end4.i.2.i, label %if.end.i.2.i.if.then73.i_crit_edge

if.end.i.2.i.if.then73.i_crit_edge:               ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

if.end4.i.2.i:                                    ; preds = %if.end.i.2.i
  %state.i177.2.i = getelementptr inbounds %struct.rxrpc_connection, ptr %213, i32 0, i32 21
  %221 = ptrtoint ptr %state.i177.2.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %state.i177.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %222)
  %cmp.not.i.2.i = icmp eq i32 %222, 1
  br i1 %cmp.not.i.2.i, label %lor.lhs.false.i.2.i, label %if.end4.i.2.i.mark_dont_reuse.i.i_crit_edge

if.end4.i.2.i.mark_dont_reuse.i.i_crit_edge:      ; preds = %if.end4.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

lor.lhs.false.i.2.i:                              ; preds = %if.end4.i.2.i
  %223 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %213, align 8
  %epoch5.i.2.i = getelementptr inbounds %struct.rxrpc_net, ptr %217, i32 0, i32 1
  %225 = ptrtoint ptr %epoch5.i.2.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %epoch5.i.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %226)
  %cmp6.not.i.2.i = icmp eq i32 %224, %226
  br i1 %cmp6.not.i.2.i, label %if.end8.i.2.i, label %lor.lhs.false.i.2.i.mark_dont_reuse.i.i_crit_edge

lor.lhs.false.i.2.i.mark_dont_reuse.i.i_crit_edge: ; preds = %lor.lhs.false.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

if.end8.i.2.i:                                    ; preds = %lor.lhs.false.i.2.i
  %227 = load volatile i32, ptr getelementptr inbounds (%struct.idr, ptr @rxrpc_client_conn_ids, i32 0, i32 2), align 4
  %cid.i.2.i = getelementptr inbounds %struct.anon.3, ptr %213, i32 0, i32 1
  %228 = ptrtoint ptr %cid.i.2.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %cid.i.2.i, align 4
  %shr.i.2.i = lshr i32 %229, 2
  %sub.i.2.i = sub i32 %shr.i.2.i, %227
  %230 = tail call i32 @llvm.abs.i32(i32 %sub.i.2.i, i1 false) #10
  %nr_conns.i178.2.i = getelementptr inbounds %struct.rxrpc_net, ptr %217, i32 0, i32 5
  %call.i.i.i179.2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_conns.i178.2.i, i32 noundef 4) #10
  %231 = ptrtoint ptr %nr_conns.i178.2.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %nr_conns.i178.2.i, align 4
  %mul.i.2.i = shl i32 %232, 2
  %233 = tail call i32 @llvm.umax.i32(i32 %mul.i.2.i, i32 1024) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %233)
  %cmp17.i.2.i = icmp sgt i32 %230, %233
  br i1 %cmp17.i.2.i, label %if.end8.i.2.i.mark_dont_reuse.i.i_crit_edge, label %for.inc84.2.i

if.end8.i.2.i.mark_dont_reuse.i.i_crit_edge:      ; preds = %if.end8.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

for.inc84.2.i:                                    ; preds = %if.end8.i.2.i
  %arrayidx.3.i = getelementptr %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 10, i32 3
  %234 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.i175.3.i = icmp eq ptr %235, null
  br i1 %tobool.not.i175.3.i, label %for.inc84.2.i.if.end74.i_crit_edge, label %if.end.i.3.i

for.inc84.2.i.if.end74.i_crit_edge:               ; preds = %for.inc84.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.end.i.3.i:                                     ; preds = %for.inc84.2.i
  %params.i.3.i = getelementptr inbounds %struct.rxrpc_connection, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %params.i.3.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %params.i.3.i, align 8
  %rxnet1.i176.3.i = getelementptr inbounds %struct.rxrpc_local, ptr %237, i32 0, i32 3
  %238 = ptrtoint ptr %rxnet1.i176.3.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %rxnet1.i176.3.i, align 4
  %flags.i.3.i = getelementptr inbounds %struct.rxrpc_connection, ptr %235, i32 0, i32 17
  %240 = ptrtoint ptr %flags.i.3.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile i32, ptr %flags.i.3.i, align 4
  %242 = and i32 %241, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool2.not.i.3.i = icmp eq i32 %242, 0
  br i1 %tobool2.not.i.3.i, label %if.end4.i.3.i, label %if.end.i.3.i.if.then73.i_crit_edge

if.end.i.3.i.if.then73.i_crit_edge:               ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

if.end4.i.3.i:                                    ; preds = %if.end.i.3.i
  %state.i177.3.i = getelementptr inbounds %struct.rxrpc_connection, ptr %235, i32 0, i32 21
  %243 = ptrtoint ptr %state.i177.3.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %state.i177.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %244)
  %cmp.not.i.3.i = icmp eq i32 %244, 1
  br i1 %cmp.not.i.3.i, label %lor.lhs.false.i.3.i, label %if.end4.i.3.i.mark_dont_reuse.i.i_crit_edge

if.end4.i.3.i.mark_dont_reuse.i.i_crit_edge:      ; preds = %if.end4.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

lor.lhs.false.i.3.i:                              ; preds = %if.end4.i.3.i
  %245 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %235, align 8
  %epoch5.i.3.i = getelementptr inbounds %struct.rxrpc_net, ptr %239, i32 0, i32 1
  %247 = ptrtoint ptr %epoch5.i.3.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %epoch5.i.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %248)
  %cmp6.not.i.3.i = icmp eq i32 %246, %248
  br i1 %cmp6.not.i.3.i, label %if.end8.i.3.i, label %lor.lhs.false.i.3.i.mark_dont_reuse.i.i_crit_edge

lor.lhs.false.i.3.i.mark_dont_reuse.i.i_crit_edge: ; preds = %lor.lhs.false.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

if.end8.i.3.i:                                    ; preds = %lor.lhs.false.i.3.i
  %249 = load volatile i32, ptr getelementptr inbounds (%struct.idr, ptr @rxrpc_client_conn_ids, i32 0, i32 2), align 4
  %cid.i.3.i = getelementptr inbounds %struct.anon.3, ptr %235, i32 0, i32 1
  %250 = ptrtoint ptr %cid.i.3.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %cid.i.3.i, align 4
  %shr.i.3.i = lshr i32 %251, 2
  %sub.i.3.i = sub i32 %shr.i.3.i, %249
  %252 = tail call i32 @llvm.abs.i32(i32 %sub.i.3.i, i1 false) #10
  %nr_conns.i178.3.i = getelementptr inbounds %struct.rxrpc_net, ptr %239, i32 0, i32 5
  %call.i.i.i179.3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_conns.i178.3.i, i32 noundef 4) #10
  %253 = ptrtoint ptr %nr_conns.i178.3.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load volatile i32, ptr %nr_conns.i178.3.i, align 4
  %mul.i.3.i = shl i32 %254, 2
  %255 = tail call i32 @llvm.umax.i32(i32 %mul.i.3.i, i32 1024) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %252, i32 %255)
  %cmp17.i.3.i = icmp sgt i32 %252, %255
  br i1 %cmp17.i.3.i, label %if.end8.i.3.i.mark_dont_reuse.i.i_crit_edge, label %for.inc84.3.i

if.end8.i.3.i.mark_dont_reuse.i.i_crit_edge:      ; preds = %if.end8.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_dont_reuse.i.i

for.inc84.3.i:                                    ; preds = %if.end8.i.3.i
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock) #10
  %tobool88.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool88.not.i, label %for.inc84.3.i.rxrpc_put_connection.exit190.i_crit_edge, label %do.body90.i

for.inc84.3.i.rxrpc_put_connection.exit190.i_crit_edge: ; preds = %for.inc84.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_put_connection.exit190.i

do.body90.i:                                      ; preds = %for.inc84.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %256 = load i32, ptr @rxrpc_debug, align 4
  %and91.i = and i32 %256, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %do.body90.i.if.end.i183.i_crit_edge, label %do.end102.i, !prof !287

do.body90.i.if.end.i183.i_crit_edge:              ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i183.i

do.end102.i:                                      ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #12
  %257 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i181.i = and i32 %257, -16384
  %258 = inttoptr i32 %and.i181.i to ptr
  %task105.i = getelementptr inbounds %struct.thread_info, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %task105.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %task105.i, align 8
  %comm106.i = getelementptr inbounds %struct.task_struct, ptr %260, i32 0, i32 101
  %debug_id.i = getelementptr inbounds %struct.rxrpc_connection, ptr %retval.0.i.i, i32 0, i32 23
  %261 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %debug_id.i, align 8
  %call108.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %comm106.i, i32 noundef %262) #13
  br label %if.end.i183.i

if.end.i183.i:                                    ; preds = %do.end102.i, %do.body90.i.if.end.i183.i_crit_edge
  tail call fastcc void @trace_rxrpc_client(ptr noundef nonnull %retval.0.i.i, i32 noundef -1, i32 noundef 8) #10
  %out_clientflag.i.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %retval.0.i.i, i32 0, i32 28
  %263 = ptrtoint ptr %out_clientflag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %out_clientflag.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool.i.not.i.i = icmp eq i8 %264, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i183.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_client_conn(ptr noundef nonnull %retval.0.i.i) #10
  br label %rxrpc_put_connection.exit190.i

if.else.i.i:                                      ; preds = %if.end.i183.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_service_conn(ptr noundef nonnull %retval.0.i.i) #10
  br label %rxrpc_put_connection.exit190.i

if.end.i187.i:                                    ; preds = %if.end74.i
  %out_clientflag.i.i185.i = getelementptr inbounds %struct.rxrpc_connection, ptr %187, i32 0, i32 28
  %265 = ptrtoint ptr %out_clientflag.i.i185.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %out_clientflag.i.i185.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool.i.not.i186.i = icmp eq i8 %266, 0
  br i1 %tobool.i.not.i186.i, label %if.else.i189.i, label %if.then1.i188.i

if.then1.i188.i:                                  ; preds = %if.end.i187.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_client_conn(ptr noundef nonnull %187) #10
  br label %rxrpc_put_connection.exit190.i

if.else.i189.i:                                   ; preds = %if.end.i187.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_put_service_conn(ptr noundef nonnull %187) #10
  br label %rxrpc_put_connection.exit190.i

rxrpc_put_connection.exit190.i:                   ; preds = %if.else.i189.i, %if.then1.i188.i, %if.else.i.i, %if.then1.i.i, %for.inc84.3.i.rxrpc_put_connection.exit190.i_crit_edge, %if.end74.i.rxrpc_put_connection.exit190.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %267 = load i32, ptr @rxrpc_debug, align 4
  %and114.i = and i32 %267, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %rxrpc_put_connection.exit190.i.cleanup_crit_edge, label %do.end125.i, !prof !287

rxrpc_put_connection.exit190.i.cleanup_crit_edge: ; preds = %rxrpc_put_connection.exit190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end125.i:                                      ; preds = %rxrpc_put_connection.exit190.i
  call void @__sanitizer_cov_trace_pc() #12
  %268 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i191.i = and i32 %268, -16384
  %269 = inttoptr i32 %and.i191.i to ptr
  %task128.i = getelementptr inbounds %struct.thread_info, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %task128.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %task128.i, align 8
  %comm129.i = getelementptr inbounds %struct.task_struct, ptr %271, i32 0, i32 101
  %call131.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm129.i, ptr noundef nonnull @.str.91) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end125.i, %rxrpc_put_connection.exit190.i.cleanup_crit_edge, %do.end56.i, %if.then41.i.cleanup_crit_edge, %do.end26.i, %do.body14.i.cleanup_crit_edge, %do.end51, %if.end37.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_activate_channels(ptr noundef %bundle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !287

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 2
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %comm, ptr noundef nonnull @.str.122, i32 noundef %6) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call fastcc void @trace_rxrpc_client(ptr noundef null, i32 noundef -1, i32 noundef 0)
  %avail_chans = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 9
  %7 = ptrtoint ptr %avail_chans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %avail_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %do.end5.do.end29_crit_edge, label %if.end8

do.end5.do.end29_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end8:                                          ; preds = %do.end5
  %channel_lock = getelementptr inbounds %struct.rxrpc_bundle, ptr %bundle, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %channel_lock) #10
  tail call fastcc void @rxrpc_activate_channels_locked(ptr noundef %bundle)
  tail call void @_raw_spin_unlock(ptr noundef %channel_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %9 = load i32, ptr @rxrpc_debug, align 4
  %and11 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end8.do.end29_crit_edge, label %do.end21, !prof !287

if.end8.do.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

do.end21:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i34 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i34 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm25, ptr noundef nonnull @.str.122) #13
  br label %do.end29

do.end29:                                         ; preds = %do.end21, %if.end8.do.end29_crit_edge, %do.end5.do.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_alloc_connection(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_init_client_conn_security(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !287

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.118, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120) #10
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_client(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_call(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_connect_call(ptr noundef %call) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_connect_call, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_connect_call, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !295

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !287

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !313
  %call43 = tail call i32 @__traceiter_rxrpc_connect_call(ptr noundef null, ptr noundef %call) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !314
  %13 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !287

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !272) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !298
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_connect_call, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_connect_call, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_connect_call.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rxrpc_connect_call.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 1403, ptr noundef nonnull @.str.126) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !299
  %31 = tail call i32 @llvm.read_register.i32(metadata !272) #10
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
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_connect_call(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_conn(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_kill_connection(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_process_delayed_final_acks(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_service_conn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !150, !152, !154, !156, !158, !159, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !187, !188, !189, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !212, !213, !215, !216, !217, !219, !220, !221, !222, !224, !225, !227, !228, !229, !230, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !247, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271}
!llvm.named.register.sp = !{!272}
!llvm.module.flags = !{!273, !274, !275, !276, !277, !278, !279, !280}
!llvm.ident = !{!281}

!0 = !{ptr @rxrpc_reap_client_connections, !1, !"rxrpc_reap_client_connections", i1 false, i1 false}
!1 = !{!"../net/rxrpc/conn_client.c", i32 33, i32 28}
!2 = !{ptr @rxrpc_conn_idle_client_expiry, !3, !"rxrpc_conn_idle_client_expiry", i1 false, i1 false}
!3 = !{!"../net/rxrpc/conn_client.c", i32 34, i32 29}
!4 = !{ptr @rxrpc_conn_idle_client_fast_expiry, !5, !"rxrpc_conn_idle_client_fast_expiry", i1 false, i1 false}
!5 = !{!"../net/rxrpc/conn_client.c", i32 35, i32 29}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rxrpc/conn_client.c", i32 40, i32 1}
!8 = !{ptr @rxrpc_client_conn_ids, !7, !"rxrpc_client_conn_ids", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/rxrpc/conn_client.c", i32 104, i32 4}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rxrpc_destroy_client_conn_ids._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @rxrpc_destroy_client_conn_ids._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/rxrpc/conn_client.c", i32 149, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rxrpc_put_bundle._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @rxrpc_put_bundle._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/rxrpc/conn_client.c", i32 704, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rxrpc_connect_call._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @rxrpc_connect_call._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/rxrpc/conn_client.c", i32 727, i32 2}
!27 = !{ptr @rxrpc_connect_call._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rxrpc_connect_call._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/rxrpc/conn_client.c", i32 795, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rxrpc_disconnect_client_call._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rxrpc_disconnect_client_call._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/rxrpc/conn_client.c", i32 805, i32 3}
!36 = !{ptr @rxrpc_disconnect_client_call._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rxrpc_disconnect_client_call._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/rxrpc/conn_client.c", i32 806, i32 3}
!40 = !{ptr @rxrpc_disconnect_client_call._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rxrpc_disconnect_client_call._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/rxrpc/conn_client.c", i32 807, i32 3}
!45 = !{ptr @rxrpc_disconnect_client_call._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rxrpc_disconnect_client_call._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/rxrpc/conn_client.c", i32 834, i32 3}
!49 = !{ptr @rxrpc_disconnect_client_call._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rxrpc_disconnect_client_call._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/rxrpc/conn_client.c", i32 890, i32 2}
!53 = !{ptr @rxrpc_disconnect_client_call._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rxrpc_disconnect_client_call._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/rxrpc/conn_client.c", i32 974, i32 3}
!57 = !{ptr @rxrpc_put_client_conn._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rxrpc_put_client_conn._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/rxrpc/conn_client.c", i32 994, i32 2}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rxrpc_discard_expired_client_conns._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @rxrpc_discard_expired_client_conns._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/rxrpc/conn_client.c", i32 997, i32 3}
!67 = !{ptr @rxrpc_discard_expired_client_conns._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rxrpc_discard_expired_client_conns._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/rxrpc/conn_client.c", i32 1003, i32 3}
!71 = !{ptr @rxrpc_discard_expired_client_conns._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rxrpc_discard_expired_client_conns._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/rxrpc/conn_client.c", i32 1059, i32 2}
!75 = !{ptr @rxrpc_discard_expired_client_conns._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rxrpc_discard_expired_client_conns._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @rxrpc_discard_expired_client_conns._entry.42, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../net/rxrpc/conn_client.c", i32 1066, i32 2}
!79 = !{ptr @rxrpc_discard_expired_client_conns._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/rxrpc/conn_client.c", i32 1075, i32 2}
!82 = !{ptr @rxrpc_destroy_all_client_connections._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rxrpc_destroy_all_client_connections._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/rxrpc/conn_client.c", i32 1084, i32 3}
!86 = !{ptr @rxrpc_destroy_all_client_connections._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rxrpc_destroy_all_client_connections._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @rxrpc_destroy_all_client_connections._entry.48, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../net/rxrpc/conn_client.c", i32 1086, i32 2}
!90 = !{ptr @rxrpc_destroy_all_client_connections._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/rxrpc/conn_client.c", i32 1098, i32 2}
!93 = !{ptr @rxrpc_clean_up_local_conns._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rxrpc_clean_up_local_conns._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/rxrpc/conn_client.c", i32 1120, i32 2}
!97 = !{ptr @rxrpc_clean_up_local_conns._entry.51, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @rxrpc_clean_up_local_conns._entry_ptr.53, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/rxrpc/conn_client.c", i32 357, i32 2}
!101 = !{ptr @rxrpc_prep_call._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @rxrpc_prep_call._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/rxrpc/conn_client.c", i32 383, i32 2}
!105 = !{ptr @rxrpc_prep_call._entry.55, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rxrpc_prep_call._entry_ptr.57, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/rxrpc/conn_client.c", i32 387, i32 2}
!109 = !{ptr @rxrpc_prep_call._entry.58, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @rxrpc_prep_call._entry_ptr.60, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @rxrpc_look_up_bundle.rxrpc_bundle_id, !112, !"rxrpc_bundle_id", i1 false, i1 false}
!112 = !{!"../net/rxrpc/conn_client.c", i32 263, i32 18}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/rxrpc/conn_client.c", i32 269, i32 2}
!115 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @rxrpc_look_up_bundle._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @rxrpc_look_up_bundle._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/rxrpc/conn_client.c", i32 276, i32 2}
!120 = !{ptr @rxrpc_look_up_bundle._entry.63, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @rxrpc_look_up_bundle._entry_ptr.65, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/rxrpc/conn_client.c", i32 296, i32 2}
!124 = !{ptr @rxrpc_look_up_bundle._entry.66, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @rxrpc_look_up_bundle._entry_ptr.68, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/rxrpc/conn_client.c", i32 303, i32 2}
!128 = !{ptr @rxrpc_look_up_bundle._entry.69, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @rxrpc_look_up_bundle._entry_ptr.71, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/rxrpc/conn_client.c", i32 325, i32 2}
!132 = !{ptr @rxrpc_look_up_bundle._entry.72, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @rxrpc_look_up_bundle._entry_ptr.74, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.76, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/rxrpc/conn_client.c", i32 331, i32 2}
!136 = !{ptr @rxrpc_look_up_bundle._entry.75, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @rxrpc_look_up_bundle._entry_ptr.77, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/rxrpc/conn_client.c", i32 339, i32 2}
!140 = !{ptr @rxrpc_look_up_bundle._entry.78, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @rxrpc_look_up_bundle._entry_ptr.80, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @rxrpc_alloc_bundle.__key, !143, !"__key", i1 false, i1 false}
!143 = !{!"../net/rxrpc/conn_client.c", i32 126, i32 3}
!144 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/rxrpc/conn_client.c", i32 645, i32 2}
!147 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @rxrpc_wait_for_channel._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @rxrpc_wait_for_channel._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../net/rxrpc/conn_client.c", i32 665, i32 4}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../net/rxrpc/conn_client.c", i32 669, i32 4}
!154 = distinct !{null, !155, !"__already_done", i1 false, i1 false}
!155 = !{!"../net/rxrpc/conn_client.c", i32 683, i32 2}
!156 = !{ptr @rxrpc_wait_for_channel._entry.86, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../net/rxrpc/conn_client.c", i32 686, i32 2}
!158 = !{ptr @rxrpc_wait_for_channel._entry_ptr.87, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/rxrpc/conn_client.c", i32 466, i32 2}
!161 = !{ptr @rxrpc_maybe_add_conn._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @rxrpc_maybe_add_conn._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @rxrpc_maybe_add_conn._entry.89, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../net/rxrpc/conn_client.c", i32 493, i32 2}
!165 = !{ptr @rxrpc_maybe_add_conn._entry_ptr.90, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.91, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/rxrpc/conn_client.c", i32 401, i32 2}
!168 = !{ptr @rxrpc_add_conn_to_bundle._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @rxrpc_add_conn_to_bundle._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.93, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/rxrpc/conn_client.c", i32 408, i32 3}
!172 = !{ptr @rxrpc_add_conn_to_bundle._entry.92, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @rxrpc_add_conn_to_bundle._entry_ptr.94, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/rxrpc/conn_client.c", i32 420, i32 3}
!176 = !{ptr @rxrpc_add_conn_to_bundle._entry.95, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @rxrpc_add_conn_to_bundle._entry_ptr.97, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/rxrpc/conn_client.c", i32 448, i32 3}
!180 = !{ptr @rxrpc_add_conn_to_bundle._entry.98, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @rxrpc_add_conn_to_bundle._entry_ptr.100, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @rxrpc_add_conn_to_bundle._entry.101, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../net/rxrpc/conn_client.c", i32 454, i32 2}
!184 = !{ptr @rxrpc_add_conn_to_bundle._entry_ptr.102, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.103, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/rxrpc/conn_client.c", i32 164, i32 2}
!187 = !{ptr @rxrpc_alloc_client_connection._entry, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @rxrpc_alloc_client_connection._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @rxrpc_alloc_client_connection._entry.104, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../net/rxrpc/conn_client.c", i32 168, i32 3}
!191 = !{ptr @rxrpc_alloc_client_connection._entry_ptr.105, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.107, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/rxrpc/conn_client.c", i32 203, i32 2}
!194 = !{ptr @rxrpc_alloc_client_connection._entry.106, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @rxrpc_alloc_client_connection._entry_ptr.108, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @rxrpc_alloc_client_connection._entry.109, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../net/rxrpc/conn_client.c", i32 210, i32 2}
!198 = !{ptr @rxrpc_alloc_client_connection._entry_ptr.110, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.111, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../net/rxrpc/conn_client.c", i32 55, i32 2}
!201 = !{ptr @rxrpc_get_client_connection_id._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @rxrpc_get_client_connection_id._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.113, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../net/rxrpc/conn_client.c", i32 71, i32 2}
!205 = !{ptr @rxrpc_get_client_connection_id._entry.112, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @rxrpc_get_client_connection_id._entry_ptr.114, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @rxrpc_get_client_connection_id._entry.115, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../net/rxrpc/conn_client.c", i32 77, i32 2}
!209 = !{ptr @rxrpc_get_client_connection_id._entry_ptr.116, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.117, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/rxrpc/conn_client.c", i32 41, i32 8}
!212 = !{ptr @rxrpc_conn_id_lock, !211, !"rxrpc_conn_id_lock", i1 false, i1 false}
!213 = !{ptr @.str.118, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!215 = !{ptr @.str.119, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.120, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.121, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../net/rxrpc/conn_client.c", i32 623, i32 2}
!219 = !{ptr @.str.122, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @rxrpc_activate_channels._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @rxrpc_activate_channels._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @rxrpc_activate_channels._entry.123, !223, !"_entry", i1 false, i1 false}
!223 = !{!"../net/rxrpc/conn_client.c", i32 633, i32 2}
!224 = !{ptr @rxrpc_activate_channels._entry_ptr.124, !223, !"_entry_ptr", i1 false, i1 false}
!225 = distinct !{null, !226, !"__already_done", i1 false, i1 false}
!226 = !{!"../include/trace/events/rxrpc.h", i32 563, i32 1}
!227 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!228 = distinct !{null, !226, !"__warned", i1 false, i1 false}
!229 = !{ptr @.str.126, !226, !"<string literal>", i1 false, i1 false}
!230 = distinct !{null, !231, !"__already_done", i1 false, i1 false}
!231 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!232 = !{ptr @.str.127, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.128, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../net/rxrpc/conn_client.c", i32 514, i32 2}
!235 = !{ptr @.str.129, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @rxrpc_activate_one_channel._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @rxrpc_activate_one_channel._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.131, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../net/rxrpc/conn_client.c", i32 535, i32 2}
!240 = !{ptr @rxrpc_activate_one_channel._entry.130, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @rxrpc_activate_one_channel._entry_ptr.132, !239, !"_entry_ptr", i1 false, i1 false}
!242 = distinct !{null, !243, !"__already_done", i1 false, i1 false}
!243 = !{!"../include/trace/events/rxrpc.h", i32 1379, i32 1}
!244 = distinct !{null, !243, !"__warned", i1 false, i1 false}
!245 = distinct !{null, !246, !"__already_done", i1 false, i1 false}
!246 = !{!"../include/trace/events/rxrpc.h", i32 536, i32 1}
!247 = distinct !{null, !246, !"__warned", i1 false, i1 false}
!248 = !{ptr @.str.133, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../net/rxrpc/conn_client.c", i32 953, i32 2}
!250 = !{ptr @.str.134, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @rxrpc_kill_client_conn._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @rxrpc_kill_client_conn._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.135, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../net/rxrpc/conn_client.c", i32 905, i32 2}
!255 = !{ptr @rxrpc_unbundle_conn._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @rxrpc_unbundle_conn._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.137, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../net/rxrpc/conn_client.c", i32 913, i32 3}
!259 = !{ptr @rxrpc_unbundle_conn._entry.136, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @rxrpc_unbundle_conn._entry_ptr.138, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.140, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../net/rxrpc/conn_client.c", i32 923, i32 3}
!263 = !{ptr @rxrpc_unbundle_conn._entry.139, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @rxrpc_unbundle_conn._entry_ptr.141, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.143, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../net/rxrpc/conn_client.c", i32 930, i32 4}
!267 = !{ptr @rxrpc_unbundle_conn._entry.142, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @rxrpc_unbundle_conn._entry_ptr.144, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @rxrpc_unbundle_conn._entry.145, !270, !"_entry", i1 false, i1 false}
!270 = !{!"../net/rxrpc/conn_client.c", i32 942, i32 2}
!271 = !{ptr @rxrpc_unbundle_conn._entry_ptr.146, !270, !"_entry_ptr", i1 false, i1 false}
!272 = !{!"sp"}
!273 = !{i32 1, !"wchar_size", i32 2}
!274 = !{i32 1, !"min_enum_size", i32 4}
!275 = !{i32 8, !"branch-target-enforcement", i32 0}
!276 = !{i32 8, !"sign-return-address", i32 0}
!277 = !{i32 8, !"sign-return-address-all", i32 0}
!278 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!279 = !{i32 7, !"uwtable", i32 1}
!280 = !{i32 7, !"frame-pointer", i32 2}
!281 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!282 = !{i64 2158138583, i64 2158139071, i64 2158138620, i64 2158138676, i64 2158138710, i64 2158138734, i64 2158138775, i64 2158138796, i64 2158138824, i64 2158138858}
!283 = !{i64 2148607998, i64 2148608024, i64 2148608053, i64 2148608087, i64 2148608118, i64 2148608141}
!284 = !{i64 2148696474}
!285 = !{i64 2148611183, i64 2148611215, i64 2148611244, i64 2148611278, i64 2148611309, i64 2148611332}
!286 = !{i64 2148696703}
!287 = !{!"branch_weights", i32 2000, i32 1}
!288 = !{i8 0, i8 2}
!289 = !{i64 2148693433}
!290 = !{i64 2148608718, i64 2148608750, i64 2148608779, i64 2148608813, i64 2148608844, i64 2148608867}
!291 = !{i64 2148693662}
!292 = !{i64 2158230159}
!293 = !{i64 2158214169}
!294 = !{i64 2158218897}
!295 = !{i64 2148228724, i64 2148228729, i64 2148228742, i64 2148228786, i64 2148228820, i64 2148228841}
!296 = !{i64 2157502064}
!297 = !{i64 2157502285}
!298 = !{i64 2149953428}
!299 = !{i64 2149954464}
!300 = !{i64 2158238939, i64 2158239427, i64 2158238976, i64 2158239032, i64 2158239066, i64 2158239090, i64 2158239131, i64 2158239152, i64 2158239180, i64 2158239214}
!301 = !{i64 2158246326, i64 2158246814, i64 2158246363, i64 2158246419, i64 2158246453, i64 2158246477, i64 2158246518, i64 2158246539, i64 2158246567, i64 2158246601}
!302 = !{i64 2158251239, i64 2158251727, i64 2158251276, i64 2158251332, i64 2158251366, i64 2158251390, i64 2158251431, i64 2158251452, i64 2158251480, i64 2158251514}
!303 = !{i64 2158257055}
!304 = !{i32 0, i32 33}
!305 = !{i64 2158195913}
!306 = !{i64 2158200889}
!307 = !{i64 2158281259, i64 2158281747, i64 2158281296, i64 2158281352, i64 2158281386, i64 2158281410, i64 2158281451, i64 2158281472, i64 2158281500, i64 2158281534}
!308 = !{i64 2148610463, i64 2148610489, i64 2148610518, i64 2148610552, i64 2148610583, i64 2148610606}
!309 = !{i64 2157485159}
!310 = !{i64 2157485404}
!311 = !{i64 2148609528, i64 2148609560, i64 2148609589, i64 2148609623, i64 2148609654, i64 2148609677}
!312 = !{!"branch_weights", i32 1, i32 2000}
!313 = !{i64 2157998602}
!314 = !{i64 2157998809}
