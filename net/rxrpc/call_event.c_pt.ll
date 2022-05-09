; ModuleID = '/llk/IR_all_yes/net/rxrpc/call_event.c_pt.bc'
source_filename = "../net/rxrpc/call_event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%struct.atomic_t = type { i32 }
%union.anon.122 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.114 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.135 }
%union.anon.135 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
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

@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_process_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s({%d,%s,%lx})\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_process_call\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/rxrpc/call_event.c\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_process_call._entry_ptr = internal global ptr @rxrpc_process_call._entry, section ".printk_index", align 4
@rxrpc_call_states = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EXP\00", [28 x i8] zeroinitializer }, align 32
@rxrpc_process_call._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_process_call._entry_ptr.6 = internal global ptr @rxrpc_process_call._entry.4, section ".printk_index", align 4
@rxrpc_soft_ack_delay = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_ack_priority = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__rxrpc_propose_ACK._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 66, ptr null, ptr null }, align 1
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     prior %u %u vs %u %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__rxrpc_propose_ACK\00", [44 x i8] zeroinitializer }, align 32
@__rxrpc_propose_ACK._entry_ptr = internal global ptr @__rxrpc_propose_ACK._entry, section ".printk_index", align 4
@rxrpc_requested_ack_delay = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_idle_ack_delay = external dso_local local_unnamed_addr global i32, align 4
@__rxrpc_propose_ACK._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 105, ptr null, ptr null }, align 1
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     already scheduled\0A\00", [32 x i8] zeroinitializer }, align 32
@__rxrpc_propose_ACK._entry_ptr.11 = internal global ptr @__rxrpc_propose_ACK._entry.9, section ".printk_index", align 4
@__rxrpc_propose_ACK._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 107, ptr null, ptr null }, align 1
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s]     immediate ACK %lx\0A\00", [32 x i8] zeroinitializer }, align 32
@__rxrpc_propose_ACK._entry_ptr.14 = internal global ptr @__rxrpc_propose_ACK._entry.12, section ".printk_index", align 4
@__tracepoint_rxrpc_propose_ack = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_propose_ack.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_timer = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_timer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_call_reset = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_call_reset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_resend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s({%d,%d})\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rxrpc_resend\00", [19 x i8] zeroinitializer }, align 32
@rxrpc_resend._entry_ptr = internal global ptr @rxrpc_resend._entry, section ".printk_index", align 4
@rxrpc_resend._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rxrpc: Assertion failed\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_resend._entry_ptr.22 = internal global ptr @rxrpc_resend._entry.20, section ".printk_index", align 4
@rxrpc_resend._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.19, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_resend._entry_ptr.24 = internal global ptr @rxrpc_resend._entry.23, section ".printk_index", align 4
@__tracepoint_rxrpc_resend = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_resend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_retransmit = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_retransmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 8, i64 9]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 298, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 380, i32 21 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 440, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 64, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 105, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 107, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1205, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 108, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 166, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 175, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private constant [26 x i8] c"../net/rxrpc/call_event.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 281, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__rxrpc_propose_ACK._entry, ptr @__rxrpc_propose_ACK._entry.12, ptr @__rxrpc_propose_ACK._entry.9, ptr @__rxrpc_propose_ACK._entry_ptr, ptr @__rxrpc_propose_ACK._entry_ptr.11, ptr @__rxrpc_propose_ACK._entry_ptr.14, ptr @rxrpc_process_call._entry, ptr @rxrpc_process_call._entry.4, ptr @rxrpc_process_call._entry_ptr, ptr @rxrpc_process_call._entry_ptr.6, ptr @rxrpc_resend._entry, ptr @rxrpc_resend._entry.20, ptr @rxrpc_resend._entry.23, ptr @rxrpc_resend._entry_ptr, ptr @rxrpc_resend._entry_ptr.22, ptr @rxrpc_resend._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_process_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_process_call._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_resend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_resend._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_resend._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_propose_ACK(ptr noundef %call, i8 noundef zeroext %ack_reason, i32 noundef %serial, i1 noundef zeroext %immediate, i1 noundef zeroext %background, i32 noundef %why) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 35
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_soft_ack_delay to i32))
  %0 = load i32, ptr @rxrpc_soft_ack_delay, align 4
  %idxprom.i = zext i8 %ack_reason to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @rxrpc_ack_priority, i32 0, i32 %idxprom.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %ack_reason)
  %cmp.i = icmp eq i8 %ack_reason, 6
  br i1 %cmp.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %entry
  br i1 %immediate, label %if.then.i225.i, label %if.else.i228.i

if.then.i225.i:                                   ; preds = %if.then.i
  br i1 %background, label %land.lhs.true.i.i, label %if.then.i225.i.__rxrpc_propose_ACK.exit_crit_edge

if.then.i225.i.__rxrpc_propose_ACK.exit_crit_edge: ; preds = %if.then.i225.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__rxrpc_propose_ACK.exit

land.lhs.true.i.i:                                ; preds = %if.then.i225.i
  %events.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  %call3.i226.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %events.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i226.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i226.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.__rxrpc_propose_ACK.exit_crit_edge

land.lhs.true.i.i.__rxrpc_propose_ACK.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__rxrpc_propose_ACK.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #7
  br label %__rxrpc_propose_ACK.exit

if.else.i228.i:                                   ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_idle_ack_delay to i32))
  %4 = load i32, ptr @rxrpc_idle_ack_delay, align 4
  %add.i.i = add i32 %4, %3
  %ping_at7.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %ping_at7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ping_at7.i.i, align 4
  %sub.i.i = sub i32 %add.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i227.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i227.i, label %do.body10.i.i, label %if.else.i228.i.__rxrpc_propose_ACK.exit_crit_edge

if.else.i228.i.__rxrpc_propose_ACK.exit_crit_edge: ; preds = %if.else.i228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__rxrpc_propose_ACK.exit

do.body10.i.i:                                    ; preds = %if.else.i228.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ping_at7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %add.i.i, ptr %ping_at7.i.i, align 4
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 19, i32 noundef %3) #7
  %timer.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %call1.i.i.i = tail call i32 @timer_reduce(ptr noundef %timer.i.i.i, i32 noundef %add.i.i) #7
  br label %__rxrpc_propose_ACK.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %8 = load i32, ptr @rxrpc_debug, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.body.i.do.end20.i_crit_edge, label %do.end.i, !prof !67

do.body.i.do.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 101
  %conv11.i = sext i8 %2 to i32
  %ackr_reason.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 73
  %13 = ptrtoint ptr %ackr_reason.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ackr_reason.i, align 8
  %conv12.i = zext i8 %14 to i32
  %arrayidx15.i = getelementptr [0 x i8], ptr @rxrpc_ack_priority, i32 0, i32 %conv12.i
  %15 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = sext i8 %16 to i32
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm.i, i32 noundef %idxprom.i, i32 noundef %conv11.i, i32 noundef %conv12.i, i32 noundef %conv16.i) #10
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i, %do.body.i.do.end20.i_crit_edge
  %ackr_reason22.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 73
  %17 = ptrtoint ptr %ackr_reason22.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ackr_reason22.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %ack_reason)
  %cmp24.i = icmp eq i8 %18, %ack_reason
  br i1 %cmp24.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %do.end20.i
  %shl.i = shl nuw i32 1, %idxprom.i
  %and28.i = and i32 %shl.i, 898
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.then26.i.if.end31.i_crit_edge, label %if.then30.i

