; ModuleID = '/llk/IR_all_yes/net/rxrpc/peer_event.c_pt.bc'
source_filename = "../net/rxrpc/peer_event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.150 }
%union.anon.150 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.122, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.123, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.124, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.118, [0 x i32], %union.anon.119, i16, i16, %union.anon.120, %struct.refcount_struct, [0 x i32], %union.anon.121 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { %struct.hlist_node }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
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
%struct.rxrpc_local = type { %struct.callback_head, %struct.atomic_t, %struct.atomic_t, ptr, %struct.list_head, ptr, %struct.work_struct, ptr, %struct.rw_semaphore, %struct.sk_buff_head, %struct.sk_buff_head, %struct.rb_root, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i8, i8, %struct.sockaddr_rxrpc }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.rxrpc_net = type { ptr, i32, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, %struct.work_struct, %struct.timer_list, i8, i8, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.timer_list, %struct.list_head, %struct.mutex, [1024 x %struct.hlist_head], %struct.spinlock, i8, i64, [32 x %struct.list_head], %struct.list_head, %struct.timer_list, %struct.work_struct }

@rxrpc_error_report.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/rxrpc/peer_event.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_error_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] ==> %s(%p{%d})\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_error_report\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_error_report._entry_ptr = internal global ptr @rxrpc_error_report._entry, section ".printk_index", align 4
@rxrpc_error_report._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%-6.6s] <== %s()UDP socket errqueue empty\0A\00", [52 x i8] zeroinitializer }, align 32
@rxrpc_error_report._entry_ptr.6 = internal global ptr @rxrpc_error_report._entry.4, section ".printk_index", align 4
@rxrpc_error_report._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] <== %s()UDP empty message\0A\00", [60 x i8] zeroinitializer }, align 32
@rxrpc_error_report._entry_ptr.9 = internal global ptr @rxrpc_error_report._entry.7, section ".printk_index", align 4
@rxrpc_error_report._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() [no peer]\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_error_report._entry_ptr.12 = internal global ptr @rxrpc_error_report._entry.10, section ".printk_index", align 4
@rxrpc_error_report._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] <== %s() [MTU update]\0A\00", [32 x i8] zeroinitializer }, align 32
@rxrpc_error_report._entry_ptr.15 = internal global ptr @rxrpc_error_report._entry.13, section ".printk_index", align 4
@rxrpc_error_report._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_error_report._entry_ptr.18 = internal global ptr @rxrpc_error_report._entry.16, section ".printk_index", align 4
@rxrpc_peer_keepalive_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s(%lld,%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rxrpc_peer_keepalive_worker\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_peer_keepalive_worker._entry_ptr = internal global ptr @rxrpc_peer_keepalive_worker._entry, section ".printk_index", align 4
@rxrpc_peer_keepalive_worker._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013Assertion failed\0A\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_peer_keepalive_worker._entry_ptr.23 = internal global ptr @rxrpc_peer_keepalive_worker._entry.21, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rxrpc_peer_keepalive_worker._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.20, ptr @.str, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_peer_keepalive_worker._entry_ptr.25 = internal global ptr @rxrpc_peer_keepalive_worker._entry.24, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer_icmp_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxrpc_lookup_peer_icmp_rcu\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer_icmp_rcu._entry_ptr = internal global ptr @rxrpc_lookup_peer_icmp_rcu._entry, section ".printk_index", align 4
@rxrpc_lookup_peer_icmp_rcu._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s] @@@ Rx ICMP\0A\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer_icmp_rcu._entry_ptr.33 = internal global ptr @rxrpc_lookup_peer_icmp_rcu._entry.31, section ".printk_index", align 4
@rxrpc_lookup_peer_icmp_rcu._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] @@@ Rx ICMP6 on v4 sock\0A\00", [62 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer_icmp_rcu._entry_ptr.36 = internal global ptr @rxrpc_lookup_peer_icmp_rcu._entry.34, section ".printk_index", align 4
@rxrpc_lookup_peer_icmp_rcu._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] @@@ Rx ICMP6\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer_icmp_rcu._entry_ptr.39 = internal global ptr @rxrpc_lookup_peer_icmp_rcu._entry.37, section ".printk_index", align 4
@rxrpc_lookup_peer_icmp_rcu._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] @@@ Rx ICMP on v6 sock\0A\00", [63 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer_icmp_rcu._entry_ptr.42 = internal global ptr @rxrpc_lookup_peer_icmp_rcu._entry.40, section ".printk_index", align 4
@__tracepoint_rxrpc_rx_icmp = external dso_local global %struct.tracepoint, align 4
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_rx_icmp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_adjust_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%-6.6s] @@@ Rx ICMP Fragmentation Needed (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxrpc_adjust_mtu\00", [47 x i8] zeroinitializer }, align 32
@rxrpc_adjust_mtu._entry_ptr = internal global ptr @rxrpc_adjust_mtu._entry, section ".printk_index", align 4
@rxrpc_adjust_mtu._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] @@@ I/F MTU %u\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_adjust_mtu._entry_ptr.49 = internal global ptr @rxrpc_adjust_mtu._entry.47, section ".printk_index", align 4
@rxrpc_adjust_mtu._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s] @@@ Net MTU %u (maxdata %u)\0A\00", [58 x i8] zeroinitializer }, align 32
@rxrpc_adjust_mtu._entry_ptr.52 = internal global ptr @rxrpc_adjust_mtu._entry.50, section ".printk_index", align 4
@rxrpc_store_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.53, ptr @.str, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxrpc_store_error\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr = internal global ptr @rxrpc_store_error._entry, section ".printk_index", align 4
@rxrpc_store_error._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%-6.6s] @@@ Rx Received ICMP Network Unreachable\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr.56 = internal global ptr @rxrpc_store_error._entry.54, section ".printk_index", align 4
@rxrpc_store_error._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%-6.6s] @@@ Rx Received ICMP Host Unreachable\0A\00", [48 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr.59 = internal global ptr @rxrpc_store_error._entry.57, section ".printk_index", align 4
@rxrpc_store_error._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%-6.6s] @@@ Rx Received ICMP Port Unreachable\0A\00", [48 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr.62 = internal global ptr @rxrpc_store_error._entry.60, section ".printk_index", align 4
@rxrpc_store_error._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%-6.6s] @@@ Rx Received ICMP Unknown Network\0A\00", [49 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr.65 = internal global ptr @rxrpc_store_error._entry.63, section ".printk_index", align 4
@rxrpc_store_error._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.53, ptr @.str, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%-6.6s] @@@ Rx Received ICMP Unknown Host\0A\00", [52 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr.68 = internal global ptr @rxrpc_store_error._entry.66, section ".printk_index", align 4
@rxrpc_store_error._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.53, ptr @.str, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%-6.6s] @@@ Rx Received ICMP DestUnreach code=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr.71 = internal global ptr @rxrpc_store_error._entry.69, section ".printk_index", align 4
@rxrpc_store_error._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.53, ptr @.str, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%-6.6s] @@@ Rx Received ICMP TTL Exceeded\0A\00", [52 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr.74 = internal global ptr @rxrpc_store_error._entry.72, section ".printk_index", align 4
@rxrpc_store_error._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.53, ptr @.str, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[%-6.6s] ### Rx Received ICMP error { type=%u code=%u }\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr.77 = internal global ptr @rxrpc_store_error._entry.75, section ".printk_index", align 4
@rxrpc_store_error._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.53, ptr @.str, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%-6.6s] ### Rx Received local error { error=%d }\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr.80 = internal global ptr @rxrpc_store_error._entry.78, section ".printk_index", align 4
@rxrpc_store_error._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.53, ptr @.str, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%-6.6s] ### Rx Received error report { orig=%u }\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_store_error._entry_ptr.83 = internal global ptr @rxrpc_store_error._entry.81, section ".printk_index", align 4
@rxrpc_distribute_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rxrpc_peer_keepalive_dispatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s]     %02x peer %u t=%d {%pISp}\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rxrpc_peer_keepalive_dispatch\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_peer_keepalive_dispatch._entry_ptr = internal global ptr @rxrpc_peer_keepalive_dispatch._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 11]
@__sancov_gen_cov_switch_values.91 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 3, i64 6, i64 7]
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 155, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 160, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 170, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 176, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 188, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 201, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 210, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 368, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 397, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 416, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 695, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 723, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 34, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 51, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 57, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 73, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 80, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1428, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 108, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 111, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 116, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 138, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 223, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 235, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 238, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 241, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 244, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 247, i32 5 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 250, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 257, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 261, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 269, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 278, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 293, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private constant [26 x i8] c"../net/rxrpc/peer_event.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 327, i32 4 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @rxrpc_adjust_mtu._entry, ptr @rxrpc_adjust_mtu._entry.47, ptr @rxrpc_adjust_mtu._entry.50, ptr @rxrpc_adjust_mtu._entry_ptr, ptr @rxrpc_adjust_mtu._entry_ptr.49, ptr @rxrpc_adjust_mtu._entry_ptr.52, ptr @rxrpc_error_report._entry, ptr @rxrpc_error_report._entry.10, ptr @rxrpc_error_report._entry.13, ptr @rxrpc_error_report._entry.16, ptr @rxrpc_error_report._entry.4, ptr @rxrpc_error_report._entry.7, ptr @rxrpc_error_report._entry_ptr, ptr @rxrpc_error_report._entry_ptr.12, ptr @rxrpc_error_report._entry_ptr.15, ptr @rxrpc_error_report._entry_ptr.18, ptr @rxrpc_error_report._entry_ptr.6, ptr @rxrpc_error_report._entry_ptr.9, ptr @rxrpc_lookup_peer_icmp_rcu._entry, ptr @rxrpc_lookup_peer_icmp_rcu._entry.31, ptr @rxrpc_lookup_peer_icmp_rcu._entry.34, ptr @rxrpc_lookup_peer_icmp_rcu._entry.37, ptr @rxrpc_lookup_peer_icmp_rcu._entry.40, ptr @rxrpc_lookup_peer_icmp_rcu._entry_ptr, ptr @rxrpc_lookup_peer_icmp_rcu._entry_ptr.33, ptr @rxrpc_lookup_peer_icmp_rcu._entry_ptr.36, ptr @rxrpc_lookup_peer_icmp_rcu._entry_ptr.39, ptr @rxrpc_lookup_peer_icmp_rcu._entry_ptr.42, ptr @rxrpc_peer_keepalive_dispatch._entry, ptr @rxrpc_peer_keepalive_dispatch._entry_ptr, ptr @rxrpc_peer_keepalive_worker._entry, ptr @rxrpc_peer_keepalive_worker._entry.21, ptr @rxrpc_peer_keepalive_worker._entry.24, ptr @rxrpc_peer_keepalive_worker._entry_ptr, ptr @rxrpc_peer_keepalive_worker._entry_ptr.23, ptr @rxrpc_peer_keepalive_worker._entry_ptr.25, ptr @rxrpc_store_error._entry, ptr @rxrpc_store_error._entry.54, ptr @rxrpc_store_error._entry.57, ptr @rxrpc_store_error._entry.60, ptr @rxrpc_store_error._entry.63, ptr @rxrpc_store_error._entry.66, ptr @rxrpc_store_error._entry.69, ptr @rxrpc_store_error._entry.72, ptr @rxrpc_store_error._entry.75, ptr @rxrpc_store_error._entry.78, ptr @rxrpc_store_error._entry.81, ptr @rxrpc_store_error._entry_ptr, ptr @rxrpc_store_error._entry_ptr.56, ptr @rxrpc_store_error._entry_ptr.59, ptr @rxrpc_store_error._entry_ptr.62, ptr @rxrpc_store_error._entry_ptr.65, ptr @rxrpc_store_error._entry_ptr.68, ptr @rxrpc_store_error._entry_ptr.71, ptr @rxrpc_store_error._entry_ptr.74, ptr @rxrpc_store_error._entry_ptr.77, ptr @rxrpc_store_error._entry_ptr.80, ptr @rxrpc_store_error._entry_ptr.83, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_error_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_error_report._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_error_report._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_error_report._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_error_report._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_error_report._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_peer_keepalive_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_peer_keepalive_worker._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_peer_keepalive_worker._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer_icmp_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer_icmp_rcu._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer_icmp_rcu._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer_icmp_rcu._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer_icmp_rcu._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_adjust_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_adjust_mtu._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_adjust_mtu._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_store_error._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_peer_keepalive_dispatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_error_report(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  %srx = alloca %struct.sockaddr_rxrpc, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %srx) #8
  %0 = call ptr @memset(ptr %srx, i32 255, i32 36)
  %1 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !151
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %5 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b214 = load i1, ptr @rxrpc_error_report.__warned, align 1
  br i1 %.b214, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rxrpc_error_report.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 155, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %7 = ptrtoint ptr %6 to i32
  %and = and i32 %7, -4
  %8 = inttoptr i32 %and to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then14, label %do.body16, !prof !152

