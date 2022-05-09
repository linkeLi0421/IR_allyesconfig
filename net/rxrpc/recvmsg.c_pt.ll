; ModuleID = '/llk/IR_all_yes/net/rxrpc/recvmsg.c_pt.bc'
source_filename = "../net/rxrpc/recvmsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rxrpc_kernel_recv_data\22, \22a\22\09"
module asm "\09.weak\09__crc_rxrpc_kernel_recv_data\09\09\09\09"
module asm "\09.long\09__crc_rxrpc_kernel_recv_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rxrpc_kernel_recv_data:\09\09\09\09\09"
module asm "\09.asciz \09\22rxrpc_kernel_recv_data\22\09\09\09\09\09"
module asm "__kstrtabns_rxrpc_kernel_recv_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rxrpc_kernel_get_reply_time\22, \22a\22\09"
module asm "\09.weak\09__crc_rxrpc_kernel_get_reply_time\09\09\09\09"
module asm "\09.long\09__crc_rxrpc_kernel_get_reply_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rxrpc_kernel_get_reply_time:\09\09\09\09\09"
module asm "\09.asciz \09\22rxrpc_kernel_get_reply_time\22\09\09\09\09\09"
module asm "__kstrtabns_rxrpc_kernel_get_reply_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.rxrpc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rwlock_t, ptr, ptr, %struct.rb_root, i32, %struct.rwlock_t, i32, i8, i16, %struct.anon.136, i16, %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.anon.136 = type { i16, i16 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.135 }
%union.anon.135 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rxrpc_security = type { ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_notify_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxrpc_notify_socket\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/rxrpc/recvmsg.c\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_notify_socket._entry_ptr = internal global ptr @rxrpc_notify_socket._entry, section ".printk_index", align 4
@rxrpc_notify_socket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rxrpc_notify_socket._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     call %ps\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_notify_socket._entry_ptr.6 = internal global ptr @rxrpc_notify_socket._entry.4, section ".printk_index", align 4
@rxrpc_notify_socket._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_notify_socket._entry_ptr.9 = internal global ptr @rxrpc_notify_socket._entry.7, section ".printk_index", align 4
@rxrpc_kernel_recv_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s({%d,%s},%zu,%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxrpc_kernel_recv_data\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_kernel_recv_data._entry_ptr = internal global ptr @rxrpc_kernel_recv_data._entry, section ".printk_index", align 4
@rxrpc_call_states = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@rxrpc_kernel_recv_data._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rxrpc: Assertion failed - %lu(0x%lx) %s %lu(0x%lx) is false\0A\00", [33 x i8] zeroinitializer }, align 32
@rxrpc_kernel_recv_data._entry_ptr.14 = internal global ptr @rxrpc_kernel_recv_data._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"!=\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_kernel_recv_data._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = %d [%zu,%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@rxrpc_kernel_recv_data._entry_ptr.18 = internal global ptr @rxrpc_kernel_recv_data._entry.16, section ".printk_index", align 4
@rxrpc_kernel_recv_data.___tp_str = internal global ptr @.str.19, section "__tracepoint_str", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"short_data\00", [21 x i8] zeroinitializer }, align 32
@rxrpc_kernel_recv_data.___tp_str.20 = internal global ptr @.str.21, section "__tracepoint_str", align 4
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"excess_data\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_rxrpc_kernel_recv_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_rxrpc_kernel_recv_data = external dso_local constant [0 x i8], align 1
@__ksymtab_rxrpc_kernel_recv_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rxrpc_kernel_recv_data to i32), ptr @__kstrtab_rxrpc_kernel_recv_data, ptr @__kstrtabns_rxrpc_kernel_recv_data }, section "___ksymtab+rxrpc_kernel_recv_data", align 4
@__kstrtab_rxrpc_kernel_get_reply_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_rxrpc_kernel_get_reply_time = external dso_local constant [0 x i8], align 1
@__ksymtab_rxrpc_kernel_get_reply_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rxrpc_kernel_get_reply_time to i32), ptr @__kstrtab_rxrpc_kernel_get_reply_time, ptr @__kstrtabns_rxrpc_kernel_get_reply_time }, section "___ksymtab+rxrpc_kernel_get_reply_time", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_call_complete = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_call_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_abort = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_abort.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_recvmsg = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_recvmsg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_recvmsg_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.27, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_recvmsg_data\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_recvmsg_data._entry_ptr = internal global ptr @rxrpc_recvmsg_data._entry, section ".printk_index", align 4
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_recvmsg_data._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.27, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_recvmsg_data._entry_ptr.30 = internal global ptr @rxrpc_recvmsg_data._entry.29, section ".printk_index", align 4
@__tracepoint_rxrpc_receive = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_receive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_verify_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxrpc_verify_packet\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_verify_packet._entry_ptr = internal global ptr @rxrpc_verify_packet._entry, section ".printk_index", align 4
@rxrpc_rotate_rx_window._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.33, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxrpc_rotate_rx_window\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_rotate_rx_window._entry_ptr = internal global ptr @rxrpc_rotate_rx_window._entry, section ".printk_index", align 4
@rxrpc_rotate_rx_window._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rxrpc: Assertion failed\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_rotate_rx_window._entry_ptr.36 = internal global ptr @rxrpc_rotate_rx_window._entry.34, section ".printk_index", align 4
@rxrpc_end_rx_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s(%d,%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_end_rx_phase\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_end_rx_phase._entry_ptr = internal global ptr @rxrpc_end_rx_phase._entry, section ".printk_index", align 4
@rxrpc_end_rx_phase._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.38, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_end_rx_phase._entry_ptr.40 = internal global ptr @rxrpc_end_rx_phase._entry.39, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rxrpc_recvmsg_term._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013rxrpc: Invalid terminal call state %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_recvmsg_term\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_recvmsg_term._entry_ptr = internal global ptr @rxrpc_recvmsg_term._entry, section ".printk_index", align 4
@__tracepoint_rxrpc_rx_eproto = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_eproto.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 7, i64 8, i64 11]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 7, i64 8, i64 11]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 9]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 28, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 35, i32 7 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 51, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 58, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 694, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 698, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 754, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 758, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 762, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 695, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 723, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 728, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 108, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 449, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 461, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 289, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 232, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 236, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 186, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 189, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [23 x i8] c"../net/rxrpc/recvmsg.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 171, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__ksymtab_rxrpc_kernel_get_reply_time, ptr @__ksymtab_rxrpc_kernel_recv_data, ptr @rxrpc_end_rx_phase._entry, ptr @rxrpc_end_rx_phase._entry.39, ptr @rxrpc_end_rx_phase._entry_ptr, ptr @rxrpc_end_rx_phase._entry_ptr.40, ptr @rxrpc_kernel_recv_data.___tp_str, ptr @rxrpc_kernel_recv_data.___tp_str.20, ptr @rxrpc_kernel_recv_data._entry, ptr @rxrpc_kernel_recv_data._entry.12, ptr @rxrpc_kernel_recv_data._entry.16, ptr @rxrpc_kernel_recv_data._entry_ptr, ptr @rxrpc_kernel_recv_data._entry_ptr.14, ptr @rxrpc_kernel_recv_data._entry_ptr.18, ptr @rxrpc_notify_socket._entry, ptr @rxrpc_notify_socket._entry.4, ptr @rxrpc_notify_socket._entry.7, ptr @rxrpc_notify_socket._entry_ptr, ptr @rxrpc_notify_socket._entry_ptr.6, ptr @rxrpc_notify_socket._entry_ptr.9, ptr @rxrpc_recvmsg_data._entry, ptr @rxrpc_recvmsg_data._entry.29, ptr @rxrpc_recvmsg_data._entry_ptr, ptr @rxrpc_recvmsg_data._entry_ptr.30, ptr @rxrpc_recvmsg_term._entry, ptr @rxrpc_recvmsg_term._entry_ptr, ptr @rxrpc_rotate_rx_window._entry, ptr @rxrpc_rotate_rx_window._entry.34, ptr @rxrpc_rotate_rx_window._entry_ptr, ptr @rxrpc_rotate_rx_window._entry_ptr.36, ptr @rxrpc_verify_packet._entry, ptr @rxrpc_verify_packet._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_notify_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_notify_socket._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_notify_socket._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kernel_recv_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kernel_recv_data._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kernel_recv_data._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_recvmsg_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_recvmsg_data._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_verify_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_rotate_rx_window._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_rotate_rx_window._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_end_rx_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_end_rx_phase._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_recvmsg_term._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_notify_socket(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !111

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %6) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %recvmsg_link = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 25
  %7 = ptrtoint ptr %recvmsg_link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %recvmsg_link, align 4
  %cmp.i.not = icmp eq ptr %8, %recvmsg_link
  br i1 %cmp.i.not, label %if.end11, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end11.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end11.rcu_read_lock.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end11.rcu_read_lock.exit_crit_edge
  %socket = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %socket, align 8
  %call17 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end26_crit_edge

rcu_read_lock.exit.do.end26_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true
  %.b115 = load i1, ptr @rxrpc_notify_socket.__warned, align 1
  br i1 %.b115, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rxrpc_notify_socket.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 35, ptr noundef nonnull @.str.3) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true.do.end26_crit_edge, %rcu_read_lock.exit.do.end26_crit_edge
  %tobool29.not = icmp eq ptr %14, null
  br i1 %tobool29.not, label %do.end26.if.end71_crit_edge, label %land.lhs.true30

do.end26.if.end71_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

land.lhs.true30:                                  ; preds = %do.end26
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %16)
  %cmp = icmp ult i8 %16, 7
  br i1 %cmp, label %if.then32, label %land.lhs.true30.if.end71_crit_edge

land.lhs.true30.if.end71_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then32:                                        ; preds = %land.lhs.true30
  %notify_rx = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 20
  %17 = ptrtoint ptr %notify_rx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %notify_rx, align 8
  %tobool33.not = icmp eq ptr %18, null
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %notify_lock = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %notify_lock) #9
  %19 = ptrtoint ptr %notify_rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %notify_rx, align 8
  %user_call_ID = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 32
  %21 = ptrtoint ptr %user_call_ID to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %user_call_ID, align 8
  tail call void %20(ptr noundef nonnull %14, ptr noundef %call, i32 noundef %22) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %notify_lock) #9
  br label %if.end71

if.else:                                          ; preds = %if.then32
  %recvmsg_lock = getelementptr inbounds %struct.rxrpc_sock, ptr %14, i32 0, i32 9
  tail call void @_raw_write_lock_bh(ptr noundef %recvmsg_lock) #9
  %23 = ptrtoint ptr %recvmsg_link to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %recvmsg_link, align 4
  %cmp.i116.not = icmp eq ptr %24, %recvmsg_link
  br i1 %cmp.i116.not, label %if.then40, label %if.else.if.end42_crit_edge

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.else
  tail call void @rxrpc_get_call(ptr noundef %call, i32 noundef 2) #9
  %recvmsg_q = getelementptr inbounds %struct.rxrpc_sock, ptr %14, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.rxrpc_sock, ptr %14, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %recvmsg_link, ptr noundef %26, ptr noundef %recvmsg_q) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then40.if.end42_crit_edge