if.then26.i.if.end31.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then30.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %ackr_serial.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 74
  %19 = ptrtoint ptr %ackr_serial.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %serial, ptr %ackr_serial.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %if.then26.i.if.end31.i_crit_edge
  %outcome.0.i = phi i32 [ 1, %if.then30.i ], [ 2, %if.then26.i.if.end31.i_crit_edge ]
  br i1 %immediate, label %if.end31.i.if.end47.i_crit_edge, label %if.end31.i.__rxrpc_propose_ACK.exit_crit_edge

if.end31.i.__rxrpc_propose_ACK.exit_crit_edge:    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__rxrpc_propose_ACK.exit

if.end31.i.if.end47.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.else.i:                                        ; preds = %do.end20.i
  %conv23.i = zext i8 %18 to i32
  %arrayidx38.i = getelementptr [0 x i8], ptr @rxrpc_ack_priority, i32 0, i32 %conv23.i
  %20 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx38.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %21)
  %cmp40.i = icmp sgt i8 %2, %21
  br i1 %cmp40.i, label %if.then42.i, label %if.else.i.if.end47.i_crit_edge

if.else.i.if.end47.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.then42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %ackr_reason22.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %ack_reason, ptr %ackr_reason22.i, align 8
  %ackr_serial44.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 74
  %23 = ptrtoint ptr %ackr_serial44.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %serial, ptr %ackr_serial44.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then42.i, %if.else.i.if.end47.i_crit_edge, %if.end31.i.if.end47.i_crit_edge
  %outcome.1.i = phi i32 [ %outcome.0.i, %if.end31.i.if.end47.i_crit_edge ], [ 2, %if.then42.i ], [ 0, %if.else.i.if.end47.i_crit_edge ]
  %24 = zext i8 %ack_reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %ack_reason, label %if.end47.i.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 8, label %sw.bb57.i
    i8 9, label %sw.bb62.i
  ]

if.end47.i.sw.epilog.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_requested_ack_delay to i32))
  %25 = load i32, ptr @rxrpc_requested_ack_delay, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %serial)
  %cmp53.i = icmp ne i32 %serial, 1
  %spec.select224.i = and i1 %cmp53.i, %immediate
  br label %sw.epilog.i

sw.bb57.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_soft_ack_delay to i32))
  %27 = load i32, ptr @rxrpc_soft_ack_delay, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %0) #7
  br label %sw.epilog.i

sw.bb62.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_idle_ack_delay to i32))
  %29 = load i32, ptr @rxrpc_idle_ack_delay, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %0) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb62.i, %sw.bb57.i, %sw.bb.i, %if.end47.i.sw.epilog.i_crit_edge
  %expiry.1.i = phi i32 [ %28, %sw.bb57.i ], [ %30, %sw.bb62.i ], [ %0, %if.end47.i.sw.epilog.i_crit_edge ], [ %26, %sw.bb.i ]
  %immediate.addr.0.off0.i = phi i1 [ %immediate, %sw.bb57.i ], [ %immediate, %sw.bb62.i ], [ true, %if.end47.i.sw.epilog.i_crit_edge ], [ %spec.select224.i, %sw.bb.i ]
  %events.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  %31 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %events.i, align 4
  %and1.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool68.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool68.not.i, label %if.else92.i, label %do.body70.i

do.body70.i:                                      ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %33 = load i32, ptr @rxrpc_debug, align 4
  %and71.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %do.body70.i.__rxrpc_propose_ACK.exit_crit_edge, label %do.end82.i, !prof !67

do.body70.i.__rxrpc_propose_ACK.exit_crit_edge:   ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__rxrpc_propose_ACK.exit

do.end82.i:                                       ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i229.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i229.i to ptr
  %task85.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task85.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task85.i, align 8
  %comm86.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 101
  %call88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm86.i) #10
  br label %__rxrpc_propose_ACK.exit

if.else92.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expiry.1.i)
  %cmp95.i = icmp eq i32 %expiry.1.i, 0
  %or.cond.i = select i1 %immediate.addr.0.off0.i, i1 true, i1 %cmp95.i
  br i1 %or.cond.i, label %do.body98.i, label %if.else129.i

do.body98.i:                                      ; preds = %if.else92.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %38 = load i32, ptr @rxrpc_debug, align 4
  %and99.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %do.body98.i.do.end120.i_crit_edge, label %do.end110.i, !prof !67

do.body98.i.do.end120.i_crit_edge:                ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end120.i

do.end110.i:                                      ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i230.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i230.i to ptr
  %task113.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task113.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task113.i, align 8
  %comm114.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 101
  %call117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm114.i, i32 noundef %32) #10
  br label %do.end120.i

do.end120.i:                                      ; preds = %do.end110.i, %do.body98.i.do.end120.i_crit_edge
  %call122.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %events.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  %43 = and i1 %tobool123.not.i, %background
  br i1 %43, label %if.then126.i, label %do.end120.i.__rxrpc_propose_ACK.exit_crit_edge

do.end120.i.__rxrpc_propose_ACK.exit_crit_edge:   ; preds = %do.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__rxrpc_propose_ACK.exit

if.then126.i:                                     ; preds = %do.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  %call127.i = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #7
  br label %__rxrpc_propose_ACK.exit

if.else129.i:                                     ; preds = %if.else92.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %peer.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %45 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %peer.i, align 4
  %srtt_us.i = getelementptr inbounds %struct.rxrpc_peer, ptr %46, i32 0, i32 20
  %47 = ptrtoint ptr %srtt_us.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %srtt_us.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp130.not.i = icmp eq i32 %48, 0
  br i1 %cmp130.not.i, label %if.else129.i.do.end140.i_crit_edge, label %if.else.i.i

if.else129.i.do.end140.i_crit_edge:               ; preds = %if.else129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140.i

if.else.i.i:                                      ; preds = %if.else129.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %48, 3
  %call3.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %shr.i) #7
  br label %do.end140.i

do.end140.i:                                      ; preds = %if.else.i.i, %if.else129.i.do.end140.i_crit_edge
  %ack_at.0.i = phi i32 [ %expiry.1.i, %if.else129.i.do.end140.i_crit_edge ], [ %call3.i.i, %if.else.i.i ]
  %tx_backoff.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 56
  %49 = ptrtoint ptr %tx_backoff.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load volatile i16, ptr %tx_backoff.i, align 8
  %conv142.i = zext i16 %50 to i32
  %add.i = add i32 %ack_at.0.i, %44
  %add143.i = add i32 %add.i, %conv142.i
  %ack_at144.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 7
  %51 = ptrtoint ptr %ack_at144.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ack_at144.i, align 8
  %sub.i = sub i32 %add143.i, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp145.i = icmp slt i32 %sub.i, 0
  br i1 %cmp145.i, label %do.body152.i, label %do.end140.i.__rxrpc_propose_ACK.exit_crit_edge

do.end140.i.__rxrpc_propose_ACK.exit_crit_edge:   ; preds = %do.end140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__rxrpc_propose_ACK.exit

do.body152.i:                                     ; preds = %do.end140.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %ack_at144.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %add143.i, ptr %ack_at144.i, align 8
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 13, i32 noundef %44) #7
  %timer.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %call1.i.i = tail call i32 @timer_reduce(ptr noundef %timer.i.i, i32 noundef %add143.i) #7
  br label %__rxrpc_propose_ACK.exit

