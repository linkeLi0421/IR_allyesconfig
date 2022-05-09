; ModuleID = '/llk/IR_all_yes/net/rxrpc/sendmsg.c_pt.bc'
source_filename = "../net/rxrpc/sendmsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rxrpc_kernel_send_data\22, \22a\22\09"
module asm "\09.weak\09__crc_rxrpc_kernel_send_data\09\09\09\09"
module asm "\09.long\09__crc_rxrpc_kernel_send_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rxrpc_kernel_send_data:\09\09\09\09\09"
module asm "\09.asciz \09\22rxrpc_kernel_send_data\22\09\09\09\09\09"
module asm "__kstrtabns_rxrpc_kernel_send_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rxrpc_kernel_abort_call\22, \22a\22\09"
module asm "\09.weak\09__crc_rxrpc_kernel_abort_call\09\09\09\09"
module asm "\09.long\09__crc_rxrpc_kernel_abort_call\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rxrpc_kernel_abort_call:\09\09\09\09\09"
module asm "\09.asciz \09\22rxrpc_kernel_abort_call\22\09\09\09\09\09"
module asm "__kstrtabns_rxrpc_kernel_abort_call:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rxrpc_kernel_set_tx_length\22, \22a\22\09"
module asm "\09.weak\09__crc_rxrpc_kernel_set_tx_length\09\09\09\09"
module asm "\09.long\09__crc_rxrpc_kernel_set_tx_length\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rxrpc_kernel_set_tx_length:\09\09\09\09\09"
module asm "\09.asciz \09\22rxrpc_kernel_set_tx_length\22\09\09\09\09\09"
module asm "__kstrtabns_rxrpc_kernel_set_tx_length:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.rxrpc_send_params = type { %struct.rxrpc_call_params, i32, i8, i8, i8 }
%struct.rxrpc_call_params = type { i64, i32, %struct.anon.157, i8, i8, i32 }
%struct.anon.157 = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.116, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.114 }
%union.anon.4 = type { ptr }
%union.anon.114 = type { i64 }
%union.anon.116 = type { ptr }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.118, [0 x i32], %union.anon.119, i16, i16, %union.anon.120, %struct.refcount_struct, [0 x i32], %union.anon.121 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { %struct.hlist_node }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%struct.rxrpc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rwlock_t, ptr, ptr, %struct.rb_root, i32, %struct.rwlock_t, i32, i8, i16, %struct.anon.151, i16, %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.122, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.123, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.124, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.122 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.123 = type { ptr }
%union.anon.124 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.151 = type { i16, i16 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.145 }
%union.anon.145 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.148, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon.143 }
%union.anon.143 = type { i64 }
%struct.rxrpc_channel = type { i32, ptr, i32, i32, i32, i32, i8, %union.anon.146 }
%union.anon.146 = type { i32 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { ptr, [4 x i8], %struct.rxrpc_crypt, i32, [4 x i8] }
%struct.rxrpc_crypt = type { %union.anon.150 }
%union.anon.150 = type { [2 x i32] }
%struct.rxrpc_security = type { ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_do_sendmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxrpc_do_sendmsg\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/rxrpc/sendmsg.c\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_do_sendmsg._entry_ptr = internal global ptr @rxrpc_do_sendmsg._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rxrpc_do_sendmsg._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%-6.6s]     CALL %d USR %lx ST %d on CONN %p\0A\00", [49 x i8] zeroinitializer }, align 32
@rxrpc_do_sendmsg._entry_ptr.5 = internal global ptr @rxrpc_do_sendmsg._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CMD\00", [28 x i8] zeroinitializer }, align 32
@rxrpc_do_sendmsg._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_do_sendmsg._entry_ptr.9 = internal global ptr @rxrpc_do_sendmsg._entry.7, section ".printk_index", align 4
@rxrpc_kernel_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] ==> %s({%d,%s},)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxrpc_kernel_send_data\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_kernel_send_data._entry_ptr = internal global ptr @rxrpc_kernel_send_data._entry, section ".printk_index", align 4
@rxrpc_call_states = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@rxrpc_kernel_send_data._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rxrpc: Assertion failed - %lu(0x%lx) %s %lu(0x%lx) is false\0A\00", [33 x i8] zeroinitializer }, align 32
@rxrpc_kernel_send_data._entry_ptr.14 = internal global ptr @rxrpc_kernel_send_data._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_kernel_send_data._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_kernel_send_data._entry_ptr.17 = internal global ptr @rxrpc_kernel_send_data._entry.16, section ".printk_index", align 4
@rxrpc_kernel_send_data._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.11, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_kernel_send_data._entry_ptr.19 = internal global ptr @rxrpc_kernel_send_data._entry.18, section ".printk_index", align 4
@rxrpc_kernel_send_data.___tp_str = internal global ptr @.str.20, section "__tracepoint_str", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"late_send\00", [22 x i8] zeroinitializer }, align 32
@rxrpc_kernel_send_data._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.11, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_kernel_send_data._entry_ptr.22 = internal global ptr @rxrpc_kernel_send_data._entry.21, section ".printk_index", align 4
@__kstrtab_rxrpc_kernel_send_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_rxrpc_kernel_send_data = external dso_local constant [0 x i8], align 1
@__ksymtab_rxrpc_kernel_send_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rxrpc_kernel_send_data to i32), ptr @__kstrtab_rxrpc_kernel_send_data, ptr @__kstrtabns_rxrpc_kernel_send_data }, section "___ksymtab+rxrpc_kernel_send_data", align 4
@rxrpc_kernel_abort_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] ==> %s({%d},%d,%d,%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rxrpc_kernel_abort_call\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_kernel_abort_call._entry_ptr = internal global ptr @rxrpc_kernel_abort_call._entry, section ".printk_index", align 4
@__kstrtab_rxrpc_kernel_abort_call = external dso_local constant [0 x i8], align 1
@__kstrtabns_rxrpc_kernel_abort_call = external dso_local constant [0 x i8], align 1
@__ksymtab_rxrpc_kernel_abort_call = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rxrpc_kernel_abort_call to i32), ptr @__kstrtab_rxrpc_kernel_abort_call, ptr @__kstrtabns_rxrpc_kernel_abort_call }, section "___ksymtab+rxrpc_kernel_abort_call", align 4
@__kstrtab_rxrpc_kernel_set_tx_length = external dso_local constant [0 x i8], align 1
@__kstrtabns_rxrpc_kernel_set_tx_length = external dso_local constant [0 x i8], align 1
@__ksymtab_rxrpc_kernel_set_tx_length = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rxrpc_kernel_set_tx_length to i32), ptr @__kstrtab_rxrpc_kernel_set_tx_length, ptr @__kstrtabns_rxrpc_kernel_set_tx_length }, section "___ksymtab+rxrpc_kernel_set_tx_length", align 4
@rxrpc_sendmsg_cmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     CMSG %d, %d, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_sendmsg_cmsg\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_sendmsg_cmsg._entry_ptr = internal global ptr @rxrpc_sendmsg_cmsg._entry, section ".printk_index", align 4
@rxrpc_sendmsg_cmsg._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_sendmsg_cmsg._entry_ptr.29 = internal global ptr @rxrpc_sendmsg_cmsg._entry.27, section ".printk_index", align 4
@rxrpc_new_client_call_for_sendmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.30, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rxrpc_new_client_call_for_sendmsg\00", [62 x i8] zeroinitializer }, align 32
@rxrpc_new_client_call_for_sendmsg._entry_ptr = internal global ptr @rxrpc_new_client_call_for_sendmsg._entry, section ".printk_index", align 4
@rxrpc_debug_id = external dso_local global %struct.atomic_t, align 4
@rxrpc_new_client_call_for_sendmsg._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() = %p\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_new_client_call_for_sendmsg._entry_ptr.33 = internal global ptr @rxrpc_new_client_call_for_sendmsg._entry.31, section ".printk_index", align 4
@__tracepoint_rxrpc_timer = external dso_local global %struct.tracepoint, align 4
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_timer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%-6.6s]     alloc\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxrpc_send_data\00", [16 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr = internal global ptr @rxrpc_send_data._entry, section ".printk_index", align 4
@rxrpc_send_data._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s]     SIZE: %zu/%zu @%zu\0A\00", [63 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr.41 = internal global ptr @rxrpc_send_data._entry.39, section ".printk_index", align 4
@rxrpc_send_data._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     ALLOC SEND %p\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr.44 = internal global ptr @rxrpc_send_data._entry.42, section ".printk_index", align 4
@rxrpc_send_data._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.38, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr.46 = internal global ptr @rxrpc_send_data._entry.45, section ".printk_index", align 4
@rxrpc_send_data._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.38, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%-6.6s] @@@ skb: hr %d, tr %d, hl %d, rm %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr.49 = internal global ptr @rxrpc_send_data._entry.47, section ".printk_index", align 4
@rxrpc_send_data._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.38, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s]     append\0A\00", [43 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr.52 = internal global ptr @rxrpc_send_data._entry.50, section ".printk_index", align 4
@rxrpc_send_data._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.38, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr.54 = internal global ptr @rxrpc_send_data._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c">\00", [30 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.38, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%-6.6s]     add\0A\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr.58 = internal global ptr @rxrpc_send_data._entry.56, section ".printk_index", align 4
@rxrpc_send_data._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.38, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%-6.6s]     added\0A\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr.61 = internal global ptr @rxrpc_send_data._entry.59, section ".printk_index", align 4
@rxrpc_send_data._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.38, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr.63 = internal global ptr @rxrpc_send_data._entry.62, section ".printk_index", align 4
@rxrpc_send_data._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.38, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_send_data._entry_ptr.65 = internal global ptr @rxrpc_send_data._entry.64, section ".printk_index", align 4
@rxrpc_wait_for_tx_window._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] ==> %s(,{%u,%u,%u})\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxrpc_wait_for_tx_window\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_wait_for_tx_window._entry_ptr = internal global ptr @rxrpc_wait_for_tx_window._entry, section ".printk_index", align 4
@rxrpc_wait_for_tx_window._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.67, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_wait_for_tx_window._entry_ptr.69 = internal global ptr @rxrpc_wait_for_tx_window._entry.68, section ".printk_index", align 4
@__tracepoint_rxrpc_transmit = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_transmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_queue_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] @@@ queue skb %p [%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_queue_packet\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_queue_packet._entry_ptr = internal global ptr @rxrpc_queue_packet._entry, section ".printk_index", align 4
@rxrpc_queue_packet._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.74, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_queue_packet._entry_ptr.76 = internal global ptr @rxrpc_queue_packet._entry.75, section ".printk_index", align 4
@rxrpc_queue_packet._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.74, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%-6.6s]     ________awaiting reply/ACK__________\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_queue_packet._entry_ptr.79 = internal global ptr @rxrpc_queue_packet._entry.77, section ".printk_index", align 4
@rxrpc_queue_packet._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.74, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s]     need instant resend %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rxrpc_queue_packet._entry_ptr.82 = internal global ptr @rxrpc_queue_packet._entry.80, section ".printk_index", align 4
@rxrpc_queue_packet._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.74, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_queue_packet._entry_ptr.84 = internal global ptr @rxrpc_queue_packet._entry.83, section ".printk_index", align 4
@__tracepoint_rxrpc_rx_eproto = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_rx_eproto.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 8, i64 9]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 4294967183, i64 4294967185, i64 4294967195]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 8, i64 9, i64 11]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 639, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 722, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 730, i32 24 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 751, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 778, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 780, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 781, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 785, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 802, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 808, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 829, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 484, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 566, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 587, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 610, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1138, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 108, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 332, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 355, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 367, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 369, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 377, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 386, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 392, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 398, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 400, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 449, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 454, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 135, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 156, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 230, i32 6 }
@___asan_gen_.269 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 214, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2789, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 204, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 206, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 228, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 268, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.299 = private constant [23 x i8] c"../net/rxrpc/sendmsg.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 281, i32 2 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__ksymtab_rxrpc_kernel_abort_call, ptr @__ksymtab_rxrpc_kernel_send_data, ptr @__ksymtab_rxrpc_kernel_set_tx_length, ptr @rxrpc_do_sendmsg._entry, ptr @rxrpc_do_sendmsg._entry.3, ptr @rxrpc_do_sendmsg._entry.7, ptr @rxrpc_do_sendmsg._entry_ptr, ptr @rxrpc_do_sendmsg._entry_ptr.5, ptr @rxrpc_do_sendmsg._entry_ptr.9, ptr @rxrpc_kernel_abort_call._entry, ptr @rxrpc_kernel_abort_call._entry_ptr, ptr @rxrpc_kernel_send_data.___tp_str, ptr @rxrpc_kernel_send_data._entry, ptr @rxrpc_kernel_send_data._entry.12, ptr @rxrpc_kernel_send_data._entry.16, ptr @rxrpc_kernel_send_data._entry.18, ptr @rxrpc_kernel_send_data._entry.21, ptr @rxrpc_kernel_send_data._entry_ptr, ptr @rxrpc_kernel_send_data._entry_ptr.14, ptr @rxrpc_kernel_send_data._entry_ptr.17, ptr @rxrpc_kernel_send_data._entry_ptr.19, ptr @rxrpc_kernel_send_data._entry_ptr.22, ptr @rxrpc_new_client_call_for_sendmsg._entry, ptr @rxrpc_new_client_call_for_sendmsg._entry.31, ptr @rxrpc_new_client_call_for_sendmsg._entry_ptr, ptr @rxrpc_new_client_call_for_sendmsg._entry_ptr.33, ptr @rxrpc_queue_packet._entry, ptr @rxrpc_queue_packet._entry.75, ptr @rxrpc_queue_packet._entry.77, ptr @rxrpc_queue_packet._entry.80, ptr @rxrpc_queue_packet._entry.83, ptr @rxrpc_queue_packet._entry_ptr, ptr @rxrpc_queue_packet._entry_ptr.76, ptr @rxrpc_queue_packet._entry_ptr.79, ptr @rxrpc_queue_packet._entry_ptr.82, ptr @rxrpc_queue_packet._entry_ptr.84, ptr @rxrpc_send_data._entry, ptr @rxrpc_send_data._entry.39, ptr @rxrpc_send_data._entry.42, ptr @rxrpc_send_data._entry.45, ptr @rxrpc_send_data._entry.47, ptr @rxrpc_send_data._entry.50, ptr @rxrpc_send_data._entry.53, ptr @rxrpc_send_data._entry.56, ptr @rxrpc_send_data._entry.59, ptr @rxrpc_send_data._entry.62, ptr @rxrpc_send_data._entry.64, ptr @rxrpc_send_data._entry_ptr, ptr @rxrpc_send_data._entry_ptr.41, ptr @rxrpc_send_data._entry_ptr.44, ptr @rxrpc_send_data._entry_ptr.46, ptr @rxrpc_send_data._entry_ptr.49, ptr @rxrpc_send_data._entry_ptr.52, ptr @rxrpc_send_data._entry_ptr.54, ptr @rxrpc_send_data._entry_ptr.58, ptr @rxrpc_send_data._entry_ptr.61, ptr @rxrpc_send_data._entry_ptr.63, ptr @rxrpc_send_data._entry_ptr.65, ptr @rxrpc_sendmsg_cmsg._entry, ptr @rxrpc_sendmsg_cmsg._entry.27, ptr @rxrpc_sendmsg_cmsg._entry_ptr, ptr @rxrpc_sendmsg_cmsg._entry_ptr.29, ptr @rxrpc_wait_for_tx_window._entry, ptr @rxrpc_wait_for_tx_window._entry.68, ptr @rxrpc_wait_for_tx_window._entry_ptr, ptr @rxrpc_wait_for_tx_window._entry_ptr.69, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.48, ptr @.str.51, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.66, ptr @.str.67, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.78, ptr @.str.81], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_do_sendmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_do_sendmsg._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_do_sendmsg._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kernel_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kernel_send_data._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kernel_send_data._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kernel_send_data._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kernel_send_data._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kernel_abort_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_sendmsg_cmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_sendmsg_cmsg._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_client_call_for_sendmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_client_call_for_sendmsg._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_send_data._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_wait_for_tx_window._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_wait_for_tx_window._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_queue_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_queue_packet._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_queue_packet._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_queue_packet._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_queue_packet._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_do_sendmsg(ptr noundef %rx, ptr noundef %msg, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %cp.i = alloca %struct.rxrpc_conn_parameters, align 4
  %p = alloca %struct.rxrpc_send_params, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %p) #8
  %0 = getelementptr inbounds i8, ptr %p, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %p, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %3 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !174

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %msg_controllen.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %8 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_controllen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %cmp2.i = icmp ugt i32 %9, 11
  br i1 %cmp2.i, label %cond.end.i, label %do.end7.error_release_sock_crit_edge