if.then40.if.end42_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %recvmsg_link, ptr %prev.i, align 4
  %28 = ptrtoint ptr %recvmsg_link to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %recvmsg_q, ptr %recvmsg_link, align 4
  %prev3.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 25, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %recvmsg_link, ptr %26, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end.i.i, %if.then40.if.end42_crit_edge, %if.else.if.end42_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %recvmsg_lock) #9
  %31 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 13
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not = icmp eq i32 %34, 0
  br i1 %tobool.i.not, label %do.body46, label %if.end42.if.end71_crit_edge

if.end42.if.end71_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.body46:                                        ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %35 = load i32, ptr @rxrpc_debug, align 4
  %and47 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.do.end67_crit_edge, label %do.end58, !prof !111

do.body46.do.end67_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

do.end58:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %36 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i118 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i118 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task61, align 8
  %comm62 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 101
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 77
  %40 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sk_data_ready, align 8
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm62, ptr noundef %41) #12
  br label %do.end67

do.end67:                                         ; preds = %do.end58, %do.body46.do.end67_crit_edge
  %sk_data_ready68 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 77
  %42 = ptrtoint ptr %sk_data_ready68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sk_data_ready68, align 8
  tail call void %43(ptr noundef nonnull %14) #9
  br label %if.end71

if.end71:                                         ; preds = %do.end67, %if.end42.if.end71_crit_edge, %if.then34, %land.lhs.true30.if.end71_crit_edge, %do.end26.if.end71_crit_edge
  %call.i119 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i119, label %if.end71.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i122

if.end71.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i122:                               ; preds = %if.end71
  %call1.i120 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120)
  %tobool.not.i121 = icmp eq i32 %call1.i120, 0
  br i1 %tobool.not.i121, label %land.lhs.true.i122.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i124

land.lhs.true.i122.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i124:                              ; preds = %land.lhs.true.i122
  %.b4.i123 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i123, label %land.lhs.true2.i124.rcu_read_unlock.exit_crit_edge, label %if.then.i125