if.then14:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

do.body16:                                        ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %9 = load i32, ptr @rxrpc_debug, align 4
  %and17 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.end34_crit_edge, label %do.end28, !prof !153

do.body16.do.end34_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end28:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_local, ptr %8, i32 0, i32 15
  %14 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_id, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %comm, ptr noundef nonnull @.str.3, ptr noundef %sk, i32 noundef %15) #11
  br label %do.end34

do.end34:                                         ; preds = %do.end28, %do.body16.do.end34_crit_edge
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %16 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i215 = icmp eq i32 %17, 0
  br i1 %tobool.not.i215, label %do.end34.sock_error.exit_crit_edge, label %if.end.i, !prof !153

do.end34.sock_error.exit_crit_edge:               ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_error.exit

if.end.i:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !156
  br label %sock_error.exit

sock_error.exit:                                  ; preds = %if.end.i, %do.end34.sock_error.exit_crit_edge
  %call36 = tail call ptr @sock_dequeue_err_skb(ptr noundef %sk) #8
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then38, label %if.end61

if.then38:                                        ; preds = %sock_error.exit
  %call.i216 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i216, label %if.then38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i219

if.then38.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i219:                               ; preds = %if.then38
  %call1.i217 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i217)
  %tobool.not.i218 = icmp eq i32 %call1.i217, 0
  br i1 %tobool.not.i218, label %land.lhs.true.i219.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i221

land.lhs.true.i219.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i221:                              ; preds = %land.lhs.true.i219
  %.b4.i220 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i220, label %land.lhs.true2.i221.rcu_read_unlock.exit_crit_edge, label %if.then.i222

land.lhs.true2.i221.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i221
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i222:                                     ; preds = %land.lhs.true2.i221
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i222, %land.lhs.true2.i221.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i219.rcu_read_unlock.exit_crit_edge, %if.then38.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !157
  %19 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i.i.i.i223 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i223 to ptr
  %preempt_count.i.i.i.i224 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i224, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i224, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %23 = load i32, ptr @rxrpc_debug, align 4
  %and40 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %do.end51, !prof !153

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end51:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i225 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i225 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task54, align 8
  %comm55 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm55, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end61:                                         ; preds = %sock_error.exit
  tail call void @rxrpc_new_skb(ptr noundef nonnull %call36, i32 noundef 6) #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 6
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool63.not = icmp eq i32 %29, 0
  br i1 %tobool63.not, label %land.lhs.true64, label %if.end61.if.end89_crit_edge

if.end61.if.end89_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

land.lhs.true64:                                  ; preds = %if.end61
  %ee_origin = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 28
  %30 = ptrtoint ptr %ee_origin to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ee_origin, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %cmp = icmp eq i8 %31, 4
  br i1 %cmp, label %do.body67, label %land.lhs.true64.if.end89_crit_edge

land.lhs.true64.if.end89_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

do.body67:                                        ; preds = %land.lhs.true64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %32 = load i32, ptr @rxrpc_debug, align 4
  %and68 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.do.end88_crit_edge, label %do.end79, !prof !153

do.body67.do.end88_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end88

do.end79:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i226 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i226 to ptr
  %task82 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task82, align 8
  %comm83 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 101
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm83, ptr noundef nonnull @.str.3) #11
  br label %do.end88

do.end88:                                         ; preds = %do.end79, %do.body67.do.end88_crit_edge
  %call.i227 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i227, label %do.end88.rcu_read_unlock.exit237_crit_edge, label %land.lhs.true.i230

do.end88.rcu_read_unlock.exit237_crit_edge:       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit237

land.lhs.true.i230:                               ; preds = %do.end88
  %call1.i228 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i228)
  %tobool.not.i229 = icmp eq i32 %call1.i228, 0
  br i1 %tobool.not.i229, label %land.lhs.true.i230.rcu_read_unlock.exit237_crit_edge, label %land.lhs.true2.i232

land.lhs.true.i230.rcu_read_unlock.exit237_crit_edge: ; preds = %land.lhs.true.i230
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit237

land.lhs.true2.i232:                              ; preds = %land.lhs.true.i230
  %.b4.i231 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i231, label %land.lhs.true2.i232.rcu_read_unlock.exit237_crit_edge, label %if.then.i233

land.lhs.true2.i232.rcu_read_unlock.exit237_crit_edge: ; preds = %land.lhs.true2.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit237

if.then.i233:                                     ; preds = %land.lhs.true2.i232
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #8
  br label %rcu_read_unlock.exit237

rcu_read_unlock.exit237:                          ; preds = %if.then.i233, %land.lhs.true2.i232.rcu_read_unlock.exit237_crit_edge, %land.lhs.true.i230.rcu_read_unlock.exit237_crit_edge, %do.end88.rcu_read_unlock.exit237_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !157
  %37 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i.i.i.i234 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i234 to ptr
  %preempt_count.i.i.i.i235 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i235, align 4
  %sub.i.i.i236 = add i32 %40, -1
  store volatile i32 %sub.i.i.i236, ptr %preempt_count.i.i.i.i235, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  tail call void @rxrpc_free_skb(ptr noundef nonnull %call36, i32 noundef 1) #8
  br label %cleanup

if.end89:                                         ; preds = %land.lhs.true64.if.end89_crit_edge, %if.end61.if.end89_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %41 = load i32, ptr @rxrpc_debug, align 4
  %and.i238 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i238)
  %tobool.not.i239 = icmp eq i32 %and.i238, 0
  br i1 %tobool.not.i239, label %if.end89.do.end7.i_crit_edge, label %do.end.i, !prof !153

if.end89.do.end7.i_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %42 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %comm.i, ptr noundef nonnull @.str.30) #11
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.end89.do.end7.i_crit_edge
  %46 = call ptr @memset(ptr %srx, i32 0, i32 36)
  %transport_type.i = getelementptr inbounds %struct.rxrpc_local, ptr %8, i32 0, i32 18, i32 2
  %47 = ptrtoint ptr %transport_type.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %transport_type.i, align 4
  %transport_type9.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 2
  %49 = ptrtoint ptr %transport_type9.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %transport_type9.i, align 4
  %transport_len.i = getelementptr inbounds %struct.rxrpc_local, ptr %8, i32 0, i32 18, i32 3
  %50 = ptrtoint ptr %transport_len.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %transport_len.i, align 2
  %transport_len11.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 3
  %52 = ptrtoint ptr %transport_len11.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %transport_len11.i, align 2
  %transport.i = getelementptr inbounds %struct.rxrpc_local, ptr %8, i32 0, i32 18, i32 4
  %53 = ptrtoint ptr %transport.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %transport.i, align 4
  %transport13.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %55 = ptrtoint ptr %transport13.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %transport13.i, align 4
  %56 = zext i16 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i16 %54, label %do.body153.i [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb78.i
  ]

sw.bb.i:                                          ; preds = %do.end7.i
  %57 = ptrtoint ptr %transport_len11.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 16, ptr %transport_len11.i, align 2
  %58 = ptrtoint ptr %transport13.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 2, ptr %transport13.i, align 4
  %port.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 42
  %59 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %port.i, align 2
  %sin_port.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %61 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %sin_port.i, align 2
  %ee_origin.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 28
  %62 = ptrtoint ptr %ee_origin.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ee_origin.i, align 4
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %63, label %sw.default.i [
    i8 2, label %do.body20.i
    i8 3, label %do.body46.i
  ]

do.body20.i:                                      ; preds = %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %65 = load i32, ptr @rxrpc_debug, align 4
  %and21.i = and i32 %65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.body20.i.do.end41.i_crit_edge, label %do.end32.i, !prof !153

do.body20.i.do.end41.i_crit_edge:                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41.i

do.end32.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i196.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i196.i to ptr
  %task35.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task35.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task35.i, align 8
  %comm36.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 101
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %comm36.i) #11
  br label %do.end41.i

