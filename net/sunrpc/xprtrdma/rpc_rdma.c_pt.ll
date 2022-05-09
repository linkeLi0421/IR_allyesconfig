; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/rpc_rdma.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/rpc_rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%struct.atomic_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rpcrdma_ep = type { %struct.kref, ptr, ptr, i32, i32, ptr, i32, %struct.completion, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.ib_qp_init_attr, %struct.wait_queue_head, ptr, %struct.rpcrdma_connect_private, %struct.rdma_conn_param, i32, i32, i32, i32, %struct.atomic_t, [4 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rpcrdma_connect_private = type { i32, i8, i8, i8, i8 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rpcrdma_sendctx = type { %struct.ib_cqe, %struct.rpc_rdma_cid, ptr, i32, [0 x %struct.ib_sge] }
%struct.ib_cqe = type { ptr }
%struct.rpc_rdma_cid = type { i32, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rpcrdma_req = type { %struct.list_head, %struct.rpc_rqst, ptr, %struct.xdr_stream, %struct.xdr_buf, %struct.ib_send_wr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.kref, %struct.list_head, %struct.list_head, [260 x %struct.rpcrdma_mr_seg] }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.181, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.181 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.rpcrdma_mr_seg = type { i32, ptr, i64 }
%struct.rpcrdma_regbuf = type { %struct.ib_sge, ptr, i32, ptr }
%struct.rpcrdma_rep = type { %struct.ib_cqe, %struct.rpc_rdma_cid, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, %struct.xdr_buf, %struct.xdr_stream, %struct.llist_node, %struct.ib_recv_wr, %struct.list_head }
%struct.llist_node = type { ptr }
%struct.ib_recv_wr = type { ptr, %union.anon.161, ptr, i32 }
%union.anon.161 = type { i64 }
%struct.rpcrdma_xprt = type { %struct.rpc_xprt, ptr, %struct.rpcrdma_buffer, %struct.delayed_work, %struct.rpc_timeout, %struct.rpcrdma_stats }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.180, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.__kernel_sockaddr_storage = type { %union.anon.173 }
%union.anon.173 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.180 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rpcrdma_buffer = type { %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.llist_head, i32, i32, i32, i32, %struct.work_struct }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpcrdma_stats = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.rpcrdma_mr = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.ib_cqe, %struct.completion, %union.anon.182, ptr, i32, i32, i64, %struct.list_head, %struct.rpc_rdma_cid }
%union.anon.182 = type { %struct.ib_reg_wr }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.176, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.176 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }

@__tracepoint_xprtrdma_dma_maperr = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/rpcrdma.h\00", [33 x i8] zeroinitializer }, align 32
@trace_xprtrdma_dma_maperr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xprtrdma_prepsend_failed = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_prepsend_failed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_nomrs_err = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_nomrs_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_chunk_read = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_chunk_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_chunk_write = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_chunk_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_chunk_wp = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_chunk_wp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_chunk_reply = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_chunk_reply.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_marshal = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_marshal.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_marshal_failed = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_marshal_failed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_decode_seg = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_decode_seg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_xprtrdma_fixup = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_fixup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_err_vers = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_err_vers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_err_chunk = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_err_chunk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_err_unrecognized = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_err_unrecognized.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_reply_hdr_err = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_reply_hdr_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_reply = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_reply.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_reply_vers_err = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_reply_vers_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_reply_rqst_err = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_reply_rqst_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_reply_short_err = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_reply_short_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_ = private constant [34 x i8] c"../net/sunrpc/xprtrdma/rpc_rdma.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [34 x i8] c"../include/trace/events/rpcrdma.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 1230, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 108, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rpcrdma_set_max_header_sizes(ptr nocapture noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %re_max_rdma_segs = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %re_max_rdma_segs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %re_max_rdma_segs, align 4
  %re_inline_send = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 23
  %2 = ptrtoint ptr %re_inline_send to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %re_inline_send, align 4
  %mul1.i.neg = mul i32 %1, -24
  %add4.i.neg = add i32 %mul1.i.neg, -52
  %sub = add i32 %add4.i.neg, %3
  %re_max_inline_send = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 10
  %4 = ptrtoint ptr %re_max_inline_send to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %re_max_inline_send, align 4
  %re_inline_recv = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 24
  %5 = ptrtoint ptr %re_inline_recv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %re_inline_recv, align 4
  %mul1.i8.neg = mul i32 %1, -16
  %add3.i.neg = add i32 %mul1.i8.neg, -36
  %sub2 = add i32 %add3.i.neg, %6
  %re_max_inline_recv = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 11
  %7 = ptrtoint ptr %re_max_inline_recv to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub2, ptr %re_max_inline_recv, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_sendctx_unmap(ptr nocapture noundef %sc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_req = getelementptr inbounds %struct.rpcrdma_sendctx, ptr %sc, i32 0, i32 2
  %sc_unmap_count = getelementptr inbounds %struct.rpcrdma_sendctx, ptr %sc, i32 0, i32 3
  %0 = ptrtoint ptr %sc_unmap_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sc_unmap_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sc_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_req, align 4
  %rl_sendbuf = getelementptr inbounds %struct.rpcrdma_req, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %rl_sendbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rl_sendbuf, align 8
  %arrayidx = getelementptr %struct.rpcrdma_sendctx, ptr %sc, i32 2, i32 1, i32 1
  %rg_device.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %sge.014 = phi ptr [ %arrayidx, %if.end ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %rg_device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rg_device.i, align 8
  %8 = ptrtoint ptr %sge.014 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sge.014, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %sge.014, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 8
  %conv.i = trunc i64 %9 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %conv.i, i32 noundef %11, i32 noundef 1, i32 noundef 0) #10
  %incdec.ptr = getelementptr %struct.ib_sge, ptr %sge.014, i32 1
  %14 = ptrtoint ptr %sc_unmap_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sc_unmap_count, align 8
  %dec = add i32 %15, -1
  store i32 %dec, ptr %sc_unmap_count, align 8
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %16 = ptrtoint ptr %sc_req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc_req, align 4
  %rl_kref = getelementptr inbounds %struct.rpcrdma_req, ptr %17, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rl_kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %rl_kref, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rl_kref, ptr %rl_kref, i32 1, ptr elementtype(i32) %rl_kref) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %rl_kref, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %rl_reply.i = getelementptr %struct.rpcrdma_req, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %rl_reply.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rl_reply.i, align 8
  tail call void @rpcrdma_complete_rqst(ptr noundef %20) #10
  %rr_rxprt.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %rr_rxprt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rr_rxprt.i, align 8
  %reply_waits_for_send.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %22, i32 0, i32 5, i32 14
  %23 = ptrtoint ptr %reply_waits_for_send.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reply_waits_for_send.i, align 8
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %reply_waits_for_send.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcrdma_prepare_send_sges(ptr noundef %r_xprt, ptr noundef %req, i32 noundef %hdrlen, ptr nocapture noundef readonly %xdr, i32 noundef %rtype) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @rpcrdma_sendctx_get_locked(ptr noundef %r_xprt) #10
  %rl_sendctx = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %rl_sendctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %rl_sendctx, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_nosc_crit_edge, label %if.end

entry.out_nosc_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_nosc

if.end:                                           ; preds = %entry
  %sc_unmap_count = getelementptr inbounds %struct.rpcrdma_sendctx, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %sc_unmap_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sc_unmap_count, align 8
  %2 = ptrtoint ptr %rl_sendctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rl_sendctx, align 8
  %sc_req = getelementptr inbounds %struct.rpcrdma_sendctx, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sc_req to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req, ptr %sc_req, align 4
  %rl_kref = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rl_kref, i32 noundef 4) #10
  %5 = ptrtoint ptr %rl_kref to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %rl_kref, align 4
  %6 = ptrtoint ptr %rl_sendctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rl_sendctx, align 8
  %8 = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  %sc_sges = getelementptr %struct.rpcrdma_sendctx, ptr %7, i32 0, i32 4
  %sg_list = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sc_sges, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 5, i32 3
  %opcode = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %opcode, align 8
  %rl_rdmabuf.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 7
  %12 = ptrtoint ptr %rl_rdmabuf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rl_rdmabuf.i, align 4
  %14 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_sge, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %13, align 8
  %17 = ptrtoint ptr %sc_sges to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %sc_sges, align 8
  %length.i = getelementptr %struct.rpcrdma_sendctx, ptr %7, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %hdrlen, ptr %length.i, align 8
  %lkey.i.i = getelementptr inbounds %struct.ib_sge, ptr %13, i32 0, i32 2
  %19 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lkey.i.i, align 4
  %lkey.i = getelementptr %struct.rpcrdma_sendctx, ptr %7, i32 0, i32 4, i32 0, i32 2
  %21 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %lkey.i, align 4
  %rg_device.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %rg_device.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rg_device.i.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %conv.i.i = trunc i64 %16 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %25, i32 noundef %conv.i.i, i32 noundef %hdrlen, i32 noundef 1) #10
  %26 = zext i32 %rtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rtype, label %if.end.out_unmap_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb16
    i32 4, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.out_unmap_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap

sw.bb:                                            ; preds = %if.end
  %iov_len.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i, !prof !76

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xdr, align 4
  %iov_len.i.i = getelementptr inbounds %struct.kvec, ptr %xdr, i32 0, i32 1
  %31 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iov_len.i.i, align 4
  %page_len.i.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 5
  %33 = ptrtoint ptr %page_len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %page_len.i.i, align 4
  %add.i.i = add i32 %34, %32
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %add.i.i
  %tail.i.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1
  %35 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i, align 4
  %37 = call ptr @memmove(ptr %add.ptr.i.i, ptr %36, i32 %28)
  %38 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iov_len.i, align 4
  %conv.i.i45 = zext i32 %39 to i64
  %pullup_copy_count.i.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 4
  %40 = ptrtoint ptr %pullup_copy_count.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pullup_copy_count.i.i, align 8
  %add11.i.i = add i64 %41, %conv.i.i45
  store i64 %add11.i.i, ptr %pullup_copy_count.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %page_len.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 5
  %42 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %page_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool3.not.i = icmp eq i32 %43, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then10.i, !prof !76

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rpcrdma_pullup_pagelist(ptr noundef %r_xprt, ptr noundef %xdr) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end.i.if.end11.i_crit_edge
  %len.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 8
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i, align 4
  %46 = ptrtoint ptr %rl_sendctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rl_sendctx, align 8
  %48 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_sge, align 4
  %inc.i.i = add i32 %49, 1
  store i32 %inc.i.i, ptr %num_sge, align 4
  %rl_sendbuf.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 8
  %50 = ptrtoint ptr %rl_sendbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rl_sendbuf.i.i, align 8
  %rg_device.i.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %rg_device.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rg_device.i.i.i.i, align 8
  %cmp.i.not.i.i.i = icmp eq ptr %53, null
  br i1 %cmp.i.not.i.i.i, label %rpcrdma_regbuf_dma_map.exit.i.i, label %if.end11.i.rpcrdma_prepare_noch_pullup.exit.thread_crit_edge, !prof !78

if.end11.i.rpcrdma_prepare_noch_pullup.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_prepare_noch_pullup.exit.thread

rpcrdma_regbuf_dma_map.exit.i.i:                  ; preds = %if.end11.i
  %call2.i.i.i = tail call zeroext i1 @__rpcrdma_regbuf_dma_map(ptr noundef %r_xprt, ptr noundef %51) #10
  br i1 %call2.i.i.i, label %rpcrdma_regbuf_dma_map.exit.i.i.rpcrdma_prepare_noch_pullup.exit.thread_crit_edge, label %rpcrdma_regbuf_dma_map.exit.i.i.out_unmap_crit_edge

rpcrdma_regbuf_dma_map.exit.i.i.out_unmap_crit_edge: ; preds = %rpcrdma_regbuf_dma_map.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap

rpcrdma_regbuf_dma_map.exit.i.i.rpcrdma_prepare_noch_pullup.exit.thread_crit_edge: ; preds = %rpcrdma_regbuf_dma_map.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_prepare_noch_pullup.exit.thread

rpcrdma_prepare_noch_pullup.exit.thread:          ; preds = %rpcrdma_regbuf_dma_map.exit.i.i.rpcrdma_prepare_noch_pullup.exit.thread_crit_edge, %if.end11.i.rpcrdma_prepare_noch_pullup.exit.thread_crit_edge
  %arrayidx.i.i = getelementptr %struct.rpcrdma_sendctx, ptr %47, i32 0, i32 4, i32 %49
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %51, align 8
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx.i.i, align 8
  %length.i.i = getelementptr %struct.rpcrdma_sendctx, ptr %47, i32 0, i32 4, i32 %49, i32 1
  %57 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %45, ptr %length.i.i, align 8
  %lkey.i.i.i = getelementptr inbounds %struct.ib_sge, ptr %51, i32 0, i32 2
  %58 = ptrtoint ptr %lkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lkey.i.i.i, align 4
  %lkey.i.i46 = getelementptr %struct.rpcrdma_sendctx, ptr %47, i32 0, i32 4, i32 %49, i32 2
  %60 = ptrtoint ptr %lkey.i.i46 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %lkey.i.i46, align 4
  %61 = ptrtoint ptr %rg_device.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rg_device.i.i.i.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %conv.i.i.i = trunc i64 %55 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %64, i32 noundef %conv.i.i.i, i32 noundef %45, i32 noundef 1) #10
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %tail1.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1
  %iov_len.i47 = getelementptr inbounds %struct.kvec, ptr %xdr, i32 0, i32 1
  %65 = ptrtoint ptr %iov_len.i47 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %iov_len.i47, align 4
  %67 = ptrtoint ptr %rl_sendctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rl_sendctx, align 8
  %69 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_sge, align 4
  %inc.i.i50 = add i32 %70, 1
  store i32 %inc.i.i50, ptr %num_sge, align 4
  %rl_sendbuf.i.i51 = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 8
  %71 = ptrtoint ptr %rl_sendbuf.i.i51 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rl_sendbuf.i.i51, align 8
  %rg_device.i.i.i.i52 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %rg_device.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rg_device.i.i.i.i52, align 8
  %cmp.i.not.i.i.i53 = icmp eq ptr %74, null
  br i1 %cmp.i.not.i.i.i53, label %rpcrdma_regbuf_dma_map.exit.i.i55, label %sw.bb12.if.end.i63_crit_edge, !prof !78

sw.bb12.if.end.i63_crit_edge:                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i63

rpcrdma_regbuf_dma_map.exit.i.i55:                ; preds = %sw.bb12
  %call2.i.i.i54 = tail call zeroext i1 @__rpcrdma_regbuf_dma_map(ptr noundef %r_xprt, ptr noundef %72) #10
  br i1 %call2.i.i.i54, label %rpcrdma_regbuf_dma_map.exit.i.i55.if.end.i63_crit_edge, label %rpcrdma_regbuf_dma_map.exit.i.i55.out_unmap_crit_edge

rpcrdma_regbuf_dma_map.exit.i.i55.out_unmap_crit_edge: ; preds = %rpcrdma_regbuf_dma_map.exit.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap

rpcrdma_regbuf_dma_map.exit.i.i55.if.end.i63_crit_edge: ; preds = %rpcrdma_regbuf_dma_map.exit.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i63