land.lhs.true2.i124.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i125:                                     ; preds = %land.lhs.true2.i124
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i125, %land.lhs.true2.i124.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i122.rcu_read_unlock.exit_crit_edge, %if.end71.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %44 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i.i126 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i126 to ptr
  %preempt_count.i.i.i.i127 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i127, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i127, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %48 = load i32, ptr @rxrpc_debug, align 4
  %and73 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %do.end84, !prof !111

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end84:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %49 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i128 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i128 to ptr
  %task87 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task87 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task87, align 8
  %comm88 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 101
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm88, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %rcu_read_unlock.exit.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_get_call(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__rxrpc_set_call_completion(ptr noundef %call, i32 noundef %compl, i32 noundef %abort_code, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ult i32 %1, 11
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %2 = ptrtoint ptr %abort_code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %abort_code, ptr %abort_code1, align 8
  %error2 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %3 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %error, ptr %error2, align 4
  %completion = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %compl, ptr %completion, align 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %state, align 8
  tail call fastcc void @trace_rxrpc_call_complete(ptr noundef %call)
  %waitq = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void @rxrpc_notify_socket(ptr noundef %call)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_call_complete(ptr noundef %call) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call_complete, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_call_complete, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !115
  %call43 = tail call i32 @__traceiter_rxrpc_call_complete(ptr noundef null, ptr noundef %call) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !111

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call_complete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call_complete, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_call_complete.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_call_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 752, ptr noundef nonnull @.str.3) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rxrpc_set_call_completion(ptr noundef %call, i32 noundef %compl, i32 noundef %abort_code, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ult i32 %1, 11
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %state_lock = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 37
  tail call void @_raw_write_lock_bh(ptr noundef %state_lock) #9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %cmp.i = icmp ult i32 %3, 11
  br i1 %cmp.i, label %if.then.i, label %if.then.__rxrpc_set_call_completion.exit_crit_edge

if.then.__rxrpc_set_call_completion.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rxrpc_set_call_completion.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code1.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %4 = ptrtoint ptr %abort_code1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %abort_code, ptr %abort_code1.i, align 8
  %error2.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %5 = ptrtoint ptr %error2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %error, ptr %error2.i, align 4
  %completion.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %6 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %compl, ptr %completion.i, align 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %state, align 8
  tail call fastcc void @trace_rxrpc_call_complete(ptr noundef %call) #9
  %waitq.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void @rxrpc_notify_socket(ptr noundef %call) #9
  br label %__rxrpc_set_call_completion.exit

__rxrpc_set_call_completion.exit:                 ; preds = %if.then.i, %if.then.__rxrpc_set_call_completion.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %state_lock) #9
  br label %if.end

if.end:                                           ; preds = %__rxrpc_set_call_completion.exit, %entry.if.end_crit_edge
  %ret.0.off0 = phi i1 [ %cmp.i, %__rxrpc_set_call_completion.exit ], [ false, %entry.if.end_crit_edge ]
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__rxrpc_call_completed(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp.i = icmp ult i32 %1, 11
  br i1 %cmp.i, label %if.then.i, label %entry.__rxrpc_set_call_completion.exit_crit_edge

entry.__rxrpc_set_call_completion.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rxrpc_set_call_completion.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code1.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %2 = ptrtoint ptr %abort_code1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %abort_code1.i, align 8
  %error2.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %3 = ptrtoint ptr %error2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %error2.i, align 4
  %completion.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %4 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion.i, align 4
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %state.i, align 8
  tail call fastcc void @trace_rxrpc_call_complete(ptr noundef %call) #9
  %waitq.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void @rxrpc_notify_socket(ptr noundef %call) #9
  br label %__rxrpc_set_call_completion.exit

__rxrpc_set_call_completion.exit:                 ; preds = %if.then.i, %entry.__rxrpc_set_call_completion.exit_crit_edge
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rxrpc_call_completed(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ult i32 %1, 11
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %state_lock = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 37
  tail call void @_raw_write_lock_bh(ptr noundef %state_lock) #9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %cmp.i.i = icmp ult i32 %3, 11
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.__rxrpc_call_completed.exit_crit_edge

if.then.__rxrpc_call_completed.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rxrpc_call_completed.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code1.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %4 = ptrtoint ptr %abort_code1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %abort_code1.i.i, align 8
  %error2.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %5 = ptrtoint ptr %error2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %error2.i.i, align 4
  %completion.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %6 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %completion.i.i, align 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %state, align 8
  tail call fastcc void @trace_rxrpc_call_complete(ptr noundef %call) #9
  %waitq.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %waitq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void @rxrpc_notify_socket(ptr noundef %call) #9
  br label %__rxrpc_call_completed.exit

__rxrpc_call_completed.exit:                      ; preds = %if.then.i.i, %if.then.__rxrpc_call_completed.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %state_lock) #9
  br label %if.end

if.end:                                           ; preds = %__rxrpc_call_completed.exit, %entry.if.end_crit_edge
  %ret.0.off0 = phi i1 [ %cmp.i.i, %__rxrpc_call_completed.exit ], [ false, %entry.if.end_crit_edge ]
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__rxrpc_abort_call(ptr noundef %why, ptr noundef %call, i32 noundef %seq, i32 noundef %abort_code, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %0 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_id, align 4
  %cid = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %2 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cid, align 8
  %call_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 46
  %4 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call_id, align 4
  tail call fastcc void @trace_rxrpc_abort(i32 noundef %1, ptr noundef %why, i32 noundef %3, i32 noundef %5, i32 noundef %seq, i32 noundef %abort_code, i32 noundef %error)
  %state.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp.i = icmp ult i32 %7, 11
  br i1 %cmp.i, label %if.then.i, label %entry.__rxrpc_set_call_completion.exit_crit_edge

entry.__rxrpc_set_call_completion.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rxrpc_set_call_completion.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code1.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %8 = ptrtoint ptr %abort_code1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %abort_code, ptr %abort_code1.i, align 8
  %error2.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %9 = ptrtoint ptr %error2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %error, ptr %error2.i, align 4
  %completion.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %10 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %completion.i, align 4
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 11, ptr %state.i, align 8
  tail call fastcc void @trace_rxrpc_call_complete(ptr noundef %call) #9
  %waitq.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void @rxrpc_notify_socket(ptr noundef %call) #9
  br label %__rxrpc_set_call_completion.exit

__rxrpc_set_call_completion.exit:                 ; preds = %if.then.i, %entry.__rxrpc_set_call_completion.exit_crit_edge
  ret i1 %cmp.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_abort(i32 noundef %call_nr, ptr noundef %why, i32 noundef %cid, i32 noundef %call_id, i32 noundef %seq, i32 noundef %abort_code, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_abort, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !119
  %call42 = tail call i32 @__traceiter_rxrpc_abort(ptr noundef null, i32 noundef %call_nr, ptr noundef %why, i32 noundef %cid, i32 noundef %call_id, i32 noundef %seq, i32 noundef %abort_code, i32 noundef %error) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  %.b72 = load i1, ptr @trace_rxrpc_abort.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_abort.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 726, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
define dso_local zeroext i1 @rxrpc_abort_call(ptr noundef %why, ptr noundef %call, i32 noundef %seq, i32 noundef %abort_code, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 37
  tail call void @_raw_write_lock_bh(ptr noundef %state_lock) #9
  %debug_id.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %0 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_id.i, align 4
  %cid.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %2 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cid.i, align 8
  %call_id.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 46
  %4 = ptrtoint ptr %call_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call_id.i, align 4
  tail call fastcc void @trace_rxrpc_abort(i32 noundef %1, ptr noundef %why, i32 noundef %3, i32 noundef %5, i32 noundef %seq, i32 noundef %abort_code, i32 noundef %error) #9
  %state.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 11
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.__rxrpc_abort_call.exit_crit_edge

entry.__rxrpc_abort_call.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rxrpc_abort_call.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code1.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %8 = ptrtoint ptr %abort_code1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %abort_code, ptr %abort_code1.i.i, align 8
  %error2.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %9 = ptrtoint ptr %error2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %error, ptr %error2.i.i, align 4
  %completion.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %10 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %completion.i.i, align 4
  %11 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 11, ptr %state.i.i, align 8
  tail call fastcc void @trace_rxrpc_call_complete(ptr noundef %call) #9
  %waitq.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %waitq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void @rxrpc_notify_socket(ptr noundef %call) #9
  br label %__rxrpc_abort_call.exit

__rxrpc_abort_call.exit:                          ; preds = %if.then.i.i, %entry.__rxrpc_abort_call.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %state_lock) #9
  ret i1 %cmp.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %copied = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %idl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #9
  %2 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %copied, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @autoremove_wake_function, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %5, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %6, align 4
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef null, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %and = and i32 %flags, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and7 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %cond.false.i, label %if.end.sock_rcvtimeo.exit_crit_edge

if.end.sock_rcvtimeo.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %16 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.end.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %17, %cond.false.i ], [ 0, %if.end.sock_rcvtimeo.exit_crit_edge ]
  %calls = getelementptr inbounds %struct.rxrpc_sock, ptr %1, i32 0, i32 12
  %recvmsg_q = getelementptr inbounds %struct.rxrpc_sock, ptr %1, i32 0, i32 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %18 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  br label %try_again

try_again:                                        ; preds = %if.end49, %sock_rcvtimeo.exit
  %timeo.0 = phi i32 [ %cond.i, %sock_rcvtimeo.exit ], [ %timeo.1, %if.end49 ]
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %19 = ptrtoint ptr %calls to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %calls, align 8
  %cmp = icmp eq ptr %20, null
  br i1 %cmp, label %land.lhs.true, label %try_again.if.end20_crit_edge

try_again.if.end20_crit_edge:                     ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %try_again
  %21 = ptrtoint ptr %recvmsg_q to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %recvmsg_q, align 4
  %cmp.i.not = icmp eq ptr %22, %recvmsg_q
  br i1 %cmp.i.not, label %land.lhs.true14, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true14:                                  ; preds = %land.lhs.true
  %23 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp16.not = icmp eq i8 %24, 5
  br i1 %cmp16.not, label %land.lhs.true14.if.end20_crit_edge, label %if.then18

land.lhs.true14.if.end20_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  call void @release_sock(ptr noundef %1) #9
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true14.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %try_again.if.end20_crit_edge
  %25 = ptrtoint ptr %recvmsg_q to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %recvmsg_q, align 4
  %cmp.i262.not = icmp eq ptr %26, %recvmsg_q
  br i1 %cmp.i262.not, label %if.then24, label %if.end52

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0)
  %cmp25 = icmp eq i32 %timeo.0, 0
  br i1 %cmp25, label %if.then24.error_no_call_crit_edge, label %if.end28

if.then24.error_no_call_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_no_call

if.end28:                                         ; preds = %if.then24
  call void @release_sock(ptr noundef %1) #9
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %18, align 8
  %call32 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %28, ptr noundef nonnull %wait, i32 noundef 1) #9
  %29 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.end28.if.end37_crit_edge, label %sock_error.exit, !prof !111

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

sock_error.exit:                                  ; preds = %if.end28
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #9
  %31 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #9, !srcloc !122
  %asmresult.i.i = extractvalue { i32, i32 } %31, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool35.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool35.not, label %sock_error.exit.if.end37_crit_edge, label %wait_error.loopexit

sock_error.exit.if.end37_crit_edge:               ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end37:                                         ; preds = %sock_error.exit.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  %32 = ptrtoint ptr %recvmsg_q to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %recvmsg_q, align 4
  %cmp.i264.not = icmp eq ptr %33, %recvmsg_q
  br i1 %cmp.i264.not, label %if.then41, label %if.end37.if.end49_crit_edge

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then41:                                        ; preds = %if.end37
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stack.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %40 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i266 = icmp eq i32 %40, 0
  br i1 %tobool.not.i266, label %signal_pending.exit, label %if.then41.wait_interrupted_crit_edge, !prof !111

if.then41.wait_interrupted_crit_edge:             ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_interrupted

signal_pending.exit:                              ; preds = %if.then41
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %37, align 4
  %and1.i.i.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool45.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool45.not, label %if.end47, label %signal_pending.exit.wait_interrupted_crit_edge

signal_pending.exit.wait_interrupted_crit_edge:   ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_interrupted

if.end47:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef null, i32 noundef 11, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %call48 = call i32 @schedule_timeout(i32 noundef %timeo.0) #9
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %if.end37.if.end49_crit_edge
  %timeo.1 = phi i32 [ %call48, %if.end47 ], [ %timeo.0, %if.end37.if.end49_crit_edge ]
  %43 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %18, align 8
  call void @finish_wait(ptr noundef %44, ptr noundef nonnull %wait) #9
  br label %try_again

if.end52:                                         ; preds = %if.end20
  %recvmsg_lock = getelementptr inbounds %struct.rxrpc_sock, ptr %1, i32 0, i32 9
  call void @_raw_write_lock_bh(ptr noundef %recvmsg_lock) #9
  %45 = ptrtoint ptr %recvmsg_q to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %recvmsg_q, align 4
  %add.ptr57 = getelementptr i8, ptr %46, i32 -292
  %and58 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.end52
  %call.i.i269 = call zeroext i1 @__list_del_entry_valid(ptr noundef %46) #9
  br i1 %call.i.i269, label %if.end.i.i, label %if.then60.list_del_init.exit_crit_edge

if.then60.list_del_init.exit_crit_edge:           ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then60.list_del_init.exit_crit_edge
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %46, ptr %46, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %46, ptr %prev.i3.i, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  call void @rxrpc_get_call(ptr noundef %add.ptr57, i32 noundef 2) #9
  br label %if.end61

if.end61:                                         ; preds = %if.else, %list_del_init.exit
  call void @_raw_write_unlock_bh(ptr noundef %recvmsg_lock) #9
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef %add.ptr57, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %user_mutex = getelementptr i8, ptr %46, i32 -264
  %call63 = call i32 @mutex_trylock(ptr noundef %user_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.end61.if.end76_crit_edge

if.end61.if.end76_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then65:                                        ; preds = %if.end61
  br i1 %tobool8.not, label %if.end69, label %if.then65.error_requeue_call_crit_edge

if.then65.error_requeue_call_crit_edge:           ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_requeue_call

if.end69:                                         ; preds = %if.then65
  %call71 = call i32 @mutex_lock_interruptible_nested(ptr noundef %user_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end69.error_requeue_call_crit_edge, label %if.end69.if.end76_crit_edge

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.end69.error_requeue_call_crit_edge:            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_requeue_call

if.end76:                                         ; preds = %if.end69.if.end76_crit_edge, %if.end61.if.end76_crit_edge
  call void @release_sock(ptr noundef %1) #9
  %flags78 = getelementptr i8, ptr %46, i32 104
  %55 = ptrtoint ptr %flags78 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags78, align 4
  %and1.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool80.not = icmp eq i32 %and1.i, 0
  br i1 %tobool80.not, label %if.end88, label %do.body82

do.body82:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/recvmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 574, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

if.end88:                                         ; preds = %if.end76
  %57 = ptrtoint ptr %flags78 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags78, align 4
  %59 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool91.not = icmp eq i32 %59, 0
  br i1 %tobool91.not, label %if.end88.if.end105_crit_edge, label %if.else97

if.end88.if.end105_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.else97:                                        ; preds = %if.end88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idl) #9
  %user_call_ID98 = getelementptr i8, ptr %46, i32 100
  %60 = ptrtoint ptr %user_call_ID98 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %user_call_ID98, align 8
  %62 = ptrtoint ptr %idl to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %idl, align 4
  %call99 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 272, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %idl) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp101 = icmp slt i32 %call99, 0
  br i1 %cmp101, label %if.else97.error_unlock_call_crit_edge, label %if.else97.if.end105_crit_edge

if.else97.if.end105_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.else97.error_unlock_call_crit_edge:            ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unlock_call

if.end105:                                        ; preds = %if.else97.if.end105_crit_edge, %if.end88.if.end105_crit_edge
  %63 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %msg, align 8
  %tobool106.not = icmp eq ptr %64, null
  br i1 %tobool106.not, label %if.end105.do.end118_crit_edge, label %land.lhs.true107

if.end105.do.end118_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

land.lhs.true107:                                 ; preds = %if.end105
  %peer = getelementptr i8, ptr %46, i32 -280
  %65 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %peer, align 4
  %tobool108.not = icmp eq ptr %66, null
  br i1 %tobool108.not, label %land.lhs.true107.do.end118_crit_edge, label %if.then109

land.lhs.true107.do.end118_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.then109:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #11
  %srx114 = getelementptr inbounds %struct.rxrpc_peer, ptr %66, i32 0, i32 16
  %67 = call ptr @memcpy(ptr %64, ptr %srx114, i32 36)
  %service_id = getelementptr i8, ptr %46, i32 264
  %68 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %service_id, align 4
  %srx_service = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %64, i32 0, i32 1
  %70 = ptrtoint ptr %srx_service to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %srx_service, align 2
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %71 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 36, ptr %msg_namelen, align 4
  br label %do.end118

do.end118:                                        ; preds = %if.then109, %land.lhs.true107.do.end118_crit_edge, %if.end105.do.end118_crit_edge
  %state = getelementptr i8, ptr %46, i32 252
  %72 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %state, align 8
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i32 %73, label %do.end118.if.then153_crit_edge [
    i32 4, label %do.end118.sw.bb_crit_edge
    i32 7, label %do.end118.sw.bb_crit_edge320
    i32 8, label %do.end118.sw.bb_crit_edge321
    i32 11, label %do.end118.if.then140_crit_edge
  ]

do.end118.if.then140_crit_edge:                   ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then140

do.end118.sw.bb_crit_edge321:                     ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end118.sw.bb_crit_edge320:                     ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end118.sw.bb_crit_edge:                        ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end118.if.then153_crit_edge:                   ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then153

sw.bb:                                            ; preds = %do.end118.sw.bb_crit_edge, %do.end118.sw.bb_crit_edge320, %do.end118.sw.bb_crit_edge321
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call120 = call fastcc i32 @rxrpc_recvmsg_data(ptr noundef %sock, ptr noundef %add.ptr57, ptr noundef %msg, ptr noundef %msg_iter, i32 noundef %len, i32 noundef %flags, ptr noundef nonnull %copied)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call120)
  %cmp121 = icmp eq i32 %call120, -11
  %spec.store.select = select i1 %cmp121, i32 0, i32 %call120
  %rx_top = getelementptr i8, ptr %46, i32 328
  %75 = ptrtoint ptr %rx_top to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_top, align 4
  %rx_hard_ack = getelementptr i8, ptr %46, i32 324
  %77 = ptrtoint ptr %rx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_hard_ack, align 8
  %sub.i270 = sub i32 %76, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i270)
  %cmp.i271 = icmp sgt i32 %sub.i270, 0
  br i1 %cmp.i271, label %land.lhs.true127, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true127:                                 ; preds = %sw.bb
  %rxtx_buffer = getelementptr i8, ptr %46, i32 292
  %79 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rxtx_buffer, align 8
  %add = add i32 %78, 1
  %and129 = and i32 %add, 63
  %arrayidx = getelementptr ptr, ptr %80, i32 %and129
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx, align 4
  %tobool130.not = icmp eq ptr %82, null
  br i1 %tobool130.not, label %land.lhs.true127.sw.epilog_crit_edge, label %if.then131

land.lhs.true127.sw.epilog_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then131:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  call void @rxrpc_notify_socket(ptr noundef %add.ptr57)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then131, %land.lhs.true127.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp133 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp133, label %sw.epilog.error_unlock_call_crit_edge, label %if.end136

