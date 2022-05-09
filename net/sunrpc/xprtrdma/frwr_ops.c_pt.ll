; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/frwr_ops.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/frwr_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.109 }
%struct.atomic_t = type { i32 }
%union.anon.109 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpcrdma_mr = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.ib_cqe, %struct.completion, %union.anon.179, ptr, i32, i32, i64, %struct.list_head, %struct.rpc_rdma_cid }
%struct.ib_cqe = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.179 = type { %struct.ib_reg_wr }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.161, ptr, i32, i32, i32, %union.anon.162 }
%union.anon.161 = type { i64 }
%union.anon.162 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rpc_rdma_cid = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rpcrdma_req = type { %struct.list_head, %struct.rpc_rqst, ptr, %struct.xdr_stream, %struct.xdr_buf, %struct.ib_send_wr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.kref, %struct.list_head, %struct.list_head, [260 x %struct.rpcrdma_mr_seg] }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.131, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.131 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpcrdma_mr_seg = type { i32, ptr, i64 }
%struct.rpcrdma_xprt = type { %struct.rpc_xprt, ptr, %struct.rpcrdma_buffer, %struct.delayed_work, %struct.rpc_timeout, %struct.rpcrdma_stats }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.130, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.__kernel_sockaddr_storage = type { %union.anon.126 }
%union.anon.126 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.anon.130 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rpcrdma_buffer = type { %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.llist_head, i32, i32, i32, i32, %struct.work_struct }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpcrdma_stats = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.rpcrdma_ep = type { %struct.kref, ptr, ptr, i32, i32, ptr, i32, %struct.completion, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.ib_qp_init_attr, %struct.wait_queue_head, ptr, %struct.rpcrdma_connect_private, %struct.rdma_conn_param, i32, i32, i32, i32, %struct.atomic_t, [4 x i8] }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rpcrdma_connect_private = type { i32, i8, i8, i8, i8 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.178, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.178 = type { %struct.work_struct }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.132, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.132 = type { %struct.list_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.177, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.177 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.166 }
%struct.anon.166 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.rpcrdma_rep = type { %struct.ib_cqe, %struct.rpc_rdma_cid, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, %struct.xdr_buf, %struct.xdr_stream, %struct.llist_node, %struct.ib_recv_wr, %struct.list_head }
%struct.llist_node = type { ptr }
%struct.ib_recv_wr = type { ptr, %union.anon.163, ptr, i32 }
%union.anon.163 = type { i64 }
%struct.ib_wc = type { %union.anon.164, i32, i32, i32, i32, ptr, %union.anon.165, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.164 = type { i64 }
%union.anon.165 = type { i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }

@frwr_query_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rpcrdma: 'frwr' mode is not supported by device %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"frwr_query_device\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/sunrpc/xprtrdma/frwr_ops.c\00", [33 x i8] zeroinitializer }, align 32
@frwr_query_device._entry_ptr = internal global ptr @frwr_query_device._entry, section ".printk_index", align 4
@frwr_query_device._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rpcrdma: HCA provides only %u send SGEs\0A\00", [53 x i8] zeroinitializer }, align 32
@frwr_query_device._entry_ptr.5 = internal global ptr @frwr_query_device._entry.3, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xprtrdma_mr_unmap = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/rpcrdma.h\00", [33 x i8] zeroinitializer }, align 32
@trace_xprtrdma_mr_unmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xprtrdma_frwr_dereg = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_frwr_dereg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_xprtrdma_frwr_alloc = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_frwr_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_mr_map = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_mr_map.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_frwr_sgerr = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_frwr_sgerr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_frwr_maperr = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_frwr_maperr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_mr_fastreg = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_mr_fastreg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_wc_fastreg = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_wc_fastreg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_post_send = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_post_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_post_send_err = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_post_send_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_mr_reminv = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_mr_reminv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_mr_localinv = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_mr_localinv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_wc_li = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_wc_li.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_wc_li_wake = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_wc_li_wake.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_post_linv_err = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_post_linv_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_wc_li_done = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_wc_li_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 183, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private constant [34 x i8] c"../net/sunrpc/xprtrdma/frwr_ops.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 191, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [34 x i8] c"../include/trace/events/rpcrdma.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 1228, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 108, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 87, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @frwr_query_device._entry, ptr @frwr_query_device._entry.3, ptr @frwr_query_device._entry_ptr, ptr @frwr_query_device._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @init_completion.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frwr_query_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frwr_query_device._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @frwr_mr_release(ptr noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_device.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 3
  %0 = ptrtoint ptr %mr_device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_device.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.frwr_mr_unmap.exit_crit_edge, label %if.then.i

entry.frwr_mr_unmap.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_unmap.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xprtrdma_mr_unmap(ptr noundef %mr) #8
  %2 = ptrtoint ptr %mr_device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mr_device.i, align 8
  %mr_sg.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 4
  %4 = ptrtoint ptr %mr_sg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mr_sg.i, align 4
  %mr_nents.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 5
  %6 = ptrtoint ptr %mr_nents.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mr_nents.i, align 8
  %mr_dir.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 6
  %8 = ptrtoint ptr %mr_dir.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mr_dir.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef 0) #8
  %12 = ptrtoint ptr %mr_device.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %mr_device.i, align 8
  br label %frwr_mr_unmap.exit

frwr_mr_unmap.exit:                               ; preds = %if.then.i, %entry.frwr_mr_unmap.exit_crit_edge
  %mr_ibmr = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 2
  %13 = ptrtoint ptr %mr_ibmr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mr_ibmr, align 4
  %call.i = tail call i32 @ib_dereg_mr_user(ptr noundef %14, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %frwr_mr_unmap.exit.if.end_crit_edge, label %if.then

frwr_mr_unmap.exit.if.end_crit_edge:              ; preds = %frwr_mr_unmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %frwr_mr_unmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xprtrdma_frwr_dereg(ptr noundef %mr, i32 noundef %call.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %frwr_mr_unmap.exit.if.end_crit_edge
  %mr_sg = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 4
  %15 = ptrtoint ptr %mr_sg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mr_sg, align 4
  tail call void @kfree(ptr noundef %16) #8
  tail call void @kfree(ptr noundef %mr) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_frwr_dereg(ptr noundef %mr, i32 noundef %rc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_dereg, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_frwr_dereg, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !78
  %call42 = tail call i32 @__traceiter_xprtrdma_frwr_dereg(ptr noundef null, ptr noundef %mr, i32 noundef %rc) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_dereg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_dereg, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_frwr_dereg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_frwr_dereg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1161, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @frwr_reset(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_registered = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 13
  %0 = ptrtoint ptr %rl_registered to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rl_registered, align 4
  %cmp.not.i3 = icmp eq ptr %1, %rl_registered
  %tobool.not.i24 = icmp eq ptr %1, null
  %tobool.not.i5 = or i1 %cmp.not.i3, %tobool.not.i24
  br i1 %tobool.not.i5, label %entry.while.end_crit_edge, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  br label %if.then.i

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then.i:                                        ; preds = %frwr_mr_put.exit.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %2 = phi ptr [ %33, %frwr_mr_put.exit.if.then.i_crit_edge ], [ %1, %entry.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %2) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.i.i.i, %if.then.i.while.body_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i.i, align 4
  %mr_device.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %mr_device.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mr_device.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %while.body.frwr_mr_unmap.exit.i_crit_edge, label %if.then.i.i

while.body.frwr_mr_unmap.exit.i_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_unmap.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xprtrdma_mr_unmap(ptr noundef nonnull %2) #8
  %13 = ptrtoint ptr %mr_device.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mr_device.i.i, align 8
  %mr_sg.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %2, i32 0, i32 4
  %15 = ptrtoint ptr %mr_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mr_sg.i.i, align 4
  %mr_nents.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %2, i32 0, i32 5
  %17 = ptrtoint ptr %mr_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mr_nents.i.i, align 8
  %mr_dir.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %2, i32 0, i32 6
  %19 = ptrtoint ptr %mr_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mr_dir.i.i, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %14, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %22, ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef 0) #8
  %23 = ptrtoint ptr %mr_device.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mr_device.i.i, align 8
  br label %frwr_mr_unmap.exit.i

frwr_mr_unmap.exit.i:                             ; preds = %if.then.i.i, %while.body.frwr_mr_unmap.exit.i_crit_edge
  %mr_req.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %2, i32 0, i32 1
  %24 = ptrtoint ptr %mr_req.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mr_req.i, align 8
  %rl_free_mrs.i = getelementptr inbounds %struct.rpcrdma_req, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %rl_free_mrs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rl_free_mrs.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %2, ptr noundef %rl_free_mrs.i, ptr noundef %27) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %frwr_mr_unmap.exit.i.frwr_mr_put.exit_crit_edge

frwr_mr_unmap.exit.i.frwr_mr_put.exit_crit_edge:  ; preds = %frwr_mr_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_put.exit

if.end.i.i.i.i:                                   ; preds = %frwr_mr_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i1 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %2, ptr %prev1.i.i.i.i1, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %2, align 4
  %30 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rl_free_mrs.i, ptr %prev.i3.i.i, align 4
  %31 = ptrtoint ptr %rl_free_mrs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %2, ptr %rl_free_mrs.i, align 4
  br label %frwr_mr_put.exit

frwr_mr_put.exit:                                 ; preds = %if.end.i.i.i.i, %frwr_mr_unmap.exit.i.frwr_mr_put.exit_crit_edge
  %32 = ptrtoint ptr %rl_registered to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %rl_registered, align 4
  %cmp.not.i = icmp eq ptr %33, %rl_registered
  %tobool.not.i2 = icmp eq ptr %33, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not.i2
  br i1 %tobool.not.i, label %frwr_mr_put.exit.while.end_crit_edge, label %frwr_mr_put.exit.if.then.i_crit_edge

frwr_mr_put.exit.if.then.i_crit_edge:             ; preds = %frwr_mr_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

frwr_mr_put.exit.while.end_crit_edge:             ; preds = %frwr_mr_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %frwr_mr_put.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @frwr_mr_init(ptr noundef %r_xprt, ptr noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %re_max_fr_depth = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %re_max_fr_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %re_max_fr_depth, align 4
  %re_pd = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %re_pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %re_pd, align 4
  %re_mrtype = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %re_mrtype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %re_mrtype, align 4
  %call = tail call ptr @ib_alloc_mr(ptr noundef %5, i32 noundef %7, i32 noundef %3) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_mr_err, label %if.end

if.end:                                           ; preds = %entry
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 20) #8
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end.out_list_err_crit_edge, label %if.end7.i, !prof !82

if.end.out_list_err_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_list_err

if.end7.i:                                        ; preds = %if.end
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3136) #11
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.out_list_err_crit_edge, label %if.end4

if.end7.i.out_list_err_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_list_err

if.end4:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %mr_xprt = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 10
  %11 = ptrtoint ptr %mr_xprt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %r_xprt, ptr %mr_xprt, align 8
  %mr_ibmr = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 2
  %12 = ptrtoint ptr %mr_ibmr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %mr_ibmr, align 4
  %mr_device = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 3
  %13 = ptrtoint ptr %mr_device to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mr_device, align 8
  %14 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %mr, ptr %mr, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mr, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mr, ptr %prev.i, align 4
  %mr_linv_done = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 8
  %16 = ptrtoint ptr %mr_linv_done to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mr_linv_done, align 4
  %wait.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #8
  %mr_cid.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 15
  %send_cq.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 16, i32 2
  %17 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_cq.i, align 4
  %id.i = getelementptr inbounds %struct.ib_cq, ptr %18, i32 0, i32 17, i32 8
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id.i, align 8
  %21 = ptrtoint ptr %mr_cid.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mr_cid.i, align 4
  %22 = ptrtoint ptr %mr_ibmr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mr_ibmr, align 4
  %id2.i = getelementptr inbounds %struct.ib_mr, ptr %23, i32 0, i32 12, i32 8
  %24 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id2.i, align 4
  %ci_completion_id.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %ci_completion_id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ci_completion_id.i, align 4
  tail call void @sg_init_table(ptr noundef nonnull %call8.i, i32 noundef %3) #8
  %mr_sg = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 4
  %27 = ptrtoint ptr %mr_sg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i, ptr %mr_sg, align 4
  br label %cleanup

out_mr_err:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call to i32
  tail call fastcc void @trace_xprtrdma_frwr_alloc(ptr noundef %mr, i32 noundef %28)
  br label %cleanup

out_list_err:                                     ; preds = %if.end7.i.out_list_err_crit_edge, %if.end.out_list_err_crit_edge
  %call.i = tail call i32 @ib_dereg_mr_user(ptr noundef %call, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %out_list_err, %out_mr_err, %if.end4
  %retval.0 = phi i32 [ %28, %out_mr_err ], [ 0, %if.end4 ], [ -12, %out_list_err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_alloc_mr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_frwr_alloc(ptr noundef %mr, i32 noundef %rc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_alloc, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_frwr_alloc, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  %call42 = tail call i32 @__traceiter_xprtrdma_frwr_alloc(ptr noundef null, ptr noundef %mr, i32 noundef %rc) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !84
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_alloc, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_frwr_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_frwr_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1125, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
define dso_local i32 @frwr_query_device(ptr nocapture noundef %ep, ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device_cap_flags = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %device_cap_flags, align 8
  %and = and i64 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %max_fast_reg_page_list_len = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 36
  %2 = ptrtoint ptr %max_fast_reg_page_list_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_fast_reg_page_list_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %name = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %max_send_sge = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 10
  %4 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_send_sge, align 8
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp4 = icmp ult i32 %6, 3
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %6) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %cap = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 16, i32 6
  %max_send_sge12 = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 16, i32 6, i32 2
  %7 = ptrtoint ptr %max_send_sge12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %max_send_sge12, align 4
  %max_recv_sge = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 16, i32 6, i32 3
  %8 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %max_recv_sge, align 4
  %re_mrtype = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 6
  %9 = ptrtoint ptr %re_mrtype to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %re_mrtype, align 4
  %10 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %device_cap_flags, align 8
  %and16 = lshr i64 %11, 32
  %12 = trunc i64 %and16 to i32
  %13 = and i32 %12, 1
  store i32 %13, ptr %re_mrtype, align 4
  %max_sge_rd = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 12
  %14 = ptrtoint ptr %max_sge_rd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sge_rd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp21 = icmp sgt i32 %15, 16
  br i1 %cmp21, label %if.end11.if.end26_crit_edge, label %if.else

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %max_fast_reg_page_list_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_fast_reg_page_list_len, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end11.if.end26_crit_edge
  %.sink = phi i32 [ %17, %if.else ], [ %15, %if.end11.if.end26_crit_edge ]
  %18 = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %.sink)
  %cmp28 = icmp ugt i32 %.sink, 257
  br i1 %cmp28, label %if.end31.thread, label %if.end31

if.end31.thread:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 257, ptr %18, align 4
  br label %if.end42

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %.sink)
  %cmp33.not = icmp eq i32 %.sink, 257
  br i1 %cmp33.not, label %if.end31.if.end42_crit_edge, label %if.then34

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then34:                                        ; preds = %if.end31
  %sub = sub nuw nsw i32 257, %.sink
  br label %do.body36

do.body36:                                        ; preds = %do.body36.do.body36_crit_edge, %if.then34
  %depth.0 = phi i32 [ 7, %if.then34 ], [ %add, %do.body36.do.body36_crit_edge ]
  %delta.0 = phi i32 [ %sub, %if.then34 ], [ %sub38, %do.body36.do.body36_crit_edge ]
  %add = add i32 %depth.0, 2
  %sub38 = sub i32 %delta.0, %.sink
  %cmp40 = icmp sgt i32 %sub38, 0
  br i1 %cmp40, label %do.body36.do.body36_crit_edge, label %do.body36.if.end42_crit_edge

do.body36.if.end42_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.body36.do.body36_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

if.end42:                                         ; preds = %do.body36.if.end42_crit_edge, %if.end31.if.end42_crit_edge, %if.end31.thread
  %21 = phi i32 [ 257, %if.end31.if.end42_crit_edge ], [ 257, %if.end31.thread ], [ %.sink, %do.body36.if.end42_crit_edge ]
  %depth.1 = phi i32 [ 7, %if.end31.if.end42_crit_edge ], [ 7, %if.end31.thread ], [ %add, %do.body36.if.end42_crit_edge ]
  %max_qp_wr43 = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 8
  %22 = ptrtoint ptr %max_qp_wr43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_qp_wr43, align 8
  %sub45 = add i32 %23, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub45)
  %cmp46 = icmp ult i32 %sub45, 4
  br i1 %cmp46, label %if.end42.cleanup_crit_edge, label %if.end48

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  %re_max_requests = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 22
  %24 = ptrtoint ptr %re_max_requests to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %re_max_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %sub45)
  %cmp49 = icmp ugt i32 %25, %sub45
  br i1 %cmp49, label %if.then50, label %if.end48.if.end52_crit_edge

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %re_max_requests to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub45, ptr %re_max_requests, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  %27 = ptrtoint ptr %re_max_requests to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %re_max_requests, align 4
  %mul = mul i32 %28, %depth.1
  %29 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %cap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub45)
  %cmp59 = icmp ugt i32 %mul, %sub45
  br i1 %cmp59, label %if.then60, label %if.end52.if.end71_crit_edge