if.end.i63:                                       ; preds = %rpcrdma_regbuf_dma_map.exit.i.i55.if.end.i63_crit_edge, %sw.bb12.if.end.i63_crit_edge
  %arrayidx.i.i56 = getelementptr %struct.rpcrdma_sendctx, ptr %68, i32 0, i32 4, i32 %70
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %72, align 8
  %77 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx.i.i56, align 8
  %length.i.i57 = getelementptr %struct.rpcrdma_sendctx, ptr %68, i32 0, i32 4, i32 %70, i32 1
  %78 = ptrtoint ptr %length.i.i57 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %66, ptr %length.i.i57, align 8
  %lkey.i.i.i58 = getelementptr inbounds %struct.ib_sge, ptr %72, i32 0, i32 2
  %79 = ptrtoint ptr %lkey.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lkey.i.i.i58, align 4
  %lkey.i.i59 = getelementptr %struct.rpcrdma_sendctx, ptr %68, i32 0, i32 4, i32 %70, i32 2
  %81 = ptrtoint ptr %lkey.i.i59 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %lkey.i.i59, align 4
  %82 = ptrtoint ptr %rg_device.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rg_device.i.i.i.i52, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 8
  %conv.i.i.i60 = trunc i64 %76 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %85, i32 noundef %conv.i.i.i60, i32 noundef %66, i32 noundef 1) #10
  %page_len.i61 = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 5
  %86 = ptrtoint ptr %page_len.i61 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %page_len.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i62 = icmp eq i32 %87, 0
  br i1 %tobool.not.i62, label %if.end.i63.if.end7.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i63.if.end7.i_crit_edge:                   ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i63
  %88 = ptrtoint ptr %rl_sendctx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rl_sendctx, align 8
  %page_base1.i.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 4
  %90 = ptrtoint ptr %page_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %page_base1.i.i, align 4
  %and.i.i = and i32 %91, 4095
  %pages.i.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 3
  %92 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pages.i.i, align 4
  %shr.i.i = lshr i32 %91, 12
  %add.ptr.i.i64 = getelementptr ptr, ptr %93, i32 %shr.i.i
  %94 = ptrtoint ptr %rl_sendbuf.i.i51 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rl_sendbuf.i.i51, align 8
  %rg_device.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %95, i32 0, i32 1
  %lkey.i.i32.i = getelementptr inbounds %struct.ib_sge, ptr %95, i32 0, i32 2
  %sc_unmap_count.i.i = getelementptr inbounds %struct.rpcrdma_sendctx, ptr %89, i32 0, i32 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i38.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %ppages.044.i.i = phi ptr [ %add.ptr.i.i64, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end.i38.i.while.body.i.i_crit_edge ]
  %remaining.043.i.i = phi i32 [ %87, %while.body.lr.ph.i.i ], [ %sub10.i.i, %if.end.i38.i.while.body.i.i_crit_edge ]
  %page_base.042.i.i = phi i32 [ %and.i.i, %while.body.lr.ph.i.i ], [ 0, %if.end.i38.i.while.body.i.i_crit_edge ]
  %96 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_sge, align 4
  %inc.i33.i = add i32 %97, 1
  store i32 %inc.i33.i, ptr %num_sge, align 4
  %arrayidx.i34.i = getelementptr %struct.rpcrdma_sendctx, ptr %89, i32 0, i32 4, i32 %97
  %sub.i.i = sub nuw nsw i32 4096, %page_base.042.i.i
  %98 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %remaining.043.i.i) #10
  %99 = ptrtoint ptr %rg_device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rg_device.i.i.i, align 8
  %101 = ptrtoint ptr %ppages.044.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ppages.044.i.i, align 4
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %100, align 8
  %call2.i.i35.i = tail call i32 @dma_map_page_attrs(ptr noundef %104, ptr noundef %102, i32 noundef %page_base.042.i.i, i32 noundef %98, i32 noundef 1, i32 noundef 0) #10
  %conv3.i.i.i = zext i32 %call2.i.i35.i to i64
  %105 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv3.i.i.i, ptr %arrayidx.i34.i, align 8
  %106 = ptrtoint ptr %rg_device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rg_device.i.i.i, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %109, i32 noundef %call2.i.i35.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i35.i)
  %cmp.i.i.not.i.i = icmp eq i32 %call2.i.i35.i, -1
  br i1 %cmp.i.i.not.i.i, label %rpcrdma_prepare_pagelist.exit.i, label %if.end.i38.i

if.end.i38.i:                                     ; preds = %while.body.i.i
  %length.i36.i = getelementptr %struct.rpcrdma_sendctx, ptr %89, i32 0, i32 4, i32 %97, i32 1
  %110 = ptrtoint ptr %length.i36.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %98, ptr %length.i36.i, align 8
  %111 = ptrtoint ptr %lkey.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %lkey.i.i32.i, align 4
  %lkey.i37.i = getelementptr %struct.rpcrdma_sendctx, ptr %89, i32 0, i32 4, i32 %97, i32 2
  %113 = ptrtoint ptr %lkey.i37.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %lkey.i37.i, align 4
  %114 = ptrtoint ptr %sc_unmap_count.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sc_unmap_count.i.i, align 8
  %inc9.i.i = add i32 %115, 1
  store i32 %inc9.i.i, ptr %sc_unmap_count.i.i, align 8
  %incdec.ptr.i.i = getelementptr ptr, ptr %ppages.044.i.i, i32 1
  %sub10.i.i = sub i32 %remaining.043.i.i, %98
  %tobool.not.i.i = icmp eq i32 %sub10.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i38.i.if.end7.i_crit_edge, label %if.end.i38.i.while.body.i.i_crit_edge

if.end.i38.i.while.body.i.i_crit_edge:            ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i38.i.if.end7.i_crit_edge:                 ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

rpcrdma_prepare_pagelist.exit.i:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx.i34.i, align 8
  tail call fastcc void @trace_xprtrdma_dma_maperr(i64 noundef %117) #10
  br label %out_unmap

if.end7.i:                                        ; preds = %if.end.i38.i.if.end7.i_crit_edge, %if.end.i63.if.end7.i_crit_edge
  %iov_len8.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1, i32 0, i32 1
  %118 = ptrtoint ptr %iov_len8.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %iov_len8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool9.not.i = icmp eq i32 %119, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end15.i_crit_edge, label %if.then10.i65

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then10.i65:                                    ; preds = %if.end7.i
  %120 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tail1.i, align 4
  %122 = ptrtoint ptr %121 to i32
  %and.i = and i32 %122, 4095
  %call12.i = tail call fastcc zeroext i1 @rpcrdma_prepare_tail_iov(ptr noundef %req, ptr noundef %xdr, i32 noundef %and.i, i32 noundef %119) #10
  br i1 %call12.i, label %if.then10.i65.if.end15.i_crit_edge, label %if.then10.i65.out_unmap_crit_edge

if.then10.i65.out_unmap_crit_edge:                ; preds = %if.then10.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap

if.then10.i65.if.end15.i_crit_edge:               ; preds = %if.then10.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i65.if.end15.i_crit_edge, %if.end7.i.if.end15.i_crit_edge
  %123 = ptrtoint ptr %rl_sendctx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rl_sendctx, align 8
  %sc_unmap_count.i = getelementptr inbounds %struct.rpcrdma_sendctx, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %sc_unmap_count.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sc_unmap_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool16.not.i = icmp eq i32 %126, 0
  br i1 %tobool16.not.i, label %if.end15.i.cleanup_crit_edge, label %if.then17.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17.i:                                      ; preds = %if.end15.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rl_kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %rl_kref, i32 1, i32 3, i32 1) #10
  %127 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rl_kref, ptr %rl_kref, i32 1, ptr elementtype(i32) %rl_kref) #10, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then17.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !78

if.then17.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then17.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %128 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %128)
  %.not.i.i.i.i.i = icmp sgt i32 %128, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then17.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then17.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %rl_kref, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  %iov_len.i66 = getelementptr inbounds %struct.kvec, ptr %xdr, i32 0, i32 1
  %129 = ptrtoint ptr %iov_len.i66 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %iov_len.i66, align 4
  %131 = ptrtoint ptr %rl_sendctx to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rl_sendctx, align 8
  %133 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_sge, align 4
  %inc.i.i69 = add i32 %134, 1
  store i32 %inc.i.i69, ptr %num_sge, align 4
  %rl_sendbuf.i.i70 = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 8
  %135 = ptrtoint ptr %rl_sendbuf.i.i70 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rl_sendbuf.i.i70, align 8
  %rg_device.i.i.i.i71 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %rg_device.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rg_device.i.i.i.i71, align 8
  %cmp.i.not.i.i.i72 = icmp eq ptr %138, null
  br i1 %cmp.i.not.i.i.i72, label %rpcrdma_regbuf_dma_map.exit.i.i74, label %sw.bb16.if.end.i80_crit_edge, !prof !78

sw.bb16.if.end.i80_crit_edge:                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i80

rpcrdma_regbuf_dma_map.exit.i.i74:                ; preds = %sw.bb16
  %call2.i.i.i73 = tail call zeroext i1 @__rpcrdma_regbuf_dma_map(ptr noundef %r_xprt, ptr noundef %136) #10
  br i1 %call2.i.i.i73, label %rpcrdma_regbuf_dma_map.exit.i.i74.if.end.i80_crit_edge, label %rpcrdma_regbuf_dma_map.exit.i.i74.out_unmap_crit_edge

rpcrdma_regbuf_dma_map.exit.i.i74.out_unmap_crit_edge: ; preds = %rpcrdma_regbuf_dma_map.exit.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap

rpcrdma_regbuf_dma_map.exit.i.i74.if.end.i80_crit_edge: ; preds = %rpcrdma_regbuf_dma_map.exit.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i80

if.end.i80:                                       ; preds = %rpcrdma_regbuf_dma_map.exit.i.i74.if.end.i80_crit_edge, %sw.bb16.if.end.i80_crit_edge
  %arrayidx.i.i75 = getelementptr %struct.rpcrdma_sendctx, ptr %132, i32 0, i32 4, i32 %134
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %136, align 8
  %141 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %arrayidx.i.i75, align 8
  %length.i.i76 = getelementptr %struct.rpcrdma_sendctx, ptr %132, i32 0, i32 4, i32 %134, i32 1
  %142 = ptrtoint ptr %length.i.i76 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %130, ptr %length.i.i76, align 8
  %lkey.i.i.i77 = getelementptr inbounds %struct.ib_sge, ptr %136, i32 0, i32 2
  %143 = ptrtoint ptr %lkey.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %lkey.i.i.i77, align 4
  %lkey.i.i78 = getelementptr %struct.rpcrdma_sendctx, ptr %132, i32 0, i32 4, i32 %134, i32 2
  %145 = ptrtoint ptr %lkey.i.i78 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %lkey.i.i78, align 4
  %146 = ptrtoint ptr %rg_device.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rg_device.i.i.i.i71, align 8
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 8
  %conv.i.i.i79 = trunc i64 %140 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %149, i32 noundef %conv.i.i.i79, i32 noundef %130, i32 noundef 1) #10
  %iov_len2.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1, i32 0, i32 1
  %150 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %iov_len2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %151)
  %cmp.i = icmp ugt i32 %151, 3
  br i1 %cmp.i, label %if.then3.i, label %if.end.i80.cleanup_crit_edge

if.end.i80.cleanup_crit_edge:                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i80
  %tail.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1
  %152 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tail.i, align 4
  %154 = ptrtoint ptr %153 to i32
  %and.i81 = and i32 %154, 4095
  %and9.i = and i32 %151, 3
  %add.i = add nuw nsw i32 %and.i81, %and9.i
  %sub.i = and i32 %151, -4
  %call11.i = tail call fastcc zeroext i1 @rpcrdma_prepare_tail_iov(ptr noundef %req, ptr noundef %xdr, i32 noundef %add.i, i32 noundef %sub.i) #10
  br i1 %call11.i, label %if.end13.i, label %if.then3.i.out_unmap_crit_edge

if.then3.i.out_unmap_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap

if.end13.i:                                       ; preds = %if.then3.i
  %call.i.i.i.i.i.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rl_kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %rl_kref, i32 1, i32 3, i32 1) #10
  %155 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rl_kref, ptr %rl_kref, i32 1, ptr elementtype(i32) %rl_kref) #10, !srcloc !79
  %asmresult.i.i.i.i.i.i.i84 = extractvalue { i32, i32, i32 } %155, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i84)
  %tobool1.not.i.i.i.i.i85 = icmp eq i32 %asmresult.i.i.i.i.i.i.i84, 0
  br i1 %tobool1.not.i.i.i.i.i85, label %if.end13.i.if.end15.sink.split.i.i.i.i.i90_crit_edge, label %if.else.i.i.i.i.i88, !prof !78

if.end13.i.if.end15.sink.split.i.i.i.i.i90_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i90

if.else.i.i.i.i.i88:                              ; preds = %if.end13.i
  %add.i.i.i.i.i86 = add i32 %asmresult.i.i.i.i.i.i.i84, 1
  %156 = or i32 %add.i.i.i.i.i86, %asmresult.i.i.i.i.i.i.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %156)
  %.not.i.i.i.i.i87 = icmp sgt i32 %156, -1
  br i1 %.not.i.i.i.i.i87, label %if.else.i.i.i.i.i88.cleanup_crit_edge, label %if.else.i.i.i.i.i88.if.end15.sink.split.i.i.i.i.i90_crit_edge, !prof !76

if.else.i.i.i.i.i88.if.end15.sink.split.i.i.i.i.i90_crit_edge: ; preds = %if.else.i.i.i.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i90

if.else.i.i.i.i.i88.cleanup_crit_edge:            ; preds = %if.else.i.i.i.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i.i.i90:                  ; preds = %if.else.i.i.i.i.i88.if.end15.sink.split.i.i.i.i.i90_crit_edge, %if.end13.i.if.end15.sink.split.i.i.i.i.i90_crit_edge
  %.sink.i.i.i.i.i89 = phi i32 [ 2, %if.end13.i.if.end15.sink.split.i.i.i.i.i90_crit_edge ], [ 1, %if.else.i.i.i.i.i88.if.end15.sink.split.i.i.i.i.i90_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %rl_kref, i32 noundef %.sink.i.i.i.i.i89) #10
  br label %cleanup

out_unmap:                                        ; preds = %if.then3.i.out_unmap_crit_edge, %rpcrdma_regbuf_dma_map.exit.i.i74.out_unmap_crit_edge, %if.then10.i65.out_unmap_crit_edge, %rpcrdma_prepare_pagelist.exit.i, %rpcrdma_regbuf_dma_map.exit.i.i55.out_unmap_crit_edge, %rpcrdma_regbuf_dma_map.exit.i.i.out_unmap_crit_edge, %if.end.out_unmap_crit_edge
  %157 = ptrtoint ptr %rl_sendctx to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rl_sendctx, align 8
  tail call void @rpcrdma_sendctx_unmap(ptr noundef %158)
  br label %out_nosc

out_nosc:                                         ; preds = %out_unmap, %entry.out_nosc_crit_edge
  %ret.0 = phi i32 [ -5, %out_unmap ], [ -11, %entry.out_nosc_crit_edge ]
  %rl_slot = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 1
  tail call fastcc void @trace_xprtrdma_prepsend_failed(ptr noundef %rl_slot, i32 noundef %ret.0)
  br label %cleanup