sw.epilog.error_unlock_call_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unlock_call

if.end136:                                        ; preds = %sw.epilog
  %83 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %.pr)
  %cmp138 = icmp eq i32 %.pr, 11
  br i1 %cmp138, label %if.end136.if.then140_crit_edge, label %if.end150

if.end136.if.then140_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then140

if.then140:                                       ; preds = %if.end136.if.then140_crit_edge, %do.end118.if.then140_crit_edge
  %call141 = call fastcc i32 @rxrpc_recvmsg_term(ptr noundef %add.ptr57, ptr noundef %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.then140.error_unlock_call_crit_edge, label %if.end145

if.then140.error_unlock_call_crit_edge:           ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unlock_call

if.end145:                                        ; preds = %if.then140
  br i1 %tobool59.not, label %if.then148, label %if.end145.if.end150.thread_crit_edge

if.end145.if.end150.thread_crit_edge:             ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150.thread

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  call void @rxrpc_release_call(ptr noundef %1, ptr noundef %add.ptr57) #9
  br label %if.end150.thread

if.end150.thread:                                 ; preds = %if.then148, %if.end145.if.end150.thread_crit_edge
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %84 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg_flags, align 4
  %or = or i32 %85, 128
  store i32 %or, ptr %msg_flags, align 4
  br label %if.else156

if.end150:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp151 = icmp eq i32 %spec.store.select, 0
  br i1 %cmp151, label %if.end150.if.then153_crit_edge, label %if.end150.if.else156_crit_edge

if.end150.if.else156_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else156

if.end150.if.then153_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then153

if.then153:                                       ; preds = %if.end150.if.then153_crit_edge, %do.end118.if.then153_crit_edge
  %msg_flags154 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %86 = ptrtoint ptr %msg_flags154 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %msg_flags154, align 4
  %or155 = or i32 %87, 32768
  store i32 %or155, ptr %msg_flags154, align 4
  br label %if.end159

if.else156:                                       ; preds = %if.end150.if.else156_crit_edge, %if.end150.thread
  %msg_flags157 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %88 = ptrtoint ptr %msg_flags157 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_flags157, align 4
  %and158 = and i32 %89, -32769
  store i32 %and158, ptr %msg_flags157, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.else156, %if.then153
  %90 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %copied, align 4
  br label %error_unlock_call

error_unlock_call:                                ; preds = %if.end159, %if.then140.error_unlock_call_crit_edge, %sw.epilog.error_unlock_call_crit_edge, %if.else97.error_unlock_call_crit_edge
  %ret.3 = phi i32 [ %call99, %if.else97.error_unlock_call_crit_edge ], [ %call120, %sw.epilog.error_unlock_call_crit_edge ], [ %call141, %if.then140.error_unlock_call_crit_edge ], [ %91, %if.end159 ]
  call void @mutex_unlock(ptr noundef %user_mutex) #9
  call void @rxrpc_put_call(ptr noundef %add.ptr57, i32 noundef 7) #9
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef %add.ptr57, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %ret.3)
  br label %cleanup

error_requeue_call:                               ; preds = %if.end69.error_requeue_call_crit_edge, %if.then65.error_requeue_call_crit_edge
  %ret.4 = phi i32 [ -11, %if.then65.error_requeue_call_crit_edge ], [ -512, %if.end69.error_requeue_call_crit_edge ]
  br i1 %tobool59.not, label %if.then163, label %if.else168

if.then163:                                       ; preds = %error_requeue_call
  call void @_raw_write_lock_bh(ptr noundef %recvmsg_lock) #9
  %92 = ptrtoint ptr %recvmsg_q to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %recvmsg_q, align 4
  %call.i.i272 = call zeroext i1 @__list_add_valid(ptr noundef %46, ptr noundef %recvmsg_q, ptr noundef %93) #9
  br i1 %call.i.i272, label %if.end.i.i273, label %if.then163.list_add.exit_crit_edge

if.then163.list_add.exit_crit_edge:               ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i273:                                    ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %46, ptr %prev1.i.i, align 4
  %95 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %93, ptr %46, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %96 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %recvmsg_q, ptr %prev3.i.i, align 4
  %97 = ptrtoint ptr %recvmsg_q to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %46, ptr %recvmsg_q, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i273, %if.then163.list_add.exit_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef %recvmsg_lock) #9
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef %add.ptr57, i32 noundef 7, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %error_no_call

if.else168:                                       ; preds = %error_requeue_call
  call void @__sanitizer_cov_trace_pc() #11
  call void @rxrpc_put_call(ptr noundef %add.ptr57, i32 noundef 7) #9
  br label %error_no_call

error_no_call:                                    ; preds = %if.else168, %list_add.exit, %if.then24.error_no_call_crit_edge
  %ret.5 = phi i32 [ %ret.4, %if.else168 ], [ %ret.4, %list_add.exit ], [ -11, %if.then24.error_no_call_crit_edge ]
  %call.0 = phi ptr [ %add.ptr57, %if.else168 ], [ %add.ptr57, %list_add.exit ], [ null, %if.then24.error_no_call_crit_edge ]
  call void @release_sock(ptr noundef %1) #9
  br label %error_trace

error_trace:                                      ; preds = %wait_error, %error_no_call
  %ret.6 = phi i32 [ %ret.5, %error_no_call ], [ %ret.7, %wait_error ]
  %call.1 = phi ptr [ %call.0, %error_no_call ], [ null, %wait_error ]
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef %call.1, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %ret.6)
  br label %cleanup

wait_interrupted:                                 ; preds = %signal_pending.exit.wait_interrupted_crit_edge, %if.then41.wait_interrupted_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeo.0)
  %cmp.i274 = icmp eq i32 %timeo.0, 2147483647
  %cond.i275 = select i1 %cmp.i274, i32 -512, i32 -4
  br label %wait_error

wait_error.loopexit:                              ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  %asmresult.i.i.le = extractvalue { i32, i32 } %31, 0
  %sub.i.le = sub i32 0, %asmresult.i.i.le
  br label %wait_error

wait_error:                                       ; preds = %wait_error.loopexit, %wait_interrupted
  %ret.7 = phi i32 [ %cond.i275, %wait_interrupted ], [ %sub.i.le, %wait_error.loopexit ]
  %98 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %18, align 8
  call void @finish_wait(ptr noundef %99, ptr noundef nonnull %wait) #9
  br label %error_trace

cleanup:                                          ; preds = %error_trace, %error_unlock_call, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then18 ], [ %ret.6, %error_trace ], [ %ret.3, %error_unlock_call ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_recvmsg(ptr noundef %call, i32 noundef %why, i32 noundef %seq, i32 noundef %offset, i32 noundef %len, i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_recvmsg, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_recvmsg, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
  %call43 = tail call i32 @__traceiter_rxrpc_recvmsg(ptr noundef null, ptr noundef %call, i32 noundef %why, i32 noundef %seq, i32 noundef %offset, i32 noundef %len, i32 noundef %ret) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !111

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_recvmsg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_recvmsg, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_rxrpc_recvmsg.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_recvmsg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1071, ptr noundef nonnull @.str.3) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_recvmsg_data(ptr nocapture noundef readonly %sock, ptr noundef %call, ptr noundef %msg, ptr noundef %iter, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef %_offset) unnamed_addr #0 align 64 {
entry:
  %tmp15.i.i = alloca i16, align 2
  %rx_pkt_offset = alloca i32, align 4
  %rx_pkt_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_pkt_offset) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_pkt_len) #9
  %flags1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %flags1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ackr_reason = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 73
  %0 = ptrtoint ptr %ackr_reason to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ackr_reason, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @rxrpc_send_ack_packet(ptr noundef %call, i1 noundef zeroext false, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_pkt_offset5 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 49
  %2 = ptrtoint ptr %rx_pkt_offset5 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_pkt_offset5, align 8
  %conv6 = zext i16 %3 to i32
  %4 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv6, ptr %rx_pkt_offset, align 4
  %rx_pkt_len7 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 50
  %5 = ptrtoint ptr %rx_pkt_len7 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rx_pkt_len7, align 2
  %conv8 = zext i16 %6 to i32
  %7 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv8, ptr %rx_pkt_len, align 4
  %rx_pkt_last9 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 51
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp = icmp ugt i32 %9, 7
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_hard_ack = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 64
  %10 = ptrtoint ptr %rx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_hard_ack, align 8
  br label %done

if.end13:                                         ; preds = %if.end
  %12 = ptrtoint ptr %rx_pkt_last9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rx_pkt_last9, align 4, !range !127
  %rx_hard_ack14 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 64
  %14 = ptrtoint ptr %rx_hard_ack14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_hard_ack14, align 8
  %rx_top = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 65
  %rxtx_buffer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 52
  %and29 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %rxtx_annotations = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 53
  %tobool38.not = icmp eq ptr %msg, null
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %security.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 5
  %debug_id.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %state_lock.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 37
  %tx_phase.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 70
  %expect_req_by.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 13
  %abort_code1.i.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %error2.i.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %completion.i.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %waitq.i.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  %ackr_consumed.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 77
  %ackr_seen.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 78
  %ackr_reason.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 73
  br label %while.cond

while.cond:                                       ; preds = %if.end96.while.cond_crit_edge, %if.end13
  %rx_pkt_last.0 = phi i8 [ %13, %if.end13 ], [ 0, %if.end96.while.cond_crit_edge ]
  %seq.0.in = phi i32 [ %15, %if.end13 ], [ %seq.0, %if.end96.while.cond_crit_edge ]
  %seq.0 = add i32 %seq.0.in, 1
  %16 = ptrtoint ptr %rx_top to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %rx_top, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  %sub.i = sub i32 %seq.0, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i, label %while.body, label %while.cond.out_crit_edge

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body:                                       ; preds = %while.cond
  %and = and i32 %seq.0, 63
  %18 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rxtx_buffer, align 8
  %arrayidx = getelementptr ptr, ptr %19, i32 %and
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %if.then21, label %do.end26

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_pkt_offset, align 4
  %24 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_pkt_len, align 4
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef %call, i32 noundef 5, i32 noundef %seq.0, i32 noundef %23, i32 noundef %25, i32 noundef 0)
  br label %out

do.end26:                                         ; preds = %while.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  call void @rxrpc_see_skb(ptr noundef nonnull %21, i32 noundef 8) #9
  br i1 %tobool30.not, label %if.then31, label %do.end26.if.end37_crit_edge

do.end26.if.end37_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then31:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  %serial32 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 32
  %26 = ptrtoint ptr %serial32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %serial32, align 4
  %28 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rxtx_annotations, align 4
  %arrayidx33 = getelementptr i8, ptr %29, i32 %and
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx33, align 1
  %32 = and i8 %31, 63
  %and35 = zext i8 %32 to i32
  %add36 = add i32 %27, %and35
  call fastcc void @trace_rxrpc_receive(ptr noundef %call, i32 noundef 1, i32 noundef %add36, i32 noundef %seq.0)
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %do.end26.if.end37_crit_edge
  br i1 %tobool38.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  %33 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sk, align 16
  %35 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %35, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 17
  %38 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 7
  %40 = getelementptr inbounds %struct.sock_common, ptr %34, i32 0, i32 13
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.then39.if.then.i_crit_edge