__rxrpc_propose_ACK.exit:                         ; preds = %do.body152.i, %do.end140.i.__rxrpc_propose_ACK.exit_crit_edge, %if.then126.i, %do.end120.i.__rxrpc_propose_ACK.exit_crit_edge, %do.end82.i, %do.body70.i.__rxrpc_propose_ACK.exit_crit_edge, %if.end31.i.__rxrpc_propose_ACK.exit_crit_edge, %do.body10.i.i, %if.else.i228.i.__rxrpc_propose_ACK.exit_crit_edge, %if.then5.i.i, %land.lhs.true.i.i.__rxrpc_propose_ACK.exit_crit_edge, %if.then.i225.i.__rxrpc_propose_ACK.exit_crit_edge
  %outcome.2.i = phi i32 [ %outcome.1.i, %do.end82.i ], [ %outcome.1.i, %do.body70.i.__rxrpc_propose_ACK.exit_crit_edge ], [ %outcome.1.i, %do.end120.i.__rxrpc_propose_ACK.exit_crit_edge ], [ %outcome.1.i, %if.then126.i ], [ %outcome.0.i, %if.end31.i.__rxrpc_propose_ACK.exit_crit_edge ], [ %outcome.1.i, %do.body152.i ], [ %outcome.1.i, %do.end140.i.__rxrpc_propose_ACK.exit_crit_edge ], [ 2, %if.then.i225.i.__rxrpc_propose_ACK.exit_crit_edge ], [ 2, %land.lhs.true.i.i.__rxrpc_propose_ACK.exit_crit_edge ], [ 2, %if.then5.i.i ], [ 2, %if.else.i228.i.__rxrpc_propose_ACK.exit_crit_edge ], [ 2, %do.body10.i.i ]
  %immediate.addr.1.off0.i = phi i1 [ %immediate.addr.0.off0.i, %do.end82.i ], [ %immediate.addr.0.off0.i, %do.body70.i.__rxrpc_propose_ACK.exit_crit_edge ], [ %immediate.addr.0.off0.i, %do.end120.i.__rxrpc_propose_ACK.exit_crit_edge ], [ %immediate.addr.0.off0.i, %if.then126.i ], [ false, %if.end31.i.__rxrpc_propose_ACK.exit_crit_edge ], [ false, %do.body152.i ], [ false, %do.end140.i.__rxrpc_propose_ACK.exit_crit_edge ], [ true, %if.then.i225.i.__rxrpc_propose_ACK.exit_crit_edge ], [ true, %land.lhs.true.i.i.__rxrpc_propose_ACK.exit_crit_edge ], [ true, %if.then5.i.i ], [ false, %if.else.i228.i.__rxrpc_propose_ACK.exit_crit_edge ], [ false, %do.body10.i.i ]
  tail call fastcc void @trace_rxrpc_propose_ack(ptr noundef %call, i32 noundef %why, i8 noundef zeroext %ack_reason, i32 noundef %serial, i1 noundef zeroext %immediate.addr.1.off0.i, i1 noundef zeroext %background, i32 noundef %outcome.2.i) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_process_call(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -212
  tail call void @rxrpc_see_call(ptr noundef %add.ptr) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !67

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr i8, ptr %work, i32 360
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %state = getelementptr i8, ptr %work, i32 332
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  %arrayidx = getelementptr [0 x ptr], ptr @rxrpc_call_states, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %events = getelementptr i8, ptr %work, i32 188
  %11 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %events, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %6, ptr noundef %10, i32 noundef %12) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %events11 = getelementptr i8, ptr %work, i32 188
  %state17 = getelementptr i8, ptr %work, i32 332
  %expect_rx_by = getelementptr i8, ptr %work, i32 -72
  %expect_req_by = getelementptr i8, ptr %work, i32 -68
  %expect_term_by = getelementptr i8, ptr %work, i32 -64
  %ack_at = getelementptr i8, ptr %work, i32 -92
  %ack_lost_at = getelementptr i8, ptr %work, i32 -88
  %keepalive_at = getelementptr i8, ptr %work, i32 -76
  %lock.i = getelementptr i8, ptr %work, i32 192
  %ping_at = getelementptr i8, ptr %work, i32 -80
  %resend_at = getelementptr i8, ptr %work, i32 -84
  %flags = getelementptr i8, ptr %work, i32 184
  %conn = getelementptr i8, ptr %work, i32 -204
  %rx_serial = getelementptr i8, ptr %work, i32 416
  %tx_top = getelementptr i8, ptr %work, i32 384
  %acks_lost_top = getelementptr i8, ptr %work, i32 560
  %acks_lost_ping = getelementptr i8, ptr %work, i32 564
  %ackr_reason = getelementptr i8, ptr %work, i32 468
  %tx_hard_ack.i = getelementptr i8, ptr %work, i32 380
  %peer.i = getelementptr i8, ptr %work, i32 -200
  %rxtx_annotations.i = getelementptr i8, ptr %work, i32 376
  %rxtx_buffer.i = getelementptr i8, ptr %work, i32 372
  %timer.i.i = getelementptr i8, ptr %work, i32 -48
  %acks_latest_ts.i = getelementptr i8, ptr %work, i32 548
  br label %if.end10

if.end10:                                         ; preds = %recheck_state.backedge.if.end10_crit_edge, %do.end8
  %inc513 = phi i32 [ 1, %do.end8 ], [ %inc, %recheck_state.backedge.if.end10_crit_edge ]
  %call12 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %events11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @rxrpc_send_abort_packet(ptr noundef %add.ptr) #7
  br label %recheck_state.backedge

recheck_state.backedge:                           ; preds = %if.end247.recheck_state.backedge_crit_edge, %do.end177.i, %do.body165.i.recheck_state.backedge_crit_edge, %if.then150.i, %if.then240, %if.then233, %if.end219, %if.then14
  %inc = add nuw nsw i32 %inc513, 1
  %exitcond = icmp eq i32 %inc, 6
  br i1 %exitcond, label %recheck_state.backedge.requeue_crit_edge, label %recheck_state.backedge.if.end10_crit_edge

recheck_state.backedge.if.end10_crit_edge:        ; preds = %recheck_state.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

recheck_state.backedge.requeue_crit_edge:         ; preds = %recheck_state.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %requeue

if.end16:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %14)
  %cmp18 = icmp eq i32 %14, 11
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 @del_timer_sync(ptr noundef %timer.i.i) #7
  br label %out_put

if.end21:                                         ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %expect_rx_by to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %expect_rx_by, align 4
  %sub = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp26 = icmp sgt i32 %sub, -1
  br i1 %cmp26, label %if.then27, label %if.end21.do.end32_crit_edge

if.end21.do.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef 6, i32 noundef %15)
  tail call void @_set_bit(i32 noundef 4, ptr noundef %events11) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %if.end21.do.end32_crit_edge
  %18 = ptrtoint ptr %expect_req_by to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %expect_req_by, align 8
  %20 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp35 = icmp eq i32 %21, 7
  %sub36 = sub i32 %15, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub36)
  %cmp37 = icmp sgt i32 %sub36, -1
  %or.cond = select i1 %cmp35, i1 %cmp37, i1 false
  br i1 %or.cond, label %if.then38, label %do.end32.do.end43_crit_edge

do.end32.do.end43_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

if.then38:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef 3, i32 noundef %15)
  tail call void @_set_bit(i32 noundef 4, ptr noundef %events11) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %do.end32.do.end43_crit_edge
  %22 = ptrtoint ptr %expect_term_by to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %expect_term_by, align 4
  %sub45 = sub i32 %15, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub45)
  %cmp46 = icmp sgt i32 %sub45, -1
  br i1 %cmp46, label %if.then47, label %do.end43.do.end52_crit_edge

do.end43.do.end52_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

if.then47:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef 2, i32 noundef %15)
  tail call void @_set_bit(i32 noundef 4, ptr noundef %events11) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.end43.do.end52_crit_edge
  %24 = ptrtoint ptr %ack_at to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %ack_at, align 8
  %sub54 = sub i32 %15, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub54)
  %cmp55 = icmp sgt i32 %sub54, -1
  br i1 %cmp55, label %if.then56, label %do.end52.do.end81_crit_edge