do.end7.error_release_sock_crit_edge:             ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

cond.end.i:                                       ; preds = %do.end7
  %10 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %tobool.not236.i = icmp eq ptr %12, null
  br i1 %tobool.not236.i, label %cond.end.i.error_release_sock_crit_edge, label %for.body.lr.ph.i

cond.end.i.error_release_sock_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

for.body.lr.ph.i:                                 ; preds = %cond.end.i
  %timeouts.i = getelementptr inbounds %struct.rxrpc_call_params, ptr %p, i32 0, i32 2
  %nr_timeouts.i = getelementptr inbounds %struct.rxrpc_call_params, ptr %p, i32 0, i32 3
  %idle.i = getelementptr inbounds %struct.rxrpc_call_params, ptr %p, i32 0, i32 2, i32 1
  %normal.i = getelementptr inbounds %struct.rxrpc_call_params, ptr %p, i32 0, i32 2, i32 2
  %upgrade.i = getelementptr inbounds %struct.rxrpc_send_params, ptr %p, i32 0, i32 4
  %exclusive.i = getelementptr inbounds %struct.rxrpc_send_params, ptr %p, i32 0, i32 3
  %command53.i = getelementptr inbounds %struct.rxrpc_send_params, ptr %p, i32 0, i32 2
  %abort_code.i = getelementptr inbounds %struct.rxrpc_send_params, ptr %p, i32 0, i32 1
  %user_call_ID37.i = getelementptr inbounds %struct.rxrpc_call_params, ptr %p, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cmsg.0238.i = phi ptr [ %12, %for.body.lr.ph.i ], [ %add.ptr.i.i.i, %for.inc.i.for.body.i_crit_edge ]
  %got_user_ID.0.off0237.i = phi i1 [ false, %for.body.lr.ph.i ], [ %got_user_ID.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %cmsg.0238.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmsg.0238.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %14)
  %cmp3.i = icmp ugt i32 %14, 11
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.error_release_sock_crit_edge

for.body.i.error_release_sock_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

land.lhs.true.i:                                  ; preds = %for.body.i
  %15 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_controllen.i, align 8
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %cmsg.0238.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.neg.i = sub i32 %16, %sub.ptr.lhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.neg.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub.i)
  %cmp6.not.i = icmp ugt i32 %14, %sub.i
  br i1 %cmp6.not.i, label %land.lhs.true.i.error_release_sock_crit_edge, label %if.end8.i

land.lhs.true.i.error_release_sock_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end8.i:                                        ; preds = %land.lhs.true.i
  %sub10.i = add i32 %14, -12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %19 = load i32, ptr @rxrpc_debug, align 4
  %and.i316 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i316)
  %tobool11.not.i = icmp eq i32 %and.i316, 0
  br i1 %tobool11.not.i, label %if.end8.i.do.end19.i_crit_edge, label %do.end.i, !prof !174

if.end8.i.do.end19.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %cmsg_level.i = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.0238.i, i32 0, i32 1
  %24 = ptrtoint ptr %cmsg_level.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmsg_level.i, align 4
  %cmsg_type.i = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.0238.i, i32 0, i32 2
  %26 = ptrtoint ptr %cmsg_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmsg_type.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm.i, i32 noundef %25, i32 noundef %27, i32 noundef %sub10.i) #11
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end.i, %if.end8.i.do.end19.i_crit_edge
  %cmsg_level20.i = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.0238.i, i32 0, i32 1
  %28 = ptrtoint ptr %cmsg_level20.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmsg_level20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %29)
  %cmp21.not.i = icmp eq i32 %29, 272
  br i1 %cmp21.not.i, label %if.end23.i, label %do.end19.i.for.inc.i_crit_edge

do.end19.i.for.inc.i_crit_edge:                   ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end23.i:                                       ; preds = %do.end19.i
  %cmsg_type24.i = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.0238.i, i32 0, i32 2
  %30 = ptrtoint ptr %cmsg_type24.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmsg_type24.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.end23.i.error_release_sock_crit_edge [
    i32 1, label %if.else.i317
    i32 2, label %sw.bb39.i
    i32 14, label %sw.bb52.i
    i32 10, label %sw.bb63.i
    i32 11, label %sw.bb67.i
    i32 12, label %sw.bb71.i
    i32 13, label %sw.bb85.i
  ]

if.end23.i.error_release_sock_crit_edge:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.else.i317:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub10.i)
  %cmp32.not.i = icmp eq i32 %sub10.i, 4
  br i1 %cmp32.not.i, label %if.end34.i, label %if.else.i317.error_release_sock_crit_edge

if.else.i317.error_release_sock_crit_edge:        ; preds = %if.else.i317
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end34.i:                                       ; preds = %if.else.i317
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr35.i = getelementptr i8, ptr %cmsg.0238.i, i32 12
  %33 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr35.i, align 4
  %35 = ptrtoint ptr %user_call_ID37.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %user_call_ID37.i, align 8
  br label %for.inc.i

sw.bb39.i:                                        ; preds = %if.end23.i
  %36 = ptrtoint ptr %command53.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i = load i8, ptr %command53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %cmp40.not.i = icmp eq i8 %bf.load.i, 0
  br i1 %cmp40.not.i, label %if.end42.i, label %sw.bb39.i.error_release_sock_crit_edge

sw.bb39.i.error_release_sock_crit_edge:           ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end42.i:                                       ; preds = %sw.bb39.i
  %37 = ptrtoint ptr %command53.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %command53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub10.i)
  %cmp44.not.i = icmp eq i32 %sub10.i, 4
  br i1 %cmp44.not.i, label %if.end46.i, label %if.end42.i.error_release_sock_crit_edge

if.end42.i.error_release_sock_crit_edge:          ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end46.i:                                       ; preds = %if.end42.i
  %add.ptr47.i = getelementptr i8, ptr %cmsg.0238.i, i32 12
  %38 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr47.i, align 4
  %40 = ptrtoint ptr %abort_code.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %abort_code.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp49.i = icmp eq i32 %39, 0
  br i1 %cmp49.i, label %if.end46.i.error_release_sock_crit_edge, label %if.end46.i.for.inc.i_crit_edge

if.end46.i.for.inc.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end46.i.error_release_sock_crit_edge:          ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

sw.bb52.i:                                        ; preds = %if.end23.i
  %41 = ptrtoint ptr %command53.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load54.i = load i8, ptr %command53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load54.i)
  %cmp56.not.i = icmp eq i8 %bf.load54.i, 0
  br i1 %cmp56.not.i, label %if.end58.i, label %sw.bb52.i.error_release_sock_crit_edge

sw.bb52.i.error_release_sock_crit_edge:           ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end58.i:                                       ; preds = %sw.bb52.i
  %42 = ptrtoint ptr %command53.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %command53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp60.not.i = icmp eq i32 %sub10.i, 0
  br i1 %cmp60.not.i, label %if.end58.i.for.inc.i_crit_edge, label %if.end58.i.error_release_sock_crit_edge

if.end58.i.error_release_sock_crit_edge:          ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end58.i.for.inc.i_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb63.i:                                        ; preds = %if.end23.i
  %43 = ptrtoint ptr %exclusive.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %exclusive.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp64.not.i = icmp eq i32 %sub10.i, 0
  br i1 %cmp64.not.i, label %sw.bb63.i.for.inc.i_crit_edge, label %sw.bb63.i.error_release_sock_crit_edge

sw.bb63.i.error_release_sock_crit_edge:           ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

sw.bb63.i.for.inc.i_crit_edge:                    ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb67.i:                                        ; preds = %if.end23.i
  %44 = ptrtoint ptr %upgrade.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %upgrade.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp68.not.i = icmp eq i32 %sub10.i, 0
  br i1 %cmp68.not.i, label %sw.bb67.i.for.inc.i_crit_edge, label %sw.bb67.i.error_release_sock_crit_edge

sw.bb67.i.error_release_sock_crit_edge:           ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

sw.bb67.i.for.inc.i_crit_edge:                    ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb71.i:                                        ; preds = %if.end23.i
  %45 = ptrtoint ptr %p to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %p, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %46)
  %cmp73.not.i = icmp eq i64 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub10.i)
  %cmp74.not.i = icmp eq i32 %sub10.i, 8
  %or.cond.i = select i1 %cmp73.not.i, i1 %cmp74.not.i, i1 false
  br i1 %or.cond.i, label %if.end76.i, label %sw.bb71.i.error_release_sock_crit_edge

sw.bb71.i.error_release_sock_crit_edge:           ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end76.i:                                       ; preds = %sw.bb71.i
  %add.ptr77.i = getelementptr i8, ptr %cmsg.0238.i, i32 12
  %47 = ptrtoint ptr %add.ptr77.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr77.i, align 8
  %49 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %p, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %cmp82.i = icmp slt i64 %48, 0
  br i1 %cmp82.i, label %if.end76.i.error_release_sock_crit_edge, label %if.end76.i.for.inc.i_crit_edge

if.end76.i.for.inc.i_crit_edge:                   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end76.i.error_release_sock_crit_edge:          ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

sw.bb85.i:                                        ; preds = %if.end23.i
  %and86.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp ne i32 %and86.i, 0
  %50 = add i32 %14, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %50)
  %51 = icmp ult i32 %50, -9
  %52 = or i1 %51, %tobool87.not.i
  br i1 %52, label %sw.bb85.i.error_release_sock_crit_edge, label %if.end93.i

sw.bb85.i.error_release_sock_crit_edge:           ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end93.i:                                       ; preds = %sw.bb85.i
  %add.ptr95.i = getelementptr i8, ptr %cmsg.0238.i, i32 12
  %53 = call ptr @memcpy(ptr %timeouts.i, ptr %add.ptr95.i, i32 %sub10.i)
  %54 = trunc i32 %sub10.i to i8
  %55 = lshr i8 %54, 2
  %56 = ptrtoint ptr %nr_timeouts.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %nr_timeouts.i, align 8
  %57 = ptrtoint ptr %timeouts.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %timeouts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21474836, i32 %58)
  %cmp99.i = icmp ugt i32 %58, 21474836
  br i1 %cmp99.i, label %if.end93.i.error_release_sock_crit_edge, label %if.end102.i

if.end93.i.error_release_sock_crit_edge:          ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end102.i:                                      ; preds = %if.end93.i
  %59 = and i32 %sub10.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp106.not.i = icmp eq i32 %59, 0
  br i1 %cmp106.not.i, label %if.end102.i.if.end114.i_crit_edge, label %land.lhs.true108.i

if.end102.i.if.end114.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i

land.lhs.true108.i:                               ; preds = %if.end102.i
  %60 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %idle.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600000, i32 %61)
  %cmp111.i = icmp ugt i32 %61, 3600000
  br i1 %cmp111.i, label %land.lhs.true108.i.error_release_sock_crit_edge, label %land.lhs.true108.i.if.end114.i_crit_edge

land.lhs.true108.i.if.end114.i_crit_edge:         ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i

land.lhs.true108.i.error_release_sock_crit_edge:  ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end114.i:                                      ; preds = %land.lhs.true108.i.if.end114.i_crit_edge, %if.end102.i.if.end114.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %54)
  %cmp118.i = icmp ugt i8 %54, 11
  br i1 %cmp118.i, label %land.lhs.true120.i, label %if.end114.i.for.inc.i_crit_edge

if.end114.i.for.inc.i_crit_edge:                  ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true120.i:                               ; preds = %if.end114.i
  %62 = ptrtoint ptr %normal.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %normal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600000, i32 %63)
  %cmp123.i = icmp ugt i32 %63, 3600000
  br i1 %cmp123.i, label %land.lhs.true120.i.error_release_sock_crit_edge, label %land.lhs.true120.i.for.inc.i_crit_edge

land.lhs.true120.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true120.i.error_release_sock_crit_edge:  ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

for.inc.i:                                        ; preds = %land.lhs.true120.i.for.inc.i_crit_edge, %if.end114.i.for.inc.i_crit_edge, %if.end76.i.for.inc.i_crit_edge, %sw.bb67.i.for.inc.i_crit_edge, %sw.bb63.i.for.inc.i_crit_edge, %if.end58.i.for.inc.i_crit_edge, %if.end46.i.for.inc.i_crit_edge, %if.end34.i, %do.end19.i.for.inc.i_crit_edge
  %got_user_ID.1.off0.i = phi i1 [ %got_user_ID.0.off0237.i, %do.end19.i.for.inc.i_crit_edge ], [ %got_user_ID.0.off0237.i, %land.lhs.true120.i.for.inc.i_crit_edge ], [ %got_user_ID.0.off0237.i, %if.end114.i.for.inc.i_crit_edge ], [ %got_user_ID.0.off0237.i, %if.end76.i.for.inc.i_crit_edge ], [ %got_user_ID.0.off0237.i, %sw.bb67.i.for.inc.i_crit_edge ], [ %got_user_ID.0.off0237.i, %sw.bb63.i.for.inc.i_crit_edge ], [ %got_user_ID.0.off0237.i, %if.end58.i.for.inc.i_crit_edge ], [ %got_user_ID.0.off0237.i, %if.end46.i.for.inc.i_crit_edge ], [ true, %if.end34.i ]
  %64 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %10, align 8
  %66 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_controllen.i, align 8
  %68 = ptrtoint ptr %cmsg.0238.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cmsg.0238.i, align 4
  %sub.i.i.i = add i32 %69, 3
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %add.ptr.i.i.i = getelementptr i8, ptr %cmsg.0238.i, i32 %and.i.i.i
  %add.ptr1.i.i.i = getelementptr %struct.cmsghdr, ptr %add.ptr.i.i.i, i32 1
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %65 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %67)
  %cmp.i.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i, %67
  %tobool.not242.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not242.i
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %got_user_ID.1.off0.i, label %if.end130.i, label %for.end.i.error_release_sock_crit_edge

for.end.i.error_release_sock_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end130.i:                                      ; preds = %for.end.i
  %70 = ptrtoint ptr %p to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %p, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %71)
  %cmp133.not.i = icmp eq i64 %71, -1
  br i1 %cmp133.not.i, label %if.end130.i.do.body143.i_crit_edge, label %land.lhs.true135.i

if.end130.i.do.body143.i_crit_edge:               ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body143.i

land.lhs.true135.i:                               ; preds = %if.end130.i
  %72 = ptrtoint ptr %command53.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load137.i = load i8, ptr %command53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load137.i)
  %cmp139.not.i = icmp eq i8 %bf.load137.i, 0
  br i1 %cmp139.not.i, label %land.lhs.true135.i.do.body143.i_crit_edge, label %land.lhs.true135.i.error_release_sock_crit_edge

land.lhs.true135.i.error_release_sock_crit_edge:  ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

land.lhs.true135.i.do.body143.i_crit_edge:        ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body143.i