cleanup:                                          ; preds = %out_nosc, %if.end15.sink.split.i.i.i.i.i90, %if.else.i.i.i.i.i88.cleanup_crit_edge, %if.end.i80.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %rpcrdma_prepare_noch_pullup.exit.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_nosc ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %rpcrdma_prepare_noch_pullup.exit.thread ], [ 0, %if.end15.i.cleanup_crit_edge ], [ 0, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i ], [ 0, %if.end.i80.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i90 ], [ 0, %if.else.i.i.i.i.i88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpcrdma_sendctx_get_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_prepsend_failed(ptr noundef %rqst, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_prepsend_failed, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_prepsend_failed, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %call42 = tail call i32 @__traceiter_xprtrdma_prepsend_failed(ptr noundef null, ptr noundef %rqst, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_prepsend_failed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_prepsend_failed, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_prepsend_failed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_prepsend_failed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 909, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define dso_local i32 @rpcrdma_marshal_req(ptr noundef %r_xprt, ptr noundef %rqst) local_unnamed_addr #2 align 64 {
entry:
  %mr.i171 = alloca ptr, align 4
  %mr.i143 = alloca ptr, align 4
  %mr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rqst, i32 -8
  %rl_stream = getelementptr i8, ptr %rqst, i32 292
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 1
  %flags = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then, !prof !76

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %rq_rcv_buf = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2
  %call4 = tail call fastcc i32 @rpcrdma_alloc_sparse_pages(ptr noundef %rq_rcv_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %rl_hdrbuf = getelementptr i8, ptr %rqst, i32 328
  %iov_len.i = getelementptr i8, ptr %rqst, i32 332
  %2 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %iov_len.i, align 4
  %len1.i = getelementptr i8, ptr %rqst, i32 368
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %len1.i, align 4
  %rl_rdmabuf = getelementptr i8, ptr %rqst, i32 420
  %4 = ptrtoint ptr %rl_rdmabuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rl_rdmabuf, align 4
  %rg_data.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rg_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rg_data.i, align 8
  tail call void @xdr_init_encode(ptr noundef %rl_stream, ptr noundef %rl_hdrbuf, ptr noundef %7, ptr noundef %rqst) #10
  %call10 = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 16) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end7.out_err_crit_edge, label %if.end13

if.end7.out_err_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end13:                                         ; preds = %if.end7
  %rq_xid = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 5
  %8 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rq_xid, align 4
  %incdec.ptr = getelementptr i32, ptr %call10, i32 1
  %10 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call10, align 4
  %incdec.ptr14 = getelementptr i32, ptr %call10, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %incdec.ptr, align 4
  %rb_max_requests = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 11
  %12 = ptrtoint ptr %rb_max_requests to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rb_max_requests, align 4
  %incdec.ptr15 = getelementptr i32, ptr %call10, i32 3
  %14 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %incdec.ptr14, align 4
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 4
  %15 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq_cred, align 8
  %cr_auth = getelementptr inbounds %struct.rpc_cred, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cr_auth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cr_auth, align 4
  %au_flags = getelementptr inbounds %struct.rpc_auth, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %au_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %au_flags, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not = icmp eq i32 %21, 0
  %buflen.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buflen.i, align 4
  %rx_ep.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %24 = ptrtoint ptr %rx_ep.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_ep.i, align 8
  %re_max_inline_recv.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %re_max_inline_recv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %re_max_inline_recv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %27)
  %cmp.i.not = icmp ugt i32 %23, %27
  br i1 %cmp.i.not, label %if.else, label %if.end13.if.end32_crit_edge

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else:                                          ; preds = %if.end13
  br i1 %tobool17.not, label %land.lhs.true, label %if.else.if.else30_crit_edge

if.else.if.else30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30

land.lhs.true:                                    ; preds = %if.else
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  %and25 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true.if.else30_crit_edge, label %land.lhs.true27

land.lhs.true.if.else30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30

land.lhs.true27:                                  ; preds = %land.lhs.true
  %iov_len.i131 = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %iov_len.i131 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iov_len.i131, align 4
  %iov_len2.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iov_len2.i, align 4
  %add.i = add i32 %33, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %27)
  %cmp.i134 = icmp ult i32 %add.i, %27
  br i1 %cmp.i134, label %land.lhs.true27.if.end32_crit_edge, label %land.lhs.true27.if.else30_crit_edge

land.lhs.true27.if.else30_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30

land.lhs.true27.if.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else30:                                        ; preds = %land.lhs.true27.if.else30_crit_edge, %land.lhs.true.if.else30_crit_edge, %if.else.if.else30_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %land.lhs.true27.if.end32_crit_edge, %if.end13.if.end32_crit_edge
  %cmp.not.i = phi i1 [ true, %land.lhs.true27.if.end32_crit_edge ], [ false, %if.end13.if.end32_crit_edge ], [ false, %if.else30 ]
  %cmp.not.i173 = phi i1 [ false, %land.lhs.true27.if.end32_crit_edge ], [ false, %if.end13.if.end32_crit_edge ], [ true, %if.else30 ]
  %wtype.0 = phi i32 [ 5, %land.lhs.true27.if.end32_crit_edge ], [ 0, %if.end13.if.end32_crit_edge ], [ 6, %if.else30 ]
  %len.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 1, i32 8
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  %re_max_inline_send.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %25, i32 0, i32 10
  %36 = ptrtoint ptr %re_max_inline_send.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %re_max_inline_send.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i136 = icmp ugt i32 %35, %37
  br i1 %cmp.i136, label %if.end32.if.else37_crit_edge, label %if.end.i

if.end32.if.else37_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else37

if.end.i:                                         ; preds = %if.end32
  %page_len.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %page_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %if.end.i.if.end48_crit_edge, label %if.then1.i

if.end.i.if.end48_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then1.i:                                       ; preds = %if.end.i
  %page_base.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %page_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %page_base.i, align 4
  %and.i = and i32 %41, 4095
  %phi.bo.i = sub nuw nsw i32 4096, %and.i
  %max_send_sge.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %25, i32 0, i32 16, i32 6, i32 2
  %42 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_send_sge.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then1.i
  %count.0.i = phi i32 [ 3, %if.then1.i ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %remaining.0.i = phi i32 [ %39, %if.then1.i ], [ %44, %while.body.i.while.cond.i_crit_edge ]
  %offset.0.i = phi i32 [ %phi.bo.i, %if.then1.i ], [ 4096, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0.i)
  %tobool3.not.i = icmp eq i32 %remaining.0.i, 0
  br i1 %tobool3.not.i, label %while.cond.i.if.end48_crit_edge, label %while.body.i

while.cond.i.if.end48_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

while.body.i:                                     ; preds = %while.cond.i
  %44 = tail call i32 @llvm.usub.sat.i32(i32 %remaining.0.i, i32 %offset.0.i) #10
  %inc.i = add i32 %count.0.i, 1
  %cmp6.i = icmp ugt i32 %inc.i, %43
  br i1 %cmp6.i, label %while.body.i.if.else37_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i.if.else37_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else37

if.else37:                                        ; preds = %while.body.i.if.else37_crit_edge, %if.end32.if.else37_crit_edge
  br i1 %tobool17.not, label %land.lhs.true39, label %if.else37._crit_edge

if.else37._crit_edge:                             ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %51

land.lhs.true39:                                  ; preds = %if.else37
  %flags40 = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 1, i32 6
  %45 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags40, align 4
  %and41 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %land.lhs.true39._crit_edge, label %if.end48.thread

land.lhs.true39._crit_edge:                       ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %51

if.end48.thread:                                  ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %incdec.ptr15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mr.i) #10
  %48 = ptrtoint ptr %mr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -1 to ptr), ptr %mr.i, align 4, !annotation !85
  %iov_len.i137 = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 1, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %iov_len.i137 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iov_len.i137, align 4
  br label %56

51:                                               ; preds = %land.lhs.true39._crit_edge, %if.else37._crit_edge
  %nomsg_call_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 16
  %52 = ptrtoint ptr %nomsg_call_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nomsg_call_count, align 8
  %inc = add i32 %53, 1
  store i32 %inc, ptr %nomsg_call_count, align 8
  %54 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %incdec.ptr15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mr.i) #10
  %55 = ptrtoint ptr %mr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -1 to ptr), ptr %mr.i, align 4, !annotation !85
  br label %56

56:                                               ; preds = %51, %if.end48.thread
  %rtype.0.ph248 = phi i32 [ 4, %51 ], [ 3, %if.end48.thread ]
  %57 = phi i32 [ 0, %51 ], [ %50, %if.end48.thread ]
  %rl_segments.i = getelementptr i8, ptr %rqst, i32 464
  %call.i = tail call fastcc i32 @rpcrdma_convert_iovs(ptr noundef %rq_snd_buf, i32 noundef %57, i32 noundef %rtype.0.ph248, ptr noundef %rl_segments.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i138 = icmp slt i32 %call.i, 0
  br i1 %cmp6.i138, label %.rpcrdma_encode_read_list.exit.thread_crit_edge, label %do.body.preheader.i

.rpcrdma_encode_read_list.exit.thread_crit_edge:  ; preds = %56
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_read_list.exit.thread

if.end48:                                         ; preds = %while.cond.i.if.end48_crit_edge, %if.end.i.if.end48_crit_edge
  %58 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %incdec.ptr15, align 4
  %59 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i, align 4
  %rl_sendbuf = getelementptr i8, ptr %rqst, i32 424
  %61 = ptrtoint ptr %rl_sendbuf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rl_sendbuf, align 8
  %length.i = getelementptr inbounds %struct.ib_sge, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %64)
  %cmp = icmp ult i32 %60, %64
  %cond = select i1 %cmp, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mr.i) #10
  br label %done.i

do.body.preheader.i:                              ; preds = %56
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 3
  %rx_stats.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %if.end17.i.do.body.i_crit_edge, %do.body.preheader.i
  %seg.0.i = phi ptr [ %call9.i, %if.end17.i.do.body.i_crit_edge ], [ %rl_segments.i, %do.body.preheader.i ]
  %nsegs.0.i = phi i32 [ %sub.i, %if.end17.i.do.body.i_crit_edge ], [ %call.i, %do.body.preheader.i ]
  %call9.i = call fastcc ptr @rpcrdma_mr_prepare(ptr noundef %r_xprt, ptr noundef %add.ptr.i, ptr noundef %seg.0.i, i32 noundef %nsegs.0.i, i1 noundef zeroext false, ptr noundef nonnull %mr.i) #10
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rpcrdma_encode_read_list.exit, label %if.end13.i

if.end13.i:                                       ; preds = %do.body.i
  %65 = ptrtoint ptr %mr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mr.i, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 24) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end13.i.rpcrdma_encode_read_list.exit.thread_crit_edge, label %if.end17.i, !prof !78

if.end13.i.rpcrdma_encode_read_list.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_read_list.exit.thread

if.end17.i:                                       ; preds = %if.end13.i
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i.i, i32 1
  %67 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %call.i.i, align 4
  %mr_handle.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %66, i32 0, i32 11
  %68 = ptrtoint ptr %mr_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mr_handle.i.i, align 4
  %mr_length.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %66, i32 0, i32 12
  %70 = ptrtoint ptr %mr_length.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mr_length.i.i, align 8
  %mr_offset.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %66, i32 0, i32 13
  %72 = ptrtoint ptr %mr_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %mr_offset.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %call.i.i, i32 2
  %74 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %57, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %call.i.i, i32 3
  %75 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %69, ptr %incdec.ptr.i.i.i, align 4
  %incdec.ptr1.i.i.i.i = getelementptr i32, ptr %call.i.i, i32 4
  %76 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %71, ptr %incdec.ptr.i.i.i.i, align 4
  %77 = ptrtoint ptr %incdec.ptr1.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %73, ptr %incdec.ptr1.i.i.i.i, align 1
  %78 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rq_task.i, align 4
  tail call fastcc void @trace_xprtrdma_chunk_read(ptr noundef %79, i32 noundef %57, ptr noundef %66, i32 noundef %nsegs.0.i) #10
  %80 = ptrtoint ptr %rx_stats.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_stats.i, align 8
  %inc.i140 = add i32 %81, 1
  store i32 %inc.i140, ptr %rx_stats.i, align 8
  %mr_nents.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %66, i32 0, i32 5
  %82 = ptrtoint ptr %mr_nents.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mr_nents.i, align 8
  %sub.i = sub i32 %nsegs.0.i, %83
  %tobool.not.i141 = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i141, label %if.end17.i.done.i_crit_edge, label %if.end17.i.do.body.i_crit_edge

if.end17.i.do.body.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end17.i.done.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i

done.i:                                           ; preds = %if.end17.i.done.i_crit_edge, %if.end48
  %rtype.0207 = phi i32 [ %cond, %if.end48 ], [ %rtype.0.ph248, %if.end17.i.done.i_crit_edge ]
  %call.i46.i = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 4) #10
  %tobool.not.i47.i = icmp eq ptr %call.i46.i, null
  br i1 %tobool.not.i47.i, label %done.i.rpcrdma_encode_read_list.exit.thread_crit_edge, label %rpcrdma_encode_read_list.exit.thread211, !prof !78

done.i.rpcrdma_encode_read_list.exit.thread_crit_edge: ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_read_list.exit.thread

rpcrdma_encode_read_list.exit.thread211:          ; preds = %done.i
  %84 = ptrtoint ptr %call.i46.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %call.i46.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i) #10
  %85 = ptrtoint ptr %rx_ep.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rx_ep.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mr.i143) #10
  %87 = ptrtoint ptr %mr.i143 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 -1 to ptr), ptr %mr.i143, align 4, !annotation !85
  br i1 %cmp.not.i, label %if.end.i149, label %rpcrdma_encode_read_list.exit.thread211.done.i168_crit_edge

rpcrdma_encode_read_list.exit.thread211.done.i168_crit_edge: ; preds = %rpcrdma_encode_read_list.exit.thread211
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i168

rpcrdma_encode_read_list.exit.thread:             ; preds = %done.i.rpcrdma_encode_read_list.exit.thread_crit_edge, %if.end13.i.rpcrdma_encode_read_list.exit.thread_crit_edge, %.rpcrdma_encode_read_list.exit.thread_crit_edge
  %retval.0.i142.ph = phi i32 [ -90, %done.i.rpcrdma_encode_read_list.exit.thread_crit_edge ], [ %call.i, %.rpcrdma_encode_read_list.exit.thread_crit_edge ], [ -90, %if.end13.i.rpcrdma_encode_read_list.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i) #10
  br label %out_err

rpcrdma_encode_read_list.exit:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %call9.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i) #10
  br label %out_err

if.end.i149:                                      ; preds = %rpcrdma_encode_read_list.exit.thread211
  %rl_segments.i146 = getelementptr i8, ptr %rqst, i32 464
  %iov_len.i147 = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %iov_len.i147 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %iov_len.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i148 = icmp eq i32 %90, 0
  br i1 %cmp.i.i148, label %if.then.i.i, label %if.end.i149.if.end.i.i_crit_edge

if.end.i149.if.end.i.i_crit_edge:                 ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  %rq_rcv_buf.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %91 = load ptr, ptr @mem_map, align 4
  %92 = ptrtoint ptr %rq_rcv_buf.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rq_rcv_buf.i, align 4
  %94 = ptrtoint ptr %93 to i32
  %sub.i.i.i = add i32 %94, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %91, i32 %shr.i.i.i
  %mr_page.i.i.i = getelementptr i8, ptr %rqst, i32 468
  %95 = ptrtoint ptr %mr_page.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr.i.i.i, ptr %mr_page.i.i.i, align 4
  %and.i.i.i = and i32 %94, 4095
  %conv.i.i.i = zext i32 %and.i.i.i to i64
  %mr_offset.i.i.i = getelementptr i8, ptr %rqst, i32 472
  %96 = ptrtoint ptr %mr_offset.i.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv.i.i.i, ptr %mr_offset.i.i.i, align 8
  %97 = ptrtoint ptr %rl_segments.i146 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %rl_segments.i146, align 8
  %incdec.ptr.i.i.i150 = getelementptr i8, ptr %rqst, i32 480
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i149.if.end.i.i_crit_edge
  %n.0.i.i = phi i32 [ 1, %if.then.i.i ], [ 0, %if.end.i149.if.end.i.i_crit_edge ]
  %seg.addr.0.i.i = phi ptr [ %incdec.ptr.i.i.i150, %if.then.i.i ], [ %rl_segments.i146, %if.end.i149.if.end.i.i_crit_edge ]
  %page_len.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2, i32 5
  %98 = ptrtoint ptr %page_len.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %page_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not14.i.i = icmp eq i32 %99, 0
  br i1 %tobool.not14.i.i, label %if.end.i.i.rpcrdma_convert_iovs.exit.i_crit_edge, label %while.body.preheader.i.i

if.end.i.i.rpcrdma_convert_iovs.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_convert_iovs.exit.i

while.body.preheader.i.i:                         ; preds = %if.end.i.i
  %page_base1.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2, i32 4
  %100 = ptrtoint ptr %page_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %page_base1.i.i, align 4
  %and.i.i = and i32 %101, 4095
  %pages.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2, i32 3
  %102 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pages.i.i, align 4
  %shr.i.i = lshr i32 %101, 12
  %add.ptr.i.i = getelementptr ptr, ptr %103, i32 %shr.i.i
  %104 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i.i, align 4
  %mr_page.peel.i.i = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg.addr.0.i.i, i32 0, i32 1
  %106 = ptrtoint ptr %mr_page.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %mr_page.peel.i.i, align 4
  %conv.peel.i.i = zext i32 %and.i.i to i64
  %mr_offset.peel.i.i = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg.addr.0.i.i, i32 0, i32 2
  %107 = ptrtoint ptr %mr_offset.peel.i.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv.peel.i.i, ptr %mr_offset.peel.i.i, align 8
  %sub.peel.i.i = sub nuw nsw i32 4096, %and.i.i
  %108 = tail call i32 @llvm.umin.i32(i32 %sub.peel.i.i, i32 %99) #10
  %109 = ptrtoint ptr %seg.addr.0.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %seg.addr.0.i.i, align 8
  %sub6.peel.i.i = sub i32 %99, %108
  %inc.peel.i.i = add nuw nsw i32 %n.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.peel.i.i)
  %tobool.not.peel.i.i = icmp eq i32 %sub6.peel.i.i, 0
  br i1 %tobool.not.peel.i.i, label %while.body.preheader.i.i.rpcrdma_convert_iovs.exit.i_crit_edge, label %while.body.preheader.i.i.while.body.i.i_crit_edge

while.body.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.body.preheader.i.i
  br label %while.body.i.i

while.body.preheader.i.i.rpcrdma_convert_iovs.exit.i_crit_edge: ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_convert_iovs.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i.while.body.i.i_crit_edge
  %ppages.019.pn.i.i = phi ptr [ %ppages.019.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i.i, %while.body.preheader.i.i.while.body.i.i_crit_edge ]
  %len.018.i.i = phi i32 [ %sub6.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sub6.peel.i.i, %while.body.preheader.i.i.while.body.i.i_crit_edge ]
  %seg.addr.116.i.pn.i = phi ptr [ %seg.addr.116.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %seg.addr.0.i.i, %while.body.preheader.i.i.while.body.i.i_crit_edge ]
  %n.115.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %inc.peel.i.i, %while.body.preheader.i.i.while.body.i.i_crit_edge ]
  %seg.addr.116.i.i = getelementptr %struct.rpcrdma_mr_seg, ptr %seg.addr.116.i.pn.i, i32 1
  %ppages.019.i.i = getelementptr ptr, ptr %ppages.019.pn.i.i, i32 1
  %110 = ptrtoint ptr %ppages.019.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ppages.019.i.i, align 4
  %mr_page.i.i = getelementptr %struct.rpcrdma_mr_seg, ptr %seg.addr.116.i.pn.i, i32 1, i32 1
  %112 = ptrtoint ptr %mr_page.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %mr_page.i.i, align 4
  %mr_offset.i.i151 = getelementptr %struct.rpcrdma_mr_seg, ptr %seg.addr.116.i.pn.i, i32 1, i32 2
  %113 = ptrtoint ptr %mr_offset.i.i151 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 0, ptr %mr_offset.i.i151, align 8
  %114 = tail call i32 @llvm.umin.i32(i32 %len.018.i.i, i32 4096) #10
  %115 = ptrtoint ptr %seg.addr.116.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %seg.addr.116.i.i, align 8
  %sub6.i.i = sub i32 %len.018.i.i, %114
  %inc.i.i = add i32 %n.115.i.i, 1
  %tobool.not.i.i152 = icmp eq i32 %sub6.i.i, 0
  br i1 %tobool.not.i.i152, label %while.body.i.i.rpcrdma_convert_iovs.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge, !llvm.loop !86

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.rpcrdma_convert_iovs.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_convert_iovs.exit.i