do.end52.do.end81_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81

if.then56:                                        ; preds = %do.end52
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %15)
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ack_at, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  %add = add i32 %15, 1073741822
  tail call void @llvm.prefetch.p0(ptr %ack_at, i32 1, i32 3, i32 1) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then56
  %26 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %ack_at, i32 %25, i32 %add) #7, !srcloc !69
  %asmresult.i = extractvalue { i32, i32 } %26, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @_set_bit(i32 noundef 0, ptr noundef %events11) #7
  br label %do.end81

do.end81:                                         ; preds = %__cmpxchg.exit, %do.end52.do.end81_crit_edge
  %27 = ptrtoint ptr %ack_lost_at to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %ack_lost_at, align 4
  %sub83 = sub i32 %15, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub83)
  %cmp84 = icmp sgt i32 %sub83, -1
  br i1 %cmp84, label %if.then85, label %do.end81.do.end113_crit_edge

do.end81.do.end113_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end113

if.then85:                                        ; preds = %do.end81
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef 5, i32 noundef %15)
  %call.i482 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ack_lost_at, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %add100 = add i32 %15, 1073741822
  tail call void @llvm.prefetch.p0(ptr %ack_lost_at, i32 1, i32 3, i32 1) #7
  br label %do.body.i488

do.body.i488:                                     ; preds = %do.body.i488.do.body.i488_crit_edge, %if.then85
  %29 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %ack_lost_at, i32 %28, i32 %add100) #7, !srcloc !69
  %asmresult.i486 = extractvalue { i32, i32 } %29, 0
  %tobool.not.i487 = icmp eq i32 %asmresult.i486, 0
  br i1 %tobool.not.i487, label %__cmpxchg.exit489, label %do.body.i488.do.body.i488_crit_edge

do.body.i488.do.body.i488_crit_edge:              ; preds = %do.body.i488
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i488

__cmpxchg.exit489:                                ; preds = %do.body.i488
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @_set_bit(i32 noundef 5, ptr noundef %events11) #7
  br label %do.end113

do.end113:                                        ; preds = %__cmpxchg.exit489, %do.end81.do.end113_crit_edge
  %30 = ptrtoint ptr %keepalive_at to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %keepalive_at, align 8
  %sub115 = sub i32 %15, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub115)
  %cmp116 = icmp sgt i32 %sub115, -1
  br i1 %cmp116, label %if.then117, label %do.end113.do.end145_crit_edge

do.end113.do.end145_crit_edge:                    ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end145

if.then117:                                       ; preds = %do.end113
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef 4, i32 noundef %15)
  %call.i483 = tail call zeroext i1 @__kasan_check_write(ptr noundef %keepalive_at, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  %add132 = add i32 %15, 1073741822
  tail call void @llvm.prefetch.p0(ptr %keepalive_at, i32 1, i32 3, i32 1) #7
  br label %do.body.i492

do.body.i492:                                     ; preds = %do.body.i492.do.body.i492_crit_edge, %if.then117
  %32 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %keepalive_at, i32 %31, i32 %add132) #7, !srcloc !69
  %asmresult.i490 = extractvalue { i32, i32 } %32, 0
  %tobool.not.i491 = icmp eq i32 %asmresult.i490, 0
  br i1 %tobool.not.i491, label %__cmpxchg.exit493, label %do.body.i492.do.body.i492_crit_edge

do.body.i492.do.body.i492_crit_edge:              ; preds = %do.body.i492
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i492

__cmpxchg.exit493:                                ; preds = %do.body.i492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #7
  %call3.i226.i.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %events11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i226.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i226.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.then5.i.i.i, label %__cmpxchg.exit493.rxrpc_propose_ACK.exit_crit_edge

__cmpxchg.exit493.rxrpc_propose_ACK.exit_crit_edge: ; preds = %__cmpxchg.exit493
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxrpc_propose_ACK.exit

if.then5.i.i.i:                                   ; preds = %__cmpxchg.exit493
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i.i = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %add.ptr) #7
  br label %rxrpc_propose_ACK.exit

rxrpc_propose_ACK.exit:                           ; preds = %if.then5.i.i.i, %__cmpxchg.exit493.rxrpc_propose_ACK.exit_crit_edge
  tail call fastcc void @trace_rxrpc_propose_ack(ptr noundef %add.ptr, i32 noundef 3, i8 noundef zeroext 6, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 2) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %events11) #7
  br label %do.end145

do.end145:                                        ; preds = %rxrpc_propose_ACK.exit, %do.end113.do.end145_crit_edge
  %33 = ptrtoint ptr %ping_at to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %ping_at, align 4
  %sub147 = sub i32 %15, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub147)
  %cmp148 = icmp sgt i32 %sub147, -1
  br i1 %cmp148, label %if.then149, label %do.end145.do.end177_crit_edge

do.end145.do.end177_crit_edge:                    ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end177

if.then149:                                       ; preds = %do.end145
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef 7, i32 noundef %15)
  %call.i484 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ping_at, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  %add164 = add i32 %15, 1073741822
  tail call void @llvm.prefetch.p0(ptr %ping_at, i32 1, i32 3, i32 1) #7
  br label %do.body.i496

do.body.i496:                                     ; preds = %do.body.i496.do.body.i496_crit_edge, %if.then149
  %35 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %ping_at, i32 %34, i32 %add164) #7, !srcloc !69
  %asmresult.i494 = extractvalue { i32, i32 } %35, 0
  %tobool.not.i495 = icmp eq i32 %asmresult.i494, 0
  br i1 %tobool.not.i495, label %__cmpxchg.exit497, label %do.body.i496.do.body.i496_crit_edge

do.body.i496.do.body.i496_crit_edge:              ; preds = %do.body.i496
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i496

__cmpxchg.exit497:                                ; preds = %do.body.i496
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @_set_bit(i32 noundef 3, ptr noundef %events11) #7
  br label %do.end177

do.end177:                                        ; preds = %__cmpxchg.exit497, %do.end145.do.end177_crit_edge
  %36 = ptrtoint ptr %resend_at to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %resend_at, align 8
  %sub179 = sub i32 %15, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub179)
  %cmp180 = icmp sgt i32 %sub179, -1
  br i1 %cmp180, label %if.then181, label %do.end177.if.end206_crit_edge

do.end177.if.end206_crit_edge:                    ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206

if.then181:                                       ; preds = %do.end177
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef 8, i32 noundef %15)
  %call.i485 = tail call zeroext i1 @__kasan_check_write(ptr noundef %resend_at, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !77
  %add196 = add i32 %15, 1073741822
  tail call void @llvm.prefetch.p0(ptr %resend_at, i32 1, i32 3, i32 1) #7
  br label %do.body.i500

do.body.i500:                                     ; preds = %do.body.i500.do.body.i500_crit_edge, %if.then181
  %38 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %resend_at, i32 %37, i32 %add196) #7, !srcloc !69
  %asmresult.i498 = extractvalue { i32, i32 } %38, 0
  %tobool.not.i499 = icmp eq i32 %asmresult.i498, 0
  br i1 %tobool.not.i499, label %__cmpxchg.exit501, label %do.body.i500.do.body.i500_crit_edge

do.body.i500.do.body.i500_crit_edge:              ; preds = %do.body.i500
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i500

__cmpxchg.exit501:                                ; preds = %do.body.i500
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @_set_bit(i32 noundef 2, ptr noundef %events11) #7
  br label %if.end206

if.end206:                                        ; preds = %__cmpxchg.exit501, %do.end177.if.end206_crit_edge
  %call208 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %events11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end221, label %if.then210