if.end52.if.end71_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then60:                                        ; preds = %if.end52
  %div = sdiv i32 %sub45, %depth.1
  %30 = ptrtoint ptr %re_max_requests to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div, ptr %re_max_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %tobool63.not = icmp eq i32 %div, 0
  br i1 %tobool63.not, label %if.then60.cleanup_crit_edge, label %if.end65

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %mul67 = mul i32 %div, %depth.1
  %31 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul67, ptr %cap, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end65, %if.end52.if.end71_crit_edge
  %32 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cap, align 4
  %add79 = add i32 %33, 33
  store i32 %add79, ptr %cap, align 4
  %34 = ptrtoint ptr %re_max_requests to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %re_max_requests, align 4
  %max_recv_wr = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 16, i32 6, i32 1
  %add94 = add i32 %35, 40
  %36 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add94, ptr %max_recv_wr, align 4
  %sub97 = add i32 %21, 256
  %div99 = udiv i32 %sub97, %21
  %re_max_rdma_segs = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 3
  %add101 = add i32 %div99, 2
  %37 = tail call i32 @llvm.umin.i32(i32 %add101, i32 16)
  %38 = ptrtoint ptr %re_max_rdma_segs to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %re_max_rdma_segs, align 4
  %mul109 = mul i32 %37, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %mul109)
  %cmp110 = icmp ult i32 %mul109, 260
  %spec.select175 = select i1 %cmp110, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then60.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end8 ], [ -12, %if.end42.cleanup_crit_edge ], [ -12, %if.then60.cleanup_crit_edge ], [ %spec.select175, %if.end71 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @frwr_map(ptr nocapture noundef readonly %r_xprt, ptr noundef readonly %seg, i32 noundef %nsegs, i1 noundef zeroext %writing, i32 noundef %xid, ptr noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %re_max_fr_depth = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %re_max_fr_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %re_max_fr_depth, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %nsegs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2105 = icmp sgt i32 %4, 0
  br i1 %cmp2105, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mr_sg = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 4
  %re_mrtype = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 6
  %mr_page118 = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg, i32 0, i32 1
  %5 = ptrtoint ptr %mr_page118 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mr_page118, align 4
  %7 = ptrtoint ptr %6 to i32
  %and2.i.i121 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i121)
  %tobool.not.i.i122 = icmp eq i32 %and2.i.i121, 0
  br i1 %tobool.not.i.i122, label %do.body11.i.i.lr.ph, label %for.body.lr.ph.do.body5.i.i_crit_edge, !prof !77

for.body.lr.ph.do.body5.i.i_crit_edge:            ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i

do.body11.i.i.lr.ph:                              ; preds = %for.body.lr.ph
  %8 = ptrtoint ptr %mr_sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mr_sg, align 4
  %mr_offset119 = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg, i32 0, i32 2
  %10 = ptrtoint ptr %mr_offset119 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mr_offset119, align 8
  %conv120 = trunc i64 %11 to i32
  br label %do.body11.i.i

do.body5.i.i:                                     ; preds = %for.body.backedge.do.body5.i.i_crit_edge, %for.body.lr.ph.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !85
  unreachable

do.body11.i.i:                                    ; preds = %for.body.backedge.do.body11.i.i_crit_edge, %do.body11.i.i.lr.ph
  %12 = phi i32 [ %7, %do.body11.i.i.lr.ph ], [ %29, %for.body.backedge.do.body11.i.i_crit_edge ]
  %conv127 = phi i32 [ %conv120, %do.body11.i.i.lr.ph ], [ %conv, %for.body.backedge.do.body11.i.i_crit_edge ]
  %mr_offset126 = phi ptr [ %mr_offset119, %do.body11.i.i.lr.ph ], [ %mr_offset, %for.body.backedge.do.body11.i.i_crit_edge ]
  %arrayidx125 = phi ptr [ %9, %do.body11.i.i.lr.ph ], [ %arrayidx, %for.body.backedge.do.body11.i.i_crit_edge ]
  %13 = phi ptr [ %9, %do.body11.i.i.lr.ph ], [ %24, %for.body.backedge.do.body11.i.i_crit_edge ]
  %seg.addr.0106124 = phi ptr [ %seg, %do.body11.i.i.lr.ph ], [ %incdec.ptr, %for.body.backedge.do.body11.i.i_crit_edge ]
  %i.0108123 = phi i32 [ 0, %do.body11.i.i.lr.ph ], [ %inc, %for.body.backedge.do.body11.i.i_crit_edge ]
  %14 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx125, align 4
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !77

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !86
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %16 = ptrtoint ptr %seg.addr.0106124 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seg.addr.0106124, align 8
  %and.i.i = and i32 %15, 3
  %or.i.i = or i32 %and.i.i, %12
  %18 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.i, ptr %arrayidx125, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %13, i32 %i.0108123, i32 1
  %19 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv127, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %13, i32 %i.0108123, i32 2
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %length.i, align 4
  %incdec.ptr = getelementptr %struct.rpcrdma_mr_seg, ptr %seg.addr.0106124, i32 1
  %inc = add nuw nsw i32 %i.0108123, 1
  %21 = ptrtoint ptr %re_mrtype to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %re_mrtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp3 = icmp eq i32 %22, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %4)
  %cmp2.old = icmp slt i32 %inc, %4
  br i1 %cmp3, label %for.cond.backedge, label %if.end6