do.end41.i:                                       ; preds = %do.end32.i, %do.body20.i.do.end41.i_crit_edge
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 18
  %70 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 15, i32 0, i32 20
  %72 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %73 to i32
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 %conv.i.i
  %addr_offset.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 40
  %74 = ptrtoint ptr %addr_offset.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr_offset.i, align 4
  %conv44.i = zext i16 %75 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv44.i
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %add.ptr.i, align 1
  %78 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %sin_addr.i, align 4
  br label %rxrpc_lookup_peer_icmp_rcu.exit

do.body46.i:                                      ; preds = %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %79 = load i32, ptr @rxrpc_debug, align 4
  %and47.i = and i32 %79, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %do.body46.i.do.end67.i_crit_edge, label %do.end58.i, !prof !153

do.body46.i.do.end67.i_crit_edge:                 ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67.i

do.end58.i:                                       ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i197.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i197.i to ptr
  %task61.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task61.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task61.i, align 8
  %comm62.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 101
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm62.i) #11
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end58.i, %do.body46.i.do.end67.i_crit_edge
  %sin_addr69.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 2
  %head.i198.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 18
  %84 = ptrtoint ptr %head.i198.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %head.i198.i, align 8
  %network_header.i199.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 15, i32 0, i32 20
  %86 = ptrtoint ptr %network_header.i199.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %network_header.i199.i, align 4
  %conv.i200.i = zext i16 %87 to i32
  %add.ptr.i201.i = getelementptr i8, ptr %85, i32 %conv.i200.i
  %addr_offset71.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 40
  %88 = ptrtoint ptr %addr_offset71.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %addr_offset71.i, align 4
  %conv72.i = zext i16 %89 to i32
  %add.ptr73.i = getelementptr i8, ptr %add.ptr.i201.i, i32 %conv72.i
  %add.ptr74.i = getelementptr i8, ptr %add.ptr73.i, i32 12
  %90 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %add.ptr74.i, align 1
  %92 = ptrtoint ptr %sin_addr69.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %sin_addr69.i, align 4
  br label %rxrpc_lookup_peer_icmp_rcu.exit

sw.default.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %sin_addr76.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 2
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 18
  %93 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 15, i32 0, i32 20
  %95 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %96 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %94, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %97 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %saddr.i, align 4
  %99 = ptrtoint ptr %sin_addr76.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %sin_addr76.i, align 4
  br label %rxrpc_lookup_peer_icmp_rcu.exit

sw.bb78.i:                                        ; preds = %do.end7.i
  %ee_origin80.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 28
  %100 = ptrtoint ptr %ee_origin80.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ee_origin80.i, align 4
  %102 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %101, label %sw.default146.i [
    i8 3, label %do.body83.i
    i8 2, label %do.body113.i
  ]

do.body83.i:                                      ; preds = %sw.bb78.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %103 = load i32, ptr @rxrpc_debug, align 4
  %and84.i = and i32 %103, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %do.body83.i.do.end104.i_crit_edge, label %do.end95.i, !prof !153

do.body83.i.do.end104.i_crit_edge:                ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104.i

do.end95.i:                                       ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i202.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i202.i to ptr
  %task98.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task98.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task98.i, align 8
  %comm99.i = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 101
  %call101.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm99.i) #11
  br label %do.end104.i

do.end104.i:                                      ; preds = %do.end95.i, %do.body83.i.do.end104.i_crit_edge
  %port105.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 42
  %108 = ptrtoint ptr %port105.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %port105.i, align 2
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %110 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %sin6_port.i, align 2
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 3
  %head.i203.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 18
  %111 = ptrtoint ptr %head.i203.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %head.i203.i, align 8
  %network_header.i204.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 15, i32 0, i32 20
  %113 = ptrtoint ptr %network_header.i204.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %network_header.i204.i, align 4
  %conv.i205.i = zext i16 %114 to i32
  %add.ptr.i206.i = getelementptr i8, ptr %112, i32 %conv.i205.i
  %addr_offset109.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 40
  %115 = ptrtoint ptr %addr_offset109.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %addr_offset109.i, align 4
  %conv110.i = zext i16 %116 to i32
  %add.ptr111.i = getelementptr i8, ptr %add.ptr.i206.i, i32 %conv110.i
  %117 = call ptr @memcpy(ptr %sin6_addr.i, ptr %add.ptr111.i, i32 16)
  br label %rxrpc_lookup_peer_icmp_rcu.exit

do.body113.i:                                     ; preds = %sw.bb78.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %118 = load i32, ptr @rxrpc_debug, align 4
  %and114.i = and i32 %118, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %do.body113.i.do.end134.i_crit_edge, label %do.end125.i, !prof !153

do.body113.i.do.end134.i_crit_edge:               ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end134.i

do.end125.i:                                      ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i207.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i207.i to ptr
  %task128.i = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %task128.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task128.i, align 8
  %comm129.i = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 101
  %call131.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %comm129.i) #11
  br label %do.end134.i

do.end134.i:                                      ; preds = %do.end125.i, %do.body113.i.do.end134.i_crit_edge
  %123 = ptrtoint ptr %transport_len11.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 16, ptr %transport_len11.i, align 2
  %124 = ptrtoint ptr %transport13.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 2, ptr %transport13.i, align 4
  %port137.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 42
  %125 = ptrtoint ptr %port137.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %port137.i, align 2
  %sin_port139.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %127 = ptrtoint ptr %sin_port139.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %sin_port139.i, align 2
  %sin_addr141.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 2
  %head.i208.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 18
  %128 = ptrtoint ptr %head.i208.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %head.i208.i, align 8
  %network_header.i209.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 15, i32 0, i32 20
  %130 = ptrtoint ptr %network_header.i209.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %network_header.i209.i, align 4
  %conv.i210.i = zext i16 %131 to i32
  %add.ptr.i211.i = getelementptr i8, ptr %129, i32 %conv.i210.i
  %addr_offset143.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 40
  %132 = ptrtoint ptr %addr_offset143.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %addr_offset143.i, align 4
  %conv144.i = zext i16 %133 to i32
  %add.ptr145.i = getelementptr i8, ptr %add.ptr.i211.i, i32 %conv144.i
  %134 = ptrtoint ptr %add.ptr145.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %add.ptr145.i, align 1
  %136 = ptrtoint ptr %sin_addr141.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %sin_addr141.i, align 4
  br label %rxrpc_lookup_peer_icmp_rcu.exit

sw.default146.i:                                  ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #10
  %sin6_addr148.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 3
  %head.i.i212.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 18
  %137 = ptrtoint ptr %head.i.i212.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %head.i.i212.i, align 8
  %network_header.i.i213.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 15, i32 0, i32 20
  %139 = ptrtoint ptr %network_header.i.i213.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %network_header.i.i213.i, align 4
  %conv.i.i214.i = zext i16 %140 to i32
  %add.ptr.i.i215.i = getelementptr i8, ptr %138, i32 %conv.i.i214.i
  %saddr150.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i215.i, i32 0, i32 5
  %141 = call ptr @memcpy(ptr %sin6_addr148.i, ptr %saddr150.i, i32 16)
  br label %rxrpc_lookup_peer_icmp_rcu.exit

do.body153.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/peer_event.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #8, !srcloc !158
  unreachable

rxrpc_lookup_peer_icmp_rcu.exit:                  ; preds = %sw.default146.i, %do.end134.i, %do.end104.i, %sw.default.i, %do.end67.i, %do.end41.i
  %call160.i = call ptr @rxrpc_lookup_peer_rcu(ptr noundef nonnull %8, ptr noundef nonnull %srx) #8
  %tobool91.not = icmp eq ptr %call160.i, null
  br i1 %tobool91.not, label %rxrpc_lookup_peer_icmp_rcu.exit.if.then98_crit_edge, label %land.lhs.true92

rxrpc_lookup_peer_icmp_rcu.exit.if.then98_crit_edge: ; preds = %rxrpc_lookup_peer_icmp_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

land.lhs.true92:                                  ; preds = %rxrpc_lookup_peer_icmp_rcu.exit
  %call93 = call ptr @rxrpc_get_peer_maybe(ptr noundef nonnull %call160.i) #8
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %land.lhs.true92.if.then98_crit_edge, label %if.end121

land.lhs.true92.if.then98_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

if.then98:                                        ; preds = %land.lhs.true92.if.then98_crit_edge, %rxrpc_lookup_peer_icmp_rcu.exit.if.then98_crit_edge
  %call.i240 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i240, label %if.then98.rcu_read_unlock.exit251_crit_edge, label %land.lhs.true.i243

if.then98.rcu_read_unlock.exit251_crit_edge:      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit251

land.lhs.true.i243:                               ; preds = %if.then98
  %call1.i241 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i241)
  %tobool.not.i242 = icmp eq i32 %call1.i241, 0
  br i1 %tobool.not.i242, label %land.lhs.true.i243.rcu_read_unlock.exit251_crit_edge, label %land.lhs.true2.i245

land.lhs.true.i243.rcu_read_unlock.exit251_crit_edge: ; preds = %land.lhs.true.i243
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit251

land.lhs.true2.i245:                              ; preds = %land.lhs.true.i243
  %.b4.i244 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i244, label %land.lhs.true2.i245.rcu_read_unlock.exit251_crit_edge, label %if.then.i246

land.lhs.true2.i245.rcu_read_unlock.exit251_crit_edge: ; preds = %land.lhs.true2.i245
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit251

if.then.i246:                                     ; preds = %land.lhs.true2.i245
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #8
  br label %rcu_read_unlock.exit251

rcu_read_unlock.exit251:                          ; preds = %if.then.i246, %land.lhs.true2.i245.rcu_read_unlock.exit251_crit_edge, %land.lhs.true.i243.rcu_read_unlock.exit251_crit_edge, %if.then98.rcu_read_unlock.exit251_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !157
  %142 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i.i.i.i247 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i.i.i.i247 to ptr
  %preempt_count.i.i.i.i248 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %preempt_count.i.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %preempt_count.i.i.i.i248, align 4
  %sub.i.i.i249 = add i32 %145, -1
  store volatile i32 %sub.i.i.i249, ptr %preempt_count.i.i.i.i248, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @rxrpc_free_skb(ptr noundef nonnull %call36, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %146 = load i32, ptr @rxrpc_debug, align 4
  %and100 = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %rcu_read_unlock.exit251.cleanup_crit_edge, label %do.end111, !prof !153

rcu_read_unlock.exit251.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit251
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end111:                                        ; preds = %rcu_read_unlock.exit251
  call void @__sanitizer_cov_trace_pc() #10
  %147 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i252 = and i32 %147, -16384
  %148 = inttoptr i32 %and.i252 to ptr
  %task114 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %task114 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %task114, align 8
  %comm115 = getelementptr inbounds %struct.task_struct, ptr %150, i32 0, i32 101
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm115, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end121:                                        ; preds = %land.lhs.true92
  %ee122 = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 24
  call fastcc void @trace_rxrpc_rx_icmp(ptr noundef nonnull %call160.i, ptr noundef %ee122, ptr noundef nonnull %srx)
  %ee_origin124 = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 28
  %151 = ptrtoint ptr %ee_origin124 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %ee_origin124, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %152)
  %cmp126 = icmp eq i8 %152, 2
  br i1 %cmp126, label %land.lhs.true128, label %if.end121.if.end161_crit_edge