if.then210:                                       ; preds = %if.end206
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags, align 4
  %41 = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool212.not = icmp eq i32 %41, 0
  br i1 %tobool212.not, label %if.then210.if.end219_crit_edge, label %land.lhs.true213

if.then210.if.end219_crit_edge:                   ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

land.lhs.true213:                                 ; preds = %if.then210
  %42 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %conn, align 8
  %hi_serial = getelementptr inbounds %struct.rxrpc_connection, ptr %43, i32 0, i32 25
  %44 = ptrtoint ptr %hi_serial to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hi_serial, align 8
  %46 = ptrtoint ptr %rx_serial to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_serial, align 4
  %sub214 = sub i32 %45, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub214)
  %cmp215 = icmp sgt i32 %sub214, 0
  br i1 %cmp215, label %if.then216, label %land.lhs.true213.if.end219_crit_edge

land.lhs.true213.if.end219_crit_edge:             ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

if.then216:                                       ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_rxrpc_call_reset(ptr noundef %add.ptr)
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %land.lhs.true213.if.end219_crit_edge, %if.then210.if.end219_crit_edge
  %.sink = phi i32 [ -104, %if.then216 ], [ -62, %land.lhs.true213.if.end219_crit_edge ], [ -62, %if.then210.if.end219_crit_edge ]
  %call218 = tail call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.3, ptr noundef %add.ptr, i32 noundef 0, i32 noundef -6, i32 noundef %.sink) #7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %events11) #7
  br label %recheck_state.backedge

if.end221:                                        ; preds = %if.end206
  %call223 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %events11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.end221.if.end226_crit_edge, label %if.then225

if.end221.if.end226_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end226

if.then225:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %tx_top to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_top, align 4
  %50 = ptrtoint ptr %acks_lost_top to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %acks_lost_top, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #7
  tail call fastcc void @trace_rxrpc_propose_ack(ptr noundef %add.ptr, i32 noundef 4, i8 noundef zeroext 6, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 2) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  br label %if.end226

if.end226:                                        ; preds = %if.then225, %if.end221.if.end226_crit_edge
  %send_ack.0 = phi ptr [ %acks_lost_ping, %if.then225 ], [ null, %if.end221.if.end226_crit_edge ]
  %call228 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %events11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  %tobool230.not = icmp eq ptr %send_ack.0, null
  %or.cond481 = and i1 %tobool230.not, %tobool229.not
  br i1 %or.cond481, label %if.end226.if.end236_crit_edge, label %if.then231

if.end226.if.end236_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end236

if.then231:                                       ; preds = %if.end226
  %51 = ptrtoint ptr %ackr_reason to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ackr_reason, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool232.not = icmp eq i8 %52, 0
  br i1 %tobool232.not, label %if.then231.if.end236_crit_edge, label %if.then233

if.then231.if.end236_crit_edge:                   ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end236

if.then233:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  %call234 = tail call i32 @rxrpc_send_ack_packet(ptr noundef %add.ptr, i1 noundef zeroext false, ptr noundef %send_ack.0) #7
  br label %recheck_state.backedge

if.end236:                                        ; preds = %if.then231.if.end236_crit_edge, %if.end226.if.end236_crit_edge
  %call238 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %events11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end242, label %if.then240

if.then240:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #9
  %call241 = tail call i32 @rxrpc_send_ack_packet(ptr noundef %add.ptr, i1 noundef zeroext true, ptr noundef null) #7
  br label %recheck_state.backedge

if.end242:                                        ; preds = %if.end236
  %call244 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %events11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end247, label %if.then246

if.then246:                                       ; preds = %if.end242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %53 = load i32, ptr @rxrpc_debug, align 4
  %and.i503 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i503)
  %tobool.not.i504 = icmp eq i32 %and.i503, 0
  br i1 %tobool.not.i504, label %if.then246.do.end7.i_crit_edge, label %do.end.i, !prof !67

if.then246.do.end7.i_crit_edge:                   ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i:                                         ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #9
  %54 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 101
  %58 = ptrtoint ptr %tx_hard_ack.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_hard_ack.i, align 8
  %60 = ptrtoint ptr %tx_top to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_top, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm.i, ptr noundef nonnull @.str.19, i32 noundef %59, i32 noundef %61) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.then246.do.end7.i_crit_edge
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #7
  %62 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %peer.i, align 4
  %rto_j.i = getelementptr inbounds %struct.rxrpc_peer, ptr %63, i32 0, i32 24
  %64 = ptrtoint ptr %rto_j.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rto_j.i, align 4
  %call9.i = tail call i32 @jiffies_to_usecs(i32 noundef %65) #7
  %conv.i = zext i32 %call9.i to i64
  %sub.i = sub i64 %call.i.i, %conv.i
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #7
  %66 = ptrtoint ptr %tx_hard_ack.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_hard_ack.i, align 8
  %68 = ptrtoint ptr %tx_top to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_top, align 4
  %sub.i.i = sub i32 %67, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i.i, label %do.end36.i, label %do.end25.i, !prof !67

do.end25.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_event.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #7, !srcloc !79
  unreachable

do.end36.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp.i = icmp eq i32 %67, %69
  br i1 %cmp.i, label %do.end36.i.out_unlock.i_crit_edge, label %if.end39.i

do.end36.i.out_unlock.i_crit_edge:                ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end39.i:                                       ; preds = %do.end36.i
  %add.i = add i32 %67, 1
  %and40.i = and i32 %add.i, 63
  tail call fastcc void @trace_rxrpc_resend(ptr noundef %add.ptr, i32 noundef %and40.i) #7
  %sub.i282291.i = sub i32 %add.i, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i282291.i)
  %cmp.i283292.i = icmp slt i32 %sub.i282291.i, 1
  br i1 %cmp.i283292.i, label %if.end39.i.for.body.i_crit_edge, label %if.end39.i.for.end.i_crit_edge

if.end39.i.for.end.i_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end39.i.for.body.i_crit_edge:                  ; preds = %if.end39.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end39.i.for.body.i_crit_edge
  %unacked.0299.i = phi i8 [ %unacked.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end39.i.for.body.i_crit_edge ]
  %retrans.0297.i = phi i8 [ %retrans.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end39.i.for.body.i_crit_edge ]
  %oldest.0295.i = phi i64 [ %oldest.1.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i.i, %if.end39.i.for.body.i_crit_edge ]
  %seq.0293.i = phi i32 [ %inc83.i, %for.inc.i.for.body.i_crit_edge ], [ %add.i, %if.end39.i.for.body.i_crit_edge ]
  %and43.i = and i32 %seq.0293.i, 63
  %70 = ptrtoint ptr %rxtx_annotations.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rxtx_annotations.i, align 4
  %arrayidx.i = getelementptr i8, ptr %71, i32 %and43.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i, align 1
  %and45.i = and i8 %73, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and45.i)
  %cmp51.i = icmp eq i8 %and45.i, 0
  br i1 %cmp51.i, label %for.body.i.for.inc.i_crit_edge, label %if.end54.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end54.i:                                       ; preds = %for.body.i
  %74 = ptrtoint ptr %rxtx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rxtx_buffer.i, align 8
  %arrayidx55.i = getelementptr ptr, ptr %75, i32 %and43.i
  %76 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx55.i, align 4
  tail call void @rxrpc_see_skb(ptr noundef %77, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %and45.i)
  %cmp57.i = icmp eq i8 %and45.i, 1
  br i1 %cmp57.i, label %if.then59.i, label %if.end54.i.if.end71.i_crit_edge

if.end54.i.if.end71.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i