for.cond.backedge:                                ; preds = %sg_set_page.exit
  br i1 %cmp2.old, label %for.cond.backedge.for.body.backedge_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.backedge.for.body.backedge_crit_edge:    ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge

for.body.backedge:                                ; preds = %lor.lhs.false.for.body.backedge_crit_edge, %for.cond.backedge.for.body.backedge_crit_edge
  %23 = ptrtoint ptr %mr_sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mr_sg, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %24, i32 %inc
  %mr_page = getelementptr %struct.rpcrdma_mr_seg, ptr %seg.addr.0106124, i32 1, i32 1
  %25 = ptrtoint ptr %mr_page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mr_page, align 4
  %mr_offset = getelementptr %struct.rpcrdma_mr_seg, ptr %seg.addr.0106124, i32 1, i32 2
  %27 = ptrtoint ptr %mr_offset to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %mr_offset, align 8
  %conv = trunc i64 %28 to i32
  %29 = ptrtoint ptr %26 to i32
  %and2.i.i = and i32 %29, 3
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.backedge.do.body11.i.i_crit_edge, label %for.body.backedge.do.body5.i.i_crit_edge, !prof !77

for.body.backedge.do.body5.i.i_crit_edge:         ; preds = %for.body.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i

for.body.backedge.do.body11.i.i_crit_edge:        ; preds = %for.body.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11.i.i