do.body143.i:                                     ; preds = %land.lhs.true135.i.do.body143.i_crit_edge, %if.end130.i.do.body143.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %73 = load i32, ptr @rxrpc_debug, align 4
  %and144.i = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144.i)
  %tobool145.not.i = icmp eq i32 %and144.i, 0
  br i1 %tobool145.not.i, label %do.body143.i.if.end10_crit_edge, label %do.end155.i, !prof !174

do.body143.i.if.end10_crit_edge:                  ; preds = %do.body143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end155.i:                                      ; preds = %do.body143.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i231.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i231.i to ptr
  %task158.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task158.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task158.i, align 8
  %comm159.i = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 101
  %call161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm159.i, ptr noundef nonnull @.str.26) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end155.i, %do.body143.i.if.end10_crit_edge
  %78 = ptrtoint ptr %command53.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load = load i8, ptr %command53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load)
  %cmp11 = icmp eq i8 %bf.load, 3
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %rx, i32 0, i32 4
  %79 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %80)
  %cmp13.not = icmp eq i8 %80, 5
  br i1 %cmp13.not, label %if.end16, label %if.then12.error_release_sock_crit_edge

if.then12.error_release_sock_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end16:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %user_call_ID37.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %user_call_ID37.i, align 8
  %call18 = tail call i32 @rxrpc_user_charge_accept(ptr noundef %rx, i32 noundef %82) #8
  br label %error_release_sock

if.end19:                                         ; preds = %if.end10
  %83 = ptrtoint ptr %user_call_ID37.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %user_call_ID37.i, align 8
  %call22 = tail call ptr @rxrpc_find_call_by_user_ID(ptr noundef %rx, i32 noundef %84) #8
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then24, label %do.end48

if.then24:                                        ; preds = %if.end19
  %85 = ptrtoint ptr %command53.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load26 = load i8, ptr %command53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load26)
  %cmp28.not = icmp eq i8 %bf.load26, 0
  br i1 %cmp28.not, label %if.end31, label %if.then24.error_release_sock_crit_edge

if.then24.error_release_sock_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_release_sock

if.end31:                                         ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cp.i) #8
  %86 = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp.i, i32 0, i32 1
  %87 = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp.i, i32 0, i32 2
  %88 = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp.i, i32 0, i32 3
  %89 = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp.i, i32 0, i32 4
  %90 = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp.i, i32 0, i32 5
  %91 = getelementptr inbounds %struct.rxrpc_conn_parameters, ptr %cp.i, i32 0, i32 6
  %92 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %msg, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %94 = load i32, ptr @rxrpc_debug, align 4
  %and.i319 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i319)
  %tobool.not.i320 = icmp eq i32 %and.i319, 0
  br i1 %tobool.not.i320, label %if.end31.do.end11.i_crit_edge, label %do.end6.i, !prof !174

if.end31.do.end11.i_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

do.end6.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %95 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i.i321 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i321 to ptr
  %task.i322 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i322 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i322, align 8
  %comm.i323 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 101
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i323, ptr noundef nonnull @.str.30) #11
  %99 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr.i = load ptr, ptr %msg, align 8
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end6.i, %if.end31.do.end11.i_crit_edge
  %100 = phi ptr [ %.pr.i, %do.end6.i ], [ %93, %if.end31.do.end11.i_crit_edge ]
  %tobool13.not.i = icmp eq ptr %100, null
  br i1 %tobool13.not.i, label %rxrpc_new_client_call_for_sendmsg.exit.thread, label %if.end16.i

rxrpc_new_client_call_for_sendmsg.exit.thread:    ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_sock(ptr noundef %rx) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cp.i) #8
  br label %if.then34

if.end16.i:                                       ; preds = %do.end11.i
  %key17.i = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 10
  %101 = ptrtoint ptr %key17.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %key17.i, align 8
  %103 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %86, align 4
  %local.i = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 3
  %104 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %local.i, align 8
  %106 = ptrtoint ptr %cp.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %cp.i, align 4
  %107 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %102, ptr %87, align 4
  %min_sec_level.i = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 15
  %108 = ptrtoint ptr %min_sec_level.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %min_sec_level.i, align 4
  %110 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %91, align 4
  %exclusive.i324 = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 16
  %111 = ptrtoint ptr %exclusive.i324 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %exclusive.i324, align 8, !range !175
  %113 = ptrtoint ptr %exclusive.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %exclusive.i, align 1, !range !175
  %or75.i = or i8 %114, %112
  %115 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %or75.i, ptr %88, align 4
  %116 = ptrtoint ptr %upgrade.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %upgrade.i, align 2, !range !175
  %118 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %89, align 1
  %srx_service.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %93, i32 0, i32 1
  %119 = ptrtoint ptr %srx_service.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %srx_service.i, align 2
  %121 = ptrtoint ptr %90 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %90, align 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rxrpc_debug_id, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr nonnull @rxrpc_debug_id, i32 1, i32 3, i32 1) #8
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rxrpc_debug_id, ptr nonnull @rxrpc_debug_id, i32 1, ptr nonnull elementtype(i32) @rxrpc_debug_id) #8, !srcloc !177
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %122, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !178
  %call37.i = call ptr @rxrpc_new_client_call(ptr noundef %rx, ptr noundef nonnull %cp.i, ptr noundef %93, ptr noundef nonnull %p, i32 noundef 3264, i32 noundef %asmresult.i.i.i.i.i) #8
  %123 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %86, align 4
  call void @rxrpc_put_peer(ptr noundef %124) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %125 = load i32, ptr @rxrpc_debug, align 4
  %and39.i = and i32 %125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end16.i.rxrpc_new_client_call_for_sendmsg.exit_crit_edge, label %do.end50.i, !prof !174

if.end16.i.rxrpc_new_client_call_for_sendmsg.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rxrpc_new_client_call_for_sendmsg.exit

do.end50.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i76.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i76.i to ptr
  %task53.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %task53.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %task53.i, align 8
  %comm54.i = getelementptr inbounds %struct.task_struct, ptr %129, i32 0, i32 101
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %comm54.i, ptr noundef nonnull @.str.30, ptr noundef %call37.i) #11
  br label %rxrpc_new_client_call_for_sendmsg.exit

rxrpc_new_client_call_for_sendmsg.exit:           ; preds = %do.end50.i, %if.end16.i.rxrpc_new_client_call_for_sendmsg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cp.i) #8
  %cmp.i327 = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i327, label %rxrpc_new_client_call_for_sendmsg.exit.if.then34_crit_edge, label %if.end36

rxrpc_new_client_call_for_sendmsg.exit.if.then34_crit_edge: ; preds = %rxrpc_new_client_call_for_sendmsg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %rxrpc_new_client_call_for_sendmsg.exit.if.then34_crit_edge, %rxrpc_new_client_call_for_sendmsg.exit.thread
  %retval.0.i326334 = phi ptr [ inttoptr (i32 -89 to ptr), %rxrpc_new_client_call_for_sendmsg.exit.thread ], [ %call37.i, %rxrpc_new_client_call_for_sendmsg.exit.if.then34_crit_edge ]
  %130 = ptrtoint ptr %retval.0.i326334 to i32
  br label %cleanup

if.end36:                                         ; preds = %rxrpc_new_client_call_for_sendmsg.exit
  %state41 = getelementptr inbounds %struct.rxrpc_call, ptr %call37.i, i32 0, i32 40
  %131 = ptrtoint ptr %state41 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %state41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %132)
  %cmp42 = icmp eq i32 %132, 11
  br i1 %cmp42, label %if.end36.out_put_unlock_crit_edge, label %if.end36.if.end74_crit_edge

if.end36.if.end74_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end36.out_put_unlock_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_unlock

do.end48:                                         ; preds = %if.end19
  %state50 = getelementptr inbounds %struct.rxrpc_call, ptr %call22, i32 0, i32 40
  %133 = ptrtoint ptr %state50 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %state50, align 8
  %135 = zext i32 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %134, label %sw.epilog [
    i32 0, label %do.end48.sw.bb_crit_edge
    i32 1, label %do.end48.sw.bb_crit_edge349
    i32 5, label %do.end48.sw.bb_crit_edge350
    i32 6, label %do.end48.sw.bb_crit_edge351
  ]

do.end48.sw.bb_crit_edge351:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end48.sw.bb_crit_edge350:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end48.sw.bb_crit_edge349:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end48.sw.bb_crit_edge:                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %do.end48.sw.bb_crit_edge, %do.end48.sw.bb_crit_edge349, %do.end48.sw.bb_crit_edge350, %do.end48.sw.bb_crit_edge351
  tail call void @rxrpc_put_call(ptr noundef nonnull %call22, i32 noundef 7) #8
  br label %error_release_sock

sw.epilog:                                        ; preds = %do.end48
  %user_mutex = getelementptr inbounds %struct.rxrpc_call, ptr %call22, i32 0, i32 6
  %call51 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %user_mutex, i32 noundef 0) #8
  tail call void @release_sock(ptr noundef %rx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp53 = icmp slt i32 %call51, 0
  br i1 %cmp53, label %sw.epilog.error_put_crit_edge, label %if.end56

sw.epilog.error_put_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put

if.end56:                                         ; preds = %sw.epilog
  %136 = ptrtoint ptr %p to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %p, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %137)
  %cmp58.not = icmp eq i64 %137, -1
  br i1 %cmp58.not, label %if.end56.if.end74_crit_edge, label %if.then60

if.end56.if.end74_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then60:                                        ; preds = %if.end56
  %tx_total_len61 = getelementptr inbounds %struct.rxrpc_call, ptr %call22, i32 0, i32 30
  %138 = ptrtoint ptr %tx_total_len61 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %tx_total_len61, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %139)
  %cmp62.not = icmp eq i64 %139, -1
  br i1 %cmp62.not, label %lor.lhs.false, label %if.then60.error_put_crit_edge

if.then60.error_put_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put

lor.lhs.false:                                    ; preds = %if.then60
  %tx_pending = getelementptr inbounds %struct.rxrpc_call, ptr %call22, i32 0, i32 28
  %140 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %tx_pending, align 8
  %tobool64.not = icmp eq ptr %141, null
  br i1 %tobool64.not, label %lor.lhs.false65, label %lor.lhs.false.error_put_crit_edge

lor.lhs.false.error_put_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put

lor.lhs.false65:                                  ; preds = %lor.lhs.false
  %tx_top = getelementptr inbounds %struct.rxrpc_call, ptr %call22, i32 0, i32 55
  %142 = ptrtoint ptr %tx_top to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp66.not = icmp eq i32 %143, 0
  br i1 %cmp66.not, label %if.end69, label %lor.lhs.false65.error_put_crit_edge

lor.lhs.false65.error_put_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put

if.end69:                                         ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %tx_total_len61 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %137, ptr %tx_total_len61, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.end69, %if.end56.if.end74_crit_edge, %if.end36.if.end74_crit_edge
  %call.0 = phi ptr [ %call22, %if.end69 ], [ %call22, %if.end56.if.end74_crit_edge ], [ %call37.i, %if.end36.if.end74_crit_edge ]
  %145 = ptrtoint ptr %nr_timeouts.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nr_timeouts.i, align 8
  %147 = zext i8 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %146, label %if.end74.do.end144_crit_edge [
    i8 3, label %if.else.i
    i8 2, label %if.end74.if.else.i304_crit_edge
    i8 1, label %if.end74.sw.bb121_crit_edge
  ]

if.end74.sw.bb121_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb121

if.end74.if.else.i304_crit_edge:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i304

if.end74.do.end144_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

if.else.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %normal.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %normal.i, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %149) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp85 = icmp eq i32 %call2.i, 0
  %spec.select345 = select i1 %cmp85, i32 1, i32 %call2.i
  %150 = ptrtoint ptr %normal.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %normal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp83.not339 = icmp eq i32 %151, 0
  %j.0 = select i1 %cmp83.not339, i32 %call2.i, i32 %spec.select345
  %next_rx_timo = getelementptr inbounds %struct.rxrpc_call, ptr %call.0, i32 0, i32 15
  %152 = ptrtoint ptr %next_rx_timo to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 %j.0, ptr %next_rx_timo, align 8
  br label %if.else.i304

if.else.i304:                                     ; preds = %if.else.i, %if.end74.if.else.i304_crit_edge
  %153 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %idle.i, align 8
  %call2.i303 = call i32 @__msecs_to_jiffies(i32 noundef %154) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i303)
  %cmp108 = icmp eq i32 %call2.i303, 0
  %spec.select347 = select i1 %cmp108, i32 1, i32 %call2.i303
  %155 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %idle.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp105.not344 = icmp eq i32 %156, 0
  %j.1 = select i1 %cmp105.not344, i32 %call2.i303, i32 %spec.select347
  %next_req_timo = getelementptr inbounds %struct.rxrpc_call, ptr %call.0, i32 0, i32 16
  %157 = ptrtoint ptr %next_req_timo to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 %j.1, ptr %next_req_timo, align 4
  br label %sw.bb121

sw.bb121:                                         ; preds = %if.else.i304, %if.end74.sw.bb121_crit_edge
  %158 = ptrtoint ptr %timeouts.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %timeouts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp124.not = icmp eq i32 %159, 0
  br i1 %cmp124.not, label %sw.bb121.do.end144_crit_edge, label %if.else.i313

sw.bb121.do.end144_crit_edge:                     ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

if.else.i313:                                     ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i312 = call i32 @__msecs_to_jiffies(i32 noundef %159) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %160 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %160, %call2.i312
  %expect_term_by = getelementptr inbounds %struct.rxrpc_call, ptr %call.0, i32 0, i32 14
  %161 = ptrtoint ptr %expect_term_by to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile i32 %add, ptr %expect_term_by, align 4
  call fastcc void @trace_rxrpc_timer(ptr noundef %call.0, i32 noundef 14, i32 noundef %160) #8
  %timer.i = getelementptr inbounds %struct.rxrpc_call, ptr %call.0, i32 0, i32 18
  %call1.i = call i32 @timer_reduce(ptr noundef %timer.i, i32 noundef %add) #8
  br label %do.end144

do.end144:                                        ; preds = %if.else.i313, %sw.bb121.do.end144_crit_edge, %if.end74.do.end144_crit_edge
  %state146 = getelementptr inbounds %struct.rxrpc_call, ptr %call.0, i32 0, i32 40
  %162 = ptrtoint ptr %state146 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %state146, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %164 = load i32, ptr @rxrpc_debug, align 4
  %and148 = and i32 %164, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.end144.do.end169_crit_edge, label %do.end159, !prof !174

do.end144.do.end169_crit_edge:                    ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end169

do.end159:                                        ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #10
  %165 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i328 = and i32 %165, -16384
  %166 = inttoptr i32 %and.i328 to ptr
  %task162 = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %task162 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %task162, align 8
  %comm163 = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call.0, i32 0, i32 48
  %169 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %debug_id, align 4
  %user_call_ID165 = getelementptr inbounds %struct.rxrpc_call, ptr %call.0, i32 0, i32 32
  %171 = ptrtoint ptr %user_call_ID165 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %user_call_ID165, align 8
  %conn = getelementptr inbounds %struct.rxrpc_call, ptr %call.0, i32 0, i32 1
  %173 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %conn, align 8
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm163, i32 noundef %170, i32 noundef %172, i32 noundef %163, ptr noundef %174) #11
  br label %do.end169

do.end169:                                        ; preds = %do.end159, %do.end144.do.end169_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %163)
  %cmp170 = icmp ugt i32 %163, 10
  br i1 %cmp170, label %do.end169.out_put_unlock_crit_edge, label %if.else173

do.end169.out_put_unlock_crit_edge:               ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_unlock

if.else173:                                       ; preds = %do.end169
  %175 = ptrtoint ptr %command53.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %bf.load175 = load i8, ptr %command53.i, align 4
  %176 = zext i8 %bf.load175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %bf.load175, label %if.else173.out_put_unlock_crit_edge [
    i8 1, label %if.then179
    i8 0, label %if.else191
  ]