if.end121.if.end161_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

land.lhs.true128:                                 ; preds = %if.end121
  %ee_type = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 29
  %153 = ptrtoint ptr %ee_type to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %ee_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %154)
  %cmp131 = icmp eq i8 %154, 3
  br i1 %cmp131, label %land.lhs.true133, label %land.lhs.true128.if.end161_crit_edge

land.lhs.true128.if.end161_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

land.lhs.true133:                                 ; preds = %land.lhs.true128
  %ee_code = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 30
  %155 = ptrtoint ptr %ee_code to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %ee_code, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %156)
  %cmp136 = icmp eq i8 %156, 4
  br i1 %cmp136, label %if.then138, label %land.lhs.true133.if.end161_crit_edge

land.lhs.true133.if.end161_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then138:                                       ; preds = %land.lhs.true133
  %ee_info.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 32
  %157 = ptrtoint ptr %ee_info.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ee_info.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %159 = load i32, ptr @rxrpc_debug, align 4
  %and.i253 = and i32 %159, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i253)
  %tobool.not.i254 = icmp eq i32 %and.i253, 0
  br i1 %tobool.not.i254, label %if.then138.do.end6.i_crit_edge, label %do.end.i258, !prof !153

if.then138.do.end6.i_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i

do.end.i258:                                      ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  %160 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i255 = and i32 %160, -16384
  %161 = inttoptr i32 %and.i.i255 to ptr
  %task.i256 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %task.i256 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %task.i256, align 8
  %comm.i257 = getelementptr inbounds %struct.task_struct, ptr %163, i32 0, i32 101
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %comm.i257, i32 noundef %158) #11
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i258, %if.then138.do.end6.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cond.i = icmp eq i32 %158, 0
  %if_mtu38.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call160.i, i32 0, i32 11
  %164 = ptrtoint ptr %if_mtu38.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %if_mtu38.i, align 4
  br i1 %cond.i, label %if.then37.i, label %land.lhs.true.i259

land.lhs.true.i259:                               ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %165)
  %cmp7.i = icmp eq i32 %165, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %158)
  %cmp10.i = icmp ult i32 %158, 65535
  %or.cond.i = select i1 %cmp7.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %if.then11.i, label %land.lhs.true.i259.if.end51.i_crit_edge

land.lhs.true.i259.if.end51.i_crit_edge:          ; preds = %land.lhs.true.i259
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then11.i:                                      ; preds = %land.lhs.true.i259
  %166 = ptrtoint ptr %if_mtu38.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %158, ptr %if_mtu38.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %167 = load i32, ptr @rxrpc_debug, align 4
  %and14.i = and i32 %167, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.then11.i.if.end51.i_crit_edge, label %do.end25.i, !prof !153

if.then11.i.if.end51.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

do.end25.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %168 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i115.i = and i32 %168, -16384
  %169 = inttoptr i32 %and.i115.i to ptr
  %task28.i = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %task28.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %task28.i, align 8
  %comm29.i = getelementptr inbounds %struct.task_struct, ptr %171, i32 0, i32 101
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm29.i, i32 noundef %158) #11
  br label %if.end51.i

if.then37.i:                                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %165)
  %cmp39.i = icmp ugt i32 %165, 1500
  br i1 %cmp39.i, label %if.then40.i, label %if.else.i

if.then40.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %165, 1
  %172 = call i32 @llvm.umax.i32(i32 %shr.i, i32 1500) #8
  br label %if.end51.i

if.else.i:                                        ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %165, -100
  %hdrsize.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call160.i, i32 0, i32 14
  %173 = ptrtoint ptr %hdrsize.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %hdrsize.i, align 8
  %conv.i = zext i16 %174 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp44.i = icmp ult i32 %sub.i, %conv.i
  %add.i = add nuw nsw i32 %conv.i, 4
  %spec.select.i = select i1 %cmp44.i, i32 %add.i, i32 %sub.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else.i, %if.then40.i, %do.end25.i, %if.then11.i.if.end51.i_crit_edge, %land.lhs.true.i259.if.end51.i_crit_edge
  %mtu.0.i = phi i32 [ %172, %if.then40.i ], [ %spec.select.i, %if.else.i ], [ %158, %if.then11.i.if.end51.i_crit_edge ], [ %158, %do.end25.i ], [ %158, %land.lhs.true.i259.if.end51.i_crit_edge ]
  %mtu52.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call160.i, i32 0, i32 12
  %175 = ptrtoint ptr %mtu52.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %mtu52.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mtu.0.i, i32 %176)
  %cmp53.i = icmp ult i32 %mtu.0.i, %176
  br i1 %cmp53.i, label %if.then55.i, label %if.end51.i.rxrpc_adjust_mtu.exit_crit_edge

if.end51.i.rxrpc_adjust_mtu.exit_crit_edge:       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rxrpc_adjust_mtu.exit

if.then55.i:                                      ; preds = %if.end51.i
  %lock.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call160.i, i32 0, i32 10
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %177 = ptrtoint ptr %mtu52.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %mtu.0.i, ptr %mtu52.i, align 8
  %hdrsize58.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call160.i, i32 0, i32 14
  %178 = ptrtoint ptr %hdrsize58.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %hdrsize58.i, align 8
  %conv59.i = zext i16 %179 to i32
  %sub60.i = sub i32 %mtu.0.i, %conv59.i
  %maxdata.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call160.i, i32 0, i32 13
  %180 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %sub60.i, ptr %maxdata.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %181 = load i32, ptr @rxrpc_debug, align 4
  %and63.i = and i32 %181, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.then55.i.rxrpc_adjust_mtu.exit_crit_edge, label %do.end74.i, !prof !153

if.then55.i.rxrpc_adjust_mtu.exit_crit_edge:      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rxrpc_adjust_mtu.exit

do.end74.i:                                       ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i116.i = and i32 %182, -16384
  %183 = inttoptr i32 %and.i116.i to ptr
  %task77.i = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %task77.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %task77.i, align 8
  %comm78.i = getelementptr inbounds %struct.task_struct, ptr %185, i32 0, i32 101
  %186 = ptrtoint ptr %mtu52.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mtu52.i, align 8
  %188 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %maxdata.i, align 4
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %comm78.i, i32 noundef %187, i32 noundef %189) #11
  br label %rxrpc_adjust_mtu.exit

rxrpc_adjust_mtu.exit:                            ; preds = %do.end74.i, %if.then55.i.rxrpc_adjust_mtu.exit_crit_edge, %if.end51.i.rxrpc_adjust_mtu.exit_crit_edge
  %call.i260 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i260, label %rxrpc_adjust_mtu.exit.rcu_read_unlock.exit271_crit_edge, label %land.lhs.true.i263

rxrpc_adjust_mtu.exit.rcu_read_unlock.exit271_crit_edge: ; preds = %rxrpc_adjust_mtu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit271

land.lhs.true.i263:                               ; preds = %rxrpc_adjust_mtu.exit
  %call1.i261 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i261)
  %tobool.not.i262 = icmp eq i32 %call1.i261, 0
  br i1 %tobool.not.i262, label %land.lhs.true.i263.rcu_read_unlock.exit271_crit_edge, label %land.lhs.true2.i265

land.lhs.true.i263.rcu_read_unlock.exit271_crit_edge: ; preds = %land.lhs.true.i263
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit271

land.lhs.true2.i265:                              ; preds = %land.lhs.true.i263
  %.b4.i264 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i264, label %land.lhs.true2.i265.rcu_read_unlock.exit271_crit_edge, label %if.then.i266

land.lhs.true2.i265.rcu_read_unlock.exit271_crit_edge: ; preds = %land.lhs.true2.i265
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit271

if.then.i266:                                     ; preds = %land.lhs.true2.i265
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #8
  br label %rcu_read_unlock.exit271

rcu_read_unlock.exit271:                          ; preds = %if.then.i266, %land.lhs.true2.i265.rcu_read_unlock.exit271_crit_edge, %land.lhs.true.i263.rcu_read_unlock.exit271_crit_edge, %rxrpc_adjust_mtu.exit.rcu_read_unlock.exit271_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !157
  %190 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i.i.i.i267 = and i32 %190, -16384
  %191 = inttoptr i32 %and.i.i.i.i.i267 to ptr
  %preempt_count.i.i.i.i268 = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %preempt_count.i.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %preempt_count.i.i.i.i268, align 4
  %sub.i.i.i269 = add i32 %193, -1
  store volatile i32 %sub.i.i.i269, ptr %preempt_count.i.i.i.i268, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @rxrpc_free_skb(ptr noundef nonnull %call36, i32 noundef 1) #8
  call void @rxrpc_put_peer(ptr noundef nonnull %call160.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %194 = load i32, ptr @rxrpc_debug, align 4
  %and140 = and i32 %194, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %rcu_read_unlock.exit271.cleanup_crit_edge, label %do.end151, !prof !153

rcu_read_unlock.exit271.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit271
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end151:                                        ; preds = %rcu_read_unlock.exit271
  call void @__sanitizer_cov_trace_pc() #10
  %195 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i272 = and i32 %195, -16384
  %196 = inttoptr i32 %and.i272 to ptr
  %task154 = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %task154 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %task154, align 8
  %comm155 = getelementptr inbounds %struct.task_struct, ptr %198, i32 0, i32 101
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm155, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end161:                                        ; preds = %land.lhs.true133.if.end161_crit_edge, %land.lhs.true128.if.end161_crit_edge, %if.end121.if.end161_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %199 = load i32, ptr @rxrpc_debug, align 4
  %and.i273 = and i32 %199, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i273)
  %tobool.not.i274 = icmp eq i32 %and.i273, 0
  br i1 %tobool.not.i274, label %if.end161.do.end6.i281_crit_edge, label %do.end.i279, !prof !153