rpcrdma_convert_iovs.exit.i:                      ; preds = %while.body.i.i.rpcrdma_convert_iovs.exit.i_crit_edge, %while.body.preheader.i.i.rpcrdma_convert_iovs.exit.i_crit_edge, %if.end.i.i.rpcrdma_convert_iovs.exit.i_crit_edge
  %n.1.lcssa.i.i = phi i32 [ %n.0.i.i, %if.end.i.i.rpcrdma_convert_iovs.exit.i_crit_edge ], [ %inc.peel.i.i, %while.body.preheader.i.i.rpcrdma_convert_iovs.exit.i_crit_edge ], [ %inc.i.i, %while.body.i.i.rpcrdma_convert_iovs.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %n.1.lcssa.i.i)
  %cmp21.i.i = icmp ugt i32 %n.1.lcssa.i.i, 260
  %..i.i = select i1 %cmp21.i.i, i32 -5, i32 %n.1.lcssa.i.i, !prof !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %..i.i)
  %cmp2.i153 = icmp slt i32 %..i.i, 0
  br i1 %cmp2.i153, label %rpcrdma_convert_iovs.exit.i.rpcrdma_encode_write_list.exit.thread_crit_edge, label %if.end4.i

rpcrdma_convert_iovs.exit.i.rpcrdma_encode_write_list.exit.thread_crit_edge: ; preds = %rpcrdma_convert_iovs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_write_list.exit.thread

if.end4.i:                                        ; preds = %rpcrdma_convert_iovs.exit.i
  %call.i.i154 = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 4) #10
  %tobool.not.i92.i = icmp eq ptr %call.i.i154, null
  br i1 %tobool.not.i92.i, label %if.end4.i.rpcrdma_encode_write_list.exit.thread_crit_edge, label %if.end8.i, !prof !78

if.end4.i.rpcrdma_encode_write_list.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_write_list.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %116 = ptrtoint ptr %call.i.i154 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %call.i.i154, align 4
  %call9.i155 = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 4) #10
  %tobool.not.i156 = icmp eq ptr %call9.i155, null
  br i1 %tobool.not.i156, label %if.end8.i.rpcrdma_encode_write_list.exit.thread_crit_edge, label %do.body.preheader.i158, !prof !78

if.end8.i.rpcrdma_encode_write_list.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_write_list.exit.thread

do.body.preheader.i158:                           ; preds = %if.end8.i
  %rq_task.i157 = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 3
  %write_chunk_count.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 1
  %total_rdma_request.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 3
  br label %do.body.i161

do.body.i161:                                     ; preds = %if.end23.i.do.body.i161_crit_edge, %do.body.preheader.i158
  %seg.0.i159 = phi ptr [ %call15.i, %if.end23.i.do.body.i161_crit_edge ], [ %rl_segments.i146, %do.body.preheader.i158 ]
  %nsegs.0.i160 = phi i32 [ %sub.i167, %if.end23.i.do.body.i161_crit_edge ], [ %n.1.lcssa.i.i, %do.body.preheader.i158 ]
  %nchunks.0.i = phi i32 [ %inc25.i, %if.end23.i.do.body.i161_crit_edge ], [ 0, %do.body.preheader.i158 ]
  %call15.i = call fastcc ptr @rpcrdma_mr_prepare(ptr noundef %r_xprt, ptr noundef %add.ptr.i, ptr noundef %seg.0.i159, i32 noundef %nsegs.0.i160, i1 noundef zeroext true, ptr noundef nonnull %mr.i143) #10
  %cmp.i94.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94.i, label %rpcrdma_encode_write_list.exit, label %if.end19.i

if.end19.i:                                       ; preds = %do.body.i161
  %117 = ptrtoint ptr %mr.i143 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mr.i143, align 4
  %call.i95.i = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 16) #10
  %tobool.not.i96.i = icmp eq ptr %call.i95.i, null
  br i1 %tobool.not.i96.i, label %if.end19.i.rpcrdma_encode_write_list.exit.thread_crit_edge, label %if.end23.i, !prof !78

if.end19.i.rpcrdma_encode_write_list.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_write_list.exit.thread

if.end23.i:                                       ; preds = %if.end19.i
  %mr_handle.i.i162 = getelementptr inbounds %struct.rpcrdma_mr, ptr %118, i32 0, i32 11
  %119 = ptrtoint ptr %mr_handle.i.i162 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mr_handle.i.i162, align 4
  %mr_length.i.i163 = getelementptr inbounds %struct.rpcrdma_mr, ptr %118, i32 0, i32 12
  %121 = ptrtoint ptr %mr_length.i.i163 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mr_length.i.i163, align 8
  %mr_offset.i97.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %118, i32 0, i32 13
  %123 = ptrtoint ptr %mr_offset.i97.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %mr_offset.i97.i, align 8
  %incdec.ptr.i.i98.i = getelementptr i32, ptr %call.i95.i, i32 1
  %125 = ptrtoint ptr %call.i95.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %120, ptr %call.i95.i, align 4
  %incdec.ptr1.i.i.i = getelementptr i32, ptr %call.i95.i, i32 2
  %126 = ptrtoint ptr %incdec.ptr.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %122, ptr %incdec.ptr.i.i98.i, align 4
  %127 = ptrtoint ptr %incdec.ptr1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 8)
  store i64 %124, ptr %incdec.ptr1.i.i.i, align 1
  %128 = ptrtoint ptr %rq_task.i157 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rq_task.i157, align 4
  tail call fastcc void @trace_xprtrdma_chunk_write(ptr noundef %129, ptr noundef %118, i32 noundef %nsegs.0.i160) #10
  %130 = ptrtoint ptr %write_chunk_count.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %write_chunk_count.i, align 4
  %inc.i164 = add i32 %131, 1
  store i32 %inc.i164, ptr %write_chunk_count.i, align 4
  %132 = ptrtoint ptr %mr_length.i.i163 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mr_length.i.i163, align 8
  %conv.i = zext i32 %133 to i64
  %134 = ptrtoint ptr %total_rdma_request.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %total_rdma_request.i, align 8
  %add.i165 = add i64 %135, %conv.i
  store i64 %add.i165, ptr %total_rdma_request.i, align 8
  %inc25.i = add i32 %nchunks.0.i, 1
  %mr_nents.i166 = getelementptr inbounds %struct.rpcrdma_mr, ptr %118, i32 0, i32 5
  %136 = ptrtoint ptr %mr_nents.i166 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mr_nents.i166, align 8
  %sub.i167 = sub i32 %nsegs.0.i160, %137
  %tobool26.not.i = icmp eq i32 %sub.i167, 0
  br i1 %tobool26.not.i, label %do.end.i, label %if.end23.i.do.body.i161_crit_edge

if.end23.i.do.body.i161_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i161

do.end.i:                                         ; preds = %if.end23.i
  %mr_length.i.i163.le = getelementptr inbounds %struct.rpcrdma_mr, ptr %118, i32 0, i32 12
  %138 = ptrtoint ptr %page_len.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %page_len.i.i, align 4
  %add.i.i.i = add i32 %139, 3
  %and.i.i101.i = and i32 %add.i.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i101.i, i32 %139)
  %tobool29.not.i = icmp eq i32 %and.i.i101.i, %139
  br i1 %tobool29.not.i, label %do.end.i.if.end49.i_crit_edge, label %if.then30.i

do.end.i.if.end49.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

if.then30.i:                                      ; preds = %do.end.i
  %re_write_pad_mr.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %86, i32 0, i32 5
  %140 = ptrtoint ptr %re_write_pad_mr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %re_write_pad_mr.i, align 4
  %call.i102.i = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 16) #10
  %tobool.not.i103.i = icmp eq ptr %call.i102.i, null
  br i1 %tobool.not.i103.i, label %if.then30.i.rpcrdma_encode_write_list.exit.thread_crit_edge, label %if.end35.i, !prof !78

if.then30.i.rpcrdma_encode_write_list.exit.thread_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_write_list.exit.thread

if.end35.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  %mr_handle.i104.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %141, i32 0, i32 11
  %142 = ptrtoint ptr %mr_handle.i104.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mr_handle.i104.i, align 4
  %mr_length.i105.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %141, i32 0, i32 12
  %144 = ptrtoint ptr %mr_length.i105.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %mr_length.i105.i, align 8
  %mr_offset.i106.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %141, i32 0, i32 13
  %146 = ptrtoint ptr %mr_offset.i106.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %mr_offset.i106.i, align 8
  %incdec.ptr.i.i107.i = getelementptr i32, ptr %call.i102.i, i32 1
  %148 = ptrtoint ptr %call.i102.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %143, ptr %call.i102.i, align 4
  %incdec.ptr1.i.i108.i = getelementptr i32, ptr %call.i102.i, i32 2
  %149 = ptrtoint ptr %incdec.ptr.i.i107.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %145, ptr %incdec.ptr.i.i107.i, align 4
  %150 = ptrtoint ptr %incdec.ptr1.i.i108.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 8)
  store i64 %147, ptr %incdec.ptr1.i.i108.i, align 1
  %151 = ptrtoint ptr %rq_task.i157 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rq_task.i157, align 4
  %153 = ptrtoint ptr %re_write_pad_mr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %re_write_pad_mr.i, align 4
  tail call fastcc void @trace_xprtrdma_chunk_wp(ptr noundef %152, ptr noundef %154) #10
  %155 = ptrtoint ptr %write_chunk_count.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %write_chunk_count.i, align 4
  %inc40.i = add i32 %156, 1
  store i32 %inc40.i, ptr %write_chunk_count.i, align 4
  %157 = ptrtoint ptr %mr_length.i.i163.le to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mr_length.i.i163.le, align 8
  %conv42.i = zext i32 %158 to i64
  %159 = ptrtoint ptr %total_rdma_request.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %total_rdma_request.i, align 8
  %add45.i = add i64 %160, %conv42.i
  store i64 %add45.i, ptr %total_rdma_request.i, align 8
  %inc46.i = add i32 %nchunks.0.i, 2
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end35.i, %do.end.i.if.end49.i_crit_edge
  %nchunks.1.i = phi i32 [ %inc46.i, %if.end35.i ], [ %inc25.i, %do.end.i.if.end49.i_crit_edge ]
  %161 = ptrtoint ptr %call9.i155 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %nchunks.1.i, ptr %call9.i155, align 4
  br label %done.i168

done.i168:                                        ; preds = %if.end49.i, %rpcrdma_encode_read_list.exit.thread211.done.i168_crit_edge
  %call.i112.i = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 4) #10
  %tobool.not.i113.i = icmp eq ptr %call.i112.i, null
  br i1 %tobool.not.i113.i, label %done.i168.rpcrdma_encode_write_list.exit.thread_crit_edge, label %rpcrdma_encode_write_list.exit.thread218, !prof !78

done.i168.rpcrdma_encode_write_list.exit.thread_crit_edge: ; preds = %done.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_write_list.exit.thread

rpcrdma_encode_write_list.exit.thread218:         ; preds = %done.i168
  %162 = ptrtoint ptr %call.i112.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %call.i112.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i143) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mr.i171) #10
  %163 = ptrtoint ptr %mr.i171 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr inttoptr (i32 -1 to ptr), ptr %mr.i171, align 4, !annotation !85
  br i1 %cmp.not.i173, label %if.end3.i, label %if.then.i

rpcrdma_encode_write_list.exit.thread:            ; preds = %done.i168.rpcrdma_encode_write_list.exit.thread_crit_edge, %if.then30.i.rpcrdma_encode_write_list.exit.thread_crit_edge, %if.end19.i.rpcrdma_encode_write_list.exit.thread_crit_edge, %if.end8.i.rpcrdma_encode_write_list.exit.thread_crit_edge, %if.end4.i.rpcrdma_encode_write_list.exit.thread_crit_edge, %rpcrdma_convert_iovs.exit.i.rpcrdma_encode_write_list.exit.thread_crit_edge
  %retval.0.i170.ph = phi i32 [ -90, %if.then30.i.rpcrdma_encode_write_list.exit.thread_crit_edge ], [ -90, %if.end4.i.rpcrdma_encode_write_list.exit.thread_crit_edge ], [ -90, %done.i168.rpcrdma_encode_write_list.exit.thread_crit_edge ], [ -90, %if.end8.i.rpcrdma_encode_write_list.exit.thread_crit_edge ], [ %..i.i, %rpcrdma_convert_iovs.exit.i.rpcrdma_encode_write_list.exit.thread_crit_edge ], [ -90, %if.end19.i.rpcrdma_encode_write_list.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i143) #10
  br label %out_err

rpcrdma_encode_write_list.exit:                   ; preds = %do.body.i161
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %call15.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i143) #10
  br label %out_err

if.then.i:                                        ; preds = %rpcrdma_encode_write_list.exit.thread218
  %call.i.i174 = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 4) #10
  %tobool.not.i.i175 = icmp eq ptr %call.i.i174, null
  br i1 %tobool.not.i.i175, label %if.then.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge, label %xdr_stream_encode_item_absent.exit.i176, !prof !78

if.then.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_reply_chunk.exit.thread

xdr_stream_encode_item_absent.exit.i176:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %call.i.i174 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %call.i.i174, align 4
  br label %rpcrdma_encode_reply_chunk.exit.thread224

if.end3.i:                                        ; preds = %rpcrdma_encode_write_list.exit.thread218
  %rl_segments.i177 = getelementptr i8, ptr %rqst, i32 464
  %rq_rcv_buf.i178 = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 2
  %call4.i = tail call fastcc i32 @rpcrdma_convert_iovs(ptr noundef %rq_rcv_buf.i178, i32 noundef 0, i32 noundef 6, ptr noundef %rl_segments.i177) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge, label %if.end7.i

if.end3.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_reply_chunk.exit.thread

if.end7.i:                                        ; preds = %if.end3.i
  %call.i55.i = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 4) #10
  %tobool.not.i56.i = icmp eq ptr %call.i55.i, null
  br i1 %tobool.not.i56.i, label %if.end7.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge, label %if.end11.i, !prof !78

if.end7.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_reply_chunk.exit.thread

if.end11.i:                                       ; preds = %if.end7.i
  %166 = ptrtoint ptr %call.i55.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %call.i55.i, align 4
  %call12.i = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 4) #10
  %tobool.not.i179 = icmp eq ptr %call12.i, null
  br i1 %tobool.not.i179, label %if.end11.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge, label %do.body.preheader.i182, !prof !78

if.end11.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_reply_chunk.exit.thread

do.body.preheader.i182:                           ; preds = %if.end11.i
  %rq_task.i180 = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 3
  %reply_chunk_count.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 2
  %total_rdma_request.i181 = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 3
  br label %do.body.i187

do.body.i187:                                     ; preds = %if.end26.i.do.body.i187_crit_edge, %do.body.preheader.i182
  %seg.0.i183 = phi ptr [ %call18.i, %if.end26.i.do.body.i187_crit_edge ], [ %rl_segments.i177, %do.body.preheader.i182 ]
  %nsegs.0.i184 = phi i32 [ %sub.i197, %if.end26.i.do.body.i187_crit_edge ], [ %call4.i, %do.body.preheader.i182 ]
  %nchunks.0.i185 = phi i32 [ %inc28.i, %if.end26.i.do.body.i187_crit_edge ], [ 0, %do.body.preheader.i182 ]
  %call18.i = call fastcc ptr @rpcrdma_mr_prepare(ptr noundef %r_xprt, ptr noundef %add.ptr.i, ptr noundef %seg.0.i183, i32 noundef %nsegs.0.i184, i1 noundef zeroext true, ptr noundef nonnull %mr.i171) #10
  %cmp.i.i186 = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i186, label %rpcrdma_encode_reply_chunk.exit, label %if.end22.i

if.end22.i:                                       ; preds = %do.body.i187
  %167 = ptrtoint ptr %mr.i171 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mr.i171, align 4
  %call.i59.i = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream, i32 noundef 16) #10
  %tobool.not.i60.i = icmp eq ptr %call.i59.i, null
  br i1 %tobool.not.i60.i, label %if.end22.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge, label %if.end26.i, !prof !78

if.end22.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_encode_reply_chunk.exit.thread