if.else173.out_put_unlock_crit_edge:              ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_unlock

if.then179:                                       ; preds = %if.else173
  %177 = ptrtoint ptr %abort_code.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %abort_code.i, align 8
  %call180 = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.6, ptr noundef %call.0, i32 noundef 0, i32 noundef %178, i32 noundef -103) #8
  br i1 %call180, label %if.then181, label %if.then179.out_put_unlock_crit_edge

if.then179.out_put_unlock_crit_edge:              ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_unlock

if.then181:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #10
  %call182 = call i32 @rxrpc_send_abort_packet(ptr noundef %call.0) #8
  br label %out_put_unlock

if.else191:                                       ; preds = %if.else173
  %flags.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call.0, i32 0, i32 33
  %179 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %flags.i.i, align 4
  %181 = and i32 %180, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool.i.not.i = icmp ne i32 %181, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %163)
  %cmp195.not = icmp eq i32 %163, 2
  %or.cond = select i1 %tobool.i.not.i, i1 true, i1 %cmp195.not
  br i1 %or.cond, label %if.else198, label %if.else191.out_put_unlock_crit_edge

if.else191.out_put_unlock_crit_edge:              ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_unlock

if.else198:                                       ; preds = %if.else191
  %182 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %flags.i.i, align 4
  %.fr348 = freeze i32 %183
  %184 = and i32 %.fr348, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.i.not = icmp eq i32 %184, 0
  %185 = and i32 %163, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %185)
  %switch = icmp eq i32 %185, 8
  %or.cond297 = select i1 %tobool.i.not, i1 true, i1 %switch
  br i1 %or.cond297, label %if.else208, label %if.else198.out_put_unlock_crit_edge

if.else198.out_put_unlock_crit_edge:              ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_unlock

if.else208:                                       ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #10
  %call209 = call fastcc i32 @rxrpc_send_data(ptr noundef %rx, ptr noundef %call.0, ptr noundef %msg, i32 noundef %len, ptr noundef null)
  br label %out_put_unlock

out_put_unlock:                                   ; preds = %if.else208, %if.else198.out_put_unlock_crit_edge, %if.else191.out_put_unlock_crit_edge, %if.then181, %if.then179.out_put_unlock_crit_edge, %if.else173.out_put_unlock_crit_edge, %do.end169.out_put_unlock_crit_edge, %if.end36.out_put_unlock_crit_edge
  %ret.0 = phi i32 [ %call182, %if.then181 ], [ 0, %if.then179.out_put_unlock_crit_edge ], [ %call209, %if.else208 ], [ 0, %if.end36.out_put_unlock_crit_edge ], [ -108, %do.end169.out_put_unlock_crit_edge ], [ -22, %if.else173.out_put_unlock_crit_edge ], [ -71, %if.else191.out_put_unlock_crit_edge ], [ -71, %if.else198.out_put_unlock_crit_edge ]
  %call.1 = phi ptr [ %call.0, %if.then181 ], [ %call.0, %if.then179.out_put_unlock_crit_edge ], [ %call.0, %if.else208 ], [ %call37.i, %if.end36.out_put_unlock_crit_edge ], [ %call.0, %do.end169.out_put_unlock_crit_edge ], [ %call.0, %if.else173.out_put_unlock_crit_edge ], [ %call.0, %if.else191.out_put_unlock_crit_edge ], [ %call.0, %if.else198.out_put_unlock_crit_edge ]
  %user_mutex215 = getelementptr inbounds %struct.rxrpc_call, ptr %call.1, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %user_mutex215) #8
  br label %error_put

error_put:                                        ; preds = %out_put_unlock, %lor.lhs.false65.error_put_crit_edge, %lor.lhs.false.error_put_crit_edge, %if.then60.error_put_crit_edge, %sw.epilog.error_put_crit_edge
  %ret.1 = phi i32 [ -22, %if.then60.error_put_crit_edge ], [ -22, %lor.lhs.false.error_put_crit_edge ], [ -22, %lor.lhs.false65.error_put_crit_edge ], [ %ret.0, %out_put_unlock ], [ -512, %sw.epilog.error_put_crit_edge ]
  %call.2 = phi ptr [ %call22, %if.then60.error_put_crit_edge ], [ %call22, %lor.lhs.false.error_put_crit_edge ], [ %call22, %lor.lhs.false65.error_put_crit_edge ], [ %call.1, %out_put_unlock ], [ %call22, %sw.epilog.error_put_crit_edge ]
  call void @rxrpc_put_call(ptr noundef %call.2, i32 noundef 7) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %186 = load i32, ptr @rxrpc_debug, align 4
  %and217 = and i32 %186, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %error_put.cleanup_crit_edge, label %do.end228, !prof !174

error_put.cleanup_crit_edge:                      ; preds = %error_put
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end228:                                        ; preds = %error_put
  call void @__sanitizer_cov_trace_pc() #10
  %187 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i329 = and i32 %187, -16384
  %188 = inttoptr i32 %and.i329 to ptr
  %task231 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %task231 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %task231, align 8
  %comm232 = getelementptr inbounds %struct.task_struct, ptr %190, i32 0, i32 101
  %call234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm232, ptr noundef nonnull @.str.1, i32 noundef %ret.1) #11
  br label %cleanup

error_release_sock:                               ; preds = %sw.bb, %if.then24.error_release_sock_crit_edge, %if.end16, %if.then12.error_release_sock_crit_edge, %land.lhs.true135.i.error_release_sock_crit_edge, %for.end.i.error_release_sock_crit_edge, %land.lhs.true120.i.error_release_sock_crit_edge, %land.lhs.true108.i.error_release_sock_crit_edge, %if.end93.i.error_release_sock_crit_edge, %sw.bb85.i.error_release_sock_crit_edge, %if.end76.i.error_release_sock_crit_edge, %sw.bb71.i.error_release_sock_crit_edge, %sw.bb67.i.error_release_sock_crit_edge, %sw.bb63.i.error_release_sock_crit_edge, %if.end58.i.error_release_sock_crit_edge, %sw.bb52.i.error_release_sock_crit_edge, %if.end46.i.error_release_sock_crit_edge, %if.end42.i.error_release_sock_crit_edge, %sw.bb39.i.error_release_sock_crit_edge, %if.else.i317.error_release_sock_crit_edge, %if.end23.i.error_release_sock_crit_edge, %land.lhs.true.i.error_release_sock_crit_edge, %for.body.i.error_release_sock_crit_edge, %cond.end.i.error_release_sock_crit_edge, %do.end7.error_release_sock_crit_edge
  %ret.2 = phi i32 [ -22, %if.then12.error_release_sock_crit_edge ], [ %call18, %if.end16 ], [ -16, %sw.bb ], [ -57, %if.then24.error_release_sock_crit_edge ], [ -22, %cond.end.i.error_release_sock_crit_edge ], [ -22, %land.lhs.true135.i.error_release_sock_crit_edge ], [ -22, %for.end.i.error_release_sock_crit_edge ], [ -22, %do.end7.error_release_sock_crit_edge ], [ -22, %if.end23.i.error_release_sock_crit_edge ], [ -34, %land.lhs.true120.i.error_release_sock_crit_edge ], [ -34, %land.lhs.true108.i.error_release_sock_crit_edge ], [ -34, %if.end93.i.error_release_sock_crit_edge ], [ -22, %sw.bb85.i.error_release_sock_crit_edge ], [ -22, %if.end76.i.error_release_sock_crit_edge ], [ -22, %sw.bb71.i.error_release_sock_crit_edge ], [ -22, %sw.bb67.i.error_release_sock_crit_edge ], [ -22, %sw.bb63.i.error_release_sock_crit_edge ], [ -22, %if.end58.i.error_release_sock_crit_edge ], [ -22, %sw.bb52.i.error_release_sock_crit_edge ], [ -22, %if.end46.i.error_release_sock_crit_edge ], [ -22, %if.end42.i.error_release_sock_crit_edge ], [ -22, %sw.bb39.i.error_release_sock_crit_edge ], [ -22, %if.else.i317.error_release_sock_crit_edge ], [ -22, %for.body.i.error_release_sock_crit_edge ], [ -22, %land.lhs.true.i.error_release_sock_crit_edge ]
  tail call void @release_sock(ptr noundef %rx) #8
  br label %cleanup

cleanup:                                          ; preds = %error_release_sock, %do.end228, %error_put.cleanup_crit_edge, %if.then34
  %retval.0 = phi i32 [ %ret.2, %error_release_sock ], [ %130, %if.then34 ], [ %ret.1, %do.end228 ], [ %ret.1, %error_put.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %p) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_user_charge_accept(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_find_call_by_user_ID(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_call(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_abort_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_send_abort_packet(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_send_data(ptr noundef %rx, ptr noundef %call, ptr noundef %msg, i32 noundef %len, ptr noundef readonly %notify_end_tx) unnamed_addr #0 align 64 {
entry:
  %csum.i = alloca i32, align 4
  %timeo = alloca i32, align 4
  %ret = alloca i32, align 4
  %bufsize = alloca i32, align 4
  %chunk = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #8
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !179
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %1 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_flags, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_sndtimeo.exit_crit_edge

entry.sock_sndtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %rx, i32 0, i32 31
  %3 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %4, %cond.false.i ], [ 0, %entry.sock_sndtimeo.exit_crit_edge ]
  %5 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i, ptr %timeo, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %rx, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge, label %if.end.i

sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge:   ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_clear_bit.exit

if.end.i:                                         ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = getelementptr inbounds %struct.sock, ptr %rx, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %12, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #8
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i, %sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %rx, i32 0, i32 66
  %13 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sk_shutdown, align 2
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %if.end, label %sk_clear_bit.exit.cleanup424_crit_edge

sk_clear_bit.exit.cleanup424_crit_edge:           ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup424

if.end:                                           ; preds = %sk_clear_bit.exit
  %16 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_flags, align 4
  %and6 = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %tx_total_len = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 30
  %18 = ptrtoint ptr %tx_total_len to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_total_len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %19)
  %cmp.not = icmp eq i64 %19, -1
  br i1 %cmp.not, label %if.end.if.end23_crit_edge, label %if.then9

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = xor i1 %tobool7.not, true
  br label %if.end23

if.then9:                                         ; preds = %if.end
  %conv10 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv10)
  %cmp12 = icmp slt i64 %19, %conv10
  br i1 %cmp12, label %if.then9.cleanup424_crit_edge, label %if.end15

if.then9.cleanup424_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup424

if.end15:                                         ; preds = %if.then9
  %tobool7.not.not = xor i1 %tobool7.not, true
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv10)
  %cmp19.not = icmp eq i64 %19, %conv10
  %or.cond = select i1 %tobool7.not.not, i1 true, i1 %cmp19.not
  br i1 %or.cond, label %if.end15.if.end23_crit_edge, label %if.end15.cleanup424_crit_edge

if.end15.cleanup424_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup424

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %if.end15.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %tobool7.not.not535.pre-phi = phi i1 [ %.pre, %if.end.if.end23_crit_edge ], [ %tobool7.not.not, %if.end15.if.end23_crit_edge ]
  %tx_pending = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 28
  %20 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_pending, align 8
  store ptr null, ptr %tx_pending, align 8
  tail call void @rxrpc_see_skb(ptr noundef %21, i32 noundef 8) #8
  %ackr_reason = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 73
  %tx_winsize.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 69
  %cong_cwnd.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 57
  %cong_extra.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 58
  %tx_hard_ack.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 54
  %tx_top.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 55
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %conn = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %security353 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 5
  %rxtx_annotations.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 53
  %rxtx_buffer.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 52
  %state_lock.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 37
  %ack_at.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 7
  %tobool.not.i232.i = icmp eq ptr %notify_end_tx, null
  %user_call_ID.i233.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 32
  %flags.i.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %peer.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %resend_at147.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 9
  %timer.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %lock.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 35
  %events.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  br label %do.body

do.body:                                          ; preds = %do.cond370.do.body_crit_edge, %if.end23
  %copied.0 = phi i32 [ 0, %if.end23 ], [ %copied.2, %do.cond370.do.body_crit_edge ]
  %skb.0 = phi ptr [ %21, %if.end23 ], [ %skb.4, %do.cond370.do.body_crit_edge ]
  %22 = ptrtoint ptr %ackr_reason to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ackr_reason, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp26 = icmp eq i8 %23, 7
  br i1 %cmp26, label %if.then28, label %do.body.if.end30_crit_edge

do.body.if.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = call i32 @rxrpc_send_ack_packet(ptr noundef %call, i1 noundef zeroext false, ptr noundef null) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %do.body.if.end30_crit_edge
  %tobool31.not = icmp eq ptr %skb.0, null
  br i1 %tobool31.not, label %if.then32, label %if.end30.do.body183_crit_edge

if.end30.do.body183_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body183

if.then32:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bufsize) #8
  %24 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %bufsize, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chunk) #8
  %25 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %chunk, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #8
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %offset, align 4, !annotation !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %27 = load i32, ptr @rxrpc_debug, align 4
  %and34 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then32.do.end44_crit_edge, label %do.end, !prof !174

if.then32.do.end44_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

do.end:                                           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %28 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm) #11
  br label %do.end44

do.end44:                                         ; preds = %do.end, %if.then32.do.end44_crit_edge
  %32 = ptrtoint ptr %tx_winsize.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_winsize.i, align 1
  %34 = ptrtoint ptr %cong_cwnd.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cong_cwnd.i, align 2
  %36 = ptrtoint ptr %cong_extra.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cong_extra.i, align 1
  %38 = ptrtoint ptr %tx_hard_ack.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %tx_hard_ack.i, align 8
  %conv.i = zext i8 %33 to i32
  %conv1.i = zext i8 %35 to i32
  %conv2.i = zext i8 %37 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv1.i
  %40 = call i32 @llvm.umin.i32(i32 %add.i, i32 %conv.i) #8
  %41 = ptrtoint ptr %tx_top.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_top.i, align 4
  %sub.i = sub i32 %42, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %40)
  %cmp5.i = icmp ult i32 %sub.i, %40
  br i1 %cmp5.i, label %do.end44.if.end60_crit_edge, label %if.then46

do.end44.if.end60_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then46:                                        ; preds = %do.end44
  %43 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -11, ptr %ret, align 4
  %44 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_flags, align 4
  %and48 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then46.maybe_error_crit_edge

if.then46.maybe_error_crit_edge:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %maybe_error

if.end51:                                         ; preds = %if.then46
  %and53 = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54 = icmp ne i32 %and53, 0
  %call55 = call fastcc i32 @rxrpc_wait_for_tx_window(ptr noundef %rx, ptr noundef %call, ptr noundef nonnull %timeo, i1 noundef zeroext %tobool54)
  %46 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call55, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end51.maybe_error_crit_edge, label %if.end51.if.end60_crit_edge

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end51.maybe_error_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %maybe_error

if.end60:                                         ; preds = %if.end51.if.end60_crit_edge, %do.end44.if.end60_crit_edge
  br i1 %tobool7.not, label %cond.false, label %if.end60.cond.end_crit_edge

if.end60.cond.end_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count.i.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end60.cond.end_crit_edge
  %cond = phi i32 [ %48, %cond.false ], [ 2147483647, %if.end60.cond.end_crit_edge ]
  %49 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %conn, align 8
  %security = getelementptr inbounds %struct.rxrpc_connection, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %security, align 8
  %how_much_data = getelementptr inbounds %struct.rxrpc_security, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %how_much_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %how_much_data, align 4
  %call64 = call i32 %54(ptr noundef %call, i32 noundef %cond, ptr noundef nonnull %bufsize, ptr noundef nonnull %chunk, ptr noundef nonnull %offset) #8
  %55 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call64, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %cond.end.maybe_error_crit_edge, label %do.body69

cond.end.maybe_error_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %maybe_error