if.then39.if.then.i_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then39
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 65
  %44 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sk_tsflags.i, align 8
  %conv.i = zext i16 %45 to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool3.not.i = icmp eq i64 %37, 0
  %and6.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %lor.lhs.false8.i, label %lor.lhs.false2.i.if.then.i_crit_edge

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false2.i
  %46 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %hwtstamps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool9.not.i = icmp eq i64 %47, 0
  %48 = and i16 %45, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool14.not.i = icmp eq i16 %48, 0
  %or.cond36.i = select i1 %tobool9.not.i, i1 true, i1 %tobool14.not.i
  br i1 %or.cond36.i, label %if.else.i, label %lor.lhs.false8.i.if.then.i_crit_edge

lor.lhs.false8.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false8.i.if.then.i_crit_edge, %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.then39.if.then.i_crit_edge
  call void @__sock_recv_timestamp(ptr noundef nonnull %msg, ptr noundef %34, ptr noundef nonnull %21) #9
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk_stamp_seq.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 64
  %lock.i.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #9
  %49 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 64, i32 0, i32 0, i32 1
  %51 = call ptr @llvm.returnaddress(i32 0) #9
  %52 = ptrtoint ptr %51 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %52) #9
  %sk_stamp.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 63
  %53 = ptrtoint ptr %sk_stamp.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %37, ptr %sk_stamp.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %52) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  %54 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %56 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %40, align 4
  %58 = and i32 %57, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i35.not.i = icmp eq i32 %58, 0
  br i1 %tobool.i35.not.i, label %if.end.i.if.end40_crit_edge, label %land.lhs.true17.i

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true17.i:                                ; preds = %if.end.i
  %wifi_acked_valid.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15
  %59 = ptrtoint ptr %wifi_acked_valid.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load.i = load i16, ptr %wifi_acked_valid.i, align 8
  %60 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool19.not.i = icmp eq i16 %60, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.if.end40_crit_edge, label %if.then20.i

land.lhs.true17.i.if.end40_crit_edge:             ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then20.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sock_recv_wifi_status(ptr noundef nonnull %msg, ptr noundef %34, ptr noundef nonnull %21) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then20.i, %land.lhs.true17.i.if.end40_crit_edge, %if.end.i.if.end40_crit_edge, %if.end37.if.end40_crit_edge
  %61 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_pkt_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp41 = icmp eq i32 %62, 0
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end40
  %63 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rxtx_annotations, align 4
  %arrayidx45 = getelementptr i8, ptr %64, i32 %and
  %65 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx45, align 1
  %and.i220 = and i8 %66, 63
  %conv2.i = zext i8 %and.i220 to i32
  %mul.i = mul nuw nsw i32 %conv2.i, 1416
  %add.i = add nuw nsw i32 %mul.i, 28
  %nr_subpackets.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 4
  %67 = ptrtoint ptr %nr_subpackets.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nr_subpackets.i, align 4
  %conv5.i = zext i8 %68 to i32
  %sub6.i = add nsw i32 %conv5.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %conv2.i)
  %cmp.i221 = icmp sgt i32 %sub6.i, %conv2.i
  br i1 %cmp.i221, label %if.then43.if.end11.i_crit_edge, label %if.else.i224

if.then43.if.end11.i_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.else.i224:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %len3.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %69 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len3.i, align 4
  %sub.i222 = sub i32 %70, %add.i
  %rx_flags.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 5
  %71 = ptrtoint ptr %rx_flags.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rx_flags.i, align 1
  %73 = and i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i223 = icmp ne i8 %73, 0
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i224, %if.then43.if.end11.i_crit_edge
  %len.0.i = phi i32 [ 1412, %if.then43.if.end11.i_crit_edge ], [ %sub.i222, %if.else.i224 ]
  %last.0.off0.i = phi i1 [ false, %if.then43.if.end11.i_crit_edge ], [ %tobool.not.i223, %if.else.i224 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %tobool14.not.i225 = icmp sgt i8 %66, -1
  br i1 %tobool14.not.i225, label %if.then15.i, label %if.end11.i.if.end23.i_crit_edge

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then15.i:                                      ; preds = %if.end11.i
  %seq1.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 28
  %74 = ptrtoint ptr %seq1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %seq1.i.i, align 4
  %76 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 40
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %76, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %79 = load i32, ptr @rxrpc_debug, align 4
  %and4.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool.not.i.i, label %if.then15.i.do.end11.i.i_crit_edge, label %do.end.i.i, !prof !111

if.then15.i.do.end11.i.i_crit_edge:               ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i.i

do.end.i.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 101
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm.i.i, ptr noundef nonnull @.str.32) #12
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %do.end.i.i, %if.then15.i.do.end11.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i220)
  %cmp.not.i.i = icmp eq i8 %and.i220, 0
  br i1 %cmp.not.i.i, label %do.end11.i.i.rxrpc_verify_packet.exit.i_crit_edge, label %if.then14.i.i

do.end11.i.i.rxrpc_verify_packet.exit.i_crit_edge: ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_verify_packet.exit.i

if.then14.i.i:                                    ; preds = %do.end11.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp15.i.i) #9
  %84 = ptrtoint ptr %tmp15.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 -1, ptr %tmp15.i.i, align 2, !annotation !132
  %sub.i.i = add nuw nsw i32 %mul.i, 26
  %call16.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %21, i32 noundef %sub.i.i, ptr noundef nonnull %tmp15.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp17.i.i = icmp slt i32 %call16.i.i, 0
  br i1 %cmp17.i.i, label %do.body20.i.i, label %if.end26.i.i

do.body20.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/recvmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 297, 0\0A.popsection", ""() #9, !srcloc !133
  unreachable

if.end26.i.i:                                     ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %tmp15.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %tmp15.i.i, align 2
  %add.i.i = add i32 %75, %conv2.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp15.i.i) #9
  br label %rxrpc_verify_packet.exit.i

rxrpc_verify_packet.exit.i:                       ; preds = %if.end26.i.i, %do.end11.i.i.rxrpc_verify_packet.exit.i_crit_edge
  %cksum.0.i.i = phi i16 [ %86, %if.end26.i.i ], [ %78, %do.end11.i.i.rxrpc_verify_packet.exit.i_crit_edge ]
  %seq.0.i.i = phi i32 [ %add.i.i, %if.end26.i.i ], [ %75, %do.end11.i.i.rxrpc_verify_packet.exit.i_crit_edge ]
  %87 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %security.i.i, align 8
  %verify_packet.i.i = getelementptr inbounds %struct.rxrpc_security, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %verify_packet.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %verify_packet.i.i, align 4
  %call29.i.i = call i32 %90(ptr noundef %call, ptr noundef nonnull %21, i32 noundef %add.i, i32 noundef %len.0.i, i32 noundef %seq.0.i.i, i16 noundef zeroext %cksum.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp17.i = icmp slt i32 %call29.i.i, 0
  br i1 %cmp17.i, label %rxrpc_verify_packet.exit.i.rxrpc_locate_data.exit_crit_edge, label %if.end20.i

rxrpc_verify_packet.exit.i.rxrpc_locate_data.exit_crit_edge: ; preds = %rxrpc_verify_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_locate_data.exit

if.end20.i:                                       ; preds = %rxrpc_verify_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx45, align 1
  %93 = or i8 %92, -128
  store i8 %93, ptr %arrayidx45, align 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end20.i, %if.end11.i.if.end23.i_crit_edge
  %94 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add.i, ptr %rx_pkt_offset, align 4
  %95 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %len.0.i, ptr %rx_pkt_len, align 4
  %frombool.i = zext i1 %last.0.off0.i to i8
  %96 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %security.i.i, align 8
  %locate_data.i = getelementptr inbounds %struct.rxrpc_security, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %locate_data.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %locate_data.i, align 4
  call void %99(ptr noundef %call, ptr noundef nonnull %21, ptr noundef nonnull %rx_pkt_offset, ptr noundef nonnull %rx_pkt_len) #9
  br label %rxrpc_locate_data.exit

rxrpc_locate_data.exit:                           ; preds = %if.end23.i, %rxrpc_verify_packet.exit.i.rxrpc_locate_data.exit_crit_edge
  %rx_pkt_last.1 = phi i8 [ %rx_pkt_last.0, %rxrpc_verify_packet.exit.i.rxrpc_locate_data.exit_crit_edge ], [ %frombool.i, %if.end23.i ]
  %retval.0.i = phi i32 [ %call29.i.i, %rxrpc_verify_packet.exit.i.rxrpc_locate_data.exit_crit_edge ], [ 0, %if.end23.i ]
  %100 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_pkt_offset, align 4
  %102 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rx_pkt_len, align 4
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef %call, i32 noundef 6, i32 noundef %seq.0, i32 noundef %101, i32 noundef %103, i32 noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp47 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp47, label %rxrpc_locate_data.exit.out_crit_edge, label %rxrpc_locate_data.exit.if.end51_crit_edge

rxrpc_locate_data.exit.if.end51_crit_edge:        ; preds = %rxrpc_locate_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

rxrpc_locate_data.exit.out_crit_edge:             ; preds = %rxrpc_locate_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_pkt_len, align 4
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef %call, i32 noundef 0, i32 noundef %seq.0, i32 noundef %62, i32 noundef %105, i32 noundef 0)
  br label %if.end51

if.end51:                                         ; preds = %if.else, %rxrpc_locate_data.exit.if.end51_crit_edge
  %rx_pkt_last.2 = phi i8 [ %rx_pkt_last.1, %rxrpc_locate_data.exit.if.end51_crit_edge ], [ %rx_pkt_last.0, %if.else ]
  %106 = ptrtoint ptr %_offset to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %_offset, align 4
  %sub = sub i32 %len, %107
  %108 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_pkt_len, align 4
  %110 = call i32 @llvm.umin.i32(i32 %109, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp56 = icmp sgt i32 %110, 0
  br i1 %cmp56, label %if.then58, label %if.end51.if.end67_crit_edge

if.end51.if.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then58:                                        ; preds = %if.end51
  %111 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_pkt_offset, align 4
  %call59 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %21, i32 noundef %112, ptr noundef %iter, i32 noundef %110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then58.out_crit_edge, label %if.end63

if.then58.out_crit_edge:                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end63:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_pkt_offset, align 4
  %add64 = add i32 %114, %110
  store i32 %add64, ptr %rx_pkt_offset, align 4
  %115 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_pkt_len, align 4
  %sub65 = sub i32 %116, %110
  store i32 %sub65, ptr %rx_pkt_len, align 4
  %117 = ptrtoint ptr %_offset to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %_offset, align 4
  %add66 = add i32 %118, %110
  store i32 %add66, ptr %_offset, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end63, %if.end51.if.end67_crit_edge
  %119 = phi i32 [ %sub65, %if.end63 ], [ %109, %if.end51.if.end67_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp68.not = icmp eq i32 %119, 0
  br i1 %cmp68.not, label %if.end92, label %if.then70

if.then70:                                        ; preds = %if.end67
  %120 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rx_pkt_offset, align 4
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef %call, i32 noundef 4, i32 noundef %seq.0, i32 noundef %121, i32 noundef %119, i32 noundef 0)
  %122 = ptrtoint ptr %_offset to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %len)
  %cmp72.not = icmp eq i32 %123, %len
  br i1 %cmp72.not, label %if.then70.out_crit_edge, label %do.end80, !prof !111