if.end6:                                          ; preds = %sg_set_page.exit
  br i1 %cmp2.old, label %land.lhs.true, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %if.end6
  %mr_offset9 = getelementptr %struct.rpcrdma_mr_seg, ptr %seg.addr.0106124, i32 1, i32 2
  %30 = ptrtoint ptr %mr_offset9 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %mr_offset9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool.not = icmp eq i64 %31, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false:                                    ; preds = %land.lhs.true
  %32 = ptrtoint ptr %mr_offset126 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %mr_offset126, align 8
  %34 = ptrtoint ptr %seg.addr.0106124 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %seg.addr.0106124, align 8
  %36 = trunc i64 %33 to i32
  %conv14 = add i32 %35, %36
  %and = and i32 %conv14, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool15.not, i1 %cmp2.old, i1 false
  br i1 %or.cond, label %lor.lhs.false.for.body.backedge_crit_edge, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false.for.body.backedge_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge

for.end:                                          ; preds = %lor.lhs.false.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end6.for.end_crit_edge, %for.cond.backedge.for.end_crit_edge, %entry.for.end_crit_edge
  %seg.addr.1 = phi ptr [ %seg, %entry.for.end_crit_edge ], [ %incdec.ptr, %land.lhs.true.for.end_crit_edge ], [ %incdec.ptr, %lor.lhs.false.for.end_crit_edge ], [ %incdec.ptr, %for.cond.backedge.for.end_crit_edge ], [ %incdec.ptr, %if.end6.for.end_crit_edge ]
  %i.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %land.lhs.true.for.end_crit_edge ], [ %inc, %lor.lhs.false.for.end_crit_edge ], [ %inc, %for.cond.backedge.for.end_crit_edge ], [ %inc, %if.end6.for.end_crit_edge ]
  %cond.i = select i1 %writing, i32 2, i32 1
  %mr_dir = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 6
  %37 = ptrtoint ptr %mr_dir to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond.i, ptr %mr_dir, align 4
  %mr_nents = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 5
  %38 = ptrtoint ptr %mr_nents to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.1, ptr %mr_nents, align 8
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %re_id, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %mr_sg19 = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 4
  %43 = ptrtoint ptr %mr_sg19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mr_sg19, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 8
  %call2.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %46, ptr noundef %44, i32 noundef %i.1, i32 noundef %cond.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool23.not = icmp eq i32 %call2.i.i, 0
  br i1 %tobool23.not, label %out_dmamap_err, label %if.end25

if.end25:                                         ; preds = %for.end
  %47 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %re_id, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %mr_device = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 3
  %51 = ptrtoint ptr %mr_device to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %mr_device, align 8
  %mr_ibmr = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 2
  %52 = ptrtoint ptr %mr_ibmr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mr_ibmr, align 4
  %54 = ptrtoint ptr %mr_sg19 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mr_sg19, align 4
  %call29 = tail call i32 @ib_map_mr_sg(ptr noundef %53, ptr noundef %55, i32 noundef %call2.i.i, ptr noundef null, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %call2.i.i)
  %cmp30.not = icmp eq i32 %call29, %call2.i.i
  br i1 %cmp30.not, label %if.end33, label %out_mapmr_err

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %iova = getelementptr inbounds %struct.ib_mr, ptr %53, i32 0, i32 4
  %56 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %iova, align 8
  %and34 = and i64 %57, 4294967295
  %conv35 = zext i32 %xid to i64
  %shl = shl nuw i64 %conv35, 32
  %or = or i64 %and34, %shl
  store i64 %or, ptr %iova, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %53, i32 0, i32 3
  %58 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rkey, align 4
  %inc39 = add i32 %59, 1
  %lkey.i = getelementptr inbounds %struct.ib_mr, ptr %53, i32 0, i32 2
  %60 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lkey.i, align 8
  %and.i = and i32 %61, -256
  %conv.i = and i32 %inc39, 255
  %or.i = or i32 %and.i, %conv.i
  store i32 %or.i, ptr %lkey.i, align 8
  %and2.i = and i32 %59, -256
  %or4.i = or i32 %conv.i, %and2.i
  store i32 %or4.i, ptr %rkey, align 4
  %mr40 = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 9, i32 0, i32 1
  %62 = ptrtoint ptr %mr40 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %53, ptr %mr40, align 8
  %63 = load i32, ptr %rkey, align 4
  %key42 = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 9, i32 0, i32 2
  %64 = ptrtoint ptr %key42 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %key42, align 4
  %cond = select i1 %writing, i32 3, i32 4
  %access = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 9, i32 0, i32 3
  %65 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond, ptr %access, align 8
  %66 = load i32, ptr %rkey, align 4
  %mr_handle = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 11
  %67 = ptrtoint ptr %mr_handle to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %mr_handle, align 4
  %length = getelementptr inbounds %struct.ib_mr, ptr %53, i32 0, i32 5
  %68 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %length, align 8
  %conv46 = trunc i64 %69 to i32
  %mr_length = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 12
  %70 = ptrtoint ptr %mr_length to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv46, ptr %mr_length, align 8
  %71 = load i64, ptr %iova, align 8
  %mr_offset48 = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr, i32 0, i32 13
  %72 = ptrtoint ptr %mr_offset48 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %mr_offset48, align 8
  tail call fastcc void @trace_xprtrdma_mr_map(ptr noundef %mr)
  br label %cleanup

out_dmamap_err:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xprtrdma_frwr_sgerr(ptr noundef %mr, i32 noundef %i.1)
  br label %cleanup

out_mapmr_err:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xprtrdma_frwr_maperr(ptr noundef %mr, i32 noundef %call29)
  br label %cleanup