do.body69:                                        ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %56 = load i32, ptr @rxrpc_debug, align 4
  %and70 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body69.do.end90_crit_edge, label %do.end81, !prof !174

do.body69.do.end90_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end90

do.end81:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  %57 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i540 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i540 to ptr
  %task84 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task84 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task84, align 8
  %comm85 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 101
  %61 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chunk, align 4
  %63 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bufsize, align 4
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset, align 4
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm85, i32 noundef %62, i32 noundef %64, i32 noundef %66) #11
  br label %do.end90

do.end90:                                         ; preds = %do.end81, %do.body69.do.end90_crit_edge
  %67 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bufsize, align 4
  %69 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_flags, align 4
  %and92 = and i32 %70, 64
  %call93 = call ptr @sock_alloc_send_skb(ptr noundef %rx, i32 noundef %68, i32 noundef %and92, ptr noundef nonnull %ret) #8
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %do.end90.maybe_error_crit_edge, label %if.end96

do.end90.maybe_error_crit_edge:                   ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %maybe_error

if.end96:                                         ; preds = %do.end90
  %rx_flags = getelementptr inbounds %struct.sk_buff, ptr %call93, i32 0, i32 3, i32 5
  %71 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rx_flags, align 1
  %73 = or i8 %72, 2
  store i8 %73, ptr %rx_flags, align 1
  call void @rxrpc_new_skb(ptr noundef nonnull %call93, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %74 = load i32, ptr @rxrpc_debug, align 4
  %and100 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end96.do.body121_crit_edge, label %do.end111, !prof !174

if.end96.do.body121_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body121

do.end111:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %75 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i541 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i541 to ptr
  %task114 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task114 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task114, align 8
  %comm115 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 101
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm115, ptr noundef nonnull %call93) #11
  br label %do.body121

do.body121:                                       ; preds = %do.end111, %if.end96.do.body121_crit_edge
  %79 = getelementptr inbounds %struct.sk_buff, ptr %call93, i32 0, i32 15, i32 0, i32 13
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp122.not = icmp eq i32 %81, 0
  br i1 %cmp122.not, label %if.end144, label %do.end135, !prof !174

do.end135:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %81, i32 noundef %81, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/sendmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #8, !srcloc !180
  unreachable

if.end144:                                        ; preds = %do.body121
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call93, i32 0, i32 7
  %82 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i.not.i542 = icmp eq i32 %83, 0
  br i1 %tobool.i.not.i542, label %skb_tailroom.exit, label %do.body3.i, !prof !174

do.body3.i:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !181
  unreachable

skb_tailroom.exit:                                ; preds = %if.end144
  %84 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call93, i32 0, i32 16
  %86 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i, align 8
  %add.ptr.i = getelementptr i8, ptr %87, i32 %85
  store ptr %add.ptr.i, ptr %tail.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call93, i32 0, i32 6
  %88 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len9.i, align 4
  %add.i543 = add i32 %89, %85
  store i32 %add.i543, ptr %len9.i, align 4
  %90 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chunk, align 4
  %92 = getelementptr inbounds %struct.sk_buff, ptr %call93, i32 0, i32 3, i32 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %91, ptr %92, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call93, i32 0, i32 17
  %94 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %end.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %sub.ptr.sub.i)
  %cmp149 = icmp sgt i32 %91, %sub.ptr.sub.i
  br i1 %cmp149, label %skb_tailroom.exit558, label %skb_tailroom.exit.do.body154_crit_edge

skb_tailroom.exit.do.body154_crit_edge:           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body154

skb_tailroom.exit558:                             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %end.i, align 4
  %sub.ptr.lhs.cast.i553 = ptrtoint ptr %97 to i32
  %sub.ptr.sub.i555 = sub i32 %sub.ptr.lhs.cast.i553, %sub.ptr.rhs.cast.i
  %98 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %sub.ptr.sub.i555, ptr %92, align 4
  br label %do.body154

do.body154:                                       ; preds = %skb_tailroom.exit558, %skb_tailroom.exit.do.body154_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %99 = load i32, ptr @rxrpc_debug, align 4
  %and155 = and i32 %99, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %do.body154.cleanup_crit_edge, label %do.end166, !prof !174

do.body154.cleanup_crit_edge:                     ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end166:                                        ; preds = %do.body154
  %100 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i559 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i559 to ptr
  %task169 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task169 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task169, align 8
  %comm170 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 101
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call93, i32 0, i32 19
  %104 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call93, i32 0, i32 18
  %106 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i560 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast.i561 = ptrtoint ptr %107 to i32
  %sub.ptr.sub.i562 = sub i32 %sub.ptr.lhs.cast.i560, %sub.ptr.rhs.cast.i561
  %108 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.i.not.i564 = icmp eq i32 %109, 0
  br i1 %tobool.i.not.i564, label %cond.false.i570, label %do.end166.skb_tailroom.exit572_crit_edge

do.end166.skb_tailroom.exit572_crit_edge:         ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit572

cond.false.i570:                                  ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %end.i, align 4
  %112 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i567 = ptrtoint ptr %111 to i32
  %sub.ptr.rhs.cast.i568 = ptrtoint ptr %113 to i32
  %sub.ptr.sub.i569 = sub i32 %sub.ptr.lhs.cast.i567, %sub.ptr.rhs.cast.i568
  br label %skb_tailroom.exit572

skb_tailroom.exit572:                             ; preds = %cond.false.i570, %do.end166.skb_tailroom.exit572_crit_edge
  %cond.i571 = phi i32 [ %sub.ptr.sub.i569, %cond.false.i570 ], [ 0, %do.end166.skb_tailroom.exit572_crit_edge ]
  %114 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len9.i, align 4
  %sub.i573 = sub i32 %115, %109
  %116 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %92, align 4
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm170, i32 noundef %sub.ptr.sub.i562, i32 noundef %cond.i571, i32 noundef %sub.i573, i32 noundef %117) #11
  br label %cleanup

cleanup:                                          ; preds = %skb_tailroom.exit572, %do.body154.cleanup_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call93, i32 0, i32 15
  %118 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %118)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bufsize) #8
  br label %do.body183

do.body183:                                       ; preds = %cleanup, %if.end30.do.body183_crit_edge
  %skb.2 = phi ptr [ %skb.0, %if.end30.do.body183_crit_edge ], [ %call93, %cleanup ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %119 = load i32, ptr @rxrpc_debug, align 4
  %and184 = and i32 %119, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %do.body183.do.end204_crit_edge, label %do.end195, !prof !174

do.body183.do.end204_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end204

do.end195:                                        ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  %120 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i574 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i574 to ptr
  %task198 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task198 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task198, align 8
  %comm199 = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 101
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %comm199) #11
  br label %do.end204

do.end204:                                        ; preds = %do.end195, %do.body183.do.end204_crit_edge
  %124 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp207.not = icmp eq i32 %125, 0
  br i1 %cmp207.not, label %do.end204.if.end310_crit_edge, label %if.then209

do.end204.if.end310_crit_edge:                    ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end310

if.then209:                                       ; preds = %do.end204
  %data_len.i.i576 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 7
  %126 = ptrtoint ptr %data_len.i.i576 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %data_len.i.i576, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.i.not.i577 = icmp eq i32 %127, 0
  br i1 %tobool.i.not.i577, label %skb_tailroom.exit585, label %if.then209.do.end227_crit_edge

if.then209.do.end227_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end227

skb_tailroom.exit585:                             ; preds = %if.then209
  %end.i578 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 17
  %128 = ptrtoint ptr %end.i578 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %end.i578, align 4
  %tail.i579 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 16
  %130 = ptrtoint ptr %tail.i579 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tail.i579, align 8
  %sub.ptr.lhs.cast.i580 = ptrtoint ptr %129 to i32
  %sub.ptr.rhs.cast.i581 = ptrtoint ptr %131 to i32
  %sub.ptr.sub.i582 = sub i32 %sub.ptr.lhs.cast.i580, %sub.ptr.rhs.cast.i581
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i582)
  %cmp214 = icmp slt i32 %sub.ptr.sub.i582, 1
  br i1 %cmp214, label %skb_tailroom.exit585.do.end227_crit_edge, label %if.end236, !prof !182

skb_tailroom.exit585.do.end227_crit_edge:         ; preds = %skb_tailroom.exit585
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end227

do.end227:                                        ; preds = %skb_tailroom.exit585.do.end227_crit_edge, %if.then209.do.end227_crit_edge
  %cond.i584609 = phi i32 [ %sub.ptr.sub.i582, %skb_tailroom.exit585.do.end227_crit_edge ], [ 0, %if.then209.do.end227_crit_edge ]
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %cond.i584609, i32 noundef %cond.i584609, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 0) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/sendmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #8, !srcloc !183
  unreachable

if.end236:                                        ; preds = %skb_tailroom.exit585
  %132 = call i32 @llvm.umin.i32(i32 %sub.ptr.sub.i582, i32 %125)
  %133 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %136 = call i32 @llvm.smin.i32(i32 %132, i32 %135)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %137 = load i32, ptr @rxrpc_debug, align 4
  %and250 = and i32 %137, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %if.end236.do.end270_crit_edge, label %do.end261, !prof !174

if.end236.do.end270_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end270

do.end261:                                        ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  %138 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i588 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i588 to ptr
  %task264 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task264 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task264, align 8
  %comm265 = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 101
  %call267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %comm265) #11
  br label %do.end270

do.end270:                                        ; preds = %do.end261, %if.end236.do.end270_crit_edge
  %len.i589 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %142 = ptrtoint ptr %len.i589 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len.i589, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 15
  %144 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %145 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %cmp.i = icmp eq i16 %145, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end270
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csum.i) #8
  %146 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %csum.i, align 4
  %call.i = call ptr @skb_put(ptr noundef nonnull %skb.2, i32 noundef %136) #8
  %call.i.i = call i32 @csum_and_copy_from_iter(ptr noundef %call.i, i32 noundef %136, ptr noundef nonnull %csum.i, ptr noundef %msg_iter) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %136)
  %cmp.i.i = icmp eq i32 %call.i.i, %136
  br i1 %cmp.i.i, label %if.then3.i, label %if.end9.critedge.i, !prof !174

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 15, i32 0, i32 5
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 8
  %150 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %csum.i, align 4
  %and.i.i.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 24) #8
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %151, i32 %or.i.i.i.i
  %add.i.i.i = add i32 %retval.0.i.i.i, %149
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %retval.0.i.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %152 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add1.i.i.i, ptr %147, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csum.i) #8
  br label %skb_add_data.exit

if.else.i:                                        ; preds = %do.end270
  %call5.i = call ptr @skb_put(ptr noundef nonnull %skb.2, i32 noundef %136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp9.i.i.i.i = icmp slt i32 %136, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.else.i
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !174

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.70, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__check_object_size(ptr noundef %call5.i, i32 noundef %136, i1 noundef zeroext false) #8
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call5.i, i32 noundef %136, ptr noundef %msg_iter) #8
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i22.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i22.i, i32 %136)
  %cmp.i23.i = icmp eq i32 %retval.0.i.i22.i, %136
  br i1 %cmp.i23.i, label %copy_from_iter.exit.i.i.skb_add_data.exit_crit_edge, label %copy_from_iter_full.exit.i, !prof !174

copy_from_iter.exit.i.i.skb_add_data.exit_crit_edge: ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_add_data.exit

copy_from_iter_full.exit.i:                       ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i22.i) #8
  br label %if.end9.i

if.end9.critedge.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %call.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csum.i) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9.critedge.i, %copy_from_iter_full.exit.i
  %153 = ptrtoint ptr %data_len.i.i576 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %data_len.i.i576, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.i.not.i.i.i = icmp eq i32 %154, 0
  br i1 %tobool.i.not.i.i.i, label %if.end21.critedge.i.i.i, label %do.end.i.i.i, !prof !174

do.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 2789, i32 noundef 9, ptr noundef null) #8
  br label %skb_add_data.exit

if.end21.critedge.i.i.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %len.i589 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %143, ptr %len.i589, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 19
  %156 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %157, i32 %143
  %158 = ptrtoint ptr %tail.i579 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i579, align 8
  br label %skb_add_data.exit

skb_add_data.exit:                                ; preds = %if.end21.critedge.i.i.i, %do.end.i.i.i, %copy_from_iter.exit.i.i.skb_add_data.exit_crit_edge, %if.then3.i
  %retval.1.i = phi i32 [ 0, %if.then3.i ], [ -14, %do.end.i.i.i ], [ -14, %if.end21.critedge.i.i.i ], [ 0, %copy_from_iter.exit.i.i.skb_add_data.exit_crit_edge ]
  %159 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %retval.1.i, ptr %ret, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %160 = load i32, ptr @rxrpc_debug, align 4
  %and273 = and i32 %160, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273)
  %tobool274.not = icmp eq i32 %and273, 0
  br i1 %tobool274.not, label %skb_add_data.exit.do.end293_crit_edge, label %do.end284, !prof !174

skb_add_data.exit.do.end293_crit_edge:            ; preds = %skb_add_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end293

do.end284:                                        ; preds = %skb_add_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %161 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i590 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i590 to ptr
  %task287 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %task287 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %task287, align 8
  %comm288 = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 101
  %call290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm288) #11
  %165 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %165)
  %.pr = load i32, ptr %ret, align 4
  br label %do.end293

do.end293:                                        ; preds = %do.end284, %skb_add_data.exit.do.end293_crit_edge
  %166 = phi i32 [ %.pr, %do.end284 ], [ %retval.1.i, %skb_add_data.exit.do.end293_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp294 = icmp slt i32 %166, 0
  br i1 %cmp294, label %efault, label %if.end297

if.end297:                                        ; preds = %do.end293
  %167 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %133, align 4
  %sub = sub i32 %168, %136
  store i32 %sub, ptr %133, align 4
  %169 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 15, i32 0, i32 13
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %add = add i32 %171, %136
  store i32 %add, ptr %169, align 4
  %add298 = add i32 %136, %copied.0
  %172 = ptrtoint ptr %tx_total_len to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %tx_total_len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %173)
  %cmp300.not = icmp eq i64 %173, -1
  br i1 %cmp300.not, label %if.end297.if.end310_crit_edge, label %if.then302

if.end297.if.end310_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end310

if.then302:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  %conv303 = sext i32 %136 to i64
  %sub305 = sub i64 %173, %conv303
  %174 = ptrtoint ptr %tx_total_len to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %sub305, ptr %tx_total_len, align 8
  br label %if.end310

if.end310:                                        ; preds = %if.then302, %if.end297.if.end310_crit_edge, %do.end204.if.end310_crit_edge
  %copied.2 = phi i32 [ %copied.0, %do.end204.if.end310_crit_edge ], [ %add298, %if.then302 ], [ %add298, %if.end297.if.end310_crit_edge ]
  %175 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %176)
  %cmp311 = icmp eq i32 %176, 11
  br i1 %cmp311, label %call_terminated, label %if.end314

if.end314:                                        ; preds = %if.end310
  %177 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 8
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp315 = icmp slt i32 %179, 1
  br i1 %cmp315, label %if.end314.if.then322_crit_edge, label %lor.lhs.false

if.end314.if.then322_crit_edge:                   ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then322

lor.lhs.false:                                    ; preds = %if.end314
  %180 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp318 = icmp ne i32 %181, 0
  %brmerge = select i1 %cmp318, i1 true, i1 %tobool7.not.not535.pre-phi
  br i1 %brmerge, label %lor.lhs.false.do.cond370_crit_edge, label %lor.lhs.false.if.then322_crit_edge

lor.lhs.false.if.then322_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then322

lor.lhs.false.do.cond370_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond370