if.then70.out_crit_edge:                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end80:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %123, i32 noundef %123, ptr noundef nonnull @.str.28, i32 noundef %len, i32 noundef %len) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/recvmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 449, 0\0A.popsection", ""() #9, !srcloc !134
  unreachable

if.end92:                                         ; preds = %if.end67
  br i1 %tobool30.not, label %if.then95, label %if.end92.if.end96_crit_edge

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then95:                                        ; preds = %if.end92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %124 = load i32, ptr @rxrpc_debug, align 4
  %and.i226 = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i226)
  %tobool.not.i227 = icmp eq i32 %and.i226, 0
  br i1 %tobool.not.i227, label %if.then95.do.end7.i_crit_edge, label %do.end.i, !prof !111

if.then95.do.end7.i_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

do.end.i:                                         ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  %125 = call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 101
  %129 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %debug_id.i, align 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i, ptr noundef nonnull @.str.33, i32 noundef %130) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.then95.do.end7.i_crit_edge
  %131 = ptrtoint ptr %rx_hard_ack14 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rx_hard_ack14, align 8
  %133 = ptrtoint ptr %rx_top to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %rx_top, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !135
  %sub.i.i228 = sub i32 %132, %134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i228)
  %cmp.i.i = icmp slt i32 %sub.i.i228, 0
  br i1 %cmp.i.i, label %do.end40.i, label %do.end29.i, !prof !111

do.end29.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/recvmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 236, 0\0A.popsection", ""() #9, !srcloc !136
  unreachable

do.end40.i:                                       ; preds = %do.end7.i
  %inc.i = add i32 %132, 1
  %and41.i = and i32 %inc.i, 63
  %135 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rxtx_buffer, align 8
  %arrayidx.i = getelementptr ptr, ptr %136, i32 %and41.i
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i, align 4
  call void @rxrpc_see_skb(ptr noundef %138, i32 noundef 7) #9
  %139 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rxtx_annotations, align 4
  %arrayidx42.i = getelementptr i8, ptr %140, i32 %and41.i
  %141 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx42.i, align 1
  %143 = and i8 %142, 63
  %serial45.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 3, i32 32
  %144 = ptrtoint ptr %serial45.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %serial45.i, align 4
  %conv46.i = zext i8 %143 to i32
  %add.i229 = add i32 %145, %conv46.i
  %nr_subpackets.i230 = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 3, i32 4
  %146 = ptrtoint ptr %nr_subpackets.i230 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %nr_subpackets.i230, align 4
  %conv48.i = zext i8 %147 to i32
  %sub.i231 = add nsw i32 %conv48.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i231, i32 %conv46.i)
  %cmp.i232 = icmp eq i32 %sub.i231, %conv46.i
  br i1 %cmp.i232, label %land.lhs.true.i, label %if.else.critedge.i

land.lhs.true.i:                                  ; preds = %do.end40.i
  %rx_flags.i233 = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 3, i32 5
  %148 = ptrtoint ptr %rx_flags.i233 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %rx_flags.i233, align 1
  %150 = and i8 %149, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool52.not.not.i = icmp eq i8 %150, 0
  %151 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rxtx_buffer, align 8
  %arrayidx56.i = getelementptr ptr, ptr %152, i32 %and41.i
  %153 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %arrayidx56.i, align 4
  %154 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rxtx_annotations, align 4
  %arrayidx58.i = getelementptr i8, ptr %155, i32 %and41.i
  %156 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %arrayidx58.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  %157 = ptrtoint ptr %rx_hard_ack14 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 %inc.i, ptr %rx_hard_ack14, align 8
  call void @rxrpc_free_skb(ptr noundef %138, i32 noundef 1) #9
  call fastcc void @trace_rxrpc_receive(ptr noundef %call, i32 noundef 5, i32 noundef %add.i229, i32 noundef %inc.i) #9
  br i1 %tobool52.not.not.i, label %land.lhs.true.i.if.else.i241_crit_edge, label %if.then82.i

land.lhs.true.i.if.else.i241_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i241

if.then82.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %158 = load i32, ptr @rxrpc_debug, align 4
  %and.i144.i = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144.i)
  %tobool.not.i.i234 = icmp eq i32 %and.i144.i, 0
  br i1 %tobool.not.i.i234, label %if.then82.i.do.end6.i.i_crit_edge, label %do.end.i.i238, !prof !111

if.then82.i.do.end6.i.i_crit_edge:                ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6.i.i

do.end.i.i238:                                    ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  %159 = call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i235 = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i235 to ptr
  %task.i.i236 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %task.i.i236 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %task.i.i236, align 8
  %comm.i.i237 = getelementptr inbounds %struct.task_struct, ptr %162, i32 0, i32 101
  %163 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %debug_id.i, align 4
  %165 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %state, align 8
  %arrayidx.i.i = getelementptr [0 x ptr], ptr @rxrpc_call_states, i32 0, i32 %166
  %167 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i.i, align 4
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm.i.i237, ptr noundef nonnull @.str.38, i32 noundef %164, ptr noundef %168) #12
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i238, %if.then82.i.do.end6.i.i_crit_edge
  %169 = ptrtoint ptr %rx_top to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rx_top, align 4
  call fastcc void @trace_rxrpc_receive(ptr noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef %170) #9
  %171 = ptrtoint ptr %rx_hard_ack14 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %rx_hard_ack14, align 8
  %173 = ptrtoint ptr %rx_top to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rx_top, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %174)
  %cmp.not.i.i239 = icmp eq i32 %172, %174
  br i1 %cmp.not.i.i239, label %if.end28.i.i, label %do.end19.i.i, !prof !111

do.end19.i.i:                                     ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call21.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %172, i32 noundef %172, ptr noundef nonnull @.str.28, i32 noundef %174, i32 noundef %174) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/recvmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #9, !srcloc !138
  unreachable

if.end28.i.i:                                     ; preds = %do.end6.i.i
  %175 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %176)
  %cmp32.i.i = icmp eq i32 %176, 4
  br i1 %cmp32.i.i, label %if.then33.i.i, label %if.end28.i.i.if.end34.i.i_crit_edge

if.end28.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

if.then33.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @rxrpc_propose_ACK(ptr noundef %call, i8 noundef zeroext 9, i32 noundef %add.i229, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 12) #9
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then33.i.i, %if.end28.i.i.if.end34.i.i_crit_edge
  call void @_raw_write_lock_bh(ptr noundef %state_lock.i.i) #9
  %177 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %state, align 8
  %179 = zext i32 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %178, label %sw.default.i.i [
    i32 4, label %__rxrpc_call_completed.exit.i.i
    i32 7, label %sw.bb38.i.i
  ]

__rxrpc_call_completed.exit.i.i:                  ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %180 = ptrtoint ptr %abort_code1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %abort_code1.i.i.i.i, align 8
  %181 = ptrtoint ptr %error2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %error2.i.i.i.i, align 4
  %182 = ptrtoint ptr %completion.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %completion.i.i.i.i, align 4
  %183 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 11, ptr %state, align 8
  call fastcc void @trace_rxrpc_call_complete(ptr noundef %call) #9
  call void @__wake_up(ptr noundef %waitq.i.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  call void @rxrpc_notify_socket(ptr noundef %call) #9
  call void @_raw_write_unlock_bh(ptr noundef %state_lock.i.i) #9
  br label %if.end96

sw.bb38.i.i:                                      ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %tx_phase.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %tx_phase.i.i, align 2
  %185 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 8, ptr %state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %186 = load volatile i32, ptr @jiffies, align 128
  %add.i.i240 = add i32 %186, 1073741822
  %187 = ptrtoint ptr %expect_req_by.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %add.i.i240, ptr %expect_req_by.i.i, align 8
  call void @_raw_write_unlock_bh(ptr noundef %state_lock.i.i) #9
  call void @rxrpc_propose_ACK(ptr noundef %call, i8 noundef zeroext 8, i32 noundef %add.i229, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 7) #9
  br label %if.end96

sw.default.i.i:                                   ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_write_unlock_bh(ptr noundef %state_lock.i.i) #9
  br label %if.end96

if.else.critedge.i:                               ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %188 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rxtx_buffer, align 8
  %arrayidx56.c.i = getelementptr ptr, ptr %189, i32 %and41.i
  %190 = ptrtoint ptr %arrayidx56.c.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %arrayidx56.c.i, align 4
  %191 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rxtx_annotations, align 4
  %arrayidx58.c.i = getelementptr i8, ptr %192, i32 %and41.i
  %193 = ptrtoint ptr %arrayidx58.c.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %arrayidx58.c.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  %194 = ptrtoint ptr %rx_hard_ack14 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile i32 %inc.i, ptr %rx_hard_ack14, align 8
  call void @rxrpc_free_skb(ptr noundef %138, i32 noundef 1) #9
  call fastcc void @trace_rxrpc_receive(ptr noundef %call, i32 noundef 5, i32 noundef %add.i229, i32 noundef %inc.i) #9
  br label %if.else.i241

if.else.i241:                                     ; preds = %if.else.critedge.i, %land.lhs.true.i.if.else.i241_crit_edge
  %195 = ptrtoint ptr %ackr_consumed.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %ackr_consumed.i, align 8
  %197 = xor i32 %196, -1
  %sub.i145.i = add i32 %132, %197
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i145.i)
  %cmp.i146.i = icmp sgt i32 %sub.i145.i, -1
  br i1 %cmp.i146.i, label %if.else.i241.if.then96.i_crit_edge, label %lor.lhs.false.i242

if.else.i241.if.then96.i_crit_edge:               ; preds = %if.else.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96.i

lor.lhs.false.i242:                               ; preds = %if.else.i241
  %198 = ptrtoint ptr %ackr_seen.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %ackr_seen.i, align 4
  %add86.neg.i = add i32 %134, -2
  %sub.i147.i = sub i32 %add86.neg.i, %199
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i147.i)
  %cmp.i148.i = icmp sgt i32 %sub.i147.i, -1
  br i1 %cmp.i148.i, label %lor.lhs.false.i242.if.then96.i_crit_edge, label %lor.lhs.false89.i

lor.lhs.false.i242.if.then96.i_crit_edge:         ; preds = %lor.lhs.false.i242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96.i