if.end161.do.end6.i281_crit_edge:                 ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i281

do.end.i279:                                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %200 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i275 = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i275 to ptr
  %task.i276 = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %task.i276 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %task.i276, align 8
  %comm.i277 = getelementptr inbounds %struct.task_struct, ptr %203, i32 0, i32 101
  %call4.i278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %comm.i277, ptr noundef nonnull @.str.53) #11
  br label %do.end6.i281

do.end6.i281:                                     ; preds = %do.end.i279, %if.end161.do.end6.i281_crit_edge
  %204 = ptrtoint ptr %ee122 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %ee122, align 4
  %206 = ptrtoint ptr %ee_origin124 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %ee_origin124, align 4
  %208 = zext i8 %207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %207, label %do.end6.i281.do.body229.i_crit_edge [
    i8 2, label %sw.bb.i282
    i8 0, label %do.end6.i281.do.body202.i_crit_edge
    i8 1, label %do.end6.i281.do.body202.i_crit_edge299
    i8 3, label %sw.bb224.i
  ]

do.end6.i281.do.body202.i_crit_edge299:           ; preds = %do.end6.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body202.i

do.end6.i281.do.body202.i_crit_edge:              ; preds = %do.end6.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body202.i

do.end6.i281.do.body229.i_crit_edge:              ; preds = %do.end6.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body229.i

sw.bb.i282:                                       ; preds = %do.end6.i281
  %ee_type.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 29
  %209 = ptrtoint ptr %ee_type.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %ee_type.i, align 1
  %conv8.i = zext i8 %210 to i32
  %211 = zext i8 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %210, label %do.body174.i [
    i8 3, label %sw.bb9.i
    i8 11, label %do.body151.i
  ]

sw.bb9.i:                                         ; preds = %sw.bb.i282
  %ee_code.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 30
  %212 = ptrtoint ptr %ee_code.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %ee_code.i, align 2
  %conv10.i = zext i8 %213 to i32
  %214 = zext i8 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %213, label %do.body126.i [
    i8 0, label %do.body12.i
    i8 1, label %do.body35.i
    i8 3, label %do.body58.i
    i8 6, label %do.body81.i
    i8 7, label %do.body104.i
  ]

do.body12.i:                                      ; preds = %sw.bb9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %215 = load i32, ptr @rxrpc_debug, align 4
  %and13.i = and i32 %215, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.sw.epilog253.i_crit_edge, label %do.end24.i, !prof !153

do.body12.i.sw.epilog253.i_crit_edge:             ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog253.i

do.end24.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %216 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i263.i = and i32 %216, -16384
  %217 = inttoptr i32 %and.i263.i to ptr
  %task27.i = getelementptr inbounds %struct.thread_info, ptr %217, i32 0, i32 2
  %218 = ptrtoint ptr %task27.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %task27.i, align 8
  %comm28.i = getelementptr inbounds %struct.task_struct, ptr %219, i32 0, i32 101
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %comm28.i) #11
  br label %sw.epilog253.i

do.body35.i:                                      ; preds = %sw.bb9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %220 = load i32, ptr @rxrpc_debug, align 4
  %and36.i = and i32 %220, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %do.body35.i.sw.epilog253.i_crit_edge, label %do.end47.i, !prof !153

do.body35.i.sw.epilog253.i_crit_edge:             ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog253.i

do.end47.i:                                       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  %221 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i264.i = and i32 %221, -16384
  %222 = inttoptr i32 %and.i264.i to ptr
  %task50.i = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %task50.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %task50.i, align 8
  %comm51.i = getelementptr inbounds %struct.task_struct, ptr %224, i32 0, i32 101
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %comm51.i) #11
  br label %sw.epilog253.i

do.body58.i:                                      ; preds = %sw.bb9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %225 = load i32, ptr @rxrpc_debug, align 4
  %and59.i = and i32 %225, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %do.body58.i.sw.epilog253.i_crit_edge, label %do.end70.i, !prof !153

do.body58.i.sw.epilog253.i_crit_edge:             ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog253.i

do.end70.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #10
  %226 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i265.i = and i32 %226, -16384
  %227 = inttoptr i32 %and.i265.i to ptr
  %task73.i = getelementptr inbounds %struct.thread_info, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %task73.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %task73.i, align 8
  %comm74.i = getelementptr inbounds %struct.task_struct, ptr %229, i32 0, i32 101
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %comm74.i) #11
  br label %sw.epilog253.i

do.body81.i:                                      ; preds = %sw.bb9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %230 = load i32, ptr @rxrpc_debug, align 4
  %and82.i = and i32 %230, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %do.body81.i.sw.epilog253.i_crit_edge, label %do.end93.i, !prof !153

do.body81.i.sw.epilog253.i_crit_edge:             ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog253.i

do.end93.i:                                       ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #10
  %231 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i266.i = and i32 %231, -16384
  %232 = inttoptr i32 %and.i266.i to ptr
  %task96.i = getelementptr inbounds %struct.thread_info, ptr %232, i32 0, i32 2
  %233 = ptrtoint ptr %task96.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %task96.i, align 8
  %comm97.i = getelementptr inbounds %struct.task_struct, ptr %234, i32 0, i32 101
  %call99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %comm97.i) #11
  br label %sw.epilog253.i

do.body104.i:                                     ; preds = %sw.bb9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %235 = load i32, ptr @rxrpc_debug, align 4
  %and105.i = and i32 %235, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %do.body104.i.sw.epilog253.i_crit_edge, label %do.end116.i, !prof !153

do.body104.i.sw.epilog253.i_crit_edge:            ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog253.i

do.end116.i:                                      ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #10
  %236 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i267.i = and i32 %236, -16384
  %237 = inttoptr i32 %and.i267.i to ptr
  %task119.i = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %task119.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %task119.i, align 8
  %comm120.i = getelementptr inbounds %struct.task_struct, ptr %239, i32 0, i32 101
  %call122.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %comm120.i) #11
  br label %sw.epilog253.i

do.body126.i:                                     ; preds = %sw.bb9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %240 = load i32, ptr @rxrpc_debug, align 4
  %and127.i = and i32 %240, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  br i1 %tobool128.not.i, label %do.body126.i.sw.epilog253.i_crit_edge, label %do.end138.i, !prof !153

do.body126.i.sw.epilog253.i_crit_edge:            ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog253.i

do.end138.i:                                      ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #10
  %241 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i268.i = and i32 %241, -16384
  %242 = inttoptr i32 %and.i268.i to ptr
  %task141.i = getelementptr inbounds %struct.thread_info, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %task141.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %task141.i, align 8
  %comm142.i = getelementptr inbounds %struct.task_struct, ptr %244, i32 0, i32 101
  %call146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %comm142.i, i32 noundef %conv10.i) #11
  br label %sw.epilog253.i

do.body151.i:                                     ; preds = %sw.bb.i282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %245 = load i32, ptr @rxrpc_debug, align 4
  %and152.i = and i32 %245, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %do.body151.i.sw.epilog253.i_crit_edge, label %do.end163.i, !prof !153

do.body151.i.sw.epilog253.i_crit_edge:            ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog253.i

do.end163.i:                                      ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #10
  %246 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i269.i = and i32 %246, -16384
  %247 = inttoptr i32 %and.i269.i to ptr
  %task166.i = getelementptr inbounds %struct.thread_info, ptr %247, i32 0, i32 2
  %248 = ptrtoint ptr %task166.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %task166.i, align 8
  %comm167.i = getelementptr inbounds %struct.task_struct, ptr %249, i32 0, i32 101
  %call169.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %comm167.i) #11
  br label %sw.epilog253.i

do.body174.i:                                     ; preds = %sw.bb.i282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %250 = load i32, ptr @rxrpc_debug, align 4
  %and175.i = and i32 %250, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i)
  %tobool176.not.i = icmp eq i32 %and175.i, 0
  br i1 %tobool176.not.i, label %do.body174.i.sw.epilog253.i_crit_edge, label %do.end186.i, !prof !153

do.body174.i.sw.epilog253.i_crit_edge:            ; preds = %do.body174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog253.i

do.end186.i:                                      ; preds = %do.body174.i
  call void @__sanitizer_cov_trace_pc() #10
  %251 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i270.i = and i32 %251, -16384
  %252 = inttoptr i32 %and.i270.i to ptr
  %task189.i = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 2
  %253 = ptrtoint ptr %task189.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %task189.i, align 8
  %comm190.i = getelementptr inbounds %struct.task_struct, ptr %254, i32 0, i32 101
  %ee_code194.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 3, i32 30
  %255 = ptrtoint ptr %ee_code194.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %ee_code194.i, align 2
  %conv195.i = zext i8 %256 to i32
  %call196.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %comm190.i, i32 noundef %conv8.i, i32 noundef %conv195.i) #11
  br label %sw.epilog253.i

do.body202.i:                                     ; preds = %do.end6.i281.do.body202.i_crit_edge, %do.end6.i281.do.body202.i_crit_edge299
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %257 = load i32, ptr @rxrpc_debug, align 4
  %and203.i = and i32 %257, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203.i)
  %tobool204.not.i = icmp eq i32 %and203.i, 0
  br i1 %tobool204.not.i, label %do.body202.i.sw.epilog253.i_crit_edge, label %do.end214.i, !prof !153

do.body202.i.sw.epilog253.i_crit_edge:            ; preds = %do.body202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog253.i

do.end214.i:                                      ; preds = %do.body202.i
  call void @__sanitizer_cov_trace_pc() #10
  %258 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i271.i = and i32 %258, -16384
  %259 = inttoptr i32 %and.i271.i to ptr
  %task217.i = getelementptr inbounds %struct.thread_info, ptr %259, i32 0, i32 2
  %260 = ptrtoint ptr %task217.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %task217.i, align 8
  %comm218.i = getelementptr inbounds %struct.task_struct, ptr %261, i32 0, i32 101
  %call220.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %comm218.i, i32 noundef %205) #11
  br label %sw.epilog253.i

sw.bb224.i:                                       ; preds = %do.end6.i281
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %205)
  %cmp.i = icmp eq i32 %205, 13
  %spec.store.select.i = select i1 %cmp.i, i32 113, i32 %205
  br label %do.body229.i