cleanup:                                          ; preds = %out_mapmr_err, %out_dmamap_err, %if.end33
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %out_mapmr_err ], [ %seg.addr.1, %if.end33 ], [ inttoptr (i32 -5 to ptr), %out_dmamap_err ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_mr_map(ptr noundef %mr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_map, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_mr_map, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  %call42 = tail call i32 @__traceiter_xprtrdma_mr_map(ptr noundef null, ptr noundef %mr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_map, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_map, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_mr_map.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_mr_map.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1226, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
define internal fastcc void @trace_xprtrdma_frwr_sgerr(ptr noundef %mr, i32 noundef %sg_nents) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_sgerr, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_frwr_sgerr, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %call42 = tail call i32 @__traceiter_xprtrdma_frwr_sgerr(ptr noundef null, ptr noundef %mr, i32 noundef %sg_nents) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_sgerr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_sgerr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_frwr_sgerr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_frwr_sgerr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1190, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
define internal fastcc void @trace_xprtrdma_frwr_maperr(ptr noundef %mr, i32 noundef %num_mapped) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_maperr, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_frwr_maperr, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %call42 = tail call i32 @__traceiter_xprtrdma_frwr_maperr(ptr noundef null, ptr noundef %mr, i32 noundef %num_mapped) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_maperr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_frwr_maperr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_frwr_maperr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_frwr_maperr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1221, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
define dso_local i32 @frwr_send(ptr noundef %r_xprt, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_wr = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 5
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %rl_registered = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 13
  %2 = ptrtoint ptr %rl_registered to i32
  call void @__asan_load4_noabort(i32 %2)
  %mr.058 = load ptr, ptr %rl_registered, align 4
  %cmp.not59 = icmp eq ptr %mr.058, %rl_registered
  br i1 %cmp.not59, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %mr.062 = phi ptr [ %mr.0, %for.body.for.body_crit_edge ], [ %mr.058, %entry.for.body_crit_edge ]
  %post_wr.061 = phi ptr [ %4, %for.body.for.body_crit_edge ], [ %rl_wr, %entry.for.body_crit_edge ]
  %num_wrs.060 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  tail call fastcc void @trace_xprtrdma_mr_fastreg(ptr noundef %mr.062)
  %mr_cqe = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.062, i32 0, i32 7
  %3 = ptrtoint ptr %mr_cqe to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @frwr_wc_fastreg, ptr %mr_cqe, align 8
  %4 = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.062, i32 0, i32 9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %post_wr.061, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.062, i32 0, i32 9, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mr_cqe, ptr %6, align 8
  %num_sge = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.062, i32 0, i32 9, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.062, i32 0, i32 9, i32 0, i32 0, i32 4
  %9 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %opcode, align 8
  %send_flags = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.062, i32 0, i32 9, i32 0, i32 0, i32 5
  %10 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %send_flags, align 4
  %inc = add i32 %num_wrs.060, 1
  %11 = ptrtoint ptr %mr.062 to i32
  call void @__asan_load4_noabort(i32 %11)
  %mr.0 = load ptr, ptr %mr.062, align 4
  %cmp.not = icmp eq ptr %mr.0, %rl_registered
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num_wrs.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %post_wr.0.lcssa = phi ptr [ %rl_wr, %entry.for.end_crit_edge ], [ %4, %for.body.for.end_crit_edge ]
  %rl_kref = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rl_kref, i32 noundef 4) #8
  %12 = ptrtoint ptr %rl_kref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %rl_kref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp14 = icmp ugt i32 %13, 1
  br i1 %cmp14, label %for.end.if.then_crit_edge, label %lor.lhs.false

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %for.end
  %re_send_count = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %re_send_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %re_send_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_wrs.0.lcssa, i32 %15)
  %cmp15 = icmp ugt i32 %num_wrs.0.lcssa, %15
  br i1 %cmp15, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.end.if.then_crit_edge
  %send_flags16 = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 5, i32 5
  %16 = ptrtoint ptr %send_flags16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %send_flags16, align 4
  %or = or i32 %17, 2
  store i32 %or, ptr %send_flags16, align 4
  %re_send_batch = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %re_send_batch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %re_send_batch, align 4
  %re_send_count17 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %re_send_count17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %re_send_count17, align 4
  %sub = sub i32 %num_wrs.0.lcssa, %21
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %sub)
  %23 = ptrtoint ptr %re_send_count17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %re_send_count17, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %send_flags21 = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 5, i32 5
  %24 = ptrtoint ptr %send_flags21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %send_flags21, align 4
  %and = and i32 %25, -3
  store i32 %and, ptr %send_flags21, align 4
  %26 = ptrtoint ptr %re_send_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %re_send_count, align 4
  %sub23 = sub i32 %27, %num_wrs.0.lcssa
  store i32 %sub23, ptr %re_send_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @trace_xprtrdma_post_send(ptr noundef %req)
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %re_id, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %32 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !93
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %31, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %34, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %36(ptr noundef %31, ptr noundef %post_wr.0.lcssa, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.if.end26_crit_edge, label %if.then25

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xprtrdma_post_send_err(ptr noundef %r_xprt, ptr noundef %req, i32 noundef %call.i)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end.if.end26_crit_edge
  ret i32 %call.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_mr_fastreg(ptr noundef %mr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_fastreg, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_mr_fastreg, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !94
  %call42 = tail call i32 @__traceiter_xprtrdma_mr_fastreg(ptr noundef null, ptr noundef %mr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_fastreg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_fastreg, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_mr_fastreg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_mr_fastreg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1223, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
define internal void @frwr_wc_fastreg(ptr nocapture noundef readonly %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %mr_cid = getelementptr i8, ptr %1, i32 152
  tail call fastcc void @trace_xprtrdma_wc_fastreg(ptr noundef %wc, ptr noundef %mr_cid)
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %2 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_context, align 8
  tail call void @rpcrdma_flush_disconnect(ptr noundef %3, ptr noundef %wc) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_post_send(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_send, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_post_send, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  %call42 = tail call i32 @__traceiter_xprtrdma_post_send(ptr noundef null, ptr noundef %req) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_send, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_post_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_post_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 946, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
define internal fastcc void @trace_xprtrdma_post_send_err(ptr noundef %r_xprt, ptr noundef %req, i32 noundef %rc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_send_err, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_post_send_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !98
  %call42 = tail call i32 @__traceiter_xprtrdma_post_send_err(ptr noundef null, ptr noundef %r_xprt, ptr noundef %req, i32 noundef %rc) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_send_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_send_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_post_send_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_post_send_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 979, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
define dso_local void @frwr_reminv(ptr nocapture noundef readonly %rep, ptr noundef readonly %mrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rr_inv_rkey = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %mr.0.in = phi ptr [ %mrs, %entry ], [ %mr.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %mr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %mr.0 = load ptr, ptr %mr.0.in, align 4
  %cmp.not = icmp eq ptr %mr.0, %mrs
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %mr_handle = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 11
  %1 = ptrtoint ptr %mr_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mr_handle, align 4
  %3 = ptrtoint ptr %rr_inv_rkey to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rr_inv_rkey, align 4
  %cmp1 = icmp eq i32 %2, %4
  br i1 %cmp1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mr.0) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mr.0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %mr.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mr.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %mr.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %mr.0, ptr %mr.0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %mr.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mr.0, ptr %prev.i3.i, align 4
  tail call fastcc void @trace_xprtrdma_mr_reminv(ptr noundef %mr.0)
  %mr_device.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 3
  %13 = ptrtoint ptr %mr_device.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mr_device.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %list_del_init.exit.frwr_mr_unmap.exit.i_crit_edge, label %if.then.i.i

list_del_init.exit.frwr_mr_unmap.exit.i_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_unmap.exit.i

if.then.i.i:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xprtrdma_mr_unmap(ptr noundef %mr.0) #8
  %15 = ptrtoint ptr %mr_device.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mr_device.i.i, align 8
  %mr_sg.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 4
  %17 = ptrtoint ptr %mr_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mr_sg.i.i, align 4
  %mr_nents.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 5
  %19 = ptrtoint ptr %mr_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mr_nents.i.i, align 8
  %mr_dir.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 6
  %21 = ptrtoint ptr %mr_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mr_dir.i.i, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %16, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %24, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef 0) #8
  %25 = ptrtoint ptr %mr_device.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %mr_device.i.i, align 8
  br label %frwr_mr_unmap.exit.i

frwr_mr_unmap.exit.i:                             ; preds = %if.then.i.i, %list_del_init.exit.frwr_mr_unmap.exit.i_crit_edge
  %mr_req.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 1
  %26 = ptrtoint ptr %mr_req.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mr_req.i, align 8
  %rl_free_mrs.i = getelementptr inbounds %struct.rpcrdma_req, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %rl_free_mrs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rl_free_mrs.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mr.0, ptr noundef %rl_free_mrs.i, ptr noundef %29) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %frwr_mr_unmap.exit.i.for.end_crit_edge

frwr_mr_unmap.exit.i.for.end_crit_edge:           ; preds = %frwr_mr_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i.i.i.i:                                   ; preds = %frwr_mr_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mr.0, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %mr.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %mr.0, align 4
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %rl_free_mrs.i, ptr %prev.i3.i, align 4
  %33 = ptrtoint ptr %rl_free_mrs.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %mr.0, ptr %rl_free_mrs.i, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i.i.i, %frwr_mr_unmap.exit.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_mr_reminv(ptr noundef %mr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_reminv, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_mr_reminv, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  %call42 = tail call i32 @__traceiter_xprtrdma_mr_reminv(ptr noundef null, ptr noundef %mr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_reminv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_reminv, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_mr_reminv.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_mr_reminv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1225, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
define dso_local void @frwr_unmap_sync(ptr nocapture noundef %r_xprt, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %first = alloca ptr, align 4
  %bad_wr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first)
  %0 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %first, align 4
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %1 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_ep, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_wr) #8
  %rl_registered = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 13
  %3 = ptrtoint ptr %rl_registered to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %rl_registered, align 4
  %cmp.not.i = icmp eq ptr %4, %rl_registered
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %tobool.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i, label %entry.rpcrdma_mr_pop.exit_crit_edge, label %if.then.i

entry.rpcrdma_mr_pop.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcrdma_mr_pop.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec.select.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %11 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %spec.select.i, ptr %spec.select.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spec.select.i, ptr %prev.i3.i.i, align 4
  br label %rpcrdma_mr_pop.exit

rpcrdma_mr_pop.exit:                              ; preds = %list_del_init.exit.i, %entry.rpcrdma_mr_pop.exit_crit_edge
  %local_inv_needed = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 15
  br label %do.body

do.body:                                          ; preds = %rpcrdma_mr_pop.exit48, %rpcrdma_mr_pop.exit
  %mr.0 = phi ptr [ %spec.select.i, %rpcrdma_mr_pop.exit ], [ %29, %rpcrdma_mr_pop.exit48 ]
  %prev.0 = phi ptr [ %first, %rpcrdma_mr_pop.exit ], [ %15, %rpcrdma_mr_pop.exit48 ]
  tail call fastcc void @trace_xprtrdma_mr_localinv(ptr noundef %mr.0)
  %13 = ptrtoint ptr %local_inv_needed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %local_inv_needed, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %local_inv_needed, align 4
  %15 = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 8
  %mr_cqe = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 7
  %17 = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mr_cqe, ptr %17, align 8
  %sg_list = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 4
  %21 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %opcode, align 8
  %send_flags = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 5
  %22 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %send_flags, align 4
  %mr_handle = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 11
  %23 = ptrtoint ptr %mr_handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mr_handle, align 4
  %ex = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 6
  %25 = ptrtoint ptr %ex to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ex, align 8
  %26 = ptrtoint ptr %mr_cqe to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @frwr_wc_localinv, ptr %mr_cqe, align 4
  %27 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %15, ptr %prev.0, align 4
  %28 = ptrtoint ptr %rl_registered to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %rl_registered, align 4
  %cmp.not.i38 = icmp eq ptr %29, %rl_registered
  %tobool.not.i4049 = icmp eq ptr %29, null
  %tobool.not.i40 = or i1 %cmp.not.i38, %tobool.not.i4049
  br i1 %tobool.not.i40, label %do.end, label %if.then.i42

if.then.i42:                                      ; preds = %do.body
  %call.i.i.i41 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %29) #8
  br i1 %call.i.i.i41, label %if.end.i.i.i45, label %if.then.i42.rpcrdma_mr_pop.exit48_crit_edge

if.then.i42.rpcrdma_mr_pop.exit48_crit_edge:      ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcrdma_mr_pop.exit48

if.end.i.i.i45:                                   ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i43 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i43, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %prev1.i.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i44, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %rpcrdma_mr_pop.exit48

rpcrdma_mr_pop.exit48:                            ; preds = %if.end.i.i.i45, %if.then.i42.rpcrdma_mr_pop.exit48_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i.i46 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i.i46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %29, ptr %prev.i3.i.i46, align 4
  br label %do.body

do.end:                                           ; preds = %do.body
  %38 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %17, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @frwr_wc_localinv_wake, ptr %39, align 4
  %mr_linv_done = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 8
  %41 = ptrtoint ptr %mr_linv_done to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %mr_linv_done, align 4
  %42 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %bad_wr, align 4
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %2, i32 0, i32 1
  %43 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %re_id, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qp, align 4
  %47 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %47)
  %first.0.first.0.first.0. = load ptr, ptr %first, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %46, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %49, i32 0, i32 1, i32 6
  %50 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %51(ptr noundef %46, ptr noundef %first.0.first.0.first.0., ptr noundef nonnull %bad_wr) #8
  %52 = ptrtoint ptr %bad_wr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bad_wr, align 4
  %cmp.not = icmp eq ptr %53, %first.0.first.0.first.0.
  br i1 %cmp.not, label %do.end.if.end_crit_edge, label %if.then

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @wait_for_completion(ptr noundef %mr_linv_done) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xprtrdma_post_linv_err(ptr noundef %req, i32 noundef %call.i)
  call void @rpcrdma_force_disconnect(ptr noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_wr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_mr_localinv(ptr noundef %mr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_localinv, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_mr_localinv, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !102
  %call42 = tail call i32 @__traceiter_xprtrdma_mr_localinv(ptr noundef null, ptr noundef %mr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_localinv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_localinv, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_mr_localinv.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_mr_localinv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1224, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
define internal void @frwr_wc_localinv(ptr nocapture noundef readonly %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %mr_cid = getelementptr i8, ptr %1, i32 152
  tail call fastcc void @trace_xprtrdma_wc_li(ptr noundef %wc, ptr noundef %mr_cid)
  %status.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %entry.frwr_mr_done.exit_crit_edge, !prof !77

entry.frwr_mr_done.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_done.exit

if.then.i:                                        ; preds = %entry
  %mr_device.i.i.i = getelementptr i8, ptr %1, i32 -16
  %4 = ptrtoint ptr %mr_device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mr_device.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.i.frwr_mr_unmap.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.frwr_mr_unmap.exit.i.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_unmap.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xprtrdma_mr_unmap(ptr noundef %add.ptr) #8
  %6 = ptrtoint ptr %mr_device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mr_device.i.i.i, align 8
  %mr_sg.i.i.i = getelementptr i8, ptr %1, i32 -12
  %8 = ptrtoint ptr %mr_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mr_sg.i.i.i, align 4
  %mr_nents.i.i.i = getelementptr i8, ptr %1, i32 -8
  %10 = ptrtoint ptr %mr_nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mr_nents.i.i.i, align 8
  %mr_dir.i.i.i = getelementptr i8, ptr %1, i32 -4
  %12 = ptrtoint ptr %mr_dir.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mr_dir.i.i.i, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %15, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0) #8
  %16 = ptrtoint ptr %mr_device.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %mr_device.i.i.i, align 8
  br label %frwr_mr_unmap.exit.i.i

frwr_mr_unmap.exit.i.i:                           ; preds = %if.then.i.i.i, %if.then.i.frwr_mr_unmap.exit.i.i_crit_edge
  %mr_req.i.i = getelementptr i8, ptr %1, i32 -24
  %17 = ptrtoint ptr %mr_req.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mr_req.i.i, align 8
  %rl_free_mrs.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %rl_free_mrs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rl_free_mrs.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %rl_free_mrs.i.i, ptr noundef %20) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %frwr_mr_unmap.exit.i.i.frwr_mr_done.exit_crit_edge

frwr_mr_unmap.exit.i.i.frwr_mr_done.exit_crit_edge: ; preds = %frwr_mr_unmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_done.exit

if.end.i.i.i.i.i:                                 ; preds = %frwr_mr_unmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %prev1.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %add.ptr, align 4
  %prev3.i.i.i.i.i = getelementptr i8, ptr %1, i32 -28
  %23 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rl_free_mrs.i.i, ptr %prev3.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %rl_free_mrs.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %add.ptr, ptr %rl_free_mrs.i.i, align 4
  br label %frwr_mr_done.exit

frwr_mr_done.exit:                                ; preds = %if.end.i.i.i.i.i, %frwr_mr_unmap.exit.i.i.frwr_mr_done.exit_crit_edge, %entry.frwr_mr_done.exit_crit_edge
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %25 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cq_context, align 8
  tail call void @rpcrdma_flush_disconnect(ptr noundef %26, ptr noundef %wc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frwr_wc_localinv_wake(ptr nocapture noundef readonly %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %mr_cid = getelementptr i8, ptr %1, i32 152
  tail call fastcc void @trace_xprtrdma_wc_li_wake(ptr noundef %wc, ptr noundef %mr_cid)
  %status.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %entry.frwr_mr_done.exit_crit_edge, !prof !77

entry.frwr_mr_done.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_done.exit

if.then.i:                                        ; preds = %entry
  %mr_device.i.i.i = getelementptr i8, ptr %1, i32 -16
  %4 = ptrtoint ptr %mr_device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mr_device.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.i.frwr_mr_unmap.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.frwr_mr_unmap.exit.i.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_unmap.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xprtrdma_mr_unmap(ptr noundef %add.ptr) #8
  %6 = ptrtoint ptr %mr_device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mr_device.i.i.i, align 8
  %mr_sg.i.i.i = getelementptr i8, ptr %1, i32 -12
  %8 = ptrtoint ptr %mr_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mr_sg.i.i.i, align 4
  %mr_nents.i.i.i = getelementptr i8, ptr %1, i32 -8
  %10 = ptrtoint ptr %mr_nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mr_nents.i.i.i, align 8
  %mr_dir.i.i.i = getelementptr i8, ptr %1, i32 -4
  %12 = ptrtoint ptr %mr_dir.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mr_dir.i.i.i, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %15, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0) #8
  %16 = ptrtoint ptr %mr_device.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %mr_device.i.i.i, align 8
  br label %frwr_mr_unmap.exit.i.i

frwr_mr_unmap.exit.i.i:                           ; preds = %if.then.i.i.i, %if.then.i.frwr_mr_unmap.exit.i.i_crit_edge
  %mr_req.i.i = getelementptr i8, ptr %1, i32 -24
  %17 = ptrtoint ptr %mr_req.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mr_req.i.i, align 8
  %rl_free_mrs.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %rl_free_mrs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rl_free_mrs.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %rl_free_mrs.i.i, ptr noundef %20) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %frwr_mr_unmap.exit.i.i.frwr_mr_done.exit_crit_edge

frwr_mr_unmap.exit.i.i.frwr_mr_done.exit_crit_edge: ; preds = %frwr_mr_unmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_done.exit

if.end.i.i.i.i.i:                                 ; preds = %frwr_mr_unmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %prev1.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %add.ptr, align 4
  %prev3.i.i.i.i.i = getelementptr i8, ptr %1, i32 -28
  %23 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rl_free_mrs.i.i, ptr %prev3.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %rl_free_mrs.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %add.ptr, ptr %rl_free_mrs.i.i, align 4
  br label %frwr_mr_done.exit

frwr_mr_done.exit:                                ; preds = %if.end.i.i.i.i.i, %frwr_mr_unmap.exit.i.i.frwr_mr_done.exit_crit_edge, %entry.frwr_mr_done.exit_crit_edge
  %mr_linv_done = getelementptr i8, ptr %1, i32 4
  tail call void @complete(ptr noundef %mr_linv_done) #8
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %25 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cq_context, align 8
  tail call void @rpcrdma_flush_disconnect(ptr noundef %26, ptr noundef %wc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_post_linv_err(ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_linv_err, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_post_linv_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !104
  %call42 = tail call i32 @__traceiter_xprtrdma_post_linv_err(ptr noundef null, ptr noundef %req, i32 noundef %status) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_linv_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_linv_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_post_linv_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_post_linv_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1090, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
declare dso_local void @rpcrdma_force_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @frwr_unmap_async(ptr nocapture noundef %r_xprt, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %first = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first)
  %0 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %first, align 4
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %1 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_ep, align 8
  %rl_registered = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 13
  %3 = ptrtoint ptr %rl_registered to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %rl_registered, align 4
  %cmp.not.i = icmp eq ptr %4, %rl_registered
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %tobool.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i, label %entry.rpcrdma_mr_pop.exit_crit_edge, label %if.then.i

entry.rpcrdma_mr_pop.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcrdma_mr_pop.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec.select.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %11 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %spec.select.i, ptr %spec.select.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spec.select.i, ptr %prev.i3.i.i, align 4
  br label %rpcrdma_mr_pop.exit

rpcrdma_mr_pop.exit:                              ; preds = %list_del_init.exit.i, %entry.rpcrdma_mr_pop.exit_crit_edge
  %local_inv_needed = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 15
  br label %do.body

do.body:                                          ; preds = %rpcrdma_mr_pop.exit41, %rpcrdma_mr_pop.exit
  %prev.0 = phi ptr [ %first, %rpcrdma_mr_pop.exit ], [ %15, %rpcrdma_mr_pop.exit41 ]
  %mr.0 = phi ptr [ %spec.select.i, %rpcrdma_mr_pop.exit ], [ %29, %rpcrdma_mr_pop.exit41 ]
  tail call fastcc void @trace_xprtrdma_mr_localinv(ptr noundef %mr.0)
  %13 = ptrtoint ptr %local_inv_needed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %local_inv_needed, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %local_inv_needed, align 4
  %15 = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 8
  %mr_cqe = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 7
  %17 = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mr_cqe, ptr %17, align 8
  %sg_list = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 4
  %21 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %opcode, align 8
  %send_flags = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 5
  %22 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %send_flags, align 4
  %mr_handle = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 11
  %23 = ptrtoint ptr %mr_handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mr_handle, align 4
  %ex = getelementptr inbounds %struct.rpcrdma_mr, ptr %mr.0, i32 0, i32 9, i32 0, i32 0, i32 6
  %25 = ptrtoint ptr %ex to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ex, align 8
  %26 = ptrtoint ptr %mr_cqe to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @frwr_wc_localinv, ptr %mr_cqe, align 4
  %27 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %15, ptr %prev.0, align 4
  %28 = ptrtoint ptr %rl_registered to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %rl_registered, align 4
  %cmp.not.i31 = icmp eq ptr %29, %rl_registered
  %tobool.not.i3342 = icmp eq ptr %29, null
  %tobool.not.i33 = or i1 %cmp.not.i31, %tobool.not.i3342
  br i1 %tobool.not.i33, label %do.end, label %if.then.i35

if.then.i35:                                      ; preds = %do.body
  %call.i.i.i34 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %29) #8
  br i1 %call.i.i.i34, label %if.end.i.i.i38, label %if.then.i35.rpcrdma_mr_pop.exit41_crit_edge

if.then.i35.rpcrdma_mr_pop.exit41_crit_edge:      ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcrdma_mr_pop.exit41

if.end.i.i.i38:                                   ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i36, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %prev1.i.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i37, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %rpcrdma_mr_pop.exit41

rpcrdma_mr_pop.exit41:                            ; preds = %if.end.i.i.i38, %if.then.i35.rpcrdma_mr_pop.exit41_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i.i39 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i.i39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %29, ptr %prev.i3.i.i39, align 4
  br label %do.body

do.end:                                           ; preds = %do.body
  %38 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %17, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @frwr_wc_localinv_done, ptr %39, align 4
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %2, i32 0, i32 1
  %41 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %re_id, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %qp, align 4
  %45 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %45)
  %first.0.first.0.first.0. = load ptr, ptr %first, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %46 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !93
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %50(ptr noundef %44, ptr noundef %first.0.first.0.first.0., ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xprtrdma_post_linv_err(ptr noundef %req, i32 noundef %call.i)
  %rl_reply = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 2
  %51 = ptrtoint ptr %rl_reply to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rl_reply, align 8
  call void @rpcrdma_unpin_rqst(ptr noundef %52) #8
  call void @rpcrdma_force_disconnect(ptr noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frwr_wc_localinv_done(ptr nocapture noundef readonly %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %mr_cid = getelementptr i8, ptr %1, i32 152
  tail call fastcc void @trace_xprtrdma_wc_li_done(ptr noundef %wc, ptr noundef %mr_cid)
  %mr_req = getelementptr i8, ptr %1, i32 -24
  %2 = ptrtoint ptr %mr_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mr_req, align 8
  %rl_reply = getelementptr inbounds %struct.rpcrdma_req, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rl_reply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rl_reply, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rpcrdma_unpin_rqst(ptr noundef nonnull %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %8 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cq_context, align 8
  tail call void @rpcrdma_flush_disconnect(ptr noundef %9, ptr noundef %wc) #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %mr_device.i.i = getelementptr i8, ptr %1, i32 -16
  %10 = ptrtoint ptr %mr_device.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mr_device.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end5.frwr_mr_unmap.exit.i_crit_edge, label %if.then.i.i

if.end5.frwr_mr_unmap.exit.i_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_unmap.exit.i

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xprtrdma_mr_unmap(ptr noundef %add.ptr) #8
  %12 = ptrtoint ptr %mr_device.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mr_device.i.i, align 8
  %mr_sg.i.i = getelementptr i8, ptr %1, i32 -12
  %14 = ptrtoint ptr %mr_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mr_sg.i.i, align 4
  %mr_nents.i.i = getelementptr i8, ptr %1, i32 -8
  %16 = ptrtoint ptr %mr_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mr_nents.i.i, align 8
  %mr_dir.i.i = getelementptr i8, ptr %1, i32 -4
  %18 = ptrtoint ptr %mr_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mr_dir.i.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %21, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 0) #8
  %22 = ptrtoint ptr %mr_device.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %mr_device.i.i, align 8
  br label %frwr_mr_unmap.exit.i

frwr_mr_unmap.exit.i:                             ; preds = %if.then.i.i, %if.end5.frwr_mr_unmap.exit.i_crit_edge
  %23 = ptrtoint ptr %mr_req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mr_req, align 8
  %rl_free_mrs.i = getelementptr inbounds %struct.rpcrdma_req, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %rl_free_mrs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rl_free_mrs.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %rl_free_mrs.i, ptr noundef %26) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %frwr_mr_unmap.exit.i.frwr_mr_put.exit_crit_edge

frwr_mr_unmap.exit.i.frwr_mr_put.exit_crit_edge:  ; preds = %frwr_mr_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %frwr_mr_put.exit

if.end.i.i.i.i:                                   ; preds = %frwr_mr_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %add.ptr, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %1, i32 -28
  %29 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rl_free_mrs.i, ptr %prev3.i.i.i.i, align 4
  %30 = ptrtoint ptr %rl_free_mrs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %add.ptr, ptr %rl_free_mrs.i, align 4
  br label %frwr_mr_put.exit

frwr_mr_put.exit:                                 ; preds = %if.end.i.i.i.i, %frwr_mr_unmap.exit.i.frwr_mr_put.exit_crit_edge
  tail call void @rpcrdma_complete_rqst(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %frwr_mr_put.exit, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_unpin_rqst(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @frwr_wp_create(ptr noundef %r_xprt) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %seg = alloca %struct.rpcrdma_mr_seg, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %seg) #8
  %call = tail call ptr @rpcrdma_mr_get(ptr noundef %r_xprt) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.rpcrdma_mr_seg, ptr %seg, i32 0, i32 1
  %mr_req = getelementptr inbounds %struct.rpcrdma_mr, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %mr_req to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mr_req, align 8
  %re_write_pad_mr = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %re_write_pad_mr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %re_write_pad_mr, align 4
  %6 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %seg, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %re_write_pad = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %re_write_pad to i32
  %sub = add i32 %8, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %7, i32 %shr
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %3, align 4
  %and = and i32 %8, 4095
  %conv = zext i32 %and to i64
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %2, align 8
  %call4 = call ptr @frwr_map(ptr noundef %r_xprt, ptr noundef nonnull %seg, i32 noundef 1, i1 noundef zeroext true, i32 noundef 0, ptr noundef nonnull %call)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xprtrdma_mr_fastreg(ptr noundef nonnull %call)
  %mr_cqe = getelementptr inbounds %struct.rpcrdma_mr, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %mr_cqe to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @frwr_wc_fastreg, ptr %mr_cqe, align 8
  %12 = getelementptr inbounds %struct.rpcrdma_mr, ptr %call, i32 0, i32 9
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %12, align 8
  %14 = getelementptr inbounds %struct.rpcrdma_mr, ptr %call, i32 0, i32 9, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mr_cqe, ptr %14, align 8
  %num_sge = getelementptr inbounds %struct.rpcrdma_mr, ptr %call, i32 0, i32 9, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.rpcrdma_mr, ptr %call, i32 0, i32 9, i32 0, i32 0, i32 4
  %17 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %opcode, align 8
  %send_flags = getelementptr inbounds %struct.rpcrdma_mr, ptr %call, i32 0, i32 9, i32 0, i32 0, i32 5
  %18 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %send_flags, align 4
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %re_id, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %23 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !93
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %22, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %27(ptr noundef %22, ptr noundef %12, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end7 ], [ -11, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %seg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpcrdma_mr_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_mr_unmap(ptr noundef %mr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_unmap, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_mr_unmap, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !107
  %call42 = tail call i32 @__traceiter_xprtrdma_mr_unmap(ptr noundef null, ptr noundef %mr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_unmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mr_unmap, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_mr_unmap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_mr_unmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1228, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_mr_unmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dereg_mr_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_frwr_dereg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_frwr_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_mr_map(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_frwr_sgerr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_frwr_maperr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_mr_fastreg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_wc_fastreg(ptr noundef %wc, ptr noundef %cid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_fastreg, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_wc_fastreg, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !109
  %call42 = tail call i32 @__traceiter_xprtrdma_wc_fastreg(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_fastreg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_fastreg, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_wc_fastreg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_wc_fastreg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1099, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
declare dso_local void @rpcrdma_flush_disconnect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_wc_fastreg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_post_send(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_post_send_err(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_mr_reminv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_mr_localinv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_wc_li(ptr noundef %wc, ptr noundef %cid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_li, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_wc_li, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  %call42 = tail call i32 @__traceiter_xprtrdma_wc_li(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_li, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_li, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_wc_li.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_wc_li.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1100, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
declare dso_local i32 @__traceiter_xprtrdma_wc_li(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_wc_li_wake(ptr noundef %wc, ptr noundef %cid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_li_wake, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_wc_li_wake, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %call42 = tail call i32 @__traceiter_xprtrdma_wc_li_wake(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_li_wake, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_li_wake, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_wc_li_wake.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_wc_li_wake.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1101, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_wc_li_wake(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_post_linv_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_wc_li_done(ptr noundef %wc, ptr noundef %cid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_li_done, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_wc_li_done, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %call42 = tail call i32 @__traceiter_xprtrdma_wc_li_done(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_li_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_li_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_wc_li_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_wc_li_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1102, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #8
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
declare dso_local void @rpcrdma_complete_rqst(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_wc_li_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/xprtrdma/frwr_ops.c", i32 183, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @frwr_query_device._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @frwr_query_device._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/xprtrdma/frwr_ops.c", i32 191, i32 3}
!8 = !{ptr @frwr_query_device._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @frwr_query_device._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/trace/events/rpcrdma.h", i32 1228, i32 1}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/trace/events/rpcrdma.h", i32 1127, i32 1}
!20 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!21 = !{ptr @init_completion.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../include/linux/completion.h", i32 87, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/trace/events/rpcrdma.h", i32 1104, i32 1}
!26 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/trace/events/rpcrdma.h", i32 1226, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/trace/events/rpcrdma.h", i32 1163, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/trace/events/rpcrdma.h", i32 1192, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/trace/events/rpcrdma.h", i32 1223, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/trace/events/rpcrdma.h", i32 1099, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/trace/events/rpcrdma.h", i32 911, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/trace/events/rpcrdma.h", i32 948, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/trace/events/rpcrdma.h", i32 1225, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/rpcrdma.h", i32 1224, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/trace/events/rpcrdma.h", i32 1100, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/trace/events/rpcrdma.h", i32 1101, i32 1}
!59 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/trace/events/rpcrdma.h", i32 1065, i32 1}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/trace/events/rpcrdma.h", i32 1102, i32 1}
!65 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2148762373, i64 2148762378, i64 2148762391, i64 2148762435, i64 2148762469, i64 2148762490}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2158907198}
!79 = !{i64 2158907411}
!80 = !{i64 2149352195}
!81 = !{i64 2149353231}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2158886434}
!84 = !{i64 2158886647}
!85 = !{i64 2153405444, i64 2153405936, i64 2153405481, i64 2153405537, i64 2153405571, i64 2153405595, i64 2153405636, i64 2153405657, i64 2153405685, i64 2153405719}
!86 = !{i64 2153407054, i64 2153407546, i64 2153407091, i64 2153407147, i64 2153407181, i64 2153407205, i64 2153407246, i64 2153407267, i64 2153407295, i64 2153407329}
!87 = !{i64 2159011719}
!88 = !{i64 2159011916}
!89 = !{i64 2158924039}
!90 = !{i64 2158924264}
!91 = !{i64 2158941024}
!92 = !{i64 2158941255}
!93 = !{!"auto-init"}
!94 = !{i64 2158957862}
!95 = !{i64 2158958067}
!96 = !{i64 2158668675}
!97 = !{i64 2158668880}
!98 = !{i64 2158686022}
!99 = !{i64 2158686259}
!100 = !{i64 2158995281}
!101 = !{i64 2158995484}
!102 = !{i64 2158978615}
!103 = !{i64 2158978822}
!104 = !{i64 2158758248}
!105 = !{i64 2158758477}
!106 = !{i64 2160208630}
!107 = !{i64 2159032144}
!108 = !{i64 2159032345}
!109 = !{i64 2158814132}
!110 = !{i64 2158814347}
!111 = !{i64 2158835313}
!112 = !{i64 2158835518}
!113 = !{i64 2158852358}
!114 = !{i64 2158852573}
!115 = !{i64 2158869673}
!116 = !{i64 2158869888}