if.then322:                                       ; preds = %lor.lhs.false.if.then322_crit_edge, %if.end314.if.then322_crit_edge
  %182 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %conn, align 8
  %184 = ptrtoint ptr %tx_top.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %tx_top.i, align 4
  %add325 = add i32 %185, 1
  %seq326 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 28
  %186 = ptrtoint ptr %seq326 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %add325, ptr %seq326, align 4
  %187 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 40
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %187, align 4
  %out_clientflag = getelementptr inbounds %struct.rxrpc_connection, ptr %183, i32 0, i32 28
  %189 = ptrtoint ptr %out_clientflag to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %out_clientflag, align 1
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 37
  %191 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %flags, align 1
  %192 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp330 = icmp ne i32 %193, 0
  %brmerge537 = select i1 %cmp330, i1 true, i1 %tobool7.not.not535.pre-phi
  br i1 %brmerge537, label %if.else, label %if.then322.if.end352.sink.split_crit_edge

if.then322.if.end352.sink.split_crit_edge:        ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end352.sink.split

if.else:                                          ; preds = %if.then322
  %194 = ptrtoint ptr %tx_top.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %tx_top.i, align 4
  %196 = ptrtoint ptr %tx_hard_ack.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %tx_hard_ack.i, align 8
  %sub341 = sub i32 %195, %197
  %198 = ptrtoint ptr %tx_winsize.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %tx_winsize.i, align 1
  %conv342 = zext i8 %199 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub341, i32 %conv342)
  %cmp343 = icmp ult i32 %sub341, %conv342
  br i1 %cmp343, label %if.else.if.end352.sink.split_crit_edge, label %if.else.if.end352_crit_edge

if.else.if.end352_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end352

if.else.if.end352.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end352.sink.split

if.end352.sink.split:                             ; preds = %if.else.if.end352.sink.split_crit_edge, %if.then322.if.end352.sink.split_crit_edge
  %.sink670 = phi i8 [ 4, %if.then322.if.end352.sink.split_crit_edge ], [ 8, %if.else.if.end352.sink.split_crit_edge ]
  %200 = or i8 %190, %.sink670
  %201 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %flags, align 1
  br label %if.end352

if.end352:                                        ; preds = %if.end352.sink.split, %if.else.if.end352_crit_edge
  %202 = ptrtoint ptr %security353 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %security353, align 8
  %secure_packet = getelementptr inbounds %struct.rxrpc_security, ptr %203, i32 0, i32 11
  %204 = ptrtoint ptr %secure_packet to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %secure_packet, align 4
  %206 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 15, i32 0, i32 13
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %206, align 4
  %call354 = call i32 %205(ptr noundef %call, ptr noundef nonnull %skb.2, i32 noundef %208) #8
  %209 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %call354, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %cmp355 = icmp slt i32 %call354, 0
  br i1 %cmp355, label %if.end352.out_crit_edge, label %if.end358

if.end352.out_crit_edge:                          ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end358:                                        ; preds = %if.end352
  %210 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool360.not = icmp eq i32 %211, 0
  %spec.select538 = select i1 %tobool360.not, i1 %tobool7.not, i1 false
  %212 = ptrtoint ptr %seq326 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %seq326, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %214 = load i32, ptr @rxrpc_debug, align 4
  %and.i594 = and i32 %214, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i594)
  %tobool.not.i = icmp eq i32 %and.i594, 0
  br i1 %tobool.not.i, label %if.end358.do.body9.i_crit_edge, label %do.end.i, !prof !174

if.end358.do.body9.i_crit_edge:                   ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9.i

do.end.i:                                         ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #10
  %215 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i.i = and i32 %215, -16384
  %216 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %218, i32 0, i32 101
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %comm.i, ptr noundef nonnull %skb.2, i32 noundef %213) #11
  br label %do.body9.i

do.body9.i:                                       ; preds = %do.end.i, %if.end358.do.body9.i_crit_edge
  %219 = ptrtoint ptr %tx_top.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %tx_top.i, align 4
  %add.i596 = add i32 %220, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %213, i32 %add.i596)
  %cmp.not.i = icmp eq i32 %213, %add.i596
  br i1 %cmp.not.i, label %if.end30.i, label %do.end21.i, !prof !174

do.end21.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %213, i32 noundef %213, ptr noundef nonnull @.str.15, i32 noundef %add.i596, i32 noundef %add.i596) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/sendmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #8, !srcloc !184
  unreachable

if.end30.i:                                       ; preds = %do.body9.i
  %spec.select.i = select i1 %spec.select538, i8 5, i8 1
  %call.i.i597 = call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %221 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 2
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %call.i.i597, ptr %221, align 8
  %and38.i = and i32 %213, 63
  call void @rxrpc_get_skb(ptr noundef nonnull %skb.2, i32 noundef 2) #8
  %223 = ptrtoint ptr %rxtx_annotations.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %rxtx_annotations.i, align 4
  %arrayidx.i = getelementptr i8, ptr %224, i32 %and38.i
  %225 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %spec.select.i, ptr %arrayidx.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !185
  %226 = ptrtoint ptr %rxtx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rxtx_buffer.i, align 8
  %arrayidx45.i = getelementptr ptr, ptr %227, i32 %and38.i
  %228 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %skb.2, ptr %arrayidx45.i, align 4
  %229 = ptrtoint ptr %tx_top.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %213, ptr %tx_top.i, align 4
  br i1 %spec.select538, label %if.then48.i, label %if.else.i598

if.then48.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_rxrpc_transmit(ptr noundef %call, i32 noundef 3) #8
  br label %do.body55.i

if.else.i598:                                     ; preds = %if.end30.i
  call fastcc void @trace_rxrpc_transmit(ptr noundef %call, i32 noundef 2) #8
  %230 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %231)
  %cmp52.i = icmp eq i32 %231, 8
  br i1 %cmp52.i, label %if.else.i598.do.body55.i_crit_edge, label %if.else.i598.if.end103.i_crit_edge

if.else.i598.if.end103.i_crit_edge:               ; preds = %if.else.i598
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.else.i598.do.body55.i_crit_edge:               ; preds = %if.else.i598
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55.i

do.body55.i:                                      ; preds = %if.else.i598.do.body55.i_crit_edge, %if.then48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %232 = load i32, ptr @rxrpc_debug, align 4
  %and56.i = and i32 %232, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %do.body55.i.do.end76.i_crit_edge, label %do.end67.i, !prof !174

do.body55.i.do.end76.i_crit_edge:                 ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76.i

do.end67.i:                                       ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #10
  %233 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i231.i = and i32 %233, -16384
  %234 = inttoptr i32 %and.i231.i to ptr
  %task70.i = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %task70.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %task70.i, align 8
  %comm71.i = getelementptr inbounds %struct.task_struct, ptr %236, i32 0, i32 101
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %comm71.i) #11
  br label %do.end76.i

do.end76.i:                                       ; preds = %do.end67.i, %do.body55.i.do.end76.i_crit_edge
  call void @_raw_write_lock_bh(ptr noundef %state_lock.i) #8
  %237 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %state, align 8
  %239 = zext i32 %238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %238, label %do.end76.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb79.i
    i32 9, label %do.end76.i.sw.bb100.i_crit_edge
  ]

do.end76.i.sw.bb100.i_crit_edge:                  ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb100.i

do.end76.i.sw.epilog.i_crit_edge:                 ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.end76.i
  %240 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 3, ptr %state, align 8
  br i1 %tobool.not.i232.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb79.i:                                        ; preds = %do.end76.i
  %241 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 9, ptr %state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %242 = load volatile i32, ptr @jiffies, align 128
  %add86.i = add i32 %242, 1073741822
  %243 = ptrtoint ptr %ack_at.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store volatile i32 %add86.i, ptr %ack_at.i, align 8
  %244 = ptrtoint ptr %ackr_reason to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %ackr_reason, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %245)
  %cmp92.i = icmp eq i8 %245, 8
  br i1 %cmp92.i, label %if.then94.i, label %sw.bb79.i.if.end96.i_crit_edge

sw.bb79.i.if.end96.i_crit_edge:                   ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96.i

if.then94.i:                                      ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #10
  %246 = ptrtoint ptr %ackr_reason to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 0, ptr %ackr_reason, align 8
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then94.i, %sw.bb79.i.if.end96.i_crit_edge
  call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 11, i32 noundef %242) #8
  br i1 %spec.select538, label %if.end96.i.sw.bb100.i_crit_edge, label %if.end96.i.sw.epilog.i_crit_edge

if.end96.i.sw.epilog.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end96.i.sw.bb100.i_crit_edge:                  ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb100.i

sw.bb100.i:                                       ; preds = %if.end96.i.sw.bb100.i_crit_edge, %do.end76.i.sw.bb100.i_crit_edge
  %247 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 10, ptr %state, align 8
  br i1 %tobool.not.i232.i, label %sw.bb100.i.sw.epilog.i_crit_edge, label %sw.bb100.i.sw.epilog.sink.split.i_crit_edge

sw.bb100.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %sw.bb100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb100.i.sw.epilog.i_crit_edge:                 ; preds = %sw.bb100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb100.i.sw.epilog.sink.split.i_crit_edge, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %248 = ptrtoint ptr %user_call_ID.i233.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %user_call_ID.i233.i, align 8
  call void %notify_end_tx(ptr noundef %rx, ptr noundef %call, i32 noundef %249) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb100.i.sw.epilog.i_crit_edge, %if.end96.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %do.end76.i.sw.epilog.i_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef %state_lock.i) #8
  br label %if.end103.i

if.end103.i:                                      ; preds = %sw.epilog.i, %if.else.i598.if.end103.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %213)
  %cmp104.i = icmp eq i32 %213, 1
  br i1 %cmp104.i, label %land.lhs.true.i, label %if.end103.i.if.end109.i_crit_edge

if.end103.i.if.end109.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i

land.lhs.true.i:                                  ; preds = %if.end103.i
  %250 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %flags.i.i.i, align 4
  %252 = and i32 %251, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool.i.not.i.i = icmp eq i32 %252, 0
  br i1 %tobool.i.not.i.i, label %if.then108.i, label %land.lhs.true.i.if.end109.i_crit_edge

land.lhs.true.i.if.end109.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i

if.then108.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rxrpc_expose_client_call(ptr noundef %call) #8
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then108.i, %land.lhs.true.i.if.end109.i_crit_edge, %if.end103.i.if.end109.i_crit_edge
  %call110.i = call i32 @rxrpc_send_data_packet(ptr noundef %call, ptr noundef nonnull %skb.2, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %cmp111.i = icmp slt i32 %call110.i, 0
  br i1 %cmp111.i, label %if.then113.i, label %if.else139.i

if.then113.i:                                     ; preds = %if.end109.i
  %253 = zext i32 %call110.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %253, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call110.i, label %do.body117.i [
    i32 -101, label %if.then113.i.sw.bb114.i_crit_edge
    i32 -113, label %if.then113.i.sw.bb114.i_crit_edge725
    i32 -111, label %if.then113.i.sw.bb114.i_crit_edge726
  ]

if.then113.i.sw.bb114.i_crit_edge726:             ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb114.i

if.then113.i.sw.bb114.i_crit_edge725:             ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb114.i

if.then113.i.sw.bb114.i_crit_edge:                ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb114.i

sw.bb114.i:                                       ; preds = %if.then113.i.sw.bb114.i_crit_edge, %if.then113.i.sw.bb114.i_crit_edge725, %if.then113.i.sw.bb114.i_crit_edge726
  %call115.i = call zeroext i1 @rxrpc_set_call_completion(ptr noundef %call, i32 noundef 3, i32 noundef 0, i32 noundef %call110.i) #8
  br label %out.i

do.body117.i:                                     ; preds = %if.then113.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %254 = load i32, ptr @rxrpc_debug, align 4
  %and118.i = and i32 %254, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %do.body117.i.do.end138.i_crit_edge, label %do.end129.i, !prof !174

do.body117.i.do.end138.i_crit_edge:               ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138.i

do.end129.i:                                      ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #10
  %255 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i236.i = and i32 %255, -16384
  %256 = inttoptr i32 %and.i236.i to ptr
  %task132.i = getelementptr inbounds %struct.thread_info, ptr %256, i32 0, i32 2
  %257 = ptrtoint ptr %task132.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %task132.i, align 8
  %comm133.i = getelementptr inbounds %struct.task_struct, ptr %258, i32 0, i32 101
  %call135.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %comm133.i, i32 noundef %call110.i) #11
  br label %do.end138.i

do.end138.i:                                      ; preds = %do.end129.i, %do.body117.i.do.end138.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #8
  %259 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %260)
  %cmp.i.i599 = icmp ult i32 %260, 11
  br i1 %cmp.i.i599, label %if.then.i238.i, label %do.end138.i.rxrpc_instant_resend.exit.i_crit_edge

do.end138.i.rxrpc_instant_resend.exit.i_crit_edge: ; preds = %do.end138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rxrpc_instant_resend.exit.i

if.then.i238.i:                                   ; preds = %do.end138.i
  %261 = ptrtoint ptr %rxtx_annotations.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %rxtx_annotations.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %262, i32 %and38.i
  %263 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx.i.i, align 1
  %265 = and i8 %264, 4
  %266 = or i8 %265, 3
  store i8 %266, ptr %arrayidx.i.i, align 1
  %call4.i.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %events.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i237.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i237.i, label %if.then5.i.i, label %if.then.i238.i.rxrpc_instant_resend.exit.i_crit_edge

if.then.i238.i.rxrpc_instant_resend.exit.i_crit_edge: ; preds = %if.then.i238.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rxrpc_instant_resend.exit.i

if.then5.i.i:                                     ; preds = %if.then.i238.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = call zeroext i1 @rxrpc_queue_call(ptr noundef %call) #8
  br label %rxrpc_instant_resend.exit.i

rxrpc_instant_resend.exit.i:                      ; preds = %if.then5.i.i, %if.then.i238.i.rxrpc_instant_resend.exit.i_crit_edge, %do.end138.i.rxrpc_instant_resend.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #8
  br label %out.i

if.else139.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %267 = load volatile i32, ptr @jiffies, align 128
  %268 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %peer.i, align 4
  %rto_j.i = getelementptr inbounds %struct.rxrpc_peer, ptr %269, i32 0, i32 24
  %270 = ptrtoint ptr %rto_j.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %rto_j.i, align 4
  %add141.i = add i32 %271, %267
  %272 = ptrtoint ptr %resend_at147.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store volatile i32 %add141.i, ptr %resend_at147.i, align 8
  call fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef 21, i32 noundef %267) #8
  %call1.i.i = call i32 @timer_reduce(ptr noundef %timer.i.i, i32 noundef %add141.i) #8
  br label %out.i

out.i:                                            ; preds = %if.else139.i, %rxrpc_instant_resend.exit.i, %sw.bb114.i
  call void @rxrpc_free_skb(ptr noundef nonnull %skb.2, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %273 = load i32, ptr @rxrpc_debug, align 4
  %and154.i = and i32 %273, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154.i)
  %tobool155.not.i = icmp eq i32 %and154.i, 0
  br i1 %tobool155.not.i, label %out.i.cleanup365.thread_crit_edge, label %do.end165.i, !prof !174

out.i.cleanup365.thread_crit_edge:                ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup365.thread

do.end165.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  %274 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i239.i = and i32 %274, -16384
  %275 = inttoptr i32 %and.i239.i to ptr
  %task168.i = getelementptr inbounds %struct.thread_info, ptr %275, i32 0, i32 2
  %276 = ptrtoint ptr %task168.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %task168.i, align 8
  %comm169.i = getelementptr inbounds %struct.task_struct, ptr %277, i32 0, i32 101
  %call171.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm169.i, ptr noundef nonnull @.str.74, i32 noundef %call110.i) #11
  br label %cleanup365.thread

cleanup365.thread:                                ; preds = %do.end165.i, %out.i.cleanup365.thread_crit_edge
  %278 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %call110.i, ptr %ret, align 4
  %279 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %.pr614 = load i32, ptr %count.i.i, align 8
  br label %do.cond370