do.body229.i:                                     ; preds = %sw.bb224.i, %do.end6.i281.do.body229.i_crit_edge
  %err.0.i = phi i32 [ %205, %do.end6.i281.do.body229.i_crit_edge ], [ %spec.store.select.i, %sw.bb224.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %262 = load i32, ptr @rxrpc_debug, align 4
  %and230.i = and i32 %262, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230.i)
  %tobool231.not.i = icmp eq i32 %and230.i, 0
  br i1 %tobool231.not.i, label %do.body229.i.sw.epilog253.i_crit_edge, label %do.end241.i, !prof !153

do.body229.i.sw.epilog253.i_crit_edge:            ; preds = %do.body229.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog253.i

do.end241.i:                                      ; preds = %do.body229.i
  call void @__sanitizer_cov_trace_pc() #10
  %263 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i272.i = and i32 %263, -16384
  %264 = inttoptr i32 %and.i272.i to ptr
  %task244.i = getelementptr inbounds %struct.thread_info, ptr %264, i32 0, i32 2
  %265 = ptrtoint ptr %task244.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %task244.i, align 8
  %comm245.i = getelementptr inbounds %struct.task_struct, ptr %266, i32 0, i32 101
  %conv248.i = zext i8 %207 to i32
  %call249.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %comm245.i, i32 noundef %conv248.i) #11
  br label %sw.epilog253.i

sw.epilog253.i:                                   ; preds = %do.end241.i, %do.body229.i.sw.epilog253.i_crit_edge, %do.end214.i, %do.body202.i.sw.epilog253.i_crit_edge, %do.end186.i, %do.body174.i.sw.epilog253.i_crit_edge, %do.end163.i, %do.body151.i.sw.epilog253.i_crit_edge, %do.end138.i, %do.body126.i.sw.epilog253.i_crit_edge, %do.end116.i, %do.body104.i.sw.epilog253.i_crit_edge, %do.end93.i, %do.body81.i.sw.epilog253.i_crit_edge, %do.end70.i, %do.body58.i.sw.epilog253.i_crit_edge, %do.end47.i, %do.body35.i.sw.epilog253.i_crit_edge, %do.end24.i, %do.body12.i.sw.epilog253.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %do.end241.i ], [ %err.0.i, %do.body229.i.sw.epilog253.i_crit_edge ], [ %205, %do.end186.i ], [ %205, %do.body174.i.sw.epilog253.i_crit_edge ], [ %205, %do.end163.i ], [ %205, %do.body151.i.sw.epilog253.i_crit_edge ], [ %205, %do.end138.i ], [ %205, %do.body126.i.sw.epilog253.i_crit_edge ], [ %205, %do.end116.i ], [ %205, %do.body104.i.sw.epilog253.i_crit_edge ], [ %205, %do.end93.i ], [ %205, %do.body81.i.sw.epilog253.i_crit_edge ], [ %205, %do.end70.i ], [ %205, %do.body58.i.sw.epilog253.i_crit_edge ], [ %205, %do.end47.i ], [ %205, %do.body35.i.sw.epilog253.i_crit_edge ], [ %205, %do.end24.i ], [ %205, %do.body12.i.sw.epilog253.i_crit_edge ], [ %205, %do.end214.i ], [ %205, %do.body202.i.sw.epilog253.i_crit_edge ]
  %compl.0.i = phi i32 [ 4, %do.end241.i ], [ 4, %do.body229.i.sw.epilog253.i_crit_edge ], [ 4, %do.end186.i ], [ 4, %do.body174.i.sw.epilog253.i_crit_edge ], [ 4, %do.end163.i ], [ 4, %do.body151.i.sw.epilog253.i_crit_edge ], [ 4, %do.end138.i ], [ 4, %do.body126.i.sw.epilog253.i_crit_edge ], [ 4, %do.end116.i ], [ 4, %do.body104.i.sw.epilog253.i_crit_edge ], [ 4, %do.end93.i ], [ 4, %do.body81.i.sw.epilog253.i_crit_edge ], [ 4, %do.end70.i ], [ 4, %do.body58.i.sw.epilog253.i_crit_edge ], [ 4, %do.end47.i ], [ 4, %do.body35.i.sw.epilog253.i_crit_edge ], [ 4, %do.end24.i ], [ 4, %do.body12.i.sw.epilog253.i_crit_edge ], [ 3, %do.end214.i ], [ 3, %do.body202.i.sw.epilog253.i_crit_edge ]
  %call1.i.i = call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.epilog253.i.do.end.i.i_crit_edge

sw.epilog253.i.do.end.i.i_crit_edge:              ; preds = %sw.epilog253.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.epilog253.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b36.i.i = load i1, ptr @rxrpc_distribute_error.__warned, align 1
  br i1 %.b36.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rxrpc_distribute_error.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 293, ptr noundef nonnull @.str.84) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %sw.epilog253.i.do.end.i.i_crit_edge
  %error_targets.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call160.i, i32 0, i32 5
  %267 = ptrtoint ptr %error_targets.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile ptr, ptr %error_targets.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %268, null
  %add.ptr.i.i283 = getelementptr i8, ptr %268, i32 -276
  %tobool13.not4042.i.i = icmp eq ptr %add.ptr.i.i283, null
  %tobool13.not40.i.i = or i1 %tobool11.not.i.i, %tobool13.not4042.i.i
  br i1 %tobool13.not40.i.i, label %do.end.i.i.rxrpc_store_error.exit_crit_edge, label %for.body.lr.ph.i.i

do.end.i.i.rxrpc_store_error.exit_crit_edge:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rxrpc_store_error.exit

for.body.lr.ph.i.i:                               ; preds = %do.end.i.i
  %sub.i.i = sub i32 0, %err.1.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %call.041.i.i = phi ptr [ %add.ptr.i.i283, %for.body.lr.ph.i.i ], [ %add.ptr26.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @rxrpc_see_call(ptr noundef nonnull %call.041.i.i) #8
  %call14.i.i = call zeroext i1 @rxrpc_set_call_completion(ptr noundef nonnull %call.041.i.i, i32 noundef %compl.0.i, i32 noundef 0, i32 noundef %sub.i.i) #8
  %error_link.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call.041.i.i, i32 0, i32 23
  %269 = ptrtoint ptr %error_link.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load volatile ptr, ptr %error_link.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %270, null
  %add.ptr26.i.i = getelementptr i8, ptr %270, i32 -276
  %tobool13.not43.i.i = icmp eq ptr %add.ptr26.i.i, null
  %tobool13.not.i.i = or i1 %tobool22.not.i.i, %tobool13.not43.i.i
  br i1 %tobool13.not.i.i, label %for.body.i.i.rxrpc_store_error.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.rxrpc_store_error.exit_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rxrpc_store_error.exit

rxrpc_store_error.exit:                           ; preds = %for.body.i.i.rxrpc_store_error.exit_crit_edge, %do.end.i.i.rxrpc_store_error.exit_crit_edge
  %call.i284 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i284, label %rxrpc_store_error.exit.rcu_read_unlock.exit295_crit_edge, label %land.lhs.true.i287

rxrpc_store_error.exit.rcu_read_unlock.exit295_crit_edge: ; preds = %rxrpc_store_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit295

land.lhs.true.i287:                               ; preds = %rxrpc_store_error.exit
  %call1.i285 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i285)
  %tobool.not.i286 = icmp eq i32 %call1.i285, 0
  br i1 %tobool.not.i286, label %land.lhs.true.i287.rcu_read_unlock.exit295_crit_edge, label %land.lhs.true2.i289

land.lhs.true.i287.rcu_read_unlock.exit295_crit_edge: ; preds = %land.lhs.true.i287
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit295

land.lhs.true2.i289:                              ; preds = %land.lhs.true.i287
  %.b4.i288 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i288, label %land.lhs.true2.i289.rcu_read_unlock.exit295_crit_edge, label %if.then.i290

land.lhs.true2.i289.rcu_read_unlock.exit295_crit_edge: ; preds = %land.lhs.true2.i289
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit295

if.then.i290:                                     ; preds = %land.lhs.true2.i289
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #8
  br label %rcu_read_unlock.exit295