if.end26.i:                                       ; preds = %if.end22.i
  %mr_handle.i.i188 = getelementptr inbounds %struct.rpcrdma_mr, ptr %168, i32 0, i32 11
  %169 = ptrtoint ptr %mr_handle.i.i188 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mr_handle.i.i188, align 4
  %mr_length.i.i189 = getelementptr inbounds %struct.rpcrdma_mr, ptr %168, i32 0, i32 12
  %171 = ptrtoint ptr %mr_length.i.i189 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mr_length.i.i189, align 8
  %mr_offset.i.i190 = getelementptr inbounds %struct.rpcrdma_mr, ptr %168, i32 0, i32 13
  %173 = ptrtoint ptr %mr_offset.i.i190 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %mr_offset.i.i190, align 8
  %incdec.ptr.i.i.i191 = getelementptr i32, ptr %call.i59.i, i32 1
  %175 = ptrtoint ptr %call.i59.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %170, ptr %call.i59.i, align 4
  %incdec.ptr1.i.i.i192 = getelementptr i32, ptr %call.i59.i, i32 2
  %176 = ptrtoint ptr %incdec.ptr.i.i.i191 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %172, ptr %incdec.ptr.i.i.i191, align 4
  %177 = ptrtoint ptr %incdec.ptr1.i.i.i192 to i32
  call void @__asan_storeN_noabort(i32 %177, i32 8)
  store i64 %174, ptr %incdec.ptr1.i.i.i192, align 1
  %178 = ptrtoint ptr %rq_task.i180 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rq_task.i180, align 4
  tail call fastcc void @trace_xprtrdma_chunk_reply(ptr noundef %179, ptr noundef %168, i32 noundef %nsegs.0.i184) #10
  %180 = ptrtoint ptr %reply_chunk_count.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %reply_chunk_count.i, align 8
  %inc.i193 = add i32 %181, 1
  store i32 %inc.i193, ptr %reply_chunk_count.i, align 8
  %182 = ptrtoint ptr %mr_length.i.i189 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mr_length.i.i189, align 8
  %conv.i194 = zext i32 %183 to i64
  %184 = ptrtoint ptr %total_rdma_request.i181 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %total_rdma_request.i181, align 8
  %add.i195 = add i64 %185, %conv.i194
  store i64 %add.i195, ptr %total_rdma_request.i181, align 8
  %inc28.i = add i32 %nchunks.0.i185, 1
  %mr_nents.i196 = getelementptr inbounds %struct.rpcrdma_mr, ptr %168, i32 0, i32 5
  %186 = ptrtoint ptr %mr_nents.i196 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mr_nents.i196, align 8
  %sub.i197 = sub i32 %nsegs.0.i184, %187
  %tobool29.not.i198 = icmp eq i32 %sub.i197, 0
  br i1 %tobool29.not.i198, label %do.end.i199, label %if.end26.i.do.body.i187_crit_edge

if.end26.i.do.body.i187_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i187

do.end.i199:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %188 = ptrtoint ptr %call12.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %inc28.i, ptr %call12.i, align 4
  br label %rpcrdma_encode_reply_chunk.exit.thread224

rpcrdma_encode_reply_chunk.exit.thread:           ; preds = %if.end22.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge, %if.end11.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge, %if.end7.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge, %if.end3.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge, %if.then.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge
  %retval.0.i200.ph = phi i32 [ -90, %if.end7.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge ], [ -90, %if.then.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge ], [ -90, %if.end11.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge ], [ %call4.i, %if.end3.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge ], [ -90, %if.end22.i.rpcrdma_encode_reply_chunk.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i171) #10
  br label %out_err

rpcrdma_encode_reply_chunk.exit.thread224:        ; preds = %do.end.i199, %xdr_stream_encode_item_absent.exit.i176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i171) #10
  %189 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %len1.i, align 8
  %call63 = tail call i32 @rpcrdma_prepare_send_sges(ptr noundef %r_xprt, ptr noundef %add.ptr.i, i32 noundef %190, ptr noundef %rq_snd_buf, i32 noundef %rtype.0207)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %rpcrdma_encode_reply_chunk.exit.thread224.out_err_crit_edge

rpcrdma_encode_reply_chunk.exit.thread224.out_err_crit_edge: ; preds = %rpcrdma_encode_reply_chunk.exit.thread224
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

rpcrdma_encode_reply_chunk.exit:                  ; preds = %do.body.i187
  call void @__sanitizer_cov_trace_pc() #12
  %191 = ptrtoint ptr %call18.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i171) #10
  br label %out_err

if.end66:                                         ; preds = %rpcrdma_encode_reply_chunk.exit.thread224
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xprtrdma_marshal(ptr noundef %add.ptr.i, i32 noundef %rtype.0207, i32 noundef %wtype.0)
  br label %cleanup

out_err:                                          ; preds = %rpcrdma_encode_reply_chunk.exit, %rpcrdma_encode_reply_chunk.exit.thread224.out_err_crit_edge, %rpcrdma_encode_reply_chunk.exit.thread, %rpcrdma_encode_write_list.exit, %rpcrdma_encode_write_list.exit.thread, %rpcrdma_encode_read_list.exit, %rpcrdma_encode_read_list.exit.thread, %if.end7.out_err_crit_edge
  %ret.0 = phi i32 [ %88, %rpcrdma_encode_read_list.exit ], [ %164, %rpcrdma_encode_write_list.exit ], [ %191, %rpcrdma_encode_reply_chunk.exit ], [ %call63, %rpcrdma_encode_reply_chunk.exit.thread224.out_err_crit_edge ], [ -90, %if.end7.out_err_crit_edge ], [ %retval.0.i142.ph, %rpcrdma_encode_read_list.exit.thread ], [ %retval.0.i170.ph, %rpcrdma_encode_write_list.exit.thread ], [ %retval.0.i200.ph, %rpcrdma_encode_reply_chunk.exit.thread ]
  tail call fastcc void @trace_xprtrdma_marshal_failed(ptr noundef %rqst, i32 noundef %ret.0)
  %failed_marshal_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 6
  %192 = ptrtoint ptr %failed_marshal_count to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %failed_marshal_count, align 4
  %inc68 = add i32 %193, 1
  store i32 %inc68, ptr %failed_marshal_count, align 4
  tail call void @frwr_reset(ptr noundef %add.ptr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end66, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ 0, %if.end66 ], [ %call4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpcrdma_alloc_sparse_pages(ptr nocapture noundef readonly %buf) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 5
  %0 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12 = icmp sgt i32 %1, 0
  br i1 %cmp12, label %while.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %pages = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 3
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 4
  %page_base = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 4
  %4 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_base, align 4
  %shr = lshr i32 %5, 12
  %add.ptr = getelementptr ptr, ptr %3, i32 %shr
  br label %while.body

while.body:                                       ; preds = %if.end3.while.body_crit_edge, %while.body.preheader
  %len.015 = phi i32 [ %sub, %if.end3.while.body_crit_edge ], [ %1, %while.body.preheader ]
  %ppages.013 = phi ptr [ %incdec.ptr, %if.end3.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %6 = ptrtoint ptr %ppages.013 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppages.013, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %while.body.if.end3_crit_edge

while.body.if.end3_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end:                                           ; preds = %while.body
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 10240, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %8 = ptrtoint ptr %ppages.013 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call38.i.i.i, ptr %ppages.013, align 4
  %tobool1.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %while.body.if.end3_crit_edge
  %incdec.ptr = getelementptr ptr, ptr %ppages.013, i32 1
  %sub = add nsw i32 %len.015, -4096
  %cmp = icmp sgt i32 %len.015, 4096
  br i1 %cmp, label %if.end3.while.body_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -105, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_marshal(ptr noundef %req, i32 noundef %rtype, i32 noundef %wtype) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_marshal, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_marshal, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %call42 = tail call i32 @__traceiter_xprtrdma_marshal(ptr noundef null, ptr noundef %req, i32 noundef %rtype, i32 noundef %wtype) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_marshal, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_marshal, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_marshal.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_marshal.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 855, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define internal fastcc void @trace_xprtrdma_marshal_failed(ptr noundef %rqst, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_marshal_failed, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_marshal_failed, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %call42 = tail call i32 @__traceiter_xprtrdma_marshal_failed(ptr noundef null, ptr noundef %rqst, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_marshal_failed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_marshal_failed, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_marshal_failed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_marshal_failed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 882, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
declare dso_local void @frwr_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_reset_cwnd(ptr noundef %r_xprt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_lock = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %transport_lock) #10
  %cong = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 7
  %0 = ptrtoint ptr %cong to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cong, align 8
  %rb_credits.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 12
  %1 = ptrtoint ptr %rb_credits.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %rb_credits.i, align 4
  %cwnd.i = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 8
  %2 = ptrtoint ptr %cwnd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %cwnd.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %transport_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_unpin_rqst(ptr nocapture noundef %rep) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rr_rxprt = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 9
  %0 = ptrtoint ptr %rr_rxprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rr_rxprt, align 8
  %rr_rqst = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 10
  %2 = ptrtoint ptr %rr_rqst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rr_rqst, align 4
  %rl_reply = getelementptr i8, ptr %3, i32 288
  %4 = ptrtoint ptr %rl_reply to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rl_reply, align 8
  store ptr null, ptr %rr_rqst, align 4
  %queue_lock = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %queue_lock) #10
  tail call void @xprt_unpin_rqst(ptr noundef %3) #10
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_unpin_rqst(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_complete_rqst(ptr noundef %rep) local_unnamed_addr #2 align 64 {
entry:
  %writelist.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rr_rxprt = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 9
  %0 = ptrtoint ptr %rr_rxprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rr_rxprt, align 8
  %rr_rqst = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 10
  %2 = ptrtoint ptr %rr_rqst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rr_rqst, align 4
  %rr_proc = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 4
  %4 = ptrtoint ptr %rr_proc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rr_proc, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %5, label %entry.out_badheader_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 4, label %sw.bb3
  ]

entry.out_badheader_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_badheader

sw.bb:                                            ; preds = %entry
  %rr_stream.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %writelist.i) #10
  %7 = ptrtoint ptr %writelist.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %writelist.i, align 4, !annotation !85
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream.i, i32 noundef 4) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.rpcrdma_decode_msg.exit_crit_edge, label %if.end.i.i, !prof !78

sw.bb.rpcrdma_decode_msg.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_decode_msg.exit

if.end.i.i:                                       ; preds = %sw.bb
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.not.i.i, label %if.end.i, label %if.end.i.i.rpcrdma_decode_msg.exit_crit_edge

if.end.i.i.rpcrdma_decode_msg.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_decode_msg.exit

if.end.i:                                         ; preds = %if.end.i.i
  %call1.i = call fastcc i32 @decode_write_list(ptr noundef %rr_stream.i, ptr noundef nonnull %writelist.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.rpcrdma_decode_msg.exit_crit_edge

if.end.i.rpcrdma_decode_msg.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_decode_msg.exit

if.end4.i:                                        ; preds = %if.end.i
  %call.i32.i = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream.i, i32 noundef 4) #10
  %tobool.not.i33.i = icmp eq ptr %call.i32.i, null
  br i1 %tobool.not.i33.i, label %if.end4.i.rpcrdma_decode_msg.exit_crit_edge, label %if.end.i35.i, !prof !78

if.end4.i.rpcrdma_decode_msg.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_decode_msg.exit

if.end.i35.i:                                     ; preds = %if.end4.i
  %10 = ptrtoint ptr %call.i32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.i34.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.i34.i, label %if.end.i35.i.if.end13.i_crit_edge, label %if.then5.i.i

if.end.i35.i.if.end13.i_crit_edge:                ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then5.i.i:                                     ; preds = %if.end.i35.i
  %call.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream.i, i32 noundef 4) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then5.i.i.rpcrdma_decode_msg.exit_crit_edge, label %if.end.i.i.i, !prof !78

if.then5.i.i.rpcrdma_decode_msg.exit_crit_edge:   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_decode_msg.exit

if.end.i.i.i:                                     ; preds = %if.then5.i.i
  %12 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not20.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool5.not20.i.i.i, label %if.end.i.i.i.if.end13.i_crit_edge, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  br label %while.body.i.i.i

if.end.i.i.i.if.end13.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

while.body.i.i.i:                                 ; preds = %if.end9.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.i.while.body.i.i.i_crit_edge
  %replychunk.0.i = phi i32 [ %add.i.i.i, %if.end9.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %dec21.in.i.i.i = phi i32 [ %dec21.i.i.i, %if.end9.i.i.i.while.body.i.i.i_crit_edge ], [ %13, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %call.i.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream.i, i32 noundef 16) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %while.body.i.i.i.rpcrdma_decode_msg.exit_crit_edge, label %if.end9.i.i.i, !prof !78

while.body.i.i.i.rpcrdma_decode_msg.exit_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_decode_msg.exit

if.end9.i.i.i:                                    ; preds = %while.body.i.i.i
  %dec21.i.i.i = add i32 %dec21.in.i.i.i, -1
  %incdec.ptr.i.i.i.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 1
  %14 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i.i.i.i, align 4
  %incdec.ptr1.i.i.i.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 2
  %16 = ptrtoint ptr %incdec.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %incdec.ptr1.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %incdec.ptr1.i.i.i.i.i, align 1
  tail call fastcc void @trace_xprtrdma_decode_seg(i32 noundef %15, i32 noundef %17, i64 noundef %19) #10
  %add.i.i.i = add i32 %17, %replychunk.0.i
  %tobool5.not.i.i.i = icmp eq i32 %dec21.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end8.i, label %if.end9.i.i.i.while.body.i.i.i_crit_edge

if.end9.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

if.end8.i:                                        ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i)
  %tobool9.not.i = icmp eq i32 %add.i.i.i, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.end8.i.rpcrdma_decode_msg.exit_crit_edge, !prof !76

if.end8.i.rpcrdma_decode_msg.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_decode_msg.exit

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end8.i.if.end13.i_crit_edge, %if.end.i.i.i.if.end13.i_crit_edge, %if.end.i35.i.if.end13.i_crit_edge
  %call14.i = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream.i, i32 noundef 0) #10
  %nwords.i.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 12, i32 6
  %20 = ptrtoint ptr %nwords.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nwords.i.i, align 4
  %shl.i.i = shl i32 %21, 2
  %22 = ptrtoint ptr %writelist.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %writelist.i, align 4
  %and.i = and i32 %23, 3
  %rq_rcv_buf.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %rq_rcv_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call14.i, ptr %rq_rcv_buf.i.i, align 8
  %rq_private_buf.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 20
  %25 = ptrtoint ptr %rq_private_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call14.i, ptr %rq_private_buf.i.i, align 8
  %iov_len.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iov_len.i.i, align 4
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %shl.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %call14.i, i32 %28
  %sub.i.i = sub i32 %shl.i.i, %28
  %pages.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages.i.i, align 4
  %page_base9.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %page_base9.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_base9.i.i, align 8
  %shr.i.i = lshr i32 %32, 12
  %add.ptr10.i.i = getelementptr ptr, ptr %30, i32 %shr.i.i
  %and.i.i = and i32 %32, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not.i37.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i37.i, label %if.end13.i.if.end46.i.i_crit_edge, label %land.lhs.true.i.i

if.end13.i.if.end46.i.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i.i

land.lhs.true.i.i:                                ; preds = %if.end13.i
  %page_len.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 5
  %33 = ptrtoint ptr %page_len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %page_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool14.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true.i.i.if.then49.i.i_crit_edge, label %if.then15.i.i

land.lhs.true.i.i.if.then49.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 %sub.i.i) #10
  %add.i.i = add nuw nsw i32 %and.i.i, 4095
  %add21.i.i = add i32 %add.i.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add21.i.i)
  %cmp24122.i.i = icmp sgt i32 %add21.i.i, 4095
  br i1 %cmp24122.i.i, label %for.body.preheader.i.i, label %if.then15.i.i.for.end.i.i_crit_edge

if.then15.i.i.for.end.i.i_crit_edge:              ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.then15.i.i
  %shr23134.i.i = lshr i32 %add21.i.i, 12
  %sub25.i.peel.i = sub nuw nsw i32 4096, %and.i.i
  %36 = tail call i32 @llvm.smin.i32(i32 %sub25.i.peel.i, i32 %35) #10
  %37 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr10.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %39 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.peel.i = or i32 %39, 512
  %40 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i.i.i.peel.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i.peel.i to ptr
  %preempt_count.i.i.i.i.i.peel.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i.peel.i, align 4
  %add.i.i.i.i.peel.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i.peel.i, ptr %preempt_count.i.i.i.i.i.peel.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %44 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i1.i.i.i.peel.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i1.i.i.i.peel.i to ptr
  %task.i.i.i.i.i.peel.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i.i.i.i.peel.i, align 8
  %pagefault_disabled.i.i.i.i.i.peel.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 213
  %48 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pagefault_disabled.i.i.i.i.i.peel.i, align 8
  %inc.i.i.i.i.i.peel.i = add i32 %49, 1
  store i32 %inc.i.i.i.i.i.peel.i, ptr %pagefault_disabled.i.i.i.i.i.peel.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %call.i.i.i38.peel.i = tail call ptr @__kmap_local_page_prot(ptr noundef %38, i32 noundef %or.i.i.peel.i) #10
  %add.ptr30.i.peel.i = getelementptr i8, ptr %call.i.i.i38.peel.i, i32 %and.i.i
  %50 = call ptr @memcpy(ptr %add.ptr30.i.peel.i, ptr %add.ptr.i.i, i32 %36)
  %51 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr10.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef %52) #10
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i38.peel.i) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %53 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i1.i.i.peel.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i1.i.i.peel.i to ptr
  %task.i.i.i.i.peel.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i.i.i.i.peel.i, align 8
  %pagefault_disabled.i.i.i.i.peel.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 213
  %57 = ptrtoint ptr %pagefault_disabled.i.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pagefault_disabled.i.i.i.i.peel.i, align 8
  %dec.i.i.i.i.peel.i = add i32 %58, -1
  store i32 %dec.i.i.i.i.peel.i, ptr %pagefault_disabled.i.i.i.i.peel.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %59 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i.i.peel.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.peel.i to ptr
  %preempt_count.i.i.i.i.peel.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.peel.i, align 4
  %sub.i.i.i.peel.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i.peel.i, ptr %preempt_count.i.i.i.i.peel.i, align 4
  %add.ptr35.i.peel.i = getelementptr i8, ptr %add.ptr.i.i, i32 %36
  %sub36.i.peel.i = sub i32 %sub.i.i, %36
  %sub38.i.peel.i = sub i32 %35, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub38.i.peel.i)
  %tobool39.not.i.peel.i = icmp eq i32 %sub38.i.peel.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr23134.i.i)
  %exitcond.not.i.peel.i = icmp eq i32 %shr23134.i.i, 1
  %or.cond.i.peel.i = select i1 %tobool39.not.i.peel.i, i1 true, i1 %exitcond.not.i.peel.i
  br i1 %or.cond.i.peel.i, label %for.body.preheader.i.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i.for.body.i.i_crit_edge