if.then59.i:                                      ; preds = %if.end54.i
  %78 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 2
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %78, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %sub.i)
  %cmp3.i.i.i = icmp sgt i64 %80, %sub.i
  br i1 %cmp3.i.i.i, label %if.then61.i, label %if.end65.i

if.then61.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = tail call i64 @llvm.smin.i64(i64 %80, i64 %oldest.0295.i) #7
  br label %for.inc.i

if.end65.i:                                       ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = lshr i8 %73, 3
  %.lobit.i = and i8 %82, 1
  %83 = xor i8 %.lobit.i, 1
  %spec.select.i = add i8 %83, %unacked.0299.i
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end65.i, %if.end54.i.if.end71.i_crit_edge
  %unacked.1.i = phi i8 [ %unacked.0299.i, %if.end54.i.if.end71.i_crit_edge ], [ %spec.select.i, %if.end65.i ]
  %or.i = or i8 %73, 3
  %84 = ptrtoint ptr %rxtx_annotations.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rxtx_annotations.i, align 4
  %arrayidx75.i = getelementptr i8, ptr %85, i32 %and43.i
  %86 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %or.i, ptr %arrayidx75.i, align 1
  %inc76.i = add i8 %retrans.0297.i, 1
  %87 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %87, align 8
  %sub81.i = sub i64 %89, %sub.i
  tail call fastcc void @trace_rxrpc_retransmit(ptr noundef %add.ptr, i32 noundef %seq.0293.i, i8 noundef zeroext %73, i64 noundef %sub81.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end71.i, %if.then61.i, %for.body.i.for.inc.i_crit_edge
  %oldest.1.i = phi i64 [ %oldest.0295.i, %for.body.i.for.inc.i_crit_edge ], [ %oldest.0295.i, %if.end71.i ], [ %81, %if.then61.i ]
  %retrans.1.i = phi i8 [ %retrans.0297.i, %for.body.i.for.inc.i_crit_edge ], [ %inc76.i, %if.end71.i ], [ %retrans.0297.i, %if.then61.i ]
  %unacked.2.i = phi i8 [ %unacked.0299.i, %for.body.i.for.inc.i_crit_edge ], [ %unacked.1.i, %if.end71.i ], [ %unacked.0299.i, %if.then61.i ]
  %inc83.i = add i32 %seq.0293.i, 1
  %sub.i282.i = sub i32 %inc83.i, %69
  %cmp.i283.i = icmp slt i32 %sub.i282.i, 1
  br i1 %cmp.i283.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end39.i.for.end.i_crit_edge
  %oldest.0.lcssa.i = phi i64 [ %call.i.i, %if.end39.i.for.end.i_crit_edge ], [ %oldest.1.i, %for.inc.i.for.end.i_crit_edge ]
  %retrans.0.lcssa.i = phi i8 [ 0, %if.end39.i.for.end.i_crit_edge ], [ %retrans.1.i, %for.inc.i.for.end.i_crit_edge ]
  %unacked.0.lcssa.i = phi i8 [ 0, %if.end39.i.for.end.i_crit_edge ], [ %unacked.2.i, %for.inc.i.for.end.i_crit_edge ]
  %sub84.i = sub i64 %call.i.i, %oldest.0.lcssa.i
  %call86.i = tail call i32 @nsecs_to_jiffies(i64 noundef %sub84.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %91 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %peer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retrans.0.lcssa.i)
  %tobool88.i = icmp ne i8 %retrans.0.lcssa.i, 0
  %call89.i = tail call i32 @rxrpc_get_rto_backoff(ptr noundef %92, i1 noundef zeroext %tobool88.i) #7
  %add90.i = add i32 %90, %call86.i
  %add91.i = add i32 %add90.i, %call89.i
  %93 = ptrtoint ptr %resend_at to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 %add91.i, ptr %resend_at, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %unacked.0.lcssa.i)
  %tobool102.not.i = icmp eq i8 %unacked.0.lcssa.i, 0
  br i1 %tobool102.not.i, label %for.end.i.if.end104.i_crit_edge, label %if.then103.i

for.end.i.if.end104.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104.i

if.then103.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #7
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then103.i, %for.end.i.if.end104.i_crit_edge
  br i1 %tobool88.i, label %for.cond119.preheader.i, label %if.then106.i

for.cond119.preheader.i:                          ; preds = %if.end104.i
  br i1 %cmp.i283292.i, label %for.cond119.preheader.i.for.body121.i_crit_edge, label %for.cond119.preheader.i.out_unlock.i_crit_edge

for.cond119.preheader.i.out_unlock.i_crit_edge:   ; preds = %for.cond119.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

for.cond119.preheader.i.for.body121.i_crit_edge:  ; preds = %for.cond119.preheader.i
  br label %for.body121.i

if.then106.i:                                     ; preds = %if.end104.i
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef 20, i32 noundef %15) #7
  %call1.i.i = tail call i32 @timer_reduce(ptr noundef %timer.i.i, i32 noundef %add91.i) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  %94 = ptrtoint ptr %acks_latest_ts.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %acks_latest_ts.i, align 8
  %sub108.i = sub i64 %call.i.i, %95
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub108.i)
  %cmp8.i.i.i = icmp slt i64 %sub108.i, 0
  %96 = tail call i64 @llvm.abs.i64(i64 %sub108.i, i1 false) #7
  %97 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %96, i32 0) #11, !srcloc !80
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %97, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %97, 1
  %98 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %96, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !81
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %98, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %99 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %peer.i, align 4
  %srtt_us.i = getelementptr inbounds %struct.rxrpc_peer, ptr %100, i32 0, i32 20
  %101 = ptrtoint ptr %srtt_us.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %srtt_us.i, align 4
  %shr.i506 = lshr i32 %102, 3
  %conv111.i = zext i32 %shr.i506 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i, i64 %conv111.i)
  %cmp112.i = icmp slt i64 %cond213.i.i.i, %conv111.i
  br i1 %cmp112.i, label %if.then106.i.do.body165.i_crit_edge, label %if.end115.i

if.then106.i.do.body165.i_crit_edge:              ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body165.i

if.end115.i:                                      ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #7
  tail call fastcc void @trace_rxrpc_propose_ack(ptr noundef %add.ptr, i32 noundef 4, i8 noundef zeroext 6, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 2) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  %call116.i = tail call i32 @rxrpc_send_ack_packet(ptr noundef %add.ptr, i1 noundef zeroext true, ptr noundef null) #7
  br label %do.body165.i

for.body121.i:                                    ; preds = %for.inc161.i.for.body121.i_crit_edge, %for.cond119.preheader.i.for.body121.i_crit_edge
  %seq.1304.i = phi i32 [ %inc162.i, %for.inc161.i.for.body121.i_crit_edge ], [ %add.i, %for.cond119.preheader.i.for.body121.i_crit_edge ]
  %and122.i = and i32 %seq.1304.i, 63
  %103 = ptrtoint ptr %rxtx_annotations.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rxtx_annotations.i, align 4
  %arrayidx124.i = getelementptr i8, ptr %104, i32 %and122.i
  %105 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx124.i, align 1
  %and126.i = and i8 %106, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and126.i)
  %cmp129.not.i = icmp eq i8 %and126.i, 3
  br i1 %cmp129.not.i, label %if.end132.i, label %for.body121.i.for.inc161.i_crit_edge

for.body121.i.for.inc161.i_crit_edge:             ; preds = %for.body121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc161.i