lor.lhs.false89.i:                                ; preds = %lor.lhs.false.i242
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %134)
  %cmp90.i = icmp eq i32 %inc.i, %134
  %sub.i149.i = sub i32 %inc.i, %196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i149.i)
  %cmp.i150.i = icmp sgt i32 %sub.i149.i, 0
  %or.cond.i243 = select i1 %cmp90.i, i1 %cmp.i150.i, i1 false
  br i1 %or.cond.i243, label %lor.lhs.false89.i.if.then96.i_crit_edge, label %lor.lhs.false89.i.if.end97.i_crit_edge

lor.lhs.false89.i.if.end97.i_crit_edge:           ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i

lor.lhs.false89.i.if.then96.i_crit_edge:          ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96.i

if.then96.i:                                      ; preds = %lor.lhs.false89.i.if.then96.i_crit_edge, %lor.lhs.false.i242.if.then96.i_crit_edge, %if.else.i241.if.then96.i_crit_edge
  call void @rxrpc_propose_ACK(ptr noundef %call, i8 noundef zeroext 8, i32 noundef %add.i229, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 11) #9
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then96.i, %lor.lhs.false89.i.if.end97.i_crit_edge
  %200 = ptrtoint ptr %ackr_reason.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %ackr_reason.i, align 8
  %202 = zext i8 %201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %201, label %if.then105.i [
    i8 0, label %if.end97.i.if.end96_crit_edge
    i8 8, label %if.end97.i.if.end96_crit_edge377
  ]

if.end97.i.if.end96_crit_edge377:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.end97.i.if.end96_crit_edge:                    ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then105.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  %call106.i = call i32 @rxrpc_send_ack_packet(ptr noundef %call, i1 noundef zeroext false, ptr noundef null) #9
  br label %if.end96

if.end96:                                         ; preds = %if.then105.i, %if.end97.i.if.end96_crit_edge, %if.end97.i.if.end96_crit_edge377, %sw.default.i.i, %sw.bb38.i.i, %__rxrpc_call_completed.exit.i.i, %if.end92.if.end96_crit_edge
  %203 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %rx_pkt_offset, align 4
  %204 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %rx_pkt_len, align 4
  %tobool97.not = icmp eq i8 %rx_pkt_last.2, 0
  br i1 %tobool97.not, label %if.end96.while.cond_crit_edge, label %do.body99

if.end96.while.cond_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

do.body99:                                        ; preds = %if.end96
  %205 = ptrtoint ptr %rx_top to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %rx_top, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %seq.0, i32 %206)
  %cmp107.not = icmp eq i32 %seq.0, %206
  br i1 %cmp107.not, label %do.body99.out_crit_edge, label %do.end120, !prof !111

do.body99.out_crit_edge:                          ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end120:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %seq.0, i32 noundef %seq.0, ptr noundef nonnull @.str.28, i32 noundef %206, i32 noundef %206) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/recvmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #9, !srcloc !139
  unreachable

out:                                              ; preds = %do.body99.out_crit_edge, %if.then70.out_crit_edge, %if.then58.out_crit_edge, %rxrpc_locate_data.exit.out_crit_edge, %if.then21, %while.cond.out_crit_edge
  %rx_pkt_last.3 = phi i8 [ %rx_pkt_last.0, %if.then21 ], [ 1, %do.body99.out_crit_edge ], [ %rx_pkt_last.2, %if.then70.out_crit_edge ], [ %rx_pkt_last.0, %while.cond.out_crit_edge ], [ %rx_pkt_last.2, %if.then58.out_crit_edge ], [ %rx_pkt_last.1, %rxrpc_locate_data.exit.out_crit_edge ]
  %ret.0 = phi i32 [ -11, %if.then21 ], [ 1, %do.body99.out_crit_edge ], [ 0, %if.then70.out_crit_edge ], [ -11, %while.cond.out_crit_edge ], [ %call59, %if.then58.out_crit_edge ], [ %retval.0.i, %rxrpc_locate_data.exit.out_crit_edge ]
  br i1 %tobool30.not, label %if.then135, label %out.done_crit_edge

out.done_crit_edge:                               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then135:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %207 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %rx_pkt_offset, align 4
  %conv136 = trunc i32 %208 to i16
  %209 = ptrtoint ptr %rx_pkt_offset5 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv136, ptr %rx_pkt_offset5, align 8
  %210 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %rx_pkt_len, align 4
  %conv138 = trunc i32 %211 to i16
  %212 = ptrtoint ptr %rx_pkt_len7 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv138, ptr %rx_pkt_len7, align 2
  %213 = ptrtoint ptr %rx_pkt_last9 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %rx_pkt_last.3, ptr %rx_pkt_last9, align 4
  br label %done

done:                                             ; preds = %if.then135, %out.done_crit_edge, %if.then12
  %ret.1 = phi i32 [ 1, %if.then12 ], [ %ret.0, %out.done_crit_edge ], [ %ret.0, %if.then135 ]
  %seq.1 = phi i32 [ %11, %if.then12 ], [ %seq.0, %out.done_crit_edge ], [ %seq.0, %if.then135 ]
  %214 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %rx_pkt_offset, align 4
  %216 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %rx_pkt_len, align 4
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef %call, i32 noundef 1, i32 noundef %seq.1, i32 noundef %215, i32 noundef %217, i32 noundef %ret.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.1)
  %cmp144 = icmp eq i32 %ret.1, -11
  br i1 %cmp144, label %if.then146, label %done.if.end148_crit_edge

done.if.end148_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then146:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 10, ptr noundef %flags1) #9
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %done.if.end148_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pkt_len) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pkt_offset) #9
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_recvmsg_term(ptr noundef %call, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  %completion = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %1 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %completion, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %2, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 4, label %sw.bb8
    i32 3, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %flags.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 272, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %tmp) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %7 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %abort_code, align 8
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp, align 4
  %call4 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 272, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code6 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %10 = ptrtoint ptr %abort_code6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %abort_code6, align 8
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp, align 4
  %call7 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 272, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp) #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 4
  %sub = sub i32 0, %14
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %tmp, align 4
  %call9 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 272, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp) #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error11 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %16 = ptrtoint ptr %error11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error11, align 4
  %sub12 = sub i32 0, %17
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub12, ptr %tmp, align 4
  %call13 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 272, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %20) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/recvmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #9, !srcloc !140
  unreachable

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb5, %sw.bb3, %if.then, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call13, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %if.then ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  %rx_hard_ack = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 64
  %21 = ptrtoint ptr %rx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_hard_ack, align 8
  %rx_pkt_offset = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 49
  %23 = ptrtoint ptr %rx_pkt_offset to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rx_pkt_offset, align 8
  %conv = zext i16 %24 to i32
  %rx_pkt_len = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 50
  %25 = ptrtoint ptr %rx_pkt_len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rx_pkt_len, align 2
  %conv22 = zext i16 %26 to i32
  call fastcc void @trace_rxrpc_recvmsg(ptr noundef %call, i32 noundef 9, i32 noundef %22, i32 noundef %conv, i32 noundef %conv22, i32 noundef %ret.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_release_call(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_call(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_kernel_recv_data(ptr nocapture noundef readonly %sock, ptr noundef %call, ptr noundef %iter, ptr nocapture noundef %_len, i1 noundef zeroext %want_more, ptr nocapture noundef %_abort, ptr noundef writeonly %_service) #0 align 64 {
entry:
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %1 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.end, !prof !111

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %6 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_id, align 4
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  %arrayidx = getelementptr [0 x ptr], ptr @rxrpc_call_states, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %_len, align 4
  %conv = zext i1 %want_more to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm, ptr noundef nonnull @.str.11, i32 noundef %7, ptr noundef %11, i32 noundef %13, i32 noundef %conv) #12
  br label %do.body9

do.body9:                                         ; preds = %do.end, %entry.do.body9_crit_edge
  %state10 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %14 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp.not = icmp eq i32 %15, 6
  br i1 %cmp.not, label %do.end23, label %if.end32, !prof !141

do.end23:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 6, i32 noundef 6, ptr noundef nonnull @.str.15, i32 noundef 6, i32 noundef 6) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/recvmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !142
  unreachable

if.end32:                                         ; preds = %do.body9
  %user_mutex = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #9
  %16 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state10, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %17, label %if.end32.out_crit_edge [
    i32 4, label %if.end32.sw.bb_crit_edge
    i32 7, label %if.end32.sw.bb_crit_edge141
    i32 8, label %if.end32.sw.bb_crit_edge142
    i32 11, label %call_complete
  ]

if.end32.sw.bb_crit_edge142:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end32.sw.bb_crit_edge141:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end32.sw.bb_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb:                                            ; preds = %if.end32.sw.bb_crit_edge, %if.end32.sw.bb_crit_edge141, %if.end32.sw.bb_crit_edge142
  %19 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %_len, align 4
  %call40 = call fastcc i32 @rxrpc_recvmsg_data(ptr noundef %sock, ptr noundef %call, ptr noundef null, ptr noundef %iter, i32 noundef %20, i32 noundef 0, ptr noundef nonnull %offset)
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset, align 4
  %23 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %_len, align 4
  %sub = sub i32 %24, %22
  store i32 %sub, ptr %_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %sw.bb.out_crit_edge, label %if.end44

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end44:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call40)
  %cmp45 = icmp eq i32 %call40, 1
  br i1 %cmp45, label %if.then47, label %if.end56

if.then47:                                        ; preds = %if.end44
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp49.not = icmp eq i32 %26, 0
  br i1 %cmp49.not, label %if.end52, label %short_data

if.end52:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %not.want_more = xor i1 %want_more, true
  %. = zext i1 %not.want_more to i32
  br label %out

if.end56:                                         ; preds = %if.end44
  br i1 %want_more, label %if.end56.out_crit_edge, label %excess_data

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %if.then100, %call_complete.out_crit_edge, %excess_data, %short_data, %if.end56.out_crit_edge, %if.end52, %sw.bb.out_crit_edge, %if.end32.out_crit_edge
  %ret.0 = phi i32 [ %48, %call_complete.out_crit_edge ], [ %call40, %sw.bb.out_crit_edge ], [ -74, %short_data ], [ %call40, %if.end56.out_crit_edge ], [ -90, %excess_data ], [ %., %if.end52 ], [ -115, %if.end32.out_crit_edge ], [ %spec.select, %if.then100 ]
  %ackr_reason = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 73
  %27 = ptrtoint ptr %ackr_reason to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ackr_reason, align 8
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %28, label %out.sw.default67_crit_edge [
    i8 9, label %out.sw.epilog_crit_edge
    i8 8, label %sw.bb62
  ]

out.sw.epilog_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

out.sw.default67_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default67

sw.bb62:                                          ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.0)
  %cmp63.not = icmp eq i32 %ret.0, -11
  br i1 %cmp63.not, label %sw.bb62.sw.default67_crit_edge, label %sw.bb62.sw.epilog_crit_edge