for.body.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.body.preheader.i.i
  br label %for.body.i.i

for.body.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i.for.body.i.i_crit_edge
  %pagelist_len.1128.i.i = phi i32 [ %sub38.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %sub38.i.peel.i, %for.body.preheader.i.i.for.body.i.i_crit_edge ]
  %i.0126.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %for.body.preheader.i.i.for.body.i.i_crit_edge ]
  %fixup_copy_count.0125.i.i = phi i32 [ %add37.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %36, %for.body.preheader.i.i.for.body.i.i_crit_edge ]
  %srcp.addr.0124.i.i = phi ptr [ %add.ptr35.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr35.i.peel.i, %for.body.preheader.i.i.for.body.i.i_crit_edge ]
  %copy_len.addr.0123.i.i = phi i32 [ %sub36.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %sub36.i.peel.i, %for.body.preheader.i.i.for.body.i.i_crit_edge ]
  %63 = tail call i32 @llvm.smin.i32(i32 %pagelist_len.1128.i.i, i32 4096) #10
  %arrayidx29.i.i = getelementptr ptr, ptr %add.ptr10.i.i, i32 %i.0126.i.i
  %64 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx29.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %66 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %66, 512
  %67 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %70, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %71 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i1.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 213
  %75 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %76, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %call.i.i.i38.i = tail call ptr @__kmap_local_page_prot(ptr noundef %65, i32 noundef %or.i.i.i) #10
  %77 = call ptr @memcpy(ptr %call.i.i.i38.i, ptr %srcp.addr.0124.i.i, i32 %63)
  %78 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx29.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef %79) #10
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i38.i) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %80 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i1.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 213
  %84 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %85, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %86 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %89, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %add.ptr35.i.i = getelementptr i8, ptr %srcp.addr.0124.i.i, i32 %63
  %sub36.i.i = sub i32 %copy_len.addr.0123.i.i, %63
  %add37.i.i = add i32 %fixup_copy_count.0125.i.i, %63
  %sub38.i.i = sub i32 %pagelist_len.1128.i.i, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub38.i.i)
  %tobool39.not.i.i = icmp eq i32 %sub38.i.i, 0
  %inc.i.i = add nuw nsw i32 %i.0126.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %shr23134.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shr23134.i.i
  %or.cond.i.i = select i1 %tobool39.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge, !llvm.loop !96

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.body.preheader.i.i.for.end.i.i_crit_edge, %if.then15.i.i.for.end.i.i_crit_edge
  %copy_len.addr.1.i.i = phi i32 [ %sub.i.i, %if.then15.i.i.for.end.i.i_crit_edge ], [ %sub36.i.peel.i, %for.body.preheader.i.i.for.end.i.i_crit_edge ], [ %sub36.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %srcp.addr.1.i.i = phi ptr [ %add.ptr.i.i, %if.then15.i.i.for.end.i.i_crit_edge ], [ %add.ptr35.i.peel.i, %for.body.preheader.i.i.for.end.i.i_crit_edge ], [ %add.ptr35.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %fixup_copy_count.1.i.i = phi i32 [ 0, %if.then15.i.i.for.end.i.i_crit_edge ], [ %36, %for.body.preheader.i.i.for.end.i.i_crit_edge ], [ %add37.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %idx.neg.i.i = sub nsw i32 0, %and.i
  %srcp.addr.2.i.i = getelementptr i8, ptr %srcp.addr.1.i.i, i32 %idx.neg.i.i
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %for.end.i.i, %if.end13.i.if.end46.i.i_crit_edge
  %copy_len.addr.2.i.i = phi i32 [ %copy_len.addr.1.i.i, %for.end.i.i ], [ 0, %if.end13.i.if.end46.i.i_crit_edge ]
  %srcp.addr.3.i.i = phi ptr [ %srcp.addr.2.i.i, %for.end.i.i ], [ %add.ptr.i.i, %if.end13.i.if.end46.i.i_crit_edge ]
  %fixup_copy_count.2.i.i = phi i32 [ %fixup_copy_count.1.i.i, %for.end.i.i ], [ 0, %if.end13.i.if.end46.i.i_crit_edge ]
  %90 = or i32 %copy_len.addr.2.i.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %if.end46.i.i.if.end57.i.i_crit_edge, label %if.end46.i.i.if.then49.i.i_crit_edge

if.end46.i.i.if.then49.i.i_crit_edge:             ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49.i.i

if.end46.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i.i

if.then49.i.i:                                    ; preds = %if.end46.i.i.if.then49.i.i_crit_edge, %land.lhs.true.i.i.if.then49.i.i_crit_edge
  %fixup_copy_count.2120.i.i = phi i32 [ %fixup_copy_count.2.i.i, %if.end46.i.i.if.then49.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.then49.i.i_crit_edge ]
  %srcp.addr.3119.i.i = phi ptr [ %srcp.addr.3.i.i, %if.end46.i.i.if.then49.i.i_crit_edge ], [ %add.ptr.i.i, %land.lhs.true.i.i.if.then49.i.i_crit_edge ]
  %tail.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 1
  %92 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %srcp.addr.3119.i.i, ptr %tail.i.i, align 8
  %tail54.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 20, i32 1
  %93 = ptrtoint ptr %tail54.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %srcp.addr.3119.i.i, ptr %tail54.i.i, align 8
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then49.i.i, %if.end46.i.i.if.end57.i.i_crit_edge
  %fixup_copy_count.2121.i.i = phi i32 [ %fixup_copy_count.2.i.i, %if.end46.i.i.if.end57.i.i_crit_edge ], [ %fixup_copy_count.2120.i.i, %if.then49.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fixup_copy_count.2121.i.i)
  %tobool58.not.i.i = icmp eq i32 %fixup_copy_count.2121.i.i, 0
  br i1 %tobool58.not.i.i, label %if.end57.i.i.rpcrdma_inline_fixup.exit.i_crit_edge, label %if.then59.i.i

if.end57.i.i.rpcrdma_inline_fixup.exit.i_crit_edge: ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_inline_fixup.exit.i

if.then59.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xprtrdma_fixup(ptr noundef %3, i32 noundef %fixup_copy_count.2121.i.i) #10
  br label %rpcrdma_inline_fixup.exit.i

rpcrdma_inline_fixup.exit.i:                      ; preds = %if.then59.i.i, %if.end57.i.i.rpcrdma_inline_fixup.exit.i_crit_edge
  %conv.i = zext i32 %fixup_copy_count.2121.i.i to i64
  %fixup_copy_count.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %1, i32 0, i32 5, i32 13
  %94 = ptrtoint ptr %fixup_copy_count.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %fixup_copy_count.i, align 8
  %add.i = add i64 %95, %conv.i
  store i64 %add.i, ptr %fixup_copy_count.i, align 8
  %conv17.i = zext i32 %23 to i64
  %total_rdma_reply.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %1, i32 0, i32 5, i32 12
  %96 = ptrtoint ptr %total_rdma_reply.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %total_rdma_reply.i, align 8
  %add19.i = add i64 %97, %conv17.i
  store i64 %add19.i, ptr %total_rdma_reply.i, align 8
  %add.i39.i = add i32 %23, 3
  %and.i40.i = and i32 %add.i39.i, -4
  %add21.i = add i32 %and.i40.i, %shl.i.i
  br label %rpcrdma_decode_msg.exit

rpcrdma_decode_msg.exit:                          ; preds = %rpcrdma_inline_fixup.exit.i, %if.end8.i.rpcrdma_decode_msg.exit_crit_edge, %while.body.i.i.i.rpcrdma_decode_msg.exit_crit_edge, %if.then5.i.i.rpcrdma_decode_msg.exit_crit_edge, %if.end4.i.rpcrdma_decode_msg.exit_crit_edge, %if.end.i.rpcrdma_decode_msg.exit_crit_edge, %if.end.i.i.rpcrdma_decode_msg.exit_crit_edge, %sw.bb.rpcrdma_decode_msg.exit_crit_edge
  %retval.0.i = phi i32 [ %add21.i, %rpcrdma_inline_fixup.exit.i ], [ -5, %if.end.i.rpcrdma_decode_msg.exit_crit_edge ], [ -5, %if.end8.i.rpcrdma_decode_msg.exit_crit_edge ], [ -5, %if.end4.i.rpcrdma_decode_msg.exit_crit_edge ], [ -5, %if.then5.i.i.rpcrdma_decode_msg.exit_crit_edge ], [ -5, %sw.bb.rpcrdma_decode_msg.exit_crit_edge ], [ -5, %if.end.i.i.rpcrdma_decode_msg.exit_crit_edge ], [ -5, %while.body.i.i.i.rpcrdma_decode_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %writelist.i) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc i32 @rpcrdma_decode_nomsg(ptr noundef %1, ptr noundef %rep)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rpcrdma_decode_error(ptr noundef %rep, ptr noundef %3)
  br label %out_badheader

sw.epilog:                                        ; preds = %sw.bb1, %rpcrdma_decode_msg.exit
  %status.0 = phi i32 [ %call2, %sw.bb1 ], [ %retval.0.i, %rpcrdma_decode_msg.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp = icmp slt i32 %status.0, 0
  br i1 %cmp, label %sw.epilog.out_badheader_crit_edge, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.epilog.out_badheader_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_badheader

out:                                              ; preds = %out_badheader, %sw.epilog.out_crit_edge
  %status.1 = phi i32 [ 0, %out_badheader ], [ %status.0, %sw.epilog.out_crit_edge ]
  %queue_lock = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %queue_lock) #10
  %rq_task = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 3
  %98 = ptrtoint ptr %rq_task to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rq_task, align 4
  tail call void @xprt_complete_rqst(ptr noundef %99, i32 noundef %status.1) #10
  tail call void @xprt_unpin_rqst(ptr noundef %3) #10
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #10
  ret void

out_badheader:                                    ; preds = %sw.epilog.out_badheader_crit_edge, %sw.bb3, %entry.out_badheader_crit_edge
  %status.026 = phi i32 [ %status.0, %sw.epilog.out_badheader_crit_edge ], [ -5, %sw.bb3 ], [ -5, %entry.out_badheader_crit_edge ]
  tail call fastcc void @trace_xprtrdma_reply_hdr_err(ptr noundef %rep)
  %bad_reply_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %1, i32 0, i32 5, i32 7
  %100 = ptrtoint ptr %bad_reply_count to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bad_reply_count, align 8
  %inc = add i32 %101, 1
  store i32 %inc, ptr %bad_reply_count, align 8
  %rq_task6 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 3
  %102 = ptrtoint ptr %rq_task6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rq_task6, align 4
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %status.026, ptr %tk_status, align 4
  br label %out
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpcrdma_decode_nomsg(ptr nocapture noundef %r_xprt, ptr noundef %rep) unnamed_addr #5 align 64 {
entry:
  %writelist = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rr_stream = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %writelist) #10
  %0 = ptrtoint ptr %writelist to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %writelist, align 4, !annotation !85
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !78

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, 0
  br i1 %cmp.i.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call1 = call fastcc i32 @decode_write_list(ptr noundef %rr_stream, ptr noundef nonnull %writelist)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i29 = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream, i32 noundef 4) #10
  %tobool.not.i30 = icmp eq ptr %call.i29, null
  br i1 %tobool.not.i30, label %if.end4.cleanup_crit_edge, label %if.end.i32, !prof !78

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i32:                                       ; preds = %if.end4
  %3 = ptrtoint ptr %call.i29 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not.i31 = icmp eq i32 %4, 0
  br i1 %cmp.i.not.i31, label %if.end.i32.cleanup_crit_edge, label %if.then5.i

if.end.i32.cleanup_crit_edge:                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i32
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream, i32 noundef 4) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then5.i.cleanup_crit_edge, label %if.end.i.i, !prof !78

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then5.i
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not20.i.i = icmp eq i32 %6, 0
  br i1 %tobool5.not20.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.body.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i.i:                                   ; preds = %if.end9.i.i.while.body.i.i_crit_edge, %if.end.i.i.while.body.i.i_crit_edge
  %replychunk.0 = phi i32 [ %add.i.i, %if.end9.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.i.i.while.body.i.i_crit_edge ]
  %dec21.in.i.i = phi i32 [ %dec21.i.i, %if.end9.i.i.while.body.i.i_crit_edge ], [ %6, %if.end.i.i.while.body.i.i_crit_edge ]
  %call.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream, i32 noundef 16) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i.cleanup_crit_edge, label %if.end9.i.i, !prof !78

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.i.i:                                      ; preds = %while.body.i.i
  %dec21.i.i = add i32 %dec21.in.i.i, -1
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %call.i.i.i, i32 1
  %7 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i.i.i, align 4
  %incdec.ptr1.i.i.i.i = getelementptr i32, ptr %call.i.i.i, i32 2
  %9 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr.i.i.i.i, align 4
  %11 = ptrtoint ptr %incdec.ptr1.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %incdec.ptr1.i.i.i.i, align 1
  tail call fastcc void @trace_xprtrdma_decode_seg(i32 noundef %8, i32 noundef %10, i64 noundef %12) #10
  %add.i.i = add i32 %10, %replychunk.0
  %tobool5.not.i.i = icmp eq i32 %dec21.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end8, label %if.end9.i.i.while.body.i.i_crit_edge

if.end9.i.i.while.body.i.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end8:                                          ; preds = %if.end9.i.i
  %13 = ptrtoint ptr %writelist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writelist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool14.not = icmp eq i32 %add.i.i, 0
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end24, !prof !97

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %add.i.i to i64
  %total_rdma_reply = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 12
  %15 = ptrtoint ptr %total_rdma_reply to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %total_rdma_reply, align 8
  %add = add i64 %16, %conv
  store i64 %add, ptr %total_rdma_reply, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end8.cleanup_crit_edge, %while.body.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %if.end.i32.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add.i.i, %if.end24 ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end8.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ -5, %if.then5.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %if.end.i.i.cleanup_crit_edge ], [ -5, %if.end.i32.cleanup_crit_edge ], [ -5, %while.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %writelist) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rpcrdma_decode_error(ptr noundef %rep, ptr noundef %rqst) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rr_stream = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 12
  %call = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !78

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %call4 = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream, i32 noundef 8) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i32, ptr %call4, i32 1
  tail call fastcc void @trace_xprtrdma_err_vers(ptr noundef %rqst, ptr noundef nonnull %call4, ptr noundef %add.ptr)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xprtrdma_err_chunk(ptr noundef %rqst)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xprtrdma_err_unrecognized(ptr noundef %rqst, ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb8, %if.end7, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_complete_rqst(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_reply_hdr_err(ptr noundef %rep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_hdr_err, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_reply_hdr_err, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  %call42 = tail call i32 @__traceiter_xprtrdma_reply_hdr_err(ptr noundef null, ptr noundef %rep) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_hdr_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_hdr_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_reply_hdr_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_reply_hdr_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1284, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define dso_local void @rpcrdma_reply_handler(ptr noundef %rep) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rr_rxprt = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 9
  %0 = ptrtoint ptr %rr_rxprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rr_rxprt, align 8
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %1, i32 0, i32 2
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reestablish_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reestablish_timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rr_stream = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 12
  %rr_hdrbuf = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 11
  %5 = ptrtoint ptr %rr_hdrbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rr_hdrbuf, align 8
  tail call void @xdr_init_decode(ptr noundef %rr_stream, ptr noundef %rr_hdrbuf, ptr noundef %6, ptr noundef null) #10
  %call = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream, i32 noundef 16) #10
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %out_shortreply, label %if.end9, !prof !78

if.end9:                                          ; preds = %if.end
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %rr_xid = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 2
  %9 = ptrtoint ptr %rr_xid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rr_xid, align 4
  %incdec.ptr10 = getelementptr i32, ptr %call, i32 2
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr, align 4
  %rr_vers = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 3
  %12 = ptrtoint ptr %rr_vers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rr_vers, align 8
  %incdec.ptr11 = getelementptr i32, ptr %call, i32 3
  %13 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr10, align 4
  %15 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr11, align 4
  %rr_proc = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 4
  %17 = ptrtoint ptr %rr_proc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rr_proc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end15, label %out_badversion

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end15.if.end18_crit_edge

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end.i:                                         ; preds = %if.end15
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream, i32 noundef 0) #10
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, 0
  br i1 %cmp.i.not.i, label %if.end3.i, label %if.end.i.if.end18_crit_edge

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end3.i:                                        ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %20 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i35.not.i = icmp eq i32 %21, 0
  br i1 %cmp.i35.not.i, label %if.end7.i, label %if.end3.i.if.end18_crit_edge

if.end3.i.if.end18_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end7.i:                                        ; preds = %if.end3.i
  %incdec.ptr4.i = getelementptr i32, ptr %call.i, i32 2
  %22 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i36.not.i = icmp eq i32 %23, 0
  br i1 %cmp.i36.not.i, label %if.end11.i, label %if.end7.i.if.end18_crit_edge

if.end7.i.if.end18_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end11.i:                                       ; preds = %if.end7.i
  %incdec.ptr8.i = getelementptr i32, ptr %call.i, i32 3
  %24 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr8.i, align 4
  %26 = ptrtoint ptr %rr_xid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rr_xid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp13.not.i = icmp eq i32 %25, %27
  br i1 %cmp13.not.i, label %if.end15.i, label %if.end11.i.if.end18_crit_edge

if.end11.i.if.end18_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end15.i:                                       ; preds = %if.end11.i
  %incdec.ptr12.i = getelementptr i32, ptr %call.i, i32 4
  %28 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp16.not.i = icmp eq i32 %29, 0
  br i1 %cmp16.not.i, label %if.end18.i, label %if.end15.i.if.end18_crit_edge

if.end15.i.if.end18_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18.i:                                       ; preds = %if.end15.i
  %call19.i = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream, i32 noundef 12) #10
  %tobool.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool.not.i, label %if.end18.i.cleanup_crit_edge, label %if.end24.i, !prof !78

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rpcrdma_bc_receive_call(ptr noundef %1, ptr noundef %rep) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end15.i.if.end18_crit_edge, %if.end11.i.if.end18_crit_edge, %if.end7.i.if.end18_crit_edge, %if.end3.i.if.end18_crit_edge, %if.end.i.if.end18_crit_edge, %if.end15.if.end18_crit_edge
  %queue_lock = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %queue_lock) #10
  %30 = ptrtoint ptr %rr_xid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rr_xid, align 4
  %call20 = tail call ptr @xprt_lookup_rqst(ptr noundef %1, i32 noundef %31) #10
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %out_norqst, label %if.end23