do.cond370:                                       ; preds = %cleanup365.thread, %lor.lhs.false.do.cond370_crit_edge
  %280 = phi i32 [ %.pr614, %cleanup365.thread ], [ %181, %lor.lhs.false.do.cond370_crit_edge ]
  %skb.4 = phi ptr [ null, %cleanup365.thread ], [ %skb.2, %lor.lhs.false.do.cond370_crit_edge ]
  %cmp372.not = icmp eq i32 %280, 0
  br i1 %cmp372.not, label %do.cond370.success_crit_edge, label %do.cond370.do.body_crit_edge

do.cond370.do.body_crit_edge:                     ; preds = %do.cond370
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.cond370.success_crit_edge:                     ; preds = %do.cond370
  call void @__sanitizer_cov_trace_pc() #10
  br label %success

success:                                          ; preds = %maybe_error.success_crit_edge, %do.cond370.success_crit_edge
  %copied.3 = phi i32 [ %copied.0, %maybe_error.success_crit_edge ], [ %copied.2, %do.cond370.success_crit_edge ]
  %skb.5 = phi ptr [ null, %maybe_error.success_crit_edge ], [ %skb.4, %do.cond370.success_crit_edge ]
  %281 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %copied.3, ptr %ret, align 4
  br label %out

out:                                              ; preds = %efault, %maybe_error.out_crit_edge, %success, %if.end352.out_crit_edge
  %skb.6 = phi ptr [ %skb.2, %efault ], [ %skb.5, %success ], [ null, %maybe_error.out_crit_edge ], [ %skb.2, %if.end352.out_crit_edge ]
  %282 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %skb.6, ptr %tx_pending, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %283 = load i32, ptr @rxrpc_debug, align 4
  %and377 = and i32 %283, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and377)
  %tobool378.not = icmp eq i32 %and377, 0
  br i1 %tobool378.not, label %out.do.end397_crit_edge, label %do.end388, !prof !174

out.do.end397_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end397

do.end388:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %284 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i601 = and i32 %284, -16384
  %285 = inttoptr i32 %and.i601 to ptr
  %task391 = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 2
  %286 = ptrtoint ptr %task391 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %task391, align 8
  %comm392 = getelementptr inbounds %struct.task_struct, ptr %287, i32 0, i32 101
  %288 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %ret, align 4
  %call394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm392, ptr noundef nonnull @.str.38, i32 noundef %289) #11
  br label %do.end397

do.end397:                                        ; preds = %do.end388, %out.do.end397_crit_edge
  %290 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %ret, align 4
  br label %cleanup424

call_terminated:                                  ; preds = %if.end310
  call void @rxrpc_free_skb(ptr noundef nonnull %skb.2, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %292 = load i32, ptr @rxrpc_debug, align 4
  %and399 = and i32 %292, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and399)
  %tobool400.not = icmp eq i32 %and399, 0
  br i1 %tobool400.not, label %call_terminated.do.end419_crit_edge, label %do.end410, !prof !174

call_terminated.do.end419_crit_edge:              ; preds = %call_terminated
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end419

do.end410:                                        ; preds = %call_terminated
  call void @__sanitizer_cov_trace_pc() #10
  %293 = call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i602 = and i32 %293, -16384
  %294 = inttoptr i32 %and.i602 to ptr
  %task413 = getelementptr inbounds %struct.thread_info, ptr %294, i32 0, i32 2
  %295 = ptrtoint ptr %task413 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %task413, align 8
  %comm414 = getelementptr inbounds %struct.task_struct, ptr %296, i32 0, i32 101
  %error = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %297 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %error, align 4
  %call416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm414, ptr noundef nonnull @.str.38, i32 noundef %298) #11
  br label %do.end419

do.end419:                                        ; preds = %do.end410, %call_terminated.do.end419_crit_edge
  %error420 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %299 = ptrtoint ptr %error420 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %error420, align 4
  br label %cleanup424

maybe_error:                                      ; preds = %do.end90.maybe_error_crit_edge, %cond.end.maybe_error_crit_edge, %if.end51.maybe_error_crit_edge, %if.then46.maybe_error_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bufsize) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool421.not = icmp eq i32 %copied.0, 0
  br i1 %tobool421.not, label %maybe_error.out_crit_edge, label %maybe_error.success_crit_edge

maybe_error.success_crit_edge:                    ; preds = %maybe_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %success

maybe_error.out_crit_edge:                        ; preds = %maybe_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

efault:                                           ; preds = %do.end293
  call void @__sanitizer_cov_trace_pc() #10
  %301 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 -14, ptr %ret, align 4
  br label %out

cleanup424:                                       ; preds = %do.end419, %do.end397, %if.end15.cleanup424_crit_edge, %if.then9.cleanup424_crit_edge, %sk_clear_bit.exit.cleanup424_crit_edge
  %retval.0 = phi i32 [ %291, %do.end397 ], [ %300, %do.end419 ], [ -32, %sk_clear_bit.exit.cleanup424_crit_edge ], [ -90, %if.then9.cleanup424_crit_edge ], [ -90, %if.end15.cleanup424_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_kernel_send_data(ptr nocapture noundef readonly %sock, ptr noundef %call, ptr noundef %msg, i32 noundef %len, ptr noundef %notify_end_tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.end, !prof !174

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  %arrayidx = getelementptr [0 x ptr], ptr @rxrpc_call_states, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm, ptr noundef nonnull @.str.11, i32 noundef %6, ptr noundef %10) #11
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg, align 8
  %cmp.not = icmp eq ptr %12, null
  br i1 %cmp.not, label %if.end29, label %do.end20, !prof !174

do.end20:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %12 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %13, i32 noundef %13, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/sendmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 780, 0\0A.popsection", ""() #8, !srcloc !186
  unreachable

if.end29:                                         ; preds = %do.body8
  %14 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %cmp35.not = icmp eq ptr %16, null
  br i1 %cmp35.not, label %if.end56, label %do.end47, !prof !174

do.end47:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %16 to i32
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %17, i32 noundef %17, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/sendmsg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 781, 0\0A.popsection", ""() #8, !srcloc !187
  unreachable

if.end56:                                         ; preds = %if.end29
  %user_mutex = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %18 = load i32, ptr @rxrpc_debug, align 4
  %and60 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end56.do.end85_crit_edge, label %do.end71, !prof !174

if.end56.do.end85_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

do.end71:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %19 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i140 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i140 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task74, align 8
  %comm75 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %debug_id77 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %23 = ptrtoint ptr %debug_id77 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_id77, align 4
  %user_call_ID = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 32
  %25 = ptrtoint ptr %user_call_ID to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %user_call_ID, align 8
  %state78 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %27 = ptrtoint ptr %state78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state78, align 8
  %conn = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %29 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conn, align 8
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm75, i32 noundef %24, i32 noundef %26, i32 noundef %28, ptr noundef %30) #11
  br label %do.end85

do.end85:                                         ; preds = %do.end71, %if.end56.do.end85_crit_edge
  %state87 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %31 = ptrtoint ptr %state87 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state87, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %32, label %sw.default [
    i32 2, label %do.end85.sw.bb_crit_edge
    i32 8, label %do.end85.sw.bb_crit_edge142
    i32 9, label %do.end85.sw.bb_crit_edge143
    i32 11, label %sw.bb90
  ]

do.end85.sw.bb_crit_edge143:                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end85.sw.bb_crit_edge142:                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end85.sw.bb_crit_edge:                         ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %do.end85.sw.bb_crit_edge, %do.end85.sw.bb_crit_edge142, %do.end85.sw.bb_crit_edge143
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %34 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk, align 16
  %call89 = tail call fastcc i32 @rxrpc_send_data(ptr noundef %35, ptr noundef %call, ptr noundef %msg, i32 noundef %len, ptr noundef %notify_end_tx)
  br label %sw.epilog

sw.bb90:                                          ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  %state_lock = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 37
  tail call void @_raw_read_lock_bh(ptr noundef %state_lock) #8
  %error = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %36 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error, align 4
  tail call void @_raw_read_unlock_bh(ptr noundef %state_lock) #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  %38 = load ptr, ptr @rxrpc_kernel_send_data.___tp_str, align 4
  tail call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, ptr noundef %38)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb90, %sw.bb
  %ret.0 = phi i32 [ -71, %sw.default ], [ %37, %sw.bb90 ], [ %call89, %sw.bb ]
  tail call void @mutex_unlock(ptr noundef %user_mutex) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %39 = load i32, ptr @rxrpc_debug, align 4
  %and95 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %sw.epilog.do.end115_crit_edge, label %do.end106, !prof !174

sw.epilog.do.end115_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end115

do.end106:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %40 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i141 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i141 to ptr
  %task109 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task109 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task109, align 8
  %comm110 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 101
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm110, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #11
  br label %do.end115

do.end115:                                        ; preds = %do.end106, %sw.epilog.do.end115_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, ptr noundef %why) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_eproto, %do.body)) #8
          to label %if.end49 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !174

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !189
  %call43 = tail call i32 @__traceiter_rxrpc_rx_eproto(ptr noundef null, ptr noundef %call, i32 noundef 0, ptr noundef %why) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !190
  %13 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !174

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rxrpc_rx_eproto.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rxrpc_rx_eproto.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 1377, ptr noundef nonnull @.str.35) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  %31 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
define dso_local zeroext i1 @rxrpc_kernel_abort_call(ptr nocapture readnone %sock, ptr noundef %call, i32 noundef %abort_code, i32 noundef %error, ptr noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !174

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm, ptr noundef nonnull @.str.24, i32 noundef %6, i32 noundef %abort_code, i32 noundef %error, ptr noundef %why) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %user_mutex = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #8
  %call8 = tail call zeroext i1 @rxrpc_abort_call(ptr noundef %why, ptr noundef %call, i32 noundef 0, i32 noundef %abort_code, i32 noundef %error) #8
  br i1 %call8, label %if.then10, label %do.end7.if.end12_crit_edge

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @rxrpc_send_abort_packet(ptr noundef %call) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end7.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %user_mutex) #8
  ret i1 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_kernel_set_tx_length(ptr nocapture readnone %sock, ptr nocapture noundef %call, i64 noundef %tx_total_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_total_len1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 30
  %0 = ptrtoint ptr %tx_total_len1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tx_total_len1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %cmp.not = icmp eq i64 %1, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !174

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 857, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %tx_total_len1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %tx_total_len, ptr %tx_total_len1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_new_client_call(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_peer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef %why, i32 noundef %now) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_timer, %do.body)) #8
          to label %if.end49 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !174

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !193
  %call43 = tail call i32 @__traceiter_rxrpc_timer(ptr noundef null, ptr noundef %call, i32 noundef %why, i32 noundef %now) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !194
  %13 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !174

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_rxrpc_timer.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rxrpc_timer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 1181, ptr noundef nonnull @.str.35) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  %31 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_send_ack_packet(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_wait_for_tx_window(ptr nocapture noundef readnone %rx, ptr noundef %call, ptr nocapture noundef %timeo, i1 noundef zeroext %waitall) #0 align 64 {
entry:
  %myself = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %myself) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %myself to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %myself, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !174

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %tx_hard_ack = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 54
  %16 = ptrtoint ptr %tx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_hard_ack, align 8
  %tx_top = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 55
  %18 = ptrtoint ptr %tx_top to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_top, align 4
  %tx_winsize = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 69
  %20 = ptrtoint ptr %tx_winsize to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_winsize, align 1
  %conv = zext i8 %21 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %comm, ptr noundef nonnull @.str.67, i32 noundef %17, i32 noundef %19, i32 noundef %conv) #11
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %waitq = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 29
  call void @add_wait_queue(ptr noundef %waitq, ptr noundef nonnull %myself) #8
  %interruptibility = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 45
  %22 = ptrtoint ptr %interruptibility to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interruptibility, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cond = icmp eq i32 %23, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end10
  br i1 %waitall, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call fastcc i32 @rxrpc_wait_for_tx_window_waitall(ptr noundef %rx, ptr noundef %call)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call fastcc i32 @rxrpc_wait_for_tx_window_intr(ptr noundef %rx, ptr noundef %call, ptr noundef %timeo)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call fastcc i32 @rxrpc_wait_for_tx_window_nonintr(ptr noundef %rx, ptr noundef %call, ptr noundef %timeo)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else, %if.then12
  %ret.0 = phi i32 [ %call13, %if.then12 ], [ %call14, %if.else ], [ %call17, %sw.default ]
  call void @remove_wait_queue(ptr noundef %waitq, ptr noundef nonnull %myself) #8
  br label %__here

__here:                                           ; preds = %sw.epilog
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 212
  %26 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 ptrtoint (ptr blockaddress(@rxrpc_wait_for_tx_window, %__here) to i32), ptr %task_state_change, align 4
  %27 = load ptr, ptr %task, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %27, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !195
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %29 = load i32, ptr @rxrpc_debug, align 4
  %and94 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %__here.do.end114_crit_edge, label %do.end105, !prof !174

__here.do.end114_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end114

do.end105:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %comm109 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm109, ptr noundef nonnull @.str.67, i32 noundef %ret.0) #11
  br label %do.end114

do.end114:                                        ; preds = %do.end105, %__here.do.end114_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %myself) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_new_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_free_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_wait_for_tx_window_waitall(ptr nocapture noundef readnone %rx, ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 4
  %srtt_us = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %srtt_us to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %srtt_us, align 4
  %shr = lshr i32 %3, 3
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %shr) #8
  %mul = shl i32 %call3.i, 1
  %4 = tail call i32 @llvm.smax.i32(i32 %mul, i32 2)
  %tx_hard_ack = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 54
  %5 = ptrtoint ptr %tx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %tx_hard_ack, align 8
  %tx_winsize.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 69
  %cong_cwnd.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 57
  %cong_extra.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 58
  %tx_top.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 55
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  br label %__here

__here:                                           ; preds = %if.end91, %entry
  %timeout.0 = phi i32 [ %4, %entry ], [ %call95, %if.end91 ]
  %tx_start.0 = phi i32 [ %6, %entry ], [ %22, %if.end91 ]
  %7 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 212
  %11 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 ptrtoint (ptr blockaddress(@rxrpc_wait_for_tx_window_waitall, %__here) to i32), ptr %task_state_change, align 4
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 2, ptr %12, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !196
  %14 = ptrtoint ptr %tx_hard_ack to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %tx_hard_ack, align 8
  %16 = ptrtoint ptr %tx_winsize.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_winsize.i, align 1
  %18 = ptrtoint ptr %cong_cwnd.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cong_cwnd.i, align 2
  %20 = ptrtoint ptr %cong_extra.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cong_extra.i, align 1
  %22 = load volatile i32, ptr %tx_hard_ack, align 8
  %conv.i = zext i8 %17 to i32
  %conv1.i = zext i8 %19 to i32
  %conv2.i = zext i8 %21 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv1.i
  %23 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %conv.i) #8
  %24 = ptrtoint ptr %tx_top.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_top.i, align 4
  %sub.i = sub i32 %25, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %23)
  %cmp5.i = icmp ult i32 %sub.i, %23
  br i1 %cmp5.i, label %__here.cleanup_crit_edge, label %if.end79

__here.cleanup_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end79:                                         ; preds = %__here
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %27)
  %cmp80 = icmp ugt i32 %27, 10
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %28 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error, align 4
  br label %cleanup

if.end82:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp83 = icmp eq i32 %timeout.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %tx_start.0)
  %cmp84 = icmp eq i32 %22, %tx_start.0
  %or.cond = select i1 %cmp83, i1 %cmp84, i1 false
  br i1 %or.cond, label %land.lhs.true85, label %if.end82.if.end91_crit_edge

if.end82.if.end91_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

land.lhs.true85:                                  ; preds = %if.end82
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stack.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true85.cleanup_crit_edge, !prof !174