rcu_read_unlock.exit295:                          ; preds = %if.then.i290, %land.lhs.true2.i289.rcu_read_unlock.exit295_crit_edge, %land.lhs.true.i287.rcu_read_unlock.exit295_crit_edge, %rxrpc_store_error.exit.rcu_read_unlock.exit295_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !157
  %271 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i.i.i.i291 = and i32 %271, -16384
  %272 = inttoptr i32 %and.i.i.i.i.i291 to ptr
  %preempt_count.i.i.i.i292 = getelementptr inbounds %struct.thread_info, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %preempt_count.i.i.i.i292 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load volatile i32, ptr %preempt_count.i.i.i.i292, align 4
  %sub.i.i.i293 = add i32 %274, -1
  store volatile i32 %sub.i.i.i293, ptr %preempt_count.i.i.i.i292, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @rxrpc_free_skb(ptr noundef nonnull %call36, i32 noundef 1) #8
  call void @rxrpc_put_peer(ptr noundef nonnull %call160.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %275 = load i32, ptr @rxrpc_debug, align 4
  %and163 = and i32 %275, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %rcu_read_unlock.exit295.cleanup_crit_edge, label %do.end174, !prof !153

rcu_read_unlock.exit295.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit295
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end174:                                        ; preds = %rcu_read_unlock.exit295
  call void @__sanitizer_cov_trace_pc() #10
  %276 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i296 = and i32 %276, -16384
  %277 = inttoptr i32 %and.i296 to ptr
  %task177 = getelementptr inbounds %struct.thread_info, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %task177 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %task177, align 8
  %comm178 = getelementptr inbounds %struct.task_struct, ptr %279, i32 0, i32 101
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm178, ptr noundef nonnull @.str.3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end174, %rcu_read_unlock.exit295.cleanup_crit_edge, %do.end151, %rcu_read_unlock.exit271.cleanup_crit_edge, %do.end111, %rcu_read_unlock.exit251.cleanup_crit_edge, %rcu_read_unlock.exit237, %do.end51, %rcu_read_unlock.exit.cleanup_crit_edge, %if.then14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %srx) #8
  ret void
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !157
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_dequeue_err_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_new_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_free_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_peer_maybe(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_icmp(ptr noundef %peer, ptr noundef %ee, ptr noundef %srx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_icmp, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_icmp, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !159

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !153

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !160
  %call42 = tail call i32 @__traceiter_rxrpc_rx_icmp(ptr noundef null, ptr noundef %peer, ptr noundef %ee, ptr noundef %srx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !161
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !153

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !162
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_icmp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_icmp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rxrpc_rx_icmp.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rxrpc_rx_icmp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 1455, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !163
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #8
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
declare dso_local void @rxrpc_put_peer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_peer_keepalive_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %collector = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4984
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %collector) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %collector, i32 0, i32 1
  %1 = ptrtoint ptr %collector to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %collector, ptr %collector, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %collector, ptr %0, align 4
  %call = call i64 @ktime_get_seconds() #8
  %peer_keepalive_base = getelementptr i8, ptr %work, i32 -320
  %3 = ptrtoint ptr %peer_keepalive_base to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %peer_keepalive_base, align 8
  %peer_keepalive_cursor = getelementptr i8, ptr %work, i32 -328
  %5 = ptrtoint ptr %peer_keepalive_cursor to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %peer_keepalive_cursor, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %7 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !153

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %sub = sub i64 %4, %call
  %conv = zext i8 %6 to i32
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm, ptr noundef nonnull @.str.20, i64 noundef %sub, i32 noundef %conv) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %live = getelementptr i8, ptr %work, i32 -4764
  %12 = ptrtoint ptr %live to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %live, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %peer_hash_lock = getelementptr i8, ptr %work, i32 -372
  call void @_raw_spin_lock_bh(ptr noundef %peer_hash_lock) #8
  %peer_keepalive_new = getelementptr i8, ptr %work, i32 -56
  %14 = ptrtoint ptr %peer_keepalive_new to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %peer_keepalive_new, align 4
  %cmp.i.not.i = icmp eq ptr %15, %peer_keepalive_new
  br i1 %cmp.i.not.i, label %if.end11.list_splice_init.exit_crit_edge, label %if.then.i

if.end11.list_splice_init.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %collector to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %collector, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 -52
  %18 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %collector, ptr %prev3.i.i, align 4
  store ptr %15, ptr %collector, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %19, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev6.i.i, align 4
  %23 = ptrtoint ptr %peer_keepalive_new to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %peer_keepalive_new, ptr %peer_keepalive_new, align 4
  store ptr %peer_keepalive_new, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end11.list_splice_init.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %call)
  %cmp.not165.not = icmp sgt i64 %4, %call
  br i1 %cmp.not165.not, label %list_splice_init.exit.while.end_crit_edge, label %while.body.lr.ph

list_splice_init.exit.while.end_crit_edge:        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %list_splice_init.exit
  %peer_keepalive = getelementptr i8, ptr %work, i32 -312
  br label %while.body

while.body:                                       ; preds = %list_splice_tail_init.exit.while.body_crit_edge, %while.body.lr.ph
  %base.0167 = phi i64 [ %4, %while.body.lr.ph ], [ %inc, %list_splice_tail_init.exit.while.body_crit_edge ]
  %cursor.0166 = phi i8 [ %6, %while.body.lr.ph ], [ %inc24, %list_splice_tail_init.exit.while.body_crit_edge ]
  %24 = and i8 %cursor.0166, 31
  %and23 = zext i8 %24 to i32
  %arrayidx = getelementptr [32 x %struct.list_head], ptr %peer_keepalive, i32 0, i32 %and23
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not.i154 = icmp eq ptr %26, %arrayidx
  br i1 %cmp.i.not.i154, label %while.body.list_splice_tail_init.exit_crit_edge, label %if.then.i157

while.body.list_splice_tail_init.exit_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit

if.then.i157:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %prev2.i.i155 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %29 = ptrtoint ptr %prev2.i.i155 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev2.i.i155, align 4
  %prev3.i.i156 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i156 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i156, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %28, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %collector, ptr %30, align 4
  store ptr %30, ptr %0, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  store ptr %arrayidx, ptr %prev2.i.i155, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i157, %while.body.list_splice_tail_init.exit_crit_edge
  %inc = add i64 %base.0167, 1
  %inc24 = add i8 %cursor.0166, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %call)
  %cmp.not = icmp sle i64 %inc, %call
  %35 = sub i8 %cursor.0166, %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %35)
  %cmp20 = icmp slt i8 %35, 31
  %or.cond = select i1 %cmp.not, i1 %cmp20, i1 false
  br i1 %or.cond, label %list_splice_tail_init.exit.while.body_crit_edge, label %list_splice_tail_init.exit.while.end_crit_edge

list_splice_tail_init.exit.while.end_crit_edge:   ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

list_splice_tail_init.exit.while.body_crit_edge:  ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %list_splice_tail_init.exit.while.end_crit_edge, %list_splice_init.exit.while.end_crit_edge
  %cursor.0.lcssa = phi i8 [ %6, %list_splice_init.exit.while.end_crit_edge ], [ %inc24, %list_splice_tail_init.exit.while.end_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %peer_hash_lock) #8
  %36 = ptrtoint ptr %peer_keepalive_base to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call, ptr %peer_keepalive_base, align 8
  %37 = ptrtoint ptr %peer_keepalive_cursor to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %cursor.0.lcssa, ptr %peer_keepalive_cursor, align 8
  call void @_raw_spin_lock_bh(ptr noundef %peer_hash_lock) #8
  %38 = ptrtoint ptr %collector to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %collector, align 4
  %cmp.i.not60.i = icmp eq ptr %39, %collector
  br i1 %cmp.i.not60.i, label %while.end.rxrpc_peer_keepalive_dispatch.exit_crit_edge, label %while.body.lr.ph.i

while.end.rxrpc_peer_keepalive_dispatch.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rxrpc_peer_keepalive_dispatch.exit

while.body.lr.ph.i:                               ; preds = %while.end
  %conv14.i = zext i8 %cursor.0.lcssa to i32
  %add20.i = add i64 %call, 20
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %40 = phi ptr [ %39, %while.body.lr.ph.i ], [ %70, %while.cond.backedge.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %40, i32 -36
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %40) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %40, ptr %40, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %40, ptr %prev.i3.i.i, align 4
  %call1.i = call ptr @rxrpc_get_peer_maybe(ptr noundef %add.ptr.i) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %list_del_init.exit.i.while.cond.backedge.i_crit_edge, label %if.end.i

list_del_init.exit.i.while.cond.backedge.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

if.end.i:                                         ; preds = %list_del_init.exit.i
  %local.i = getelementptr i8, ptr %40, i32 -12
  %49 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %local.i, align 8
  %active_users.i.i = getelementptr inbounds %struct.rxrpc_local, ptr %50, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active_users.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !165
  call void @llvm.prefetch.p0(ptr %active_users.i.i, i32 1, i32 3, i32 1) #8
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %active_users.i.i, ptr %active_users.i.i, i32 0, i32 1, ptr elementtype(i32) %active_users.i.i) #8, !srcloc !166
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.i.if.end32.i_crit_edge, label %if.then4.i

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then4.i:                                       ; preds = %if.end.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !167
  call void @_raw_spin_unlock_bh(ptr noundef %peer_hash_lock) #8
  %last_tx_at.i = getelementptr i8, ptr %40, i32 12
  %52 = ptrtoint ptr %last_tx_at.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %last_tx_at.i, align 8
  %add.i = add i64 %53, 20
  %sub.i = sub i64 %add.i, %call
  %conv.i = trunc i64 %sub.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %54 = load i32, ptr @rxrpc_debug, align 4
  %and.i158 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158)
  %tobool6.not.i = icmp eq i32 %and.i158, 0
  br i1 %tobool6.not.i, label %if.then4.i.do.end18.i_crit_edge, label %do.end.i, !prof !153

if.then4.i.do.end18.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 101
  %debug_id.i = getelementptr i8, ptr %40, i32 160
  %59 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug_id.i, align 4
  %transport.i = getelementptr i8, ptr %40, i32 172
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %comm.i, i32 noundef %conv14.i, i32 noundef %60, i32 noundef %conv.i, ptr noundef %transport.i) #11
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end.i, %if.then4.i.do.end18.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call)
  %cmp.not.i = icmp sle i64 %add.i, %call
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add20.i)
  %cmp21.i = icmp sgt i64 %add.i, %add20.i
  %or.cond.i = or i1 %cmp.not.i, %cmp21.i
  br i1 %or.cond.i, label %if.then23.i, label %do.end18.i.if.end24.i_crit_edge

do.end18.i.if.end24.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then23.i:                                      ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rxrpc_send_keepalive(ptr noundef %add.ptr.i) #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %do.end18.i.if.end24.i_crit_edge
  %slot.0.i = phi i32 [ 20, %if.then23.i ], [ %conv.i, %do.end18.i.if.end24.i_crit_edge ]
  %add26.i = add i32 %slot.0.i, %conv14.i
  %and27.i = and i32 %add26.i, 31
  call void @_raw_spin_lock_bh(ptr noundef %peer_hash_lock) #8
  %arrayidx.i = getelementptr %struct.rxrpc_net, ptr %add.ptr, i32 0, i32 25, i32 %and27.i
  %prev.i.i = getelementptr %struct.rxrpc_net, ptr %add.ptr, i32 0, i32 25, i32 %and27.i, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %call.i.i57.i = call zeroext i1 @__list_add_valid(ptr noundef %40, ptr noundef %62, ptr noundef %arrayidx.i) #8
  br i1 %call.i.i57.i, label %if.end.i.i58.i, label %if.end24.i.list_add_tail.exit.i_crit_edge

if.end24.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i58.i:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %40, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx.i, ptr %40, align 4
  %65 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev.i3.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %40, ptr %62, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i58.i, %if.end24.i.list_add_tail.exit.i_crit_edge
  %67 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %local.i, align 8
  call void @rxrpc_unuse_local(ptr noundef %68) #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %list_add_tail.exit.i, %if.end.i.if.end32.i_crit_edge
  call void @rxrpc_put_peer_locked(ptr noundef %add.ptr.i) #8
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end32.i, %list_del_init.exit.i.while.cond.backedge.i_crit_edge
  %69 = ptrtoint ptr %collector to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %collector, align 4
  %cmp.i.not.i159 = icmp eq ptr %70, %collector
  br i1 %cmp.i.not.i159, label %while.cond.backedge.i.rxrpc_peer_keepalive_dispatch.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.backedge.i.rxrpc_peer_keepalive_dispatch.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rxrpc_peer_keepalive_dispatch.exit