if.end23:                                         ; preds = %if.end18
  tail call void @xprt_pin_rqst(ptr noundef nonnull %call20) #10
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp25 = icmp eq i32 %14, 0
  br i1 %cmp25, label %if.end23.if.end32_crit_edge, label %if.else

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_ep, align 8
  %re_max_requests = getelementptr inbounds %struct.rpcrdma_ep, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %re_max_requests to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %re_max_requests, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %14, i32 %35)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end23.if.end32_crit_edge
  %credits.0 = phi i32 [ 1, %if.end23.if.end32_crit_edge ], [ %36, %if.else ]
  %rb_bc_srv_max_requests = getelementptr inbounds %struct.rpcrdma_xprt, ptr %1, i32 0, i32 2, i32 13
  %37 = ptrtoint ptr %rb_bc_srv_max_requests to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rb_bc_srv_max_requests, align 4
  %shl = shl i32 %38, 1
  %add = add i32 %shl, %credits.0
  tail call void @rpcrdma_post_recvs(ptr noundef %1, i32 noundef %add, i1 noundef zeroext false) #10
  %rb_credits = getelementptr inbounds %struct.rpcrdma_xprt, ptr %1, i32 0, i32 2, i32 12
  %39 = ptrtoint ptr %rb_credits to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rb_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %credits.0)
  %cmp33.not = icmp eq i32 %40, %credits.0
  br i1 %cmp33.not, label %if.end32.if.end35_crit_edge, label %if.then34

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %transport_lock.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %transport_lock.i) #10
  %41 = ptrtoint ptr %rb_credits to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %credits.0, ptr %rb_credits, align 4
  %shl.i.i = shl i32 %credits.0, 8
  %cwnd.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl.i.i, ptr %cwnd.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %transport_lock.i) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32.if.end35_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call20, i32 -8
  %rl_reply = getelementptr i8, ptr %call20, i32 288
  %43 = ptrtoint ptr %rl_reply to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rl_reply, align 8
  %tobool37.not = icmp eq ptr %44, null
  br i1 %tobool37.not, label %if.end35.if.end46_crit_edge, label %if.then44, !prof !76

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rpcrdma_rep_put(ptr noundef %rx_buf, ptr noundef nonnull %44) #10
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end35.if.end46_crit_edge
  %45 = ptrtoint ptr %rl_reply to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %rep, ptr %rl_reply, align 8
  %rr_rqst = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 10
  %46 = ptrtoint ptr %rr_rqst to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call20, ptr %rr_rqst, align 4
  %rq_task = getelementptr inbounds %struct.rpc_rqst, ptr %call20, i32 0, i32 3
  %47 = ptrtoint ptr %rq_task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rq_task, align 4
  tail call fastcc void @trace_xprtrdma_reply(ptr noundef %48, ptr noundef %rep, i32 noundef %credits.0)
  %rr_wc_flags = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 5
  %49 = ptrtoint ptr %rr_wc_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rr_wc_flags, align 8
  %and = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.end46.if.end50_crit_edge, label %if.then49

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %rl_registered = getelementptr i8, ptr %call20, i32 452
  tail call void @frwr_reminv(ptr noundef %rep, ptr noundef %rl_registered) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46.if.end50_crit_edge
  %rl_registered51 = getelementptr i8, ptr %call20, i32 452
  %51 = ptrtoint ptr %rl_registered51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %rl_registered51, align 4
  %cmp.i.not = icmp eq ptr %52, %rl_registered51
  br i1 %cmp.i.not, label %if.else55, label %if.then54

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @frwr_unmap_async(ptr noundef %1, ptr noundef %add.ptr.i) #10
  br label %cleanup

if.else55:                                        ; preds = %if.end50
  %rl_kref = getelementptr i8, ptr %call20, i32 440
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rl_kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %rl_kref, i32 1, i32 3, i32 1) #10
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rl_kref, ptr %rl_kref, i32 1, ptr elementtype(i32) %rl_kref) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %rl_kref, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %54 = ptrtoint ptr %rl_reply to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rl_reply, align 8
  tail call void @rpcrdma_complete_rqst(ptr noundef %55) #10
  br label %cleanup

out_badversion:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xprtrdma_reply_vers_err(ptr noundef %rep)
  br label %out

out_norqst:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #10
  tail call fastcc void @trace_xprtrdma_reply_rqst_err(ptr noundef %rep)
  br label %out

out_shortreply:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xprtrdma_reply_short_err(ptr noundef %rep)
  br label %out