land.lhs.true85.cleanup_crit_edge:                ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %land.lhs.true85
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %and1.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool89.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool89.not, label %signal_pending.exit.if.end91_crit_edge, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit.if.end91_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.end91:                                         ; preds = %signal_pending.exit.if.end91_crit_edge, %if.end82.if.end91_crit_edge
  %spec.select = select i1 %cmp84, i32 %timeout.0, i32 %4
  tail call fastcc void @trace_rxrpc_transmit(ptr noundef %call, i32 noundef 6)
  %call95 = tail call i32 @schedule_timeout(i32 noundef %spec.select) #8
  br label %__here

cleanup:                                          ; preds = %signal_pending.exit.cleanup_crit_edge, %land.lhs.true85.cleanup_crit_edge, %if.then81, %__here.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.then81 ], [ -4, %land.lhs.true85.cleanup_crit_edge ], [ -4, %signal_pending.exit.cleanup_crit_edge ], [ 0, %__here.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_wait_for_tx_window_intr(ptr nocapture noundef readnone %rx, ptr noundef %call, ptr nocapture noundef %timeo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_winsize.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 69
  %cong_cwnd.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 57
  %cong_extra.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 58
  %tx_hard_ack.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 54
  %tx_top.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 55
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %user_mutex = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 6
  br label %__here

__here:                                           ; preds = %if.end72.__here_crit_edge, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@rxrpc_wait_for_tx_window_intr, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !197
  %7 = ptrtoint ptr %tx_winsize.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_winsize.i, align 1
  %9 = ptrtoint ptr %cong_cwnd.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cong_cwnd.i, align 2
  %11 = ptrtoint ptr %cong_extra.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cong_extra.i, align 1
  %13 = ptrtoint ptr %tx_hard_ack.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tx_hard_ack.i, align 8
  %conv.i = zext i8 %8 to i32
  %conv1.i = zext i8 %10 to i32
  %conv2.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv1.i
  %15 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %conv.i) #8
  %16 = ptrtoint ptr %tx_top.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_top.i, align 4
  %sub.i = sub i32 %17, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %15)
  %cmp5.i = icmp ult i32 %sub.i, %15
  br i1 %cmp5.i, label %__here.return_crit_edge, label %if.end63

__here.return_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end63:                                         ; preds = %__here
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %19)
  %cmp = icmp ugt i32 %19, 10
  br i1 %cmp, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  br label %return

if.end65:                                         ; preds = %if.end63
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end65.if.then70_crit_edge, !prof !174

if.end65.if.then70_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70

signal_pending.exit:                              ; preds = %if.end65
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool69.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool69.not, label %if.end72, label %signal_pending.exit.if.then70_crit_edge

signal_pending.exit.if.then70_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70

if.then70:                                        ; preds = %signal_pending.exit.if.then70_crit_edge, %if.end65.if.then70_crit_edge
  %31 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %32)
  %cmp.i = icmp eq i32 %32, 2147483647
  %cond.i = select i1 %cmp.i, i32 -512, i32 -4
  br label %return

if.end72:                                         ; preds = %signal_pending.exit
  tail call fastcc void @trace_rxrpc_transmit(ptr noundef %call, i32 noundef 6)
  tail call void @mutex_unlock(ptr noundef %user_mutex) #8
  %33 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timeo, align 4
  %call73 = tail call i32 @schedule_timeout(i32 noundef %34) #8
  %35 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call73, ptr %timeo, align 4
  %call75 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %user_mutex, i32 noundef 0) #8
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then77, label %if.end72.__here_crit_edge

if.end72.__here_crit_edge:                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %37)
  %cmp.i90 = icmp eq i32 %37, 2147483647
  %cond.i91 = select i1 %cmp.i90, i32 -512, i32 -4
  br label %return

return:                                           ; preds = %if.then77, %if.then70, %if.then64, %__here.return_crit_edge
  %retval.0 = phi i32 [ %21, %if.then64 ], [ %cond.i, %if.then70 ], [ %cond.i91, %if.then77 ], [ 0, %__here.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_wait_for_tx_window_nonintr(ptr nocapture noundef readnone %rx, ptr noundef %call, ptr nocapture noundef %timeo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_winsize.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 69
  %cong_cwnd.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 57
  %cong_extra.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 58
  %tx_hard_ack.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 54
  %tx_top.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 55
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  br label %__here

__here:                                           ; preds = %if.end65, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@rxrpc_wait_for_tx_window_nonintr, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !198
  %7 = ptrtoint ptr %tx_winsize.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_winsize.i, align 1
  %9 = ptrtoint ptr %cong_cwnd.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cong_cwnd.i, align 2
  %11 = ptrtoint ptr %cong_extra.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cong_extra.i, align 1
  %13 = ptrtoint ptr %tx_hard_ack.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tx_hard_ack.i, align 8
  %conv.i = zext i8 %8 to i32
  %conv1.i = zext i8 %10 to i32
  %conv2.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv1.i
  %15 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %conv.i) #8
  %16 = ptrtoint ptr %tx_top.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_top.i, align 4
  %sub.i = sub i32 %17, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %15)
  %cmp5.i = icmp ult i32 %sub.i, %15
  br i1 %cmp5.i, label %__here.return_crit_edge, label %if.end63

__here.return_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end63:                                         ; preds = %__here
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  %cmp = icmp ugt i32 %19, 10
  br i1 %cmp, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 39
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  br label %return

if.end65:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_rxrpc_transmit(ptr noundef %call, i32 noundef 6)
  %22 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timeo, align 4
  %call66 = tail call i32 @schedule_timeout(i32 noundef %23) #8
  %24 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call66, ptr %timeo, align 4
  br label %__here

return:                                           ; preds = %if.then64, %__here.return_crit_edge
  %retval.0 = phi i32 [ %21, %if.then64 ], [ 0, %__here.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_transmit(ptr noundef %call, i32 noundef %why) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_transmit, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_transmit, %do.body)) #8
          to label %if.end49 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !174

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !199
  %call43 = tail call i32 @__traceiter_rxrpc_transmit(ptr noundef null, ptr noundef %call, i32 noundef %why) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !200
  %13 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !174

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !164) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_transmit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_transmit, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_rxrpc_transmit.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rxrpc_transmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 781, ptr noundef nonnull @.str.35) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  %31 = tail call i32 @llvm.read_register.i32(metadata !164) #8
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
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_and_copy_from_iter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_get_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_expose_client_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_send_data_packet(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_set_call_completion(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_queue_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_eproto(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !42, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !120, !121, !123, !125, !126, !128, !130, !131, !133, !135, !137, !138, !140, !142, !144, !145, !146, !147, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !163}
!llvm.named.register.sp = !{!164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/sendmsg.c", i32 639, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rxrpc_do_sendmsg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rxrpc_do_sendmsg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rxrpc/sendmsg.c", i32 722, i32 2}
!8 = !{ptr @rxrpc_do_sendmsg._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rxrpc_do_sendmsg._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rxrpc/sendmsg.c", i32 730, i32 24}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rxrpc/sendmsg.c", i32 751, i32 2}
!14 = !{ptr @rxrpc_do_sendmsg._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rxrpc_do_sendmsg._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rxrpc/sendmsg.c", i32 778, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rxrpc_kernel_send_data._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @rxrpc_kernel_send_data._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/rxrpc/sendmsg.c", i32 780, i32 2}
!23 = !{ptr @rxrpc_kernel_send_data._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rxrpc_kernel_send_data._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rxrpc_kernel_send_data._entry.16, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../net/rxrpc/sendmsg.c", i32 781, i32 2}
!28 = !{ptr @rxrpc_kernel_send_data._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @rxrpc_kernel_send_data._entry.18, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../net/rxrpc/sendmsg.c", i32 785, i32 2}
!31 = !{ptr @rxrpc_kernel_send_data._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/rxrpc/sendmsg.c", i32 802, i32 34}
!34 = !{ptr @rxrpc_kernel_send_data.___tp_str, !33, !"___tp_str", i1 false, i1 false}
!35 = !{ptr @rxrpc_kernel_send_data._entry.21, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../net/rxrpc/sendmsg.c", i32 808, i32 2}
!37 = !{ptr @rxrpc_kernel_send_data._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__ksymtab_rxrpc_kernel_send_data, !39, !"__ksymtab_rxrpc_kernel_send_data", i1 false, i1 false}
!39 = !{!"../net/rxrpc/sendmsg.c", i32 811, i32 1}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/rxrpc/sendmsg.c", i32 829, i32 2}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rxrpc_kernel_abort_call._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @rxrpc_kernel_abort_call._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab_rxrpc_kernel_abort_call, !46, !"__ksymtab_rxrpc_kernel_abort_call", i1 false, i1 false}
!46 = !{!"../net/rxrpc/sendmsg.c", i32 840, i32 1}
!47 = !{ptr @__ksymtab_rxrpc_kernel_set_tx_length, !48, !"__ksymtab_rxrpc_kernel_set_tx_length", i1 false, i1 false}
!48 = !{!"../net/rxrpc/sendmsg.c", i32 860, i32 1}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/rxrpc/sendmsg.c", i32 484, i32 3}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rxrpc_sendmsg_cmsg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @rxrpc_sendmsg_cmsg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/rxrpc/sendmsg.c", i32 566, i32 2}
!56 = !{ptr @rxrpc_sendmsg_cmsg._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rxrpc_sendmsg_cmsg._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/rxrpc/sendmsg.c", i32 587, i32 2}
!60 = !{ptr @rxrpc_new_client_call_for_sendmsg._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rxrpc_new_client_call_for_sendmsg._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/rxrpc/sendmsg.c", i32 610, i32 2}
!64 = !{ptr @rxrpc_new_client_call_for_sendmsg._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @rxrpc_new_client_call_for_sendmsg._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/trace/events/rxrpc.h", i32 1138, i32 1}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!70 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/rxrpc/sendmsg.c", i32 332, i32 4}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rxrpc_send_data._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @rxrpc_send_data._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/rxrpc/sendmsg.c", i32 355, i32 4}
!81 = !{ptr @rxrpc_send_data._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rxrpc_send_data._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/rxrpc/sendmsg.c", i32 367, i32 4}
!85 = !{ptr @rxrpc_send_data._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rxrpc_send_data._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @rxrpc_send_data._entry.45, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../net/rxrpc/sendmsg.c", i32 369, i32 4}
!89 = !{ptr @rxrpc_send_data._entry_ptr.46, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/rxrpc/sendmsg.c", i32 377, i32 4}
!92 = !{ptr @rxrpc_send_data._entry.47, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @rxrpc_send_data._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/rxrpc/sendmsg.c", i32 386, i32 3}
!96 = !{ptr @rxrpc_send_data._entry.50, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @rxrpc_send_data._entry_ptr.52, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @rxrpc_send_data._entry.53, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../net/rxrpc/sendmsg.c", i32 392, i32 4}
!100 = !{ptr @rxrpc_send_data._entry_ptr.54, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/rxrpc/sendmsg.c", i32 398, i32 4}
!104 = !{ptr @rxrpc_send_data._entry.56, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @rxrpc_send_data._entry_ptr.58, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/rxrpc/sendmsg.c", i32 400, i32 4}
!108 = !{ptr @rxrpc_send_data._entry.59, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @rxrpc_send_data._entry_ptr.61, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @rxrpc_send_data._entry.62, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../net/rxrpc/sendmsg.c", i32 449, i32 2}
!112 = !{ptr @rxrpc_send_data._entry_ptr.63, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @rxrpc_send_data._entry.64, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../net/rxrpc/sendmsg.c", i32 454, i32 2}
!115 = !{ptr @rxrpc_send_data._entry_ptr.65, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/rxrpc/sendmsg.c", i32 135, i32 2}
!118 = !{ptr @.str.67, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @rxrpc_wait_for_tx_window._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @rxrpc_wait_for_tx_window._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../net/rxrpc/sendmsg.c", i32 155, i32 2}
!123 = !{ptr @rxrpc_wait_for_tx_window._entry.68, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../net/rxrpc/sendmsg.c", i32 156, i32 2}
!125 = !{ptr @rxrpc_wait_for_tx_window._entry_ptr.69, !124, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../net/rxrpc/sendmsg.c", i32 80, i32 3}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/trace/events/rxrpc.h", i32 754, i32 1}
!130 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../net/rxrpc/sendmsg.c", i32 43, i32 3}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../net/rxrpc/sendmsg.c", i32 111, i32 3}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!137 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/rxrpc/sendmsg.c", i32 204, i32 2}
!144 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @rxrpc_queue_packet._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @rxrpc_queue_packet._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @rxrpc_queue_packet._entry.75, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../net/rxrpc/sendmsg.c", i32 206, i32 2}
!149 = !{ptr @rxrpc_queue_packet._entry_ptr.76, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/rxrpc/sendmsg.c", i32 228, i32 3}
!152 = !{ptr @rxrpc_queue_packet._entry.77, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @rxrpc_queue_packet._entry_ptr.79, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/rxrpc/sendmsg.c", i32 268, i32 3}
!156 = !{ptr @rxrpc_queue_packet._entry.80, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @rxrpc_queue_packet._entry_ptr.82, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @rxrpc_queue_packet._entry.83, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../net/rxrpc/sendmsg.c", i32 281, i32 2}
!160 = !{ptr @rxrpc_queue_packet._entry_ptr.84, !159, !"_entry_ptr", i1 false, i1 false}
!161 = distinct !{null, !162, !"__already_done", i1 false, i1 false}
!162 = !{!"../include/trace/events/rxrpc.h", i32 1355, i32 1}
!163 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!164 = !{!"sp"}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{!"branch_weights", i32 2000, i32 1}
!175 = !{i8 0, i8 2}
!176 = !{i64 2148448816}
!177 = !{i64 2148364125, i64 2148364157, i64 2148364186, i64 2148364220, i64 2148364251, i64 2148364274}
!178 = !{i64 2148449045}
!179 = !{!"auto-init"}
!180 = !{i64 2158187001, i64 2158187485, i64 2158187038, i64 2158187094, i64 2158187128, i64 2158187152, i64 2158187193, i64 2158187214, i64 2158187242, i64 2158187276}
!181 = !{i64 2154586005, i64 2154586493, i64 2154586042, i64 2154586098, i64 2154586132, i64 2154586156, i64 2154586197, i64 2154586218, i64 2154586246, i64 2154586280}
!182 = !{!"branch_weights", i32 1, i32 2000}
!183 = !{i64 2158195200, i64 2158195684, i64 2158195237, i64 2158195293, i64 2158195327, i64 2158195351, i64 2158195392, i64 2158195413, i64 2158195441, i64 2158195475}
!184 = !{i64 2158162911, i64 2158163395, i64 2158162948, i64 2158163004, i64 2158163038, i64 2158163062, i64 2158163103, i64 2158163124, i64 2158163152, i64 2158163186}
!185 = !{i64 2158168407}
!186 = !{i64 2158239949, i64 2158240433, i64 2158239986, i64 2158240042, i64 2158240076, i64 2158240100, i64 2158240141, i64 2158240162, i64 2158240190, i64 2158240224}
!187 = !{i64 2158244037, i64 2158244521, i64 2158244074, i64 2158244130, i64 2158244164, i64 2158244188, i64 2158244229, i64 2158244250, i64 2158244278, i64 2158244312}
!188 = !{i64 2148183028, i64 2148183033, i64 2148183046, i64 2148183090, i64 2148183124, i64 2148183145}
!189 = !{i64 2157974994}
!190 = !{i64 2157975221}
!191 = !{i64 2149416770}
!192 = !{i64 2149417806}
!193 = !{i64 2157849866}
!194 = !{i64 2157850079}
!195 = !{i64 2158156046}
!196 = !{i64 2158141166}
!197 = !{i64 2158130360}
!198 = !{i64 2158148893}
!199 = !{i64 2157625094}
!200 = !{i64 2157625303}