rxrpc_peer_keepalive_dispatch.exit:               ; preds = %while.cond.backedge.i.rxrpc_peer_keepalive_dispatch.exit_crit_edge, %while.end.rxrpc_peer_keepalive_dispatch.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %peer_hash_lock) #8
  %71 = ptrtoint ptr %collector to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %collector, align 4
  %cmp.i.not = icmp eq ptr %72, %collector
  br i1 %cmp.i.not, label %do.end53, label %do.end42, !prof !153

do.end42:                                         ; preds = %rxrpc_peer_keepalive_dispatch.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/peer_event.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 397, 0\0A.popsection", ""() #8, !srcloc !168
  unreachable

do.end53:                                         ; preds = %rxrpc_peer_keepalive_dispatch.exit
  %73 = ptrtoint ptr %peer_keepalive_cursor to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %peer_keepalive_cursor, align 8
  %peer_keepalive66 = getelementptr i8, ptr %work, i32 -312
  %75 = add i64 %call, 19
  br label %for.body

for.body:                                         ; preds = %if.end73.for.body_crit_edge, %do.end53
  %base.1169 = phi i64 [ %call, %do.end53 ], [ %inc74, %if.end73.for.body_crit_edge ]
  %cursor.1168 = phi i8 [ %74, %do.end53 ], [ %inc75, %if.end73.for.body_crit_edge ]
  %76 = and i8 %cursor.1168, 31
  %and68 = zext i8 %76 to i32
  %arrayidx69 = getelementptr [32 x %struct.list_head], ptr %peer_keepalive66, i32 0, i32 %and68
  %77 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %arrayidx69, align 4
  %cmp.i161.not = icmp eq ptr %78, %arrayidx69
  br i1 %cmp.i161.not, label %if.end73, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end73:                                         ; preds = %for.body
  %inc74 = add i64 %base.1169, 1
  %inc75 = add i8 %cursor.1168, 1
  %79 = sub i8 %cursor.1168, %74
  %cmp64 = icmp slt i8 %79, 18
  br i1 %cmp64, label %if.end73.for.body_crit_edge, label %if.end73.for.end_crit_edge

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end73.for.body_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end73.for.end_crit_edge, %for.body.for.end_crit_edge
  %base.1.lcssa = phi i64 [ %base.1169, %for.body.for.end_crit_edge ], [ %75, %if.end73.for.end_crit_edge ]
  %call76 = call i64 @ktime_get_seconds() #8
  %80 = ptrtoint ptr %live to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %live, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool83.not = icmp eq i8 %81, 0
  br i1 %tobool83.not, label %for.end.do.body90_crit_edge, label %if.then84

for.end.do.body90_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90

if.then84:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub77 = sub i64 %base.1.lcssa, %call76
  %82 = call i64 @llvm.smax.i64(i64 %sub77, i64 1)
  %peer_keepalive_timer = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %84 = trunc i64 %82 to i32
  %85 = mul i32 %84, 100
  %conv87 = add i32 %83, %85
  %call88 = call i32 @timer_reduce(ptr noundef %peer_keepalive_timer, i32 noundef %conv87) #8
  br label %do.body90

do.body90:                                        ; preds = %if.then84, %for.end.do.body90_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %86 = load i32, ptr @rxrpc_debug, align 4
  %and91 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.body90.cleanup_crit_edge, label %do.end102, !prof !153

do.body90.cleanup_crit_edge:                      ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end102:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  %87 = call i32 @llvm.read_register.i32(metadata !141) #8
  %and.i163 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i163 to ptr
  %task105 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task105 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task105, align 8
  %comm106 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 101
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm106, ptr noundef nonnull @.str.20) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %do.body90.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %collector) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_lookup_peer_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_icmp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_call(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_set_call_completion(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_send_keepalive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_unuse_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_peer_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !138, !139, !140}
!llvm.named.register.sp = !{!141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/rxrpc/peer_event.c", i32 155, i32 10}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/rxrpc/peer_event.c", i32 160, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rxrpc_error_report._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @rxrpc_error_report._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/rxrpc/peer_event.c", i32 170, i32 3}
!11 = !{ptr @rxrpc_error_report._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @rxrpc_error_report._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/rxrpc/peer_event.c", i32 176, i32 3}
!15 = !{ptr @rxrpc_error_report._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @rxrpc_error_report._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/rxrpc/peer_event.c", i32 188, i32 3}
!19 = !{ptr @rxrpc_error_report._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @rxrpc_error_report._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/rxrpc/peer_event.c", i32 201, i32 3}
!23 = !{ptr @rxrpc_error_report._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rxrpc_error_report._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/rxrpc/peer_event.c", i32 210, i32 2}
!27 = !{ptr @rxrpc_error_report._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rxrpc_error_report._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/rxrpc/peer_event.c", i32 368, i32 2}
!31 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rxrpc_peer_keepalive_worker._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rxrpc_peer_keepalive_worker._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/rxrpc/peer_event.c", i32 397, i32 2}
!36 = !{ptr @rxrpc_peer_keepalive_worker._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rxrpc_peer_keepalive_worker._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @rxrpc_peer_keepalive_worker._entry.24, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../net/rxrpc/peer_event.c", i32 416, i32 2}
!40 = !{ptr @rxrpc_peer_keepalive_worker._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/rxrpc/peer_event.c", i32 34, i32 2}
!50 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rxrpc_lookup_peer_icmp_rcu._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @rxrpc_lookup_peer_icmp_rcu._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/rxrpc/peer_event.c", i32 51, i32 4}
!55 = !{ptr @rxrpc_lookup_peer_icmp_rcu._entry.31, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rxrpc_lookup_peer_icmp_rcu._entry_ptr.33, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/rxrpc/peer_event.c", i32 57, i32 4}
!59 = !{ptr @rxrpc_lookup_peer_icmp_rcu._entry.34, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rxrpc_lookup_peer_icmp_rcu._entry_ptr.36, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/rxrpc/peer_event.c", i32 73, i32 4}
!63 = !{ptr @rxrpc_lookup_peer_icmp_rcu._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rxrpc_lookup_peer_icmp_rcu._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/rxrpc/peer_event.c", i32 80, i32 4}
!67 = !{ptr @rxrpc_lookup_peer_icmp_rcu._entry.40, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rxrpc_lookup_peer_icmp_rcu._entry_ptr.42, !66, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/trace/events/rxrpc.h", i32 1428, i32 1}
!71 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!75 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/rxrpc/peer_event.c", i32 111, i32 2}
!78 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rxrpc_adjust_mtu._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @rxrpc_adjust_mtu._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/rxrpc/peer_event.c", i32 116, i32 3}
!83 = !{ptr @rxrpc_adjust_mtu._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rxrpc_adjust_mtu._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/rxrpc/peer_event.c", i32 138, i32 3}
!87 = !{ptr @rxrpc_adjust_mtu._entry.50, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rxrpc_adjust_mtu._entry_ptr.52, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/rxrpc/peer_event.c", i32 223, i32 2}
!91 = !{ptr @rxrpc_store_error._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @rxrpc_store_error._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/rxrpc/peer_event.c", i32 235, i32 5}
!95 = !{ptr @rxrpc_store_error._entry.54, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @rxrpc_store_error._entry_ptr.56, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/rxrpc/peer_event.c", i32 238, i32 5}
!99 = !{ptr @rxrpc_store_error._entry.57, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @rxrpc_store_error._entry_ptr.59, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.61, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/rxrpc/peer_event.c", i32 241, i32 5}
!103 = !{ptr @rxrpc_store_error._entry.60, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @rxrpc_store_error._entry_ptr.62, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.64, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/rxrpc/peer_event.c", i32 244, i32 5}
!107 = !{ptr @rxrpc_store_error._entry.63, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @rxrpc_store_error._entry_ptr.65, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/rxrpc/peer_event.c", i32 247, i32 5}
!111 = !{ptr @rxrpc_store_error._entry.66, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rxrpc_store_error._entry_ptr.68, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.70, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/rxrpc/peer_event.c", i32 250, i32 5}
!115 = !{ptr @rxrpc_store_error._entry.69, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @rxrpc_store_error._entry_ptr.71, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.73, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/rxrpc/peer_event.c", i32 257, i32 4}
!119 = !{ptr @rxrpc_store_error._entry.72, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @rxrpc_store_error._entry_ptr.74, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.76, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/rxrpc/peer_event.c", i32 261, i32 4}
!123 = !{ptr @rxrpc_store_error._entry.75, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @rxrpc_store_error._entry_ptr.77, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.79, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/rxrpc/peer_event.c", i32 269, i32 3}
!127 = !{ptr @rxrpc_store_error._entry.78, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @rxrpc_store_error._entry_ptr.80, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.82, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/rxrpc/peer_event.c", i32 278, i32 3}
!131 = !{ptr @rxrpc_store_error._entry.81, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @rxrpc_store_error._entry_ptr.83, !130, !"_entry_ptr", i1 false, i1 false}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../net/rxrpc/peer_event.c", i32 293, i32 2}
!135 = !{ptr @.str.84, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.85, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/rxrpc/peer_event.c", i32 327, i32 4}
!138 = !{ptr @.str.86, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @rxrpc_peer_keepalive_dispatch._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @rxrpc_peer_keepalive_dispatch._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
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
!151 = !{i64 2149364576}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 2156806171}
!155 = !{i64 855185, i64 855202, i64 855226, i64 855252, i64 855270}
!156 = !{i64 2156806514}
!157 = !{i64 2149364842}
!158 = !{i64 2158123274, i64 2158123760, i64 2158123311, i64 2158123367, i64 2158123401, i64 2158123425, i64 2158123466, i64 2158123487, i64 2158123515, i64 2158123549}
!159 = !{i64 2148961794, i64 2148961799, i64 2148961812, i64 2148961856, i64 2148961890, i64 2148961911}
!160 = !{i64 2158022362}
!161 = !{i64 2158022577}
!162 = !{i64 2149373135}
!163 = !{i64 2149374171}
!164 = !{i8 0, i8 2}
!165 = !{i64 2148347836}
!166 = !{i64 833456, i64 833481, i64 833503, i64 833519, i64 833531, i64 833551, i64 833575, i64 833591, i64 833603}
!167 = !{i64 2148348024}
!168 = !{i64 2158199991, i64 2158200478, i64 2158200028, i64 2158200084, i64 2158200118, i64 2158200142, i64 2158200183, i64 2158200204, i64 2158200232, i64 2158200266}