sw.bb62.sw.epilog_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb62.sw.default67_crit_edge:                   ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default67

sw.default67:                                     ; preds = %sw.bb62.sw.default67_crit_edge, %out.sw.default67_crit_edge
  %call68 = tail call i32 @rxrpc_send_ack_packet(ptr noundef %call, i1 noundef zeroext false, ptr noundef null) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default67, %sw.bb62.sw.epilog_crit_edge, %out.sw.epilog_crit_edge
  %tobool69.not = icmp eq ptr %_service, null
  br i1 %tobool69.not, label %sw.epilog.if.end71_crit_edge, label %if.then70

sw.epilog.if.end71_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then70:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %service_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 43
  %30 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %service_id, align 4
  %32 = ptrtoint ptr %_service to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %_service, align 2
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %sw.epilog.if.end71_crit_edge
  tail call void @mutex_unlock(ptr noundef %user_mutex) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %33 = load i32, ptr @rxrpc_debug, align 4
  %and74 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end71.do.end95_crit_edge, label %do.end85, !prof !111

if.end71.do.end95_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end95

do.end85:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %34 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i138 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i138 to ptr
  %task88 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task88, align 8
  %comm89 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 101
  %count.i139 = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %38 = ptrtoint ptr %count.i139 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i139, align 8
  %40 = ptrtoint ptr %_abort to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %_abort, align 4
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm89, ptr noundef nonnull @.str.11, i32 noundef %ret.0, i32 noundef %39, i32 noundef %41) #12
  br label %do.end95

do.end95:                                         ; preds = %do.end85, %if.end71.do.end95_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  ret i32 %ret.0

short_data:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %42 = load ptr, ptr @rxrpc_kernel_recv_data.___tp_str, align 4
  tail call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, ptr noundef %42)
  br label %out

excess_data:                                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %43 = load ptr, ptr @rxrpc_kernel_recv_data.___tp_str.20, align 4
  tail call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, ptr noundef %43)
  br label %out

call_complete:                                    ; preds = %if.end32
  %abort_code = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 38
  %44 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %abort_code, align 8
  %46 = ptrtoint ptr %_abort to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %_abort, align 4
  %error = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %47 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %error, align 4
  %completion = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 41
  %49 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %completion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp98 = icmp eq i32 %50, 0
  br i1 %cmp98, label %if.then100, label %call_complete.out_crit_edge

call_complete.out_crit_edge:                      ; preds = %call_complete
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then100:                                       ; preds = %call_complete
  call void @__sanitizer_cov_trace_pc() #11
  %count.i140 = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %51 = ptrtoint ptr %count.i140 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count.i140, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp102.not = icmp eq i32 %52, 0
  %spec.select = select i1 %cmp102.not, i32 1, i32 -104
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_send_ack_packet(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, ptr noundef %why) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_eproto, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !143
  %call43 = tail call i32 @__traceiter_rxrpc_rx_eproto(ptr noundef null, ptr noundef %call, i32 noundef 0, ptr noundef %why) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !144
  %13 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !111

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1377, ptr noundef nonnull @.str.3) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rxrpc_kernel_get_reply_time(ptr nocapture readnone %sock, ptr noundef %call, ptr nocapture noundef writeonly %_ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %user_mutex = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %rx_hard_ack = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 64
  %2 = ptrtoint ptr %rx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_hard_ack, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  %rx_top = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 65
  %4 = ptrtoint ptr %rx_top to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rx_top, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  %notsub = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %notsub)
  %cmp.i = icmp slt i32 %notsub, -1
  br i1 %cmp.i, label %if.end3.out_crit_edge, label %if.end14

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end14:                                         ; preds = %if.end3
  %rxtx_buffer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 52
  %6 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxtx_buffer, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end14.out_crit_edge, label %if.end16

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end16:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %10 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %13 = ptrtoint ptr %_ts to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %_ts, align 8
  br label %out

out:                                              ; preds = %if.end16, %if.end14.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %success.0.off0 = phi i1 [ false, %entry.out_crit_edge ], [ false, %if.end.out_crit_edge ], [ false, %if.end3.out_crit_edge ], [ true, %if.end16 ], [ false, %if.end14.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %user_mutex) #9
  ret i1 %success.0.off0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_call_complete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_abort(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_receive(ptr noundef %call, i32 noundef %why, i32 noundef %serial, i32 noundef %seq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_receive, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_receive, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !146
  %call43 = tail call i32 @__traceiter_rxrpc_receive(ptr noundef null, ptr noundef %call, i32 noundef %why, i32 noundef %serial, i32 noundef %seq) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !147
  %13 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !111

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1037, ptr noundef nonnull @.str.3) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %31 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_receive(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_free_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_propose_ACK(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_eproto(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !95, !96, !97, !98, !100}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/recvmsg.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rxrpc_notify_socket._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rxrpc_notify_socket._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/rxrpc/recvmsg.c", i32 35, i32 7}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/rxrpc/recvmsg.c", i32 51, i32 5}
!11 = !{ptr @rxrpc_notify_socket._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @rxrpc_notify_socket._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/rxrpc/recvmsg.c", i32 58, i32 2}
!15 = !{ptr @rxrpc_notify_socket._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @rxrpc_notify_socket._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/rxrpc/recvmsg.c", i32 694, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rxrpc_kernel_recv_data._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @rxrpc_kernel_recv_data._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/rxrpc/recvmsg.c", i32 698, i32 2}
!24 = !{ptr @rxrpc_kernel_recv_data._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rxrpc_kernel_recv_data._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/rxrpc/recvmsg.c", i32 754, i32 2}
!29 = !{ptr @rxrpc_kernel_recv_data._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rxrpc_kernel_recv_data._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/rxrpc/recvmsg.c", i32 758, i32 33}
!33 = !{ptr @rxrpc_kernel_recv_data.___tp_str, !32, !"___tp_str", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/rxrpc/recvmsg.c", i32 762, i32 33}
!36 = !{ptr @rxrpc_kernel_recv_data.___tp_str.20, !35, !"___tp_str", i1 false, i1 false}
!37 = !{ptr @__ksymtab_rxrpc_kernel_recv_data, !38, !"__ksymtab_rxrpc_kernel_recv_data", i1 false, i1 false}
!38 = !{!"../net/rxrpc/recvmsg.c", i32 775, i32 1}
!39 = !{ptr @__ksymtab_rxrpc_kernel_get_reply_time, !40, !"__ksymtab_rxrpc_kernel_get_reply_time", i1 false, i1 false}
!40 = !{!"../net/rxrpc/recvmsg.c", i32 818, i32 1}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/trace/events/rxrpc.h", i32 728, i32 1}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/trace/events/rxrpc.h", i32 696, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/trace/events/rxrpc.h", i32 1039, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/rxrpc/recvmsg.c", i32 449, i32 4}
!63 = !{ptr @rxrpc_recvmsg_data._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rxrpc_recvmsg_data._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rxrpc_recvmsg_data._entry.29, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../net/rxrpc/recvmsg.c", i32 461, i32 4}
!68 = !{ptr @rxrpc_recvmsg_data._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/trace/events/rxrpc.h", i32 1006, i32 1}
!71 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/rxrpc/recvmsg.c", i32 289, i32 2}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rxrpc_verify_packet._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @rxrpc_verify_packet._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/rxrpc/recvmsg.c", i32 232, i32 2}
!79 = !{ptr @rxrpc_rotate_rx_window._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @rxrpc_rotate_rx_window._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/rxrpc/recvmsg.c", i32 236, i32 2}
!83 = !{ptr @rxrpc_rotate_rx_window._entry.34, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rxrpc_rotate_rx_window._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/rxrpc/recvmsg.c", i32 186, i32 2}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rxrpc_end_rx_phase._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @rxrpc_end_rx_phase._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @rxrpc_end_rx_phase._entry.39, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../net/rxrpc/recvmsg.c", i32 189, i32 2}
!92 = !{ptr @rxrpc_end_rx_phase._entry_ptr.40, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/rxrpc/recvmsg.c", i32 171, i32 3}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rxrpc_recvmsg_term._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @rxrpc_recvmsg_term._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/trace/events/rxrpc.h", i32 1355, i32 1}
!100 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 2149407052}
!113 = !{i64 2149407318}
!114 = !{i64 2148181869, i64 2148181874, i64 2148181887, i64 2148181931, i64 2148181965, i64 2148181986}
!115 = !{i64 2157603149}
!116 = !{i64 2157603358}
!117 = !{i64 2149415611}
!118 = !{i64 2149416647}
!119 = !{i64 2157586603}
!120 = !{i64 2157586888}
!121 = !{i64 2156770007}
!122 = !{i64 869014, i64 869031, i64 869055, i64 869081, i64 869099}
!123 = !{i64 2156770350}
!124 = !{i64 2158187503, i64 2158187987, i64 2158187540, i64 2158187596, i64 2158187630, i64 2158187654, i64 2158187695, i64 2158187716, i64 2158187744, i64 2158187778}
!125 = !{i64 2157791422}
!126 = !{i64 2157791675}
!127 = !{i8 0, i8 2}
!128 = !{i64 2158167680}
!129 = !{i64 2158167875}
!130 = !{i64 2150215958}
!131 = !{i64 2150216283}
!132 = !{!"auto-init"}
!133 = !{i64 2158160288, i64 2158160772, i64 2158160325, i64 2158160381, i64 2158160415, i64 2158160439, i64 2158160480, i64 2158160501, i64 2158160529, i64 2158160563}
!134 = !{i64 2158170719, i64 2158171203, i64 2158170756, i64 2158170812, i64 2158170846, i64 2158170870, i64 2158170911, i64 2158170932, i64 2158170960, i64 2158170994}
!135 = !{i64 2158146348}
!136 = !{i64 2158152403, i64 2158152887, i64 2158152440, i64 2158152496, i64 2158152530, i64 2158152554, i64 2158152595, i64 2158152616, i64 2158152644, i64 2158152678}
!137 = !{i64 2158155931}
!138 = !{i64 2158137261, i64 2158137745, i64 2158137298, i64 2158137354, i64 2158137388, i64 2158137412, i64 2158137453, i64 2158137474, i64 2158137502, i64 2158137536}
!139 = !{i64 2158179534, i64 2158180018, i64 2158179571, i64 2158179627, i64 2158179661, i64 2158179685, i64 2158179726, i64 2158179747, i64 2158179775, i64 2158179809}
!140 = !{i64 2158131139, i64 2158131623, i64 2158131176, i64 2158131232, i64 2158131266, i64 2158131290, i64 2158131331, i64 2158131352, i64 2158131380, i64 2158131414}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i64 2158196821, i64 2158197305, i64 2158196858, i64 2158196914, i64 2158196948, i64 2158196972, i64 2158197013, i64 2158197034, i64 2158197062, i64 2158197096}
!143 = !{i64 2157973835}
!144 = !{i64 2157974062}
!145 = !{i64 2158213703}
!146 = !{i64 2157773459}
!147 = !{i64 2157773692}