if.end132.i:                                      ; preds = %for.body121.i
  %107 = and i8 %106, -12
  %108 = or i8 %107, 9
  %109 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %arrayidx124.i, align 1
  %110 = ptrtoint ptr %rxtx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rxtx_buffer.i, align 8
  %arrayidx142.i = getelementptr ptr, ptr %111, i32 %and122.i
  %112 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx142.i, align 4
  %tobool143.not.i = icmp eq ptr %113, null
  br i1 %tobool143.not.i, label %if.end132.i.for.inc161.i_crit_edge, label %if.end145.i

if.end132.i.for.inc161.i_crit_edge:               ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc161.i

if.end145.i:                                      ; preds = %if.end132.i
  tail call void @rxrpc_get_skb(ptr noundef nonnull %113, i32 noundef 2) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  %call147.i = tail call i32 @rxrpc_send_data_packet(ptr noundef %add.ptr, ptr noundef nonnull %113, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i)
  %cmp148.i = icmp slt i32 %call147.i, 0
  br i1 %cmp148.i, label %if.then150.i, label %if.end151.i

if.then150.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rxrpc_free_skb(ptr noundef nonnull %113, i32 noundef 1) #7
  br label %recheck_state.backedge

if.end151.i:                                      ; preds = %if.end145.i
  %114 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %flags, align 4
  %116 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.i.not.i.i = icmp eq i32 %116, 0
  br i1 %tobool.i.not.i.i, label %if.then153.i, label %if.end151.i.if.end154.i_crit_edge

if.end151.i.if.end154.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154.i

if.then153.i:                                     ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rxrpc_expose_client_call(ptr noundef %add.ptr) #7
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.then153.i, %if.end151.i.if.end154.i_crit_edge
  tail call void @rxrpc_free_skb(ptr noundef nonnull %113, i32 noundef 1) #7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #7
  %117 = ptrtoint ptr %tx_hard_ack.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_hard_ack.i, align 8
  %sub.i286.i = sub i32 %118, %seq.1304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i286.i)
  %cmp.i287.i = icmp sgt i32 %sub.i286.i, 0
  %spec.select290.i = select i1 %cmp.i287.i, i32 %118, i32 %seq.1304.i
  br label %for.inc161.i

for.inc161.i:                                     ; preds = %if.end154.i, %if.end132.i.for.inc161.i_crit_edge, %for.body121.i.for.inc161.i_crit_edge
  %seq.2.i = phi i32 [ %seq.1304.i, %for.body121.i.for.inc161.i_crit_edge ], [ %seq.1304.i, %if.end132.i.for.inc161.i_crit_edge ], [ %spec.select290.i, %if.end154.i ]
  %inc162.i = add i32 %seq.2.i, 1
  %sub.i284.i = sub i32 %inc162.i, %69
  %cmp.i285.i = icmp slt i32 %sub.i284.i, 1
  br i1 %cmp.i285.i, label %for.inc161.i.for.body121.i_crit_edge, label %for.inc161.i.out_unlock.i_crit_edge

for.inc161.i.out_unlock.i_crit_edge:              ; preds = %for.inc161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

for.inc161.i.for.body121.i_crit_edge:             ; preds = %for.inc161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body121.i

out_unlock.i:                                     ; preds = %for.inc161.i.out_unlock.i_crit_edge, %for.cond119.preheader.i.out_unlock.i_crit_edge, %do.end36.i.out_unlock.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  br label %do.body165.i

do.body165.i:                                     ; preds = %out_unlock.i, %if.end115.i, %if.then106.i.do.body165.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %119 = load i32, ptr @rxrpc_debug, align 4
  %and166.i = and i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i)
  %tobool167.not.i = icmp eq i32 %and166.i, 0
  br i1 %tobool167.not.i, label %do.body165.i.recheck_state.backedge_crit_edge, label %do.end177.i, !prof !67

do.body165.i.recheck_state.backedge_crit_edge:    ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recheck_state.backedge

do.end177.i:                                      ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i288.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i288.i to ptr
  %task180.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task180.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task180.i, align 8
  %comm181.i = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 101
  %call183.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm181.i, ptr noundef nonnull @.str.19) #10
  br label %recheck_state.backedge

if.end247:                                        ; preds = %if.end242
  %124 = ptrtoint ptr %expect_rx_by to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %expect_rx_by, align 4
  %126 = ptrtoint ptr %expect_req_by to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %expect_req_by, align 8
  %sub254 = sub i32 %127, %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub254)
  %cmp255 = icmp slt i32 %sub254, 0
  %spec.select = select i1 %cmp255, i32 %127, i32 %125
  %128 = ptrtoint ptr %expect_term_by to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %expect_term_by, align 4
  %sub263 = sub i32 %129, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub263)
  %cmp264 = icmp slt i32 %sub263, 0
  %next.1 = select i1 %cmp264, i32 %129, i32 %spec.select
  %130 = ptrtoint ptr %ack_at to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %ack_at, align 8
  %sub272 = sub i32 %131, %next.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub272)
  %cmp273 = icmp slt i32 %sub272, 0
  %next.2 = select i1 %cmp273, i32 %131, i32 %next.1
  %132 = ptrtoint ptr %ack_lost_at to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %ack_lost_at, align 4
  %sub281 = sub i32 %133, %next.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub281)
  %cmp282 = icmp slt i32 %sub281, 0
  %next.3 = select i1 %cmp282, i32 %133, i32 %next.2
  %134 = ptrtoint ptr %resend_at to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %resend_at, align 8
  %sub290 = sub i32 %135, %next.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub290)
  %cmp291 = icmp slt i32 %sub290, 0
  %next.4 = select i1 %cmp291, i32 %135, i32 %next.3
  %136 = ptrtoint ptr %keepalive_at to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %keepalive_at, align 8
  %sub299 = sub i32 %137, %next.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub299)
  %cmp300 = icmp slt i32 %sub299, 0
  %next.5 = select i1 %cmp300, i32 %137, i32 %next.4
  %138 = ptrtoint ptr %ping_at to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %ping_at, align 4
  %sub308 = sub i32 %139, %next.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub308)
  %cmp309 = icmp slt i32 %sub308, 0
  %next.6 = select i1 %cmp309, i32 %139, i32 %next.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %140 = load volatile i32, ptr @jiffies, align 128
  %sub312 = sub i32 %140, %next.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub312)
  %cmp313 = icmp sgt i32 %sub312, -1
  br i1 %cmp313, label %if.end247.recheck_state.backedge_crit_edge, label %if.end315

if.end247.recheck_state.backedge_crit_edge:       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #9
  br label %recheck_state.backedge

if.end315:                                        ; preds = %if.end247
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef 12, i32 noundef %140) #7
  %call1.i = tail call i32 @timer_reduce(ptr noundef %timer.i.i, i32 noundef %next.6) #7
  %141 = ptrtoint ptr %events11 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %events11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool317.not = icmp eq i32 %142, 0
  br i1 %tobool317.not, label %if.end315.out_put_crit_edge, label %land.lhs.true318

if.end315.out_put_crit_edge:                      ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put

land.lhs.true318:                                 ; preds = %if.end315
  %143 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %state17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %144)
  %cmp320 = icmp ult i32 %144, 11
  br i1 %cmp320, label %land.lhs.true318.requeue_crit_edge, label %land.lhs.true318.out_put_crit_edge

land.lhs.true318.out_put_crit_edge:               ; preds = %land.lhs.true318
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put

land.lhs.true318.requeue_crit_edge:               ; preds = %land.lhs.true318
  call void @__sanitizer_cov_trace_pc() #9
  br label %requeue

out_put:                                          ; preds = %land.lhs.true318.out_put_crit_edge, %if.end315.out_put_crit_edge, %if.then19
  tail call void @rxrpc_put_call(ptr noundef %add.ptr, i32 noundef 7) #7
  br label %do.body323