out:                                              ; preds = %out_shortreply, %out_norqst, %out_badversion
  tail call void @rpcrdma_rep_put(ptr noundef %rx_buf, ptr noundef %rep) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then54, %if.end24.i, %if.end18.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_lookup_rqst(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_pin_rqst(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_post_recvs(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_rep_put(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_reply(ptr noundef %task, ptr noundef %rep, i32 noundef %credits) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_reply, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %call42 = tail call i32 @__traceiter_xprtrdma_reply(ptr noundef null, ptr noundef %task, ptr noundef %rep, i32 noundef %credits) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_reply.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_reply.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1279, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
declare dso_local void @frwr_reminv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @frwr_unmap_async(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_reply_vers_err(ptr noundef %rep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_vers_err, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_reply_vers_err, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  %call42 = tail call i32 @__traceiter_xprtrdma_reply_vers_err(ptr noundef null, ptr noundef %rep) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_vers_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_vers_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_reply_vers_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_reply_vers_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1281, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define internal fastcc void @trace_xprtrdma_reply_rqst_err(ptr noundef %rep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_rqst_err, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_reply_rqst_err, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %call42 = tail call i32 @__traceiter_xprtrdma_reply_rqst_err(ptr noundef null, ptr noundef %rep) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_rqst_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_rqst_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_reply_rqst_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_reply_rqst_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1282, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define internal fastcc void @trace_xprtrdma_reply_short_err(ptr noundef %rep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_short_err, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_reply_short_err, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  %call42 = tail call i32 @__traceiter_xprtrdma_reply_short_err(ptr noundef null, ptr noundef %rep) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_short_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_reply_short_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_reply_short_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_reply_short_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1283, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rpcrdma_pullup_pagelist(ptr nocapture noundef %r_xprt, ptr nocapture noundef readonly %xdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 5
  %0 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not1 = icmp eq i32 %1, 0
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %page_base3 = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 4
  %2 = ptrtoint ptr %page_base3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_base3, align 4
  %and = and i32 %3, 4095
  %pages = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 3
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 4
  %shr = lshr i32 %3, 12
  %add.ptr4 = getelementptr ptr, ptr %5, i32 %shr
  %6 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdr, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %xdr, i32 0, i32 1
  %8 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iov_len, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %pullup_copy_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr4, align 4
  %call.peel = tail call ptr @page_address(ptr noundef %11) #10
  %add.ptr6.peel = getelementptr i8, ptr %call.peel, i32 %and
  %sub.peel = sub nuw nsw i32 4096, %and
  %12 = tail call i32 @llvm.umin.i32(i32 %sub.peel, i32 %1)
  %13 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr6.peel, i32 %12)
  %conv.peel = zext i32 %12 to i64
  %14 = ptrtoint ptr %pullup_copy_count to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pullup_copy_count, align 8
  %add.peel = add i64 %15, %conv.peel
  store i64 %add.peel, ptr %pullup_copy_count, align 8
  %sub8.peel = sub i32 %1, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.peel)
  %tobool.not.peel = icmp eq i32 %sub8.peel, 0
  br i1 %tobool.not.peel, label %while.body.lr.ph.while.end_crit_edge, label %while.body.peel.next

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.peel.next:                             ; preds = %while.body.lr.ph
  %add.ptr7.peel = getelementptr i8, ptr %add.ptr, i32 %12
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.peel.next
  %dst.05 = phi ptr [ %add.ptr7.peel, %while.body.peel.next ], [ %add.ptr7, %while.body.while.body_crit_edge ]
  %add.ptr4.pn = phi ptr [ %add.ptr4, %while.body.peel.next ], [ %ppages.04, %while.body.while.body_crit_edge ]
  %remaining.03 = phi i32 [ %sub8.peel, %while.body.peel.next ], [ %sub8, %while.body.while.body_crit_edge ]
  %ppages.04 = getelementptr ptr, ptr %add.ptr4.pn, i32 1
  %16 = ptrtoint ptr %ppages.04 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ppages.04, align 4
  %call = tail call ptr @page_address(ptr noundef %17) #10
  %18 = tail call i32 @llvm.umin.i32(i32 %remaining.03, i32 4096)
  %19 = call ptr @memcpy(ptr %dst.05, ptr %call, i32 %18)
  %conv = zext i32 %18 to i64
  %20 = ptrtoint ptr %pullup_copy_count to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pullup_copy_count, align 8
  %add = add i64 %21, %conv
  store i64 %add, ptr %pullup_copy_count, align 8
  %add.ptr7 = getelementptr i8, ptr %dst.05, i32 %18
  %sub8 = sub i32 %remaining.03, %18
  %tobool.not = icmp eq i32 %sub8, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge, !llvm.loop !108

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.body.lr.ph.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rpcrdma_regbuf_dma_map(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rpcrdma_prepare_tail_iov(ptr nocapture noundef %req, ptr nocapture noundef readonly %xdr, i32 noundef %page_base, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_sendctx = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %rl_sendctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rl_sendctx, align 8
  %num_sge = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sge, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %num_sge, align 4
  %arrayidx = getelementptr %struct.rpcrdma_sendctx, ptr %1, i32 0, i32 4, i32 %3
  %rl_sendbuf = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 8
  %4 = ptrtoint ptr %rl_sendbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rl_sendbuf, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %tail = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1
  %7 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail, align 4
  %9 = ptrtoint ptr %8 to i32
  %sub = add i32 %9, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %6, i32 %shr
  %rg_device.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %rg_device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rg_device.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr, i32 noundef %page_base, i32 noundef %len, i32 noundef 1, i32 noundef 0) #10
  %conv3.i = zext i32 %call2.i to i64
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv3.i, ptr %arrayidx, align 8
  %15 = ptrtoint ptr %rg_device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rg_device.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i.i = icmp ne i32 %call2.i, -1
  br i1 %cmp.i.i, label %if.end, label %out_mapping_err

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %length = getelementptr %struct.rpcrdma_sendctx, ptr %1, i32 0, i32 4, i32 %3, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %len, ptr %length, align 8
  %lkey.i = getelementptr inbounds %struct.ib_sge, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lkey.i, align 4
  %lkey = getelementptr %struct.rpcrdma_sendctx, ptr %1, i32 0, i32 4, i32 %3, i32 2
  %22 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %lkey, align 4
  %sc_unmap_count = getelementptr inbounds %struct.rpcrdma_sendctx, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %sc_unmap_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sc_unmap_count, align 8
  %inc8 = add i32 %24, 1
  store i32 %inc8, ptr %sc_unmap_count, align 8
  br label %cleanup

out_mapping_err:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx, align 8
  tail call fastcc void @trace_xprtrdma_dma_maperr(i64 noundef %26)
  br label %cleanup

cleanup:                                          ; preds = %out_mapping_err, %if.end
  ret i1 %cmp.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_dma_maperr(i64 noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_dma_maperr, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_dma_maperr, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %call42 = tail call i32 @__traceiter_xprtrdma_dma_maperr(ptr noundef null, i64 noundef %addr) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_dma_maperr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_dma_maperr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_dma_maperr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_dma_maperr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1246, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_dma_maperr(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_prepsend_failed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpcrdma_convert_iovs(ptr nocapture noundef readonly %xdrbuf, i32 noundef %pos, i32 noundef %type, ptr nocapture noundef writeonly %seg) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos)
  %cmp = icmp eq i32 %pos, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %xdrbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xdrbuf, align 4
  %3 = ptrtoint ptr %2 to i32
  %sub.i = add i32 %3, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %shr.i
  %mr_page.i = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg, i32 0, i32 1
  %4 = ptrtoint ptr %mr_page.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %mr_page.i, align 4
  %5 = load ptr, ptr %xdrbuf, align 4
  %6 = ptrtoint ptr %5 to i32
  %and.i = and i32 %6, 4095
  %conv.i = zext i32 %and.i to i64
  %mr_offset.i = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg, i32 0, i32 2
  %7 = ptrtoint ptr %mr_offset.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv.i, ptr %mr_offset.i, align 8
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %xdrbuf, i32 0, i32 1
  %8 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iov_len.i, align 4
  %10 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %seg, align 8
  %incdec.ptr.i = getelementptr %struct.rpcrdma_mr_seg, ptr %seg, i32 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %seg.addr.0 = phi ptr [ %incdec.ptr.i, %if.then ], [ %seg, %entry.if.end_crit_edge ]
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %xdrbuf, i32 0, i32 5
  %11 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not14 = icmp eq i32 %12, 0
  br i1 %tobool.not14, label %if.end.while.end_crit_edge, label %while.body.preheader

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %if.end
  %page_base1 = getelementptr inbounds %struct.xdr_buf, ptr %xdrbuf, i32 0, i32 4
  %13 = ptrtoint ptr %page_base1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_base1, align 4
  %and = and i32 %14, 4095
  %pages = getelementptr inbounds %struct.xdr_buf, ptr %xdrbuf, i32 0, i32 3
  %15 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages, align 4
  %shr = lshr i32 %14, 12
  %add.ptr = getelementptr ptr, ptr %16, i32 %shr
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %mr_page.peel = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg.addr.0, i32 0, i32 1
  %19 = ptrtoint ptr %mr_page.peel to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %mr_page.peel, align 4
  %conv.peel = zext i32 %and to i64
  %mr_offset.peel = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg.addr.0, i32 0, i32 2
  %20 = ptrtoint ptr %mr_offset.peel to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv.peel, ptr %mr_offset.peel, align 8
  %sub.peel = sub nuw nsw i32 4096, %and
  %21 = tail call i32 @llvm.umin.i32(i32 %sub.peel, i32 %12)
  %22 = ptrtoint ptr %seg.addr.0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %seg.addr.0, align 8
  %sub6.peel = sub i32 %12, %21
  %incdec.ptr7.peel = getelementptr %struct.rpcrdma_mr_seg, ptr %seg.addr.0, i32 1
  %inc.peel = add nuw nsw i32 %n.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.peel)
  %tobool.not.peel = icmp eq i32 %sub6.peel, 0
  br i1 %tobool.not.peel, label %while.body.preheader.while.end_crit_edge, label %while.body.preheader.while.body_crit_edge

while.body.preheader.while.body_crit_edge:        ; preds = %while.body.preheader
  br label %while.body

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader.while.body_crit_edge
  %ppages.019.pn = phi ptr [ %ppages.019, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader.while.body_crit_edge ]
  %len.018 = phi i32 [ %sub6, %while.body.while.body_crit_edge ], [ %sub6.peel, %while.body.preheader.while.body_crit_edge ]
  %seg.addr.116 = phi ptr [ %incdec.ptr7, %while.body.while.body_crit_edge ], [ %incdec.ptr7.peel, %while.body.preheader.while.body_crit_edge ]
  %n.115 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %inc.peel, %while.body.preheader.while.body_crit_edge ]
  %ppages.019 = getelementptr ptr, ptr %ppages.019.pn, i32 1
  %23 = ptrtoint ptr %ppages.019 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ppages.019, align 4
  %mr_page = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg.addr.116, i32 0, i32 1
  %25 = ptrtoint ptr %mr_page to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %mr_page, align 4
  %mr_offset = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg.addr.116, i32 0, i32 2
  %26 = ptrtoint ptr %mr_offset to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %mr_offset, align 8
  %27 = tail call i32 @llvm.umin.i32(i32 %len.018, i32 4096)
  %28 = ptrtoint ptr %seg.addr.116 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %seg.addr.116, align 8
  %sub6 = sub i32 %len.018, %27
  %incdec.ptr7 = getelementptr %struct.rpcrdma_mr_seg, ptr %seg.addr.116, i32 1
  %inc = add i32 %n.115, 1
  %tobool.not = icmp eq i32 %sub6, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge, !llvm.loop !86

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.body.preheader.while.end_crit_edge, %if.end.while.end_crit_edge
  %n.1.lcssa = phi i32 [ %n.0, %if.end.while.end_crit_edge ], [ %inc.peel, %while.body.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %seg.addr.1.lcssa = phi ptr [ %seg.addr.0, %if.end.while.end_crit_edge ], [ %incdec.ptr7.peel, %while.body.preheader.while.end_crit_edge ], [ %incdec.ptr7, %while.body.while.end_crit_edge ]
  %29 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %type, label %if.end13 [
    i32 3, label %while.end.out_crit_edge
    i32 5, label %while.end.out_crit_edge24
  ]

while.end.out_crit_edge24:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end13:                                         ; preds = %while.end
  %iov_len = getelementptr inbounds %struct.xdr_buf, ptr %xdrbuf, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not = icmp eq i32 %31, 0
  br i1 %tobool15.not, label %if.end13.out_crit_edge, label %if.then16

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %tail = getelementptr inbounds %struct.xdr_buf, ptr %xdrbuf, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail, align 4
  %35 = ptrtoint ptr %34 to i32
  %sub.i1 = add i32 %35, 1073741824
  %shr.i2 = lshr i32 %sub.i1, 12
  %add.ptr.i3 = getelementptr %struct.page, ptr %32, i32 %shr.i2
  %mr_page.i4 = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg.addr.1.lcssa, i32 0, i32 1
  %36 = ptrtoint ptr %mr_page.i4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i3, ptr %mr_page.i4, align 4
  %37 = load ptr, ptr %tail, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i5 = and i32 %38, 4095
  %conv.i6 = zext i32 %and.i5 to i64
  %mr_offset.i7 = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg.addr.1.lcssa, i32 0, i32 2
  %39 = ptrtoint ptr %mr_offset.i7 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i6, ptr %mr_offset.i7, align 8
  %40 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iov_len, align 4
  %42 = ptrtoint ptr %seg.addr.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %seg.addr.1.lcssa, align 8
  %inc.i10 = add i32 %n.1.lcssa, 1
  br label %out

out:                                              ; preds = %if.then16, %if.end13.out_crit_edge, %while.end.out_crit_edge, %while.end.out_crit_edge24
  %n.2 = phi i32 [ %n.1.lcssa, %if.end13.out_crit_edge ], [ %inc.i10, %if.then16 ], [ %n.1.lcssa, %while.end.out_crit_edge ], [ %n.1.lcssa, %while.end.out_crit_edge24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %n.2)
  %cmp21 = icmp ugt i32 %n.2, 260
  %. = select i1 %cmp21, i32 -5, i32 %n.2, !prof !78
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rpcrdma_mr_prepare(ptr noundef %r_xprt, ptr noundef %req, ptr noundef %seg, i32 noundef %nsegs, i1 noundef zeroext %writing, ptr nocapture noundef %mr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_free_mrs = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 12
  %0 = ptrtoint ptr %rl_free_mrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rl_free_mrs, align 4
  %cmp.not.i = icmp eq ptr %1, %rl_free_mrs
  %tobool.not.i24 = icmp eq ptr %1, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not.i24
  br i1 %tobool.not.i, label %if.then, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.rpcrdma_mr_pop.exit_crit_edge

if.then.i.rpcrdma_mr_pop.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_mr_pop.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %rpcrdma_mr_pop.exit

rpcrdma_mr_pop.exit:                              ; preds = %if.end.i.i.i, %if.then.i.rpcrdma_mr_pop.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i, align 4
  %10 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %mr, align 4
  br label %if.end4

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mr, align 4
  %call1 = tail call ptr @rpcrdma_mr_get(ptr noundef %r_xprt) #10
  %12 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %mr, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %out_getmr_err, label %if.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %mr_req = getelementptr inbounds %struct.rpcrdma_mr, ptr %call1, i32 0, i32 1
  %13 = ptrtoint ptr %mr_req to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req, ptr %mr_req, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %rpcrdma_mr_pop.exit
  %14 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mr, align 4
  %rl_registered = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 13
  %16 = ptrtoint ptr %rl_registered to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rl_registered, align 4
  %call.i.i.i22 = tail call zeroext i1 @__list_add_valid(ptr noundef %15, ptr noundef %rl_registered, ptr noundef %17) #10
  br i1 %call.i.i.i22, label %if.end.i.i.i23, label %if.end4.rpcrdma_mr_push.exit_crit_edge

if.end4.rpcrdma_mr_push.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpcrdma_mr_push.exit

if.end.i.i.i23:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %15, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rl_registered, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %rl_registered to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %15, ptr %rl_registered, align 4
  br label %rpcrdma_mr_push.exit

rpcrdma_mr_push.exit:                             ; preds = %if.end.i.i.i23, %if.end4.rpcrdma_mr_push.exit_crit_edge
  %rq_xid = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rq_xid, align 4
  %24 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mr, align 4
  %call6 = tail call ptr @frwr_map(ptr noundef %r_xprt, ptr noundef %seg, i32 noundef %nsegs, i1 noundef zeroext %writing, i32 noundef %23, ptr noundef %25) #10
  br label %return

out_getmr_err:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_xprtrdma_nomrs_err(ptr noundef %r_xprt, ptr noundef %req)
  tail call void @xprt_wait_for_buffer_space(ptr noundef %r_xprt) #10
  tail call void @rpcrdma_mrs_refresh(ptr noundef %r_xprt) #10
  br label %return

return:                                           ; preds = %out_getmr_err, %rpcrdma_mr_push.exit
  %retval.0 = phi ptr [ %call6, %rpcrdma_mr_push.exit ], [ inttoptr (i32 -11 to ptr), %out_getmr_err ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_chunk_read(ptr noundef %task, i32 noundef %pos, ptr noundef %mr, i32 noundef %nsegs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_read, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_chunk_read, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %call42 = tail call i32 @__traceiter_xprtrdma_chunk_read(ptr noundef null, ptr noundef %task, i32 noundef %pos, ptr noundef %mr, i32 noundef %nsegs) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_read, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_chunk_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_chunk_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 789, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
declare dso_local ptr @rpcrdma_mr_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @frwr_map(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_nomrs_err(ptr noundef %r_xprt, ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_nomrs_err, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_nomrs_err, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !113
  %call42 = tail call i32 @__traceiter_xprtrdma_nomrs_err(ptr noundef null, ptr noundef %r_xprt, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_nomrs_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_nomrs_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_nomrs_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_nomrs_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 787, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
declare dso_local void @xprt_wait_for_buffer_space(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_mrs_refresh(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_nomrs_err(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_chunk_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_chunk_write(ptr noundef %task, ptr noundef %mr, i32 noundef %nsegs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_write, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_chunk_write, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
  %call42 = tail call i32 @__traceiter_xprtrdma_chunk_write(ptr noundef null, ptr noundef %task, ptr noundef %mr, i32 noundef %nsegs) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_write, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_chunk_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_chunk_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 790, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define internal fastcc void @trace_xprtrdma_chunk_wp(ptr noundef %task, ptr noundef %mr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_wp, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_chunk_wp, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !117
  %call42 = tail call i32 @__traceiter_xprtrdma_chunk_wp(ptr noundef null, ptr noundef %task, ptr noundef %mr, i32 noundef 0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !76

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_wp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_wp, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_xprtrdma_chunk_wp.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_chunk_wp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 792, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_chunk_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_chunk_wp(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_chunk_reply(ptr noundef %task, ptr noundef %mr, i32 noundef %nsegs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_reply, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_chunk_reply, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %call42 = tail call i32 @__traceiter_xprtrdma_chunk_reply(ptr noundef null, ptr noundef %task, ptr noundef %mr, i32 noundef %nsegs) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_reply, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_chunk_reply, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_chunk_reply.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_chunk_reply.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 791, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
declare dso_local i32 @__traceiter_xprtrdma_chunk_reply(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_marshal(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_marshal_failed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_write_list(ptr noundef %xdr, ptr nocapture noundef %length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %length, align 4
  %call29 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #10
  %tobool.not30 = icmp eq ptr %call29, null
  br i1 %tobool.not30, label %entry.cleanup_crit_edge, label %if.end, !prof !78

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.end.cleanup.loopexit24.split.loop.exit25_crit_edge, label %if.end9

if.end.cleanup.loopexit24.split.loop.exit25_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit24.split.loop.exit25

if.end9:                                          ; preds = %if.end
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.end.i, !prof !78

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not20.i = icmp eq i32 %4, 0
  br i1 %tobool5.not20.i, label %if.end.i.if.end13_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %chunklen.1 = phi i32 [ %add.i, %if.end9.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %dec21.in.i = phi i32 [ %dec21.i, %if.end9.i.while.body.i_crit_edge ], [ %4, %if.end.i.while.body.i_crit_edge ]
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.body.i.cleanup_crit_edge, label %if.end9.i, !prof !78

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.i:                                        ; preds = %while.body.i
  %dec21.i = add i32 %dec21.in.i, -1
  %incdec.ptr.i.i.i = getelementptr i32, ptr %call.i.i, i32 1
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i.i, align 4
  %incdec.ptr1.i.i.i = getelementptr i32, ptr %call.i.i, i32 2
  %7 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %9 = ptrtoint ptr %incdec.ptr1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %incdec.ptr1.i.i.i, align 1
  tail call fastcc void @trace_xprtrdma_decode_seg(i32 noundef %6, i32 noundef %8, i64 noundef %10) #10
  %add.i = add i32 %8, %chunklen.1
  %tobool5.not.i = icmp eq i32 %dec21.i, 0
  br i1 %tobool5.not.i, label %if.end9.i.if.end13_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end9.i.if.end13_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %if.end9.i.if.end13_crit_edge, %if.end.i.if.end13_crit_edge
  %chunklen.2.ph = phi i32 [ 0, %if.end.i.if.end13_crit_edge ], [ %add.i, %if.end9.i.if.end13_crit_edge ]
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  %add = add i32 %12, %chunklen.2.ph
  store i32 %add, ptr %length, align 4
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.end.1, !prof !78

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.1:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.1 = icmp eq i32 %14, 0
  br label %cleanup.loopexit24.split.loop.exit25

cleanup.loopexit24.split.loop.exit25:             ; preds = %if.end.1, %if.end.cleanup.loopexit24.split.loop.exit25_crit_edge
  %cmp.i.lcssa = phi i1 [ %cmp.i, %if.end.cleanup.loopexit24.split.loop.exit25_crit_edge ], [ %cmp.i.1, %if.end.1 ]
  %.mux.le = select i1 %cmp.i.lcssa, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit24.split.loop.exit25, %if.end13.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux.le, %cleanup.loopexit24.split.loop.exit25 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %while.body.i.cleanup_crit_edge ], [ -5, %if.end9.cleanup_crit_edge ], [ -5, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_decode_seg(i32 noundef %handle, i32 noundef %length, i64 noundef %offset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_decode_seg, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_decode_seg, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %call42 = tail call i32 @__traceiter_xprtrdma_decode_seg(ptr noundef null, i32 noundef %handle, i32 noundef %length, i64 noundef %offset) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_decode_seg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_decode_seg, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_decode_seg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_decode_seg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1425, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
declare dso_local i32 @__traceiter_xprtrdma_decode_seg(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_fixup(ptr noundef %rqst, i32 noundef %fixup) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_fixup, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_fixup, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !123
  %call42 = tail call i32 @__traceiter_xprtrdma_fixup(ptr noundef null, ptr noundef %rqst, i32 noundef %fixup) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_fixup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_fixup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_fixup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_fixup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1398, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_fixup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_err_vers(ptr noundef %rqst, ptr noundef %min, ptr noundef %max) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_err_vers, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_err_vers, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !125
  %call42 = tail call i32 @__traceiter_xprtrdma_err_vers(ptr noundef null, ptr noundef %rqst, ptr noundef %min, ptr noundef %max) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_err_vers, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_err_vers, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_err_vers.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_err_vers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1315, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define internal fastcc void @trace_xprtrdma_err_chunk(ptr noundef %rqst) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_err_chunk, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_err_chunk, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !127
  %call42 = tail call i32 @__traceiter_xprtrdma_err_chunk(ptr noundef null, ptr noundef %rqst) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_err_chunk, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_err_chunk, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_err_chunk.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_err_chunk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1339, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define internal fastcc void @trace_xprtrdma_err_unrecognized(ptr noundef %rqst, ptr noundef %procedure) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_err_unrecognized, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_err_unrecognized, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !129
  %call42 = tail call i32 @__traceiter_xprtrdma_err_unrecognized(ptr noundef null, ptr noundef %rqst, ptr noundef %procedure) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !130
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_err_unrecognized, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_err_unrecognized, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_err_unrecognized.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xprtrdma_err_unrecognized.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1366, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
declare dso_local i32 @__traceiter_xprtrdma_err_vers(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_err_chunk(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_err_unrecognized(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_reply_hdr_err(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_bc_receive_call(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_reply(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_reply_vers_err(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_reply_rqst_err(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_reply_short_err(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/trace/events/rpcrdma.h", i32 1230, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/trace/events/rpcrdma.h", i32 884, i32 1}
!10 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/trace/events/rpcrdma.h", i32 759, i32 1}
!15 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/trace/events/rpcrdma.h", i32 789, i32 1}
!18 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/trace/events/rpcrdma.h", i32 790, i32 1}
!21 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/trace/events/rpcrdma.h", i32 792, i32 1}
!24 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/trace/events/rpcrdma.h", i32 791, i32 1}
!27 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/trace/events/rpcrdma.h", i32 812, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/trace/events/rpcrdma.h", i32 857, i32 1}
!33 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/trace/events/rpcrdma.h", i32 1400, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/trace/events/rpcrdma.h", i32 1368, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/trace/events/rpcrdma.h", i32 1286, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/trace/events/rpcrdma.h", i32 1317, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/trace/events/rpcrdma.h", i32 1341, i32 1}
!48 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/trace/events/rpcrdma.h", i32 1284, i32 1}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/trace/events/rpcrdma.h", i32 1252, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/trace/events/rpcrdma.h", i32 1281, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/trace/events/rpcrdma.h", i32 1282, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/trace/events/rpcrdma.h", i32 1283, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148792376}
!75 = !{i64 2148706816, i64 2148706848, i64 2148706877, i64 2148706911, i64 2148706942, i64 2148706965}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2150413465}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 2148704351, i64 2148704383, i64 2148704412, i64 2148704446, i64 2148704477, i64 2148704500}
!80 = !{i64 2148527419, i64 2148527424, i64 2148527437, i64 2148527481, i64 2148527515, i64 2148527536}
!81 = !{i64 2158672896}
!82 = !{i64 2158673125}
!83 = !{i64 2149523826}
!84 = !{i64 2149524862}
!85 = !{!"auto-init"}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.peeled.count", i32 1}
!88 = !{i64 2158634741}
!89 = !{i64 2158634970}
!90 = !{i64 2158651646}
!91 = !{i64 2158651873}
!92 = !{i64 2153674117}
!93 = !{i64 2152218117}
!94 = !{i64 2152218324}
!95 = !{i64 2153676888}
!96 = distinct !{!96, !87}
!97 = !{!"branch_weights", i32 4001, i32 4000000}
!98 = !{i64 2159158701}
!99 = !{i64 2159158914}
!100 = !{i64 2159086510}
!101 = !{i64 2159086737}
!102 = !{i64 2159103337}
!103 = !{i64 2159103552}
!104 = !{i64 2159124481}
!105 = !{i64 2159124696}
!106 = !{i64 2159141604}
!107 = !{i64 2159141821}
!108 = distinct !{!108, !87}
!109 = !{i64 2159069305}
!110 = !{i64 2159069514}
!111 = !{i64 2158560125}
!112 = !{i64 2158560366}
!113 = !{i64 2158542083}
!114 = !{i64 2158542304}
!115 = !{i64 2158577965}
!116 = !{i64 2158578198}
!117 = !{i64 2158617510}
!118 = !{i64 2158617737}
!119 = !{i64 2158599828}
!120 = !{i64 2158600061}
!121 = !{i64 2159251318}
!122 = !{i64 2159251563}
!123 = !{i64 2159230600}
!124 = !{i64 2159230813}
!125 = !{i64 2159179863}
!126 = !{i64 2159180088}
!127 = !{i64 2159196366}
!128 = !{i64 2159196573}
!129 = !{i64 2159213442}
!130 = !{i64 2159213685}