do.body323:                                       ; preds = %requeue, %out_put
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %145 = load i32, ptr @rxrpc_debug, align 4
  %and324 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324)
  %tobool325.not = icmp eq i32 %and324, 0
  br i1 %tobool325.not, label %do.body323.do.end344_crit_edge, label %do.end335, !prof !67

do.body323.do.end344_crit_edge:                   ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end344

do.end335:                                        ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #9
  %146 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i507 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i507 to ptr
  %task338 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %task338 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task338, align 8
  %comm339 = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 101
  %call341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm339, ptr noundef nonnull @.str.1) #10
  br label %do.end344

do.end344:                                        ; preds = %do.end335, %do.body323.do.end344_crit_edge
  ret void

requeue:                                          ; preds = %land.lhs.true318.requeue_crit_edge, %recheck_state.backedge.requeue_crit_edge
  %call345 = tail call zeroext i1 @__rxrpc_queue_call(ptr noundef %add.ptr) #7
  br label %do.body323
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_send_abort_packet(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef %why, i32 noundef %now) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_timer, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !83
  %call43 = tail call i32 @__traceiter_rxrpc_timer(ptr noundef null, ptr noundef %call, i32 noundef %why, i32 noundef %now) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !84
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !67

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_timer.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_timer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1181, ptr noundef nonnull @.str.16) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_call_reset(ptr noundef %call) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call_reset, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_call_reset, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  %call43 = tail call i32 @__traceiter_rxrpc_call_reset(ptr noundef null, ptr noundef %call) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !67

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call_reset, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call_reset, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_call_reset.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_call_reset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1514, ptr noundef nonnull @.str.16) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
declare dso_local zeroext i1 @rxrpc_abort_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_send_ack_packet(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_call(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rxrpc_queue_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_queue_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_propose_ack(ptr noundef %call, i32 noundef %why, i8 noundef zeroext %ack_reason, i32 noundef %serial, i1 noundef zeroext %immediate, i1 noundef zeroext %background, i32 noundef %outcome) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_propose_ack, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_propose_ack, %do.body)) #7
          to label %if.end52 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  %call46 = tail call i32 @__traceiter_rxrpc_propose_ack(ptr noundef null, ptr noundef %call, i32 noundef %why, i8 noundef zeroext %ack_reason, i32 noundef %serial, i1 noundef zeroext %immediate, i1 noundef zeroext %background, i32 noundef %outcome) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit89

land.rhs.i.i.i.i83:                               ; preds = %if.end52
  %.b37.i.i.i.i82 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i82, label %land.rhs.i.i.i.i83.cpu_online.exit89_crit_edge, label %if.then.i.i.i.i84, !prof !67

land.rhs.i.i.i.i83.cpu_online.exit89_crit_edge:   ; preds = %land.rhs.i.i.i.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit89

if.then.i.i.i.i84:                                ; preds = %land.rhs.i.i.i.i83
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then56:                                        ; preds = %cpu_online.exit89
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_propose_ack, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_propose_ack, i32 0, i32 7), align 4
  %call62 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true, label %if.then56.do.end71_crit_edge

if.then56.do.end71_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

land.lhs.true:                                    ; preds = %if.then56
  %call64 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true.do.end71_crit_edge, label %land.lhs.true66

land.lhs.true.do.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

land.lhs.true66:                                  ; preds = %land.lhs.true
  %.b76 = load i1, ptr @trace_rxrpc_propose_ack.__warned, align 1
  br i1 %.b76, label %land.lhs.true66.do.end71_crit_edge, label %if.then68

land.lhs.true66.do.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

if.then68:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_propose_ack.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1241, ptr noundef nonnull @.str.16) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %land.lhs.true66.do.end71_crit_edge, %land.lhs.true.do.end71_crit_edge, %if.then56.do.end71_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_propose_ack(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_timer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_call_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_resend(ptr noundef %call, i32 noundef %ix) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_resend, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_resend, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !91
  %call43 = tail call i32 @__traceiter_rxrpc_resend(ptr noundef null, ptr noundef %call, i32 noundef %ix) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !67

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_resend, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_resend, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_resend.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_resend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1426, ptr noundef nonnull @.str.16) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
declare dso_local void @rxrpc_see_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_retransmit(ptr noundef %call, i32 noundef %seq, i8 noundef zeroext %annotation, i64 noundef %expiry) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_retransmit, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_retransmit, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !93
  %call43 = tail call i32 @__traceiter_rxrpc_retransmit(ptr noundef null, ptr noundef %call, i32 noundef %seq, i8 noundef zeroext %annotation, i64 noundef %expiry) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !67

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_retransmit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_retransmit, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_retransmit.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rxrpc_retransmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1268, ptr noundef nonnull @.str.16) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #7
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
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_get_rto_backoff(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_get_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_send_data_packet(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_free_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_expose_client_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_resend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_retransmit(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/call_event.c", i32 298, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rxrpc_process_call._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rxrpc_process_call._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rxrpc/call_event.c", i32 380, i32 21}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rxrpc/call_event.c", i32 440, i32 2}
!10 = !{ptr @rxrpc_process_call._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rxrpc_process_call._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rxrpc/call_event.c", i32 64, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__rxrpc_propose_ACK._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @__rxrpc_propose_ACK._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/rxrpc/call_event.c", i32 105, i32 3}
!19 = !{ptr @__rxrpc_propose_ACK._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @__rxrpc_propose_ACK._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/rxrpc/call_event.c", i32 107, i32 3}
!23 = !{ptr @__rxrpc_propose_ACK._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @__rxrpc_propose_ACK._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/trace/events/rxrpc.h", i32 1205, i32 1}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/trace/events/rxrpc.h", i32 1138, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/trace/events/rxrpc.h", i32 1484, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/rxrpc/call_event.c", i32 166, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rxrpc_resend._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @rxrpc_resend._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/rxrpc/call_event.c", i32 175, i32 2}
!46 = !{ptr @rxrpc_resend._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rxrpc_resend._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @rxrpc_resend._entry.23, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../net/rxrpc/call_event.c", i32 281, i32 2}
!50 = !{ptr @rxrpc_resend._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/rxrpc.h", i32 1405, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/trace/events/rxrpc.h", i32 1243, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2158153715}
!69 = !{i64 859880, i64 859901, i64 859924, i64 859943, i64 859962}
!70 = !{i64 2158154152}
!71 = !{i64 2158158681}
!72 = !{i64 2158159118}
!73 = !{i64 2158163686}
!74 = !{i64 2158164123}
!75 = !{i64 2158168540}
!76 = !{i64 2158168977}
!77 = !{i64 2158173450}
!78 = !{i64 2158173887}
!79 = !{i64 2158130123, i64 2158130610, i64 2158130160, i64 2158130216, i64 2158130250, i64 2158130274, i64 2158130315, i64 2158130336, i64 2158130364, i64 2158130398}
!80 = !{i64 711268, i64 711295, i64 711317, i64 711345}
!81 = !{i64 711676, i64 711703, i64 711736, i64 711757, i64 711784, i64 711810}
!82 = !{i64 2148963765, i64 2148963770, i64 2148963783, i64 2148963827, i64 2148963861, i64 2148963882}
!83 = !{i64 2157837019}
!84 = !{i64 2157837232}
!85 = !{i64 2149375106}
!86 = !{i64 2149376142}
!87 = !{i64 2158053313}
!88 = !{i64 2158053516}
!89 = !{i64 2157875877}
!90 = !{i64 2157876208}
!91 = !{i64 2158002919}
!92 = !{i64 2158003122}
!93 = !{i64 2157893855}
!94 = !{i64 2157894108}
