; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/verbs.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/verbs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.rpcrdma_xprt = type { %struct.rpc_xprt, ptr, %struct.rpcrdma_buffer, %struct.delayed_work, %struct.rpc_timeout, %struct.rpcrdma_stats }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.180, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.__kernel_sockaddr_storage = type { %union.anon.173 }
%union.anon.173 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.anon.180 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rpcrdma_buffer = type { %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.llist_head, i32, i32, i32, i32, %struct.work_struct }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpcrdma_stats = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.139, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.139 = type { %struct.work_struct }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.rpcrdma_sendctx = type { %struct.ib_cqe, %struct.rpc_rdma_cid, ptr, i32, [0 x %struct.ib_sge] }
%struct.ib_cqe = type { ptr }
%struct.rpc_rdma_cid = type { i32, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rpcrdma_rep = type { %struct.ib_cqe, %struct.rpc_rdma_cid, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, %struct.xdr_buf, %struct.xdr_stream, %struct.llist_node, %struct.ib_recv_wr, %struct.list_head }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.llist_node = type { ptr }
%struct.ib_recv_wr = type { ptr, %union.anon.161, ptr, i32 }
%union.anon.161 = type { i64 }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.rpcrdma_mr = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.ib_cqe, %struct.completion, %union.anon.182, ptr, i32, i32, i64, %struct.list_head, %struct.rpc_rdma_cid }
%union.anon.182 = type { %struct.ib_reg_wr }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rpcrdma_regbuf = type { %struct.ib_sge, ptr, i32, ptr }
%struct.rpcrdma_req = type { %struct.list_head, %struct.rpc_rqst, ptr, %struct.xdr_stream, %struct.xdr_buf, %struct.ib_send_wr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.kref, %struct.list_head, %struct.list_head, [260 x %struct.rpcrdma_mr_seg] }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.181, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.181 = type { %struct.rb_node }
%struct.rpcrdma_mr_seg = type { i32, ptr, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.rdma_cm_event = type { i32, i32, %union.anon.172, %struct.rdma_ucm_ece }
%union.anon.172 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.rdma_ucm_ece = type { i32, i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/sunrpc/xprtrdma/verbs.c\00", [36 x i8] zeroinitializer }, align 32
@xprtiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@rpcrdma_buffer_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&buf->rb_lock\00", [18 x i8] zeroinitializer }, align 32
@rpcrdma_buffer_create.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&buf->rb_refresh_worker)\00", [53 x i8] zeroinitializer }, align 32
@xprt_rdma_max_inline_write = external dso_local local_unnamed_addr global i32, align 4
@xprt_rdma_max_inline_read = external dso_local local_unnamed_addr global i32, align 4
@rpcrdma_ep_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ep->re_connect_wait\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rpcrdma\00", [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rpcrdma_cm_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016rpcrdma: removing device %s for %pISpc\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rpcrdma_cm_event_handler\00", [39 x i8] zeroinitializer }, align 32
@rpcrdma_cm_event_handler._entry_ptr = internal global ptr @rpcrdma_cm_event_handler._entry, section ".printk_index", align 4
@__tracepoint_xprtrdma_inline_thresh = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/rpcrdma.h\00", [33 x i8] zeroinitializer }, align 32
@trace_xprtrdma_inline_thresh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xprtrdma_connect = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_connect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_disconnect = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_disconnect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_xprtrdma_wc_send = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_wc_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_createmrs = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_createmrs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xprtrdma_dma_maperr = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_dma_maperr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_wc_receive = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_wc_receive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_post_recv = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_post_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_post_recvs_err = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_post_recvs_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_post_recvs = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_post_recvs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 513, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1054, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1057, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 409, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 461, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 87, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private constant [31 x i8] c"../net/sunrpc/xprtrdma/verbs.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 246, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [34 x i8] c"../include/trace/events/rpcrdma.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 634, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 108, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 3498, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 326, i32 6 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @rpcrdma_cm_event_handler._entry, ptr @rpcrdma_cm_event_handler._entry_ptr, ptr @.str, ptr @rpcrdma_buffer_create.__key, ptr @.str.1, ptr @rpcrdma_buffer_create.__key.2, ptr @.str.3, ptr @rpcrdma_ep_create.__key, ptr @.str.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcrdma_buffer_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcrdma_buffer_create.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcrdma_ep_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcrdma_cm_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_force_disconnect(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %re_force_disconnect = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %re_force_disconnect, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %re_force_disconnect, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %re_force_disconnect, ptr %re_force_disconnect, i32 1, i32 1, ptr elementtype(i32) %re_force_disconnect) #11, !srcloc !75
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  %re_xprt = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 18
  %1 = ptrtoint ptr %re_xprt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %re_xprt, align 4
  tail call void @xprt_force_disconnect(ptr noundef %2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_force_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_flush_disconnect(ptr nocapture noundef readonly %r_xprt, ptr nocapture noundef readonly %wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %2 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ep, align 8
  %re_force_disconnect.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %3, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %re_force_disconnect.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %re_force_disconnect.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %re_force_disconnect.i, ptr %re_force_disconnect.i, i32 1, i32 1, ptr elementtype(i32) %re_force_disconnect.i) #11, !srcloc !75
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.not.i.i.i.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  %re_xprt.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %3, i32 0, i32 18
  %5 = ptrtoint ptr %re_xprt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %re_xprt.i, align 4
  tail call void @xprt_force_disconnect(ptr noundef %6) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcrdma_xprt_connect(ptr noundef %r_xprt) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 296) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup39_crit_edge, label %if.end.i

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end.i:                                         ; preds = %entry
  %re_xprt.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 18
  %1 = ptrtoint ptr %re_xprt.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %r_xprt, ptr %re_xprt.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %re_done.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %re_done.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %re_done.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #11
  %xprt_net.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 49
  %4 = ptrtoint ptr %xprt_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xprt_net.i.i, align 8
  %call1.i.i = tail call ptr @__rdma_create_kernel_id(ptr noundef %5, ptr noundef nonnull @rpcrdma_cm_event_handler, ptr noundef nonnull %call7.i.i.i, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.5) #11
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.rpcrdma_create_id.exit.i_crit_edge, label %if.end.i.i

if.end.i.rpcrdma_create_id.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_create_id.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %re_async_rc.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 12
  %6 = ptrtoint ptr %re_async_rc.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -110, ptr %re_async_rc.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 4
  %call3.i.i = tail call i32 @rdma_resolve_addr(ptr noundef %call1.i.i, ptr noundef null, ptr noundef %addr.i.i, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.end.i.i.out.i.i_crit_edge

if.end.i.i.out.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %re_done.i.i, i32 noundef 501) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %if.end5.i.i.out.i.i_crit_edge, label %if.end9.i.i

if.end5.i.i.out.i.i_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %7 = ptrtoint ptr %re_async_rc.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %re_async_rc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end9.i.i.out.i.i_crit_edge

if.end9.i.i.out.i.i_crit_edge:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %9 = ptrtoint ptr %re_async_rc.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -110, ptr %re_async_rc.i.i, align 4
  %call15.i.i = tail call i32 @rdma_resolve_route(ptr noundef %call1.i.i, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end13.i.i.out.i.i_crit_edge

if.end13.i.i.out.i.i_crit_edge:                   ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end18.i.i:                                     ; preds = %if.end13.i.i
  %call20.i.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %re_done.i.i, i32 noundef 501) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp21.i.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i.i, label %if.end18.i.i.out.i.i_crit_edge, label %if.end23.i.i

if.end18.i.i.out.i.i_crit_edge:                   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end23.i.i:                                     ; preds = %if.end18.i.i
  %10 = ptrtoint ptr %re_async_rc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %re_async_rc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool25.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool25.not.i.i, label %if.end23.i.i.rpcrdma_create_id.exit.i_crit_edge, label %if.end23.i.i.out.i.i_crit_edge

if.end23.i.i.out.i.i_crit_edge:                   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end23.i.i.rpcrdma_create_id.exit.i_crit_edge:  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_create_id.exit.i

out.i.i:                                          ; preds = %if.end23.i.i.out.i.i_crit_edge, %if.end18.i.i.out.i.i_crit_edge, %if.end13.i.i.out.i.i_crit_edge, %if.end9.i.i.out.i.i_crit_edge, %if.end5.i.i.out.i.i_crit_edge, %if.end.i.i.out.i.i_crit_edge
  %rc.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i.out.i.i_crit_edge ], [ %call7.i.i, %if.end5.i.i.out.i.i_crit_edge ], [ %8, %if.end9.i.i.out.i.i_crit_edge ], [ %call15.i.i, %if.end13.i.i.out.i.i_crit_edge ], [ %call20.i.i, %if.end18.i.i.out.i.i_crit_edge ], [ %11, %if.end23.i.i.out.i.i_crit_edge ]
  tail call void @rdma_destroy_id(ptr noundef %call1.i.i) #11
  %12 = inttoptr i32 %rc.0.i.i to ptr
  br label %rpcrdma_create_id.exit.i

rpcrdma_create_id.exit.i:                         ; preds = %out.i.i, %if.end23.i.i.rpcrdma_create_id.exit.i_crit_edge, %if.end.i.rpcrdma_create_id.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %out.i.i ], [ %call1.i.i, %if.end.i.rpcrdma_create_id.exit.i_crit_edge ], [ %call1.i.i, %if.end23.i.i.rpcrdma_create_id.exit.i_crit_edge ]
  %cmp.i155.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %rpcrdma_create_id.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %13 = ptrtoint ptr %retval.0.i.i to i32
  br label %rpcrdma_ep_create.exit

if.end5.i:                                        ; preds = %rpcrdma_create_id.exit.i
  tail call void @__module_get(ptr noundef null) #11
  %14 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %retval.0.i.i, align 4
  %re_id.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %re_id.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i.i, ptr %re_id.i, align 4
  %17 = ptrtoint ptr %re_done.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %re_done.i.i, align 4
  %max_reqs.i = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 15
  %18 = ptrtoint ptr %max_reqs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_reqs.i, align 4
  %re_max_requests.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 22
  %20 = ptrtoint ptr %re_max_requests.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %re_max_requests.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprt_rdma_max_inline_write to i32))
  %21 = load i32, ptr @xprt_rdma_max_inline_write, align 4
  %re_inline_send.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 23
  %22 = ptrtoint ptr %re_inline_send.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %re_inline_send.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprt_rdma_max_inline_read to i32))
  %23 = load i32, ptr @xprt_rdma_max_inline_read, align 4
  %re_inline_recv.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 24
  %24 = ptrtoint ptr %re_inline_recv.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %re_inline_recv.i, align 4
  %call8.i = tail call i32 @frwr_query_device(ptr noundef nonnull %call7.i.i.i, ptr noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end5.i.out_destroy.i_crit_edge

if.end5.i.out_destroy.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_destroy.i

if.end11.i:                                       ; preds = %if.end5.i
  %25 = ptrtoint ptr %re_max_requests.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %re_max_requests.i, align 4
  %rb_max_requests.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 11
  %27 = ptrtoint ptr %rb_max_requests.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rb_max_requests.i, align 4
  %re_attr.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 16
  %srq.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 16, i32 4
  %28 = ptrtoint ptr %srq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %srq.i, align 4
  %cap.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 16, i32 6
  %max_inline_data.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 16, i32 6, i32 4
  %29 = ptrtoint ptr %max_inline_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %max_inline_data.i, align 4
  %sq_sig_type.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 16, i32 7
  %30 = ptrtoint ptr %sq_sig_type.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %sq_sig_type.i, align 4
  %qp_type.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 16, i32 8
  %31 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %qp_type.i, align 8
  %port_num.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 16, i32 10
  %32 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %port_num.i, align 8
  %shr.i = lshr i32 %26, 3
  %re_send_batch.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %re_send_batch.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr.i, ptr %re_send_batch.i, align 8
  %re_send_count.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %re_send_count.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr.i, ptr %re_send_count.i, align 4
  %re_connect_wait.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %re_connect_wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @rpcrdma_ep_create.__key) #11
  %35 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cap.i, align 4
  %call.i.i = tail call ptr @__ib_alloc_cq_any(ptr noundef %15, ptr noundef %r_xprt, i32 noundef %36, i32 noundef 1, ptr noundef nonnull @.str.5) #11
  %send_cq.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 16, i32 2
  %37 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %send_cq.i, align 4
  %cmp.i156.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156.i, label %if.then26.i, label %if.end32.i

if.then26.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %call.i.i to i32
  %39 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %send_cq.i, align 4
  br label %out_destroy.i

if.end32.i:                                       ; preds = %if.end11.i
  %max_recv_wr.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 16, i32 6, i32 1
  %40 = ptrtoint ptr %max_recv_wr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_recv_wr.i, align 8
  %call.i157.i = tail call ptr @__ib_alloc_cq_any(ptr noundef %15, ptr noundef %r_xprt, i32 noundef %41, i32 noundef 1, ptr noundef nonnull @.str.5) #11
  %recv_cq.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 16, i32 3
  %42 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i157.i, ptr %recv_cq.i, align 8
  %cmp.i158.i = icmp ugt ptr %call.i157.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158.i, label %if.then40.i, label %if.end46.i

if.then40.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %call.i157.i to i32
  %44 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %recv_cq.i, align 8
  br label %out_destroy.i

if.end46.i:                                       ; preds = %if.end32.i
  %re_remote_cma.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 20
  %re_cm_private.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 19
  %45 = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 20, i32 1
  %46 = call ptr @memset(ptr %45, i32 0, i32 20)
  %47 = ptrtoint ptr %re_cm_private.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -156561896, ptr %re_cm_private.i, align 4
  %cp_version.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 19, i32 1
  %48 = ptrtoint ptr %cp_version.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %cp_version.i, align 8
  %cp_flags.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 19, i32 2
  %49 = ptrtoint ptr %cp_flags.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cp_flags.i, align 1
  %51 = or i8 %50, 1
  store i8 %51, ptr %cp_flags.i, align 1
  %52 = ptrtoint ptr %re_inline_send.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %re_inline_send.i, align 8
  %shr.i.i = lshr i32 %53, 10
  %54 = trunc i32 %shr.i.i to i8
  %conv.i.i = add i8 %54, -1
  %cp_send_size.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 19, i32 3
  %55 = ptrtoint ptr %cp_send_size.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i.i, ptr %cp_send_size.i, align 2
  %56 = ptrtoint ptr %re_inline_recv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %re_inline_recv.i, align 4
  %shr.i159.i = lshr i32 %57, 10
  %58 = trunc i32 %shr.i159.i to i8
  %conv.i160.i = add i8 %58, -1
  %cp_recv_size.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 19, i32 4
  %59 = ptrtoint ptr %cp_recv_size.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i160.i, ptr %cp_recv_size.i, align 1
  %60 = ptrtoint ptr %re_remote_cma.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %re_cm_private.i, ptr %re_remote_cma.i, align 4
  %61 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 8, ptr %45, align 8
  %max_qp_rd_atom.i = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 22, i32 17
  %62 = ptrtoint ptr %max_qp_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_qp_rd_atom.i, align 4
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 255) #11
  %65 = trunc i32 %64 to i8
  %responder_resources.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 20, i32 2
  %66 = ptrtoint ptr %responder_resources.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %responder_resources.i, align 1
  %retry_count.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 20, i32 5
  %67 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 6, ptr %retry_count.i, align 4
  %flow_control.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 20, i32 4
  %68 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %flow_control.i, align 1
  %rnr_retry_count.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 20, i32 6
  %69 = ptrtoint ptr %rnr_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %rnr_retry_count.i, align 1
  %call61.i = tail call ptr @__ib_alloc_pd(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @.str.5) #11
  %re_pd.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %call7.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %re_pd.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call61.i, ptr %re_pd.i, align 8
  %cmp.i161.i = icmp ugt ptr %call61.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161.i, label %if.then64.i, label %if.end68.i

if.then64.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %call61.i to i32
  %72 = ptrtoint ptr %re_pd.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %re_pd.i, align 8
  br label %out_destroy.i

if.end68.i:                                       ; preds = %if.end46.i
  %call71.i = tail call i32 @rdma_create_qp(ptr noundef %retval.0.i.i, ptr noundef %call61.i, ptr noundef %re_attr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %rpcrdma_ep_create.exit.thread, label %if.end68.i.out_destroy.i_crit_edge

if.end68.i.out_destroy.i_crit_edge:               ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_destroy.i

rpcrdma_ep_create.exit.thread:                    ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_ep.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %73 = ptrtoint ptr %rx_ep.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i.i, ptr %rx_ep.i, align 8
  br label %if.end

out_destroy.i:                                    ; preds = %if.end68.i.out_destroy.i_crit_edge, %if.then64.i, %if.then40.i, %if.then26.i, %if.end5.i.out_destroy.i_crit_edge
  %rc.0.i = phi i32 [ %call8.i, %if.end5.i.out_destroy.i_crit_edge ], [ %38, %if.then26.i ], [ %43, %if.then40.i ], [ %71, %if.then64.i ], [ %call71.i, %if.end68.i.out_destroy.i_crit_edge ]
  %call75.i = tail call fastcc i32 @rpcrdma_ep_put(ptr noundef nonnull %call7.i.i.i) #11
  tail call void @rdma_destroy_id(ptr noundef %retval.0.i.i) #11
  br label %rpcrdma_ep_create.exit

rpcrdma_ep_create.exit:                           ; preds = %out_destroy.i, %if.then3.i
  %retval.0.i = phi i32 [ %13, %if.then3.i ], [ %rc.0.i, %out_destroy.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %rpcrdma_ep_create.exit.if.end_crit_edge, label %rpcrdma_ep_create.exit.cleanup39_crit_edge

rpcrdma_ep_create.exit.cleanup39_crit_edge:       ; preds = %rpcrdma_ep_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

rpcrdma_ep_create.exit.if.end_crit_edge:          ; preds = %rpcrdma_ep_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %rpcrdma_ep_create.exit.if.end_crit_edge, %rpcrdma_ep_create.exit.thread
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %74 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx_ep, align 8
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #11
  tail call void @rpcrdma_reset_cwnd(ptr noundef %r_xprt) #11
  tail call fastcc void @rpcrdma_ep_get(ptr noundef %75)
  tail call void @rpcrdma_post_recvs(ptr noundef %r_xprt, i32 noundef 1, i1 noundef zeroext true)
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %re_id, align 4
  %re_remote_cma = getelementptr inbounds %struct.rpcrdma_ep, ptr %75, i32 0, i32 20
  %call1 = tail call i32 @rdma_connect(ptr noundef %77, ptr noundef %re_remote_cma) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end4:                                          ; preds = %if.end
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 24
  %78 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reestablish_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %79)
  %cmp = icmp ult i32 %79, 500
  br i1 %cmp, label %if.then5, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 500, ptr %reestablish_timeout, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end4.if.end7_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 514) #11
  %re_connect_status = getelementptr inbounds %struct.rpcrdma_ep, ptr %75, i32 0, i32 13
  %81 = ptrtoint ptr %re_connect_status to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %re_connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp11.not = icmp eq i32 %82, 0
  br i1 %cmp11.not, label %if.then12, label %if.end7.if.end23_crit_edge

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then12:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %83 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %re_connect_wait = getelementptr inbounds %struct.rpcrdma_ep, ptr %75, i32 0, i32 17
  %call1494 = call i32 @prepare_to_wait_event(ptr noundef %re_connect_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %84 = ptrtoint ptr %re_connect_status to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %re_connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp16.not95 = icmp eq i32 %85, 0
  br i1 %cmp16.not95, label %if.then12.if.end18_crit_edge, label %if.then12.for.end_crit_edge

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  br label %if.end18

if.end18:                                         ; preds = %cleanup.if.end18_crit_edge, %if.then12.if.end18_crit_edge
  %call1496 = phi i32 [ %call14, %cleanup.if.end18_crit_edge ], [ %call1494, %if.then12.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1496)
  %tobool19.not = icmp eq i32 %call1496, 0
  br i1 %tobool19.not, label %cleanup, label %if.end18.__out_crit_edge

if.end18.__out_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end18
  call void @schedule() #11
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %re_connect_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %86 = ptrtoint ptr %re_connect_status to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %re_connect_status, align 4
  %cmp16.not = icmp eq i32 %87, 0
  br i1 %cmp16.not, label %cleanup.if.end18_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.if.end18_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then12.for.end_crit_edge
  call void @finish_wait(ptr noundef %re_connect_wait, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end18.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  %88 = ptrtoint ptr %re_connect_status to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr = load i32, ptr %re_connect_status, align 4
  br label %if.end23

if.end23:                                         ; preds = %__out, %if.end7.if.end23_crit_edge
  %89 = phi i32 [ %.pr, %__out ], [ %82, %if.end7.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp26 = icmp slt i32 %89, 1
  br i1 %cmp26, label %if.end23.out_crit_edge, label %if.end29

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end29:                                         ; preds = %if.end23
  %90 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rx_ep, align 8
  %re_max_requests.i69 = getelementptr inbounds %struct.rpcrdma_ep, ptr %91, i32 0, i32 22
  %92 = ptrtoint ptr %re_max_requests.i69 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %re_max_requests.i69, align 4
  %add.i = add i32 %93, 2
  %94 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #11
  %95 = extractvalue { i32, i1 } %94, 1
  br i1 %95, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !77

kcalloc.exit.thread.i:                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %rb_sc_ctxs51.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 6
  %96 = ptrtoint ptr %rb_sc_ctxs51.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %rb_sc_ctxs51.i, align 4
  br label %out

if.end7.i.i.i:                                    ; preds = %if.end29
  %97 = extractvalue { i32, i1 } %94, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %97, i32 noundef 3520) #15
  %rb_sc_ctxs.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 6
  %98 = ptrtoint ptr %rb_sc_ctxs.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call8.i.i.i, ptr %rb_sc_ctxs.i, align 4
  %tobool.not.i70 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i70, label %if.end7.i.i.i.out_crit_edge, label %if.end.i71

if.end7.i.i.i.out_crit_edge:                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i71:                                       ; preds = %if.end7.i.i.i
  %sub.i = add i32 %93, 1
  %rb_sc_last.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 5
  %99 = ptrtoint ptr %rb_sc_last.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %sub.i, ptr %rb_sc_last.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %if.end.i71
  %i.058.i = phi i32 [ 0, %if.end.i71 ], [ %inc.i, %if.end7.i.for.body.i_crit_edge ]
  %100 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rx_ep, align 8
  %max_send_sge.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %101, i32 0, i32 16, i32 6, i32 2
  %102 = ptrtoint ptr %max_send_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_send_sge.i.i, align 4
  %104 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %103, i32 16) #11
  %105 = extractvalue { i32, i1 } %104, 1
  %106 = extractvalue { i32, i1 } %104, 0
  %spec.select.i.i.i = call i32 @llvm.uadd.sat.i32(i32 %106, i32 24) #11
  %retval.0.i.i24.i = select i1 %105, i32 -1, i32 %spec.select.i.i.i
  %call9.i.i.i48.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i24.i, i32 noundef 3520) #15
  %tobool.not.i.i72 = icmp eq ptr %call9.i.i.i48.i, null
  br i1 %tobool.not.i.i72, label %for.body.i.out_crit_edge, label %if.end7.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7.i:                                        ; preds = %for.body.i
  %107 = ptrtoint ptr %call9.i.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @rpcrdma_wc_send, ptr %call9.i.i.i48.i, align 128
  %send_cq.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %101, i32 0, i32 16, i32 2
  %108 = ptrtoint ptr %send_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %send_cq.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.ib_cq, ptr %109, i32 0, i32 17, i32 8
  %110 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %id.i.i, align 8
  %sc_cid.i.i = getelementptr inbounds %struct.rpcrdma_sendctx, ptr %call9.i.i.i48.i, i32 0, i32 1
  %112 = ptrtoint ptr %sc_cid.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %sc_cid.i.i, align 4
  %re_completion_ids.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %101, i32 0, i32 25
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %re_completion_ids.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  call void @llvm.prefetch.p0(ptr %re_completion_ids.i.i, i32 1, i32 3, i32 1) #11
  %113 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %re_completion_ids.i.i, ptr %re_completion_ids.i.i, i32 1, ptr elementtype(i32) %re_completion_ids.i.i) #11, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %113, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  %ci_completion_id.i.i = getelementptr inbounds %struct.rpcrdma_sendctx, ptr %call9.i.i.i48.i, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %ci_completion_id.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %asmresult.i.i.i.i.i.i, ptr %ci_completion_id.i.i, align 8
  %115 = ptrtoint ptr %rb_sc_ctxs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rb_sc_ctxs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %116, i32 %i.058.i
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call9.i.i.i48.i, ptr %arrayidx.i, align 4
  %inc.i = add i32 %i.058.i, 1
  %118 = ptrtoint ptr %rb_sc_last.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rb_sc_last.i, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %119
  br i1 %cmp.not.i, label %if.end33, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end33:                                         ; preds = %if.end7.i
  %rb_sc_head.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 3
  %120 = ptrtoint ptr %rb_sc_head.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %rb_sc_head.i, align 4
  %rb_sc_tail.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 4
  %121 = ptrtoint ptr %rb_sc_tail.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %rb_sc_tail.i, align 4
  %rb_allreqs.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i76.for.cond.i_crit_edge, %if.end33
  %.pn.in.i = phi ptr [ %rb_allreqs.i, %if.end33 ], [ %.pn.i, %for.body.i76.for.cond.i_crit_edge ]
  %122 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i74 = icmp eq ptr %.pn.i, %rb_allreqs.i
  br i1 %cmp.not.i74, label %if.end37, label %for.body.i76

for.body.i76:                                     ; preds = %for.cond.i
  %req.0.i = getelementptr i8, ptr %.pn.i, i32 -440
  %call.i = call i32 @rpcrdma_req_setup(ptr noundef %r_xprt, ptr noundef %req.0.i) #11
  %tobool.not.i75 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i75, label %for.body.i76.for.cond.i_crit_edge, label %for.body.i76.out_crit_edge

for.body.i76.out_crit_edge:                       ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body.i76.for.cond.i_crit_edge:                ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.end37:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @rpcrdma_mrs_create(ptr noundef %r_xprt)
  %call38 = call i32 @frwr_wp_create(ptr noundef %r_xprt) #11
  br label %out

out:                                              ; preds = %if.end37, %for.body.i76.out_crit_edge, %for.body.i.out_crit_edge, %if.end7.i.i.i.out_crit_edge, %kcalloc.exit.thread.i, %if.end23.out_crit_edge, %if.end.out_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ 0, %if.end37 ], [ %89, %if.end23.out_crit_edge ], [ -107, %if.end7.i.i.i.out_crit_edge ], [ -107, %kcalloc.exit.thread.i ], [ -107, %for.body.i76.out_crit_edge ], [ -107, %for.body.i.out_crit_edge ]
  call fastcc void @trace_xprtrdma_connect(ptr noundef %r_xprt, i32 noundef %rc.0)
  br label %cleanup39

cleanup39:                                        ; preds = %out, %rpcrdma_ep_create.exit.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ %retval.0.i, %rpcrdma_ep_create.exit.cleanup39_crit_edge ], [ -107, %entry.cleanup39_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_reset_cwnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rpcrdma_ep_get(ptr noundef %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ep, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ep, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ep, ptr %ep, i32 1, ptr elementtype(i32) %ep) #11, !srcloc !81
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !77

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !82

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ep, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_post_recvs(ptr noundef %r_xprt, i32 noundef %needed, i1 noundef zeroext %temp) local_unnamed_addr #0 align 64 {
entry:
  %bad_wr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_wr) #11
  %2 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad_wr, align 4, !annotation !83
  %re_receive_count = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %re_receive_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %re_receive_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %needed)
  %cmp = icmp sgt i32 %4, %needed
  br i1 %cmp, label %entry.out_crit_edge, label %if.end, !prof !82

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %sub = sub i32 %needed, %4
  %add = add i32 %sub, 7
  %spec.select = select i1 %temp, i32 %sub, i32 %add
  %re_receiving = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %re_receiving, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %re_receiving, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %re_receiving, ptr %re_receiving, i32 1, ptr elementtype(i32) %re_receiving) #11, !srcloc !79
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp6 = icmp sgt i32 %asmresult.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool9.not94 = icmp eq i32 %spec.select, 0
  %or.cond = select i1 %cmp6, i1 true, i1 %tobool9.not94
  br i1 %or.cond, label %if.end.out_crit_edge, label %while.body.lr.ph.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph.lr.ph:                           ; preds = %if.end
  %rb_free_reps.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 10
  %recv_cq = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 16, i32 3
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end22.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %needed.addr.1.ph99 = phi i32 [ %spec.select, %while.body.lr.ph.lr.ph ], [ %dec, %if.end22.while.body.lr.ph_crit_edge ]
  %count.0.ph97 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %inc, %if.end22.while.body.lr.ph_crit_edge ]
  %wr.0.ph95 = phi ptr [ null, %while.body.lr.ph.lr.ph ], [ %rr_recv_wr, %if.end22.while.body.lr.ph_crit_edge ]
  %call.i117 = tail call ptr @llist_del_first(ptr noundef %rb_free_reps.i) #11
  %tobool.not.i118 = icmp eq ptr %call.i117, null
  %add.ptr.i119 = getelementptr i8, ptr %call.i117, i32 -128
  %tobool11.not84120 = icmp eq ptr %add.ptr.i119, null
  %tobool11.not121 = or i1 %tobool.not.i118, %tobool11.not84120
  br i1 %tobool11.not121, label %while.body.lr.ph.if.end19_crit_edge, label %while.body.lr.ph.land.lhs.true_crit_edge

while.body.lr.ph.land.lhs.true_crit_edge:         ; preds = %while.body.lr.ph
  br label %land.lhs.true

while.body.lr.ph.if.end19_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then13.land.lhs.true_crit_edge, %while.body.lr.ph.land.lhs.true_crit_edge
  %add.ptr.i123 = phi ptr [ %add.ptr.i, %if.then13.land.lhs.true_crit_edge ], [ %add.ptr.i119, %while.body.lr.ph.land.lhs.true_crit_edge ]
  %call.i122 = phi ptr [ %call.i, %if.then13.land.lhs.true_crit_edge ], [ %call.i117, %while.body.lr.ph.land.lhs.true_crit_edge ]
  %rr_temp = getelementptr i8, ptr %call.i122, i32 -96
  %6 = ptrtoint ptr %rr_temp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rr_temp, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end22_crit_edge, label %if.then13

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then13:                                        ; preds = %land.lhs.true
  tail call fastcc void @rpcrdma_rep_destroy(ptr noundef nonnull %add.ptr.i123)
  %call.i = tail call ptr @llist_del_first(ptr noundef %rb_free_reps.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -128
  %tobool11.not84 = icmp eq ptr %add.ptr.i, null
  %tobool11.not = or i1 %tobool.not.i, %tobool11.not84
  br i1 %tobool11.not, label %if.then13.if.end19_crit_edge, label %if.then13.land.lhs.true_crit_edge

if.then13.land.lhs.true_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %while.body.lr.ph.if.end19_crit_edge
  %call18 = tail call fastcc ptr @rpcrdma_rep_create(ptr noundef %r_xprt, i1 noundef zeroext %temp)
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end19.while.end_crit_edge, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end22:                                         ; preds = %if.end19.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge
  %rep.083 = phi ptr [ %call18, %if.end19.if.end22_crit_edge ], [ %add.ptr.i123, %land.lhs.true.if.end22_crit_edge ]
  %8 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recv_cq, align 4
  %id = getelementptr inbounds %struct.ib_cq, ptr %9, i32 0, i32 17, i32 8
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %rr_cid = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep.083, i32 0, i32 1
  %12 = ptrtoint ptr %rr_cid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rr_cid, align 4
  tail call fastcc void @trace_xprtrdma_post_recv(ptr noundef nonnull %rep.083)
  %rr_recv_wr = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep.083, i32 0, i32 14
  %13 = ptrtoint ptr %rr_recv_wr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %wr.0.ph95, ptr %rr_recv_wr, align 8
  %dec = add i32 %needed.addr.1.ph99, -1
  %inc = add nuw i32 %count.0.ph97, 1
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %if.end22.while.end_crit_edge, label %if.end22.while.body.lr.ph_crit_edge

if.end22.while.body.lr.ph_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %if.end19.while.end_crit_edge
  %wr.0.ph90 = phi ptr [ %wr.0.ph95, %if.end19.while.end_crit_edge ], [ %rr_recv_wr, %if.end22.while.end_crit_edge ]
  %count.0.ph88 = phi i32 [ %count.0.ph97, %if.end19.while.end_crit_edge ], [ %spec.select, %if.end22.while.end_crit_edge ]
  %tobool24.not = icmp eq ptr %wr.0.ph90, null
  br i1 %tobool24.not, label %while.end.out_crit_edge, label %if.end26

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end26:                                         ; preds = %while.end
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %re_id, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qp, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %19, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %post_recv.i, align 4
  %call.i78 = call i32 %21(ptr noundef %17, ptr noundef nonnull %wr.0.ph90, ptr noundef nonnull %bad_wr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool28.not = icmp eq i32 %call.i78, 0
  br i1 %tobool28.not, label %if.end26.if.end34_crit_edge, label %if.then29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then29:                                        ; preds = %if.end26
  call fastcc void @trace_xprtrdma_post_recvs_err(ptr noundef %r_xprt, i32 noundef %call.i78)
  %22 = ptrtoint ptr %bad_wr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bad_wr, align 4
  %tobool30.not103 = icmp eq ptr %23, null
  br i1 %tobool30.not103, label %if.then29.if.end34_crit_edge, label %for.body.lr.ph

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

for.body.lr.ph:                                   ; preds = %if.then29
  %rb_free_reps.i79 = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %count.1105 = phi i32 [ %count.0.ph88, %for.body.lr.ph ], [ %dec33, %for.body.for.body_crit_edge ]
  %wr.1104 = phi ptr [ %23, %for.body.lr.ph ], [ %25, %for.body.for.body_crit_edge ]
  %24 = ptrtoint ptr %wr.1104 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr.1104, align 8
  %rr_node.i = getelementptr i8, ptr %wr.1104, i32 -8
  %call.i.i80 = call zeroext i1 @llist_add_batch(ptr noundef %rr_node.i, ptr noundef %rr_node.i, ptr noundef %rb_free_reps.i79) #11
  %dec33 = add i32 %count.1105, -1
  %tobool30.not = icmp eq ptr %25, null
  br i1 %tobool30.not, label %for.body.if.end34_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end34:                                         ; preds = %for.body.if.end34_crit_edge, %if.then29.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %count.2 = phi i32 [ %count.0.ph88, %if.end26.if.end34_crit_edge ], [ %count.0.ph88, %if.then29.if.end34_crit_edge ], [ %dec33, %for.body.if.end34_crit_edge ]
  %call.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef %re_receiving, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  call void @llvm.prefetch.p0(ptr %re_receiving, i32 1, i32 3, i32 1) #11
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %re_receiving, ptr %re_receiving, i32 1, ptr elementtype(i32) %re_receiving) #11, !srcloc !86
  %asmresult.i.i.i.i77 = extractvalue { i32, i32 } %26, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i77)
  %cmp37 = icmp sgt i32 %asmresult.i.i.i.i77, 0
  br i1 %cmp37, label %if.then38, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %re_done = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 7
  call void @complete(ptr noundef %re_done) #11
  br label %out

out:                                              ; preds = %if.then38, %if.end34.out_crit_edge, %while.end.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %count.3 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %count.2, %if.then38 ], [ %count.2, %if.end34.out_crit_edge ], [ %count.0.ph88, %while.end.out_crit_edge ]
  call fastcc void @trace_xprtrdma_post_recvs(ptr noundef %r_xprt, i32 noundef %count.3)
  %27 = ptrtoint ptr %re_receive_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %re_receive_count, align 4
  %add41 = add i32 %28, %count.3
  store i32 %add41, ptr %re_receive_count, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_wr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_connect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rpcrdma_mrs_create(ptr noundef %r_xprt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %re_max_rdma_segs = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %re_max_rdma_segs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %re_max_rdma_segs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not = icmp eq i32 %3, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rb_mrs = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 2
  %rb_all_mrs = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 192) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %for.body
  %call1 = tail call i32 @frwr_mr_init(ptr noundef %r_xprt, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %for.end

if.end4:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef %rx_buf) #11
  %5 = ptrtoint ptr %rb_mrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rb_mrs, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %rb_mrs, ptr noundef %6) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.rpcrdma_mr_push.exit_crit_edge

if.end4.rpcrdma_mr_push.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_mr_push.exit

if.end.i.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rb_mrs, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %rb_mrs to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %rb_mrs, align 4
  br label %rpcrdma_mr_push.exit

rpcrdma_mr_push.exit:                             ; preds = %if.end.i.i.i, %if.end4.rpcrdma_mr_push.exit_crit_edge
  %mr_all = getelementptr inbounds %struct.rpcrdma_mr, ptr %call7.i.i, i32 0, i32 14
  %11 = ptrtoint ptr %rb_all_mrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rb_all_mrs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mr_all, ptr noundef %rb_all_mrs, ptr noundef %12) #11
  br i1 %call.i.i, label %if.end.i.i, label %rpcrdma_mr_push.exit.for.inc_crit_edge

rpcrdma_mr_push.exit.for.inc_crit_edge:           ; preds = %rpcrdma_mr_push.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i:                                       ; preds = %rpcrdma_mr_push.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mr_all, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %mr_all to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %mr_all, align 8
  %prev3.i.i = getelementptr inbounds %struct.rpcrdma_mr, ptr %call7.i.i, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rb_all_mrs, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %rb_all_mrs to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %mr_all, ptr %rb_all_mrs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %rpcrdma_mr_push.exit.for.inc_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_buf) #11
  %inc = add nuw i32 %count.026, 1
  %17 = ptrtoint ptr %re_max_rdma_segs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %re_max_rdma_segs, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then3, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count.024 = phi i32 [ %count.026, %if.then3 ], [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ], [ %count.026, %for.body.for.end_crit_edge ]
  %mrs_allocated = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 10
  %19 = ptrtoint ptr %mrs_allocated to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mrs_allocated, align 4
  %add = add i32 %20, %count.024
  store i32 %add, ptr %mrs_allocated, align 4
  tail call fastcc void @trace_xprtrdma_createmrs(ptr noundef %r_xprt, i32 noundef %count.024)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frwr_wp_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_connect(ptr noundef %r_xprt, i32 noundef %rc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_connect, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_connect, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !89
  %call42 = tail call i32 @__traceiter_xprtrdma_connect(ptr noundef null, ptr noundef %r_xprt, i32 noundef %rc) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_connect, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_connect, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xprtrdma_connect.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xprtrdma_connect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 670, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
define dso_local void @rpcrdma_xprt_disconnect(ptr noundef %r_xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %re_id, align 4
  %call = tail call i32 @rdma_disconnect(ptr noundef %3) #11
  tail call fastcc void @trace_xprtrdma_disconnect(ptr noundef %r_xprt, i32 noundef %call)
  %4 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ep, align 8
  %re_id.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %re_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %re_id.i, align 4
  %re_receiving.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %5, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %re_receiving.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %re_receiving.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %re_receiving.i, ptr %re_receiving.i, i32 1, ptr elementtype(i32) %re_receiving.i) #11, !srcloc !79
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.rpcrdma_xprt_drain.exit_crit_edge

if.end.rpcrdma_xprt_drain.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_xprt_drain.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %re_done.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %5, i32 0, i32 7
  tail call void @wait_for_completion(ptr noundef %re_done.i) #11
  br label %rpcrdma_xprt_drain.exit

rpcrdma_xprt_drain.exit:                          ; preds = %if.then.i, %if.end.rpcrdma_xprt_drain.exit_crit_edge
  %qp.i = getelementptr inbounds %struct.rdma_cm_id, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qp.i, align 4
  tail call void @ib_drain_rq(ptr noundef %10) #11
  %11 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qp.i, align 4
  tail call void @ib_drain_sq(ptr noundef %12) #11
  %call2.i = tail call fastcc i32 @rpcrdma_ep_put(ptr noundef %5) #11
  %rb_all_reps.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 9
  %13 = ptrtoint ptr %rb_all_reps.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn11.i = load ptr, ptr %rb_all_reps.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %rb_all_reps.i
  br i1 %cmp.not12.i, label %rpcrdma_xprt_drain.exit.rpcrdma_reps_unmap.exit_crit_edge, label %rpcrdma_xprt_drain.exit.for.body.i_crit_edge

rpcrdma_xprt_drain.exit.for.body.i_crit_edge:     ; preds = %rpcrdma_xprt_drain.exit
  br label %for.body.i

rpcrdma_xprt_drain.exit.rpcrdma_reps_unmap.exit_crit_edge: ; preds = %rpcrdma_xprt_drain.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_reps_unmap.exit

for.body.i:                                       ; preds = %rpcrdma_regbuf_dma_unmap.exit.i.for.body.i_crit_edge, %rpcrdma_xprt_drain.exit.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %rpcrdma_regbuf_dma_unmap.exit.i.for.body.i_crit_edge ], [ %.pn11.i, %rpcrdma_xprt_drain.exit.for.body.i_crit_edge ]
  %rr_rdmabuf.i = getelementptr i8, ptr %.pn13.i, i32 -124
  %14 = ptrtoint ptr %rr_rdmabuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rr_rdmabuf.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %for.body.i.rpcrdma_regbuf_dma_unmap.exit.i_crit_edge, label %if.end.i.i

for.body.i.rpcrdma_regbuf_dma_unmap.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_dma_unmap.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %rg_device.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %rg_device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rg_device.i.i.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %17, null
  br i1 %cmp.i.not.i.i, label %if.end.i.i.rpcrdma_regbuf_dma_unmap.exit.i_crit_edge, label %if.end2.i.i

if.end.i.i.rpcrdma_regbuf_dma_unmap.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_dma_unmap.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %15, align 8
  %length.i.i.i = getelementptr inbounds %struct.ib_sge, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i.i.i, align 8
  %rg_direction.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %rg_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rg_direction.i.i, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %17, align 8
  %conv.i.i.i = trunc i64 %19 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %conv.i.i.i, i32 noundef %21, i32 noundef %23, i32 noundef 0) #11
  %26 = ptrtoint ptr %rg_device.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rg_device.i.i.i, align 8
  br label %rpcrdma_regbuf_dma_unmap.exit.i

rpcrdma_regbuf_dma_unmap.exit.i:                  ; preds = %if.end2.i.i, %if.end.i.i.rpcrdma_regbuf_dma_unmap.exit.i_crit_edge, %for.body.i.rpcrdma_regbuf_dma_unmap.exit.i_crit_edge
  %rr_temp.i = getelementptr i8, ptr %.pn13.i, i32 -128
  %27 = ptrtoint ptr %rr_temp.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rr_temp.i, align 8
  %28 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %rb_all_reps.i
  br i1 %cmp.not.i, label %rpcrdma_regbuf_dma_unmap.exit.i.rpcrdma_reps_unmap.exit_crit_edge, label %rpcrdma_regbuf_dma_unmap.exit.i.for.body.i_crit_edge

rpcrdma_regbuf_dma_unmap.exit.i.for.body.i_crit_edge: ; preds = %rpcrdma_regbuf_dma_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

rpcrdma_regbuf_dma_unmap.exit.i.rpcrdma_reps_unmap.exit_crit_edge: ; preds = %rpcrdma_regbuf_dma_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_reps_unmap.exit

rpcrdma_reps_unmap.exit:                          ; preds = %rpcrdma_regbuf_dma_unmap.exit.i.rpcrdma_reps_unmap.exit_crit_edge, %rpcrdma_xprt_drain.exit.rpcrdma_reps_unmap.exit_crit_edge
  %rb_allreqs.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 7
  %29 = ptrtoint ptr %rb_allreqs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn10.i = load ptr, ptr %rb_allreqs.i, align 4
  %cmp.not11.i = icmp eq ptr %.pn10.i, %rb_allreqs.i
  br i1 %cmp.not11.i, label %rpcrdma_reps_unmap.exit.rpcrdma_reqs_reset.exit_crit_edge, label %rpcrdma_reps_unmap.exit.for.body.i18_crit_edge

rpcrdma_reps_unmap.exit.for.body.i18_crit_edge:   ; preds = %rpcrdma_reps_unmap.exit
  br label %for.body.i18

rpcrdma_reps_unmap.exit.rpcrdma_reqs_reset.exit_crit_edge: ; preds = %rpcrdma_reps_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_reqs_reset.exit

for.body.i18:                                     ; preds = %rpcrdma_req_reset.exit.i.for.body.i18_crit_edge, %rpcrdma_reps_unmap.exit.for.body.i18_crit_edge
  %.pn12.i = phi ptr [ %.pn.i19, %rpcrdma_req_reset.exit.i.for.body.i18_crit_edge ], [ %.pn10.i, %rpcrdma_reps_unmap.exit.for.body.i18_crit_edge ]
  %req.0.i = getelementptr i8, ptr %.pn12.i, i32 -440
  %rq_cong.i.i = getelementptr i8, ptr %.pn12.i, i32 -328
  %30 = ptrtoint ptr %rq_cong.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rq_cong.i.i, align 8
  %rl_rdmabuf.i.i = getelementptr i8, ptr %.pn12.i, i32 -12
  %31 = ptrtoint ptr %rl_rdmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rl_rdmabuf.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i18.rpcrdma_regbuf_free.exit.i.i_crit_edge, label %if.end.i.i.i.i

for.body.i18.rpcrdma_regbuf_free.exit.i.i_crit_edge: ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_free.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i18
  %rg_device.i.i.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %rg_device.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rg_device.i.i.i.i.i, align 8
  %cmp.i.not.i.i.i.i = icmp eq ptr %34, null
  br i1 %cmp.i.not.i.i.i.i, label %if.end.i.i.i.i.if.then.i.i.i_crit_edge, label %if.end2.i.i.i.i

if.end.i.i.i.i.if.then.i.i.i_crit_edge:           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end2.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %32, align 8
  %length.i.i.i.i.i = getelementptr inbounds %struct.ib_sge, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i.i.i.i.i, align 8
  %rg_direction.i.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %rg_direction.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rg_direction.i.i.i.i, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %34, align 8
  %conv.i.i.i.i.i = trunc i64 %36 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %42, i32 noundef %conv.i.i.i.i.i, i32 noundef %38, i32 noundef %40, i32 noundef 0) #11
  %43 = ptrtoint ptr %rg_device.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rg_device.i.i.i.i.i, align 8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end2.i.i.i.i, %if.end.i.i.i.i.if.then.i.i.i_crit_edge
  %rg_data.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %32, i32 0, i32 3
  %44 = ptrtoint ptr %rg_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rg_data.i.i.i, align 8
  tail call void @kfree(ptr noundef %45) #11
  br label %rpcrdma_regbuf_free.exit.i.i

rpcrdma_regbuf_free.exit.i.i:                     ; preds = %if.then.i.i.i, %for.body.i18.rpcrdma_regbuf_free.exit.i.i_crit_edge
  tail call void @kfree(ptr noundef %32) #11
  %46 = ptrtoint ptr %rl_rdmabuf.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rl_rdmabuf.i.i, align 4
  %rl_sendbuf.i.i = getelementptr i8, ptr %.pn12.i, i32 -8
  %47 = ptrtoint ptr %rl_sendbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rl_sendbuf.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i, label %rpcrdma_regbuf_free.exit.i.i.rpcrdma_regbuf_dma_unmap.exit.i.i_crit_edge, label %if.end.i.i.i

rpcrdma_regbuf_free.exit.i.i.rpcrdma_regbuf_dma_unmap.exit.i.i_crit_edge: ; preds = %rpcrdma_regbuf_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_dma_unmap.exit.i.i

if.end.i.i.i:                                     ; preds = %rpcrdma_regbuf_free.exit.i.i
  %rg_device.i.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %rg_device.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rg_device.i.i.i.i, align 8
  %cmp.i.not.i.i.i = icmp eq ptr %50, null
  br i1 %cmp.i.not.i.i.i, label %if.end.i.i.i.rpcrdma_regbuf_dma_unmap.exit.i.i_crit_edge, label %if.end2.i.i.i

if.end.i.i.i.rpcrdma_regbuf_dma_unmap.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_dma_unmap.exit.i.i

if.end2.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %48, align 8
  %length.i.i.i.i = getelementptr inbounds %struct.ib_sge, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length.i.i.i.i, align 8
  %rg_direction.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %48, i32 0, i32 2
  %55 = ptrtoint ptr %rg_direction.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rg_direction.i.i.i, align 4
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %50, align 8
  %conv.i.i.i.i = trunc i64 %52 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %58, i32 noundef %conv.i.i.i.i, i32 noundef %54, i32 noundef %56, i32 noundef 0) #11
  %59 = ptrtoint ptr %rg_device.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rg_device.i.i.i.i, align 8
  br label %rpcrdma_regbuf_dma_unmap.exit.i.i

rpcrdma_regbuf_dma_unmap.exit.i.i:                ; preds = %if.end2.i.i.i, %if.end.i.i.i.rpcrdma_regbuf_dma_unmap.exit.i.i_crit_edge, %rpcrdma_regbuf_free.exit.i.i.rpcrdma_regbuf_dma_unmap.exit.i.i_crit_edge
  %rl_recvbuf.i.i = getelementptr i8, ptr %.pn12.i, i32 -4
  %60 = ptrtoint ptr %rl_recvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rl_recvbuf.i.i, align 4
  %tobool.not.i7.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i7.i.i, label %rpcrdma_regbuf_dma_unmap.exit.i.i.rpcrdma_req_reset.exit.i_crit_edge, label %if.end.i10.i.i

rpcrdma_regbuf_dma_unmap.exit.i.i.rpcrdma_req_reset.exit.i_crit_edge: ; preds = %rpcrdma_regbuf_dma_unmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_req_reset.exit.i

if.end.i10.i.i:                                   ; preds = %rpcrdma_regbuf_dma_unmap.exit.i.i
  %rg_device.i.i8.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %rg_device.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rg_device.i.i8.i.i, align 8
  %cmp.i.not.i9.i.i = icmp eq ptr %63, null
  br i1 %cmp.i.not.i9.i.i, label %if.end.i10.i.i.rpcrdma_req_reset.exit.i_crit_edge, label %if.end2.i14.i.i

if.end.i10.i.i.rpcrdma_req_reset.exit.i_crit_edge: ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_req_reset.exit.i

if.end2.i14.i.i:                                  ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %61, align 8
  %length.i.i11.i.i = getelementptr inbounds %struct.ib_sge, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %length.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length.i.i11.i.i, align 8
  %rg_direction.i12.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %61, i32 0, i32 2
  %68 = ptrtoint ptr %rg_direction.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rg_direction.i12.i.i, align 4
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %63, align 8
  %conv.i.i13.i.i = trunc i64 %65 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %71, i32 noundef %conv.i.i13.i.i, i32 noundef %67, i32 noundef %69, i32 noundef 0) #11
  %72 = ptrtoint ptr %rg_device.i.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %rg_device.i.i8.i.i, align 8
  br label %rpcrdma_req_reset.exit.i

rpcrdma_req_reset.exit.i:                         ; preds = %if.end2.i14.i.i, %if.end.i10.i.i.rpcrdma_req_reset.exit.i_crit_edge, %rpcrdma_regbuf_dma_unmap.exit.i.i.rpcrdma_req_reset.exit.i_crit_edge
  tail call void @frwr_reset(ptr noundef %req.0.i) #11
  %73 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn.i19 = load ptr, ptr %.pn12.i, align 4
  %cmp.not.i20 = icmp eq ptr %.pn.i19, %rb_allreqs.i
  br i1 %cmp.not.i20, label %rpcrdma_req_reset.exit.i.rpcrdma_reqs_reset.exit_crit_edge, label %rpcrdma_req_reset.exit.i.for.body.i18_crit_edge

rpcrdma_req_reset.exit.i.for.body.i18_crit_edge:  ; preds = %rpcrdma_req_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i18

rpcrdma_req_reset.exit.i.rpcrdma_reqs_reset.exit_crit_edge: ; preds = %rpcrdma_req_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_reqs_reset.exit

rpcrdma_reqs_reset.exit:                          ; preds = %rpcrdma_req_reset.exit.i.rpcrdma_reqs_reset.exit_crit_edge, %rpcrdma_reps_unmap.exit.rpcrdma_reqs_reset.exit_crit_edge
  %rx_buf.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2
  %rb_refresh_worker.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 15
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %rb_refresh_worker.i) #11
  tail call void @_raw_spin_lock(ptr noundef %rx_buf.i) #11
  %rb_all_mrs.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 8
  %74 = ptrtoint ptr %rb_all_mrs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %rb_all_mrs.i, align 4
  %cmp.not23.i = icmp eq ptr %75, %rb_all_mrs.i
  %add.ptr24.i = getelementptr i8, ptr %75, i32 -176
  %cmp3.not2225.i = icmp eq ptr %add.ptr24.i, null
  %cmp3.not26.i = or i1 %cmp.not23.i, %cmp3.not2225.i
  br i1 %cmp3.not26.i, label %rpcrdma_reqs_reset.exit.rpcrdma_mrs_destroy.exit_crit_edge, label %rpcrdma_reqs_reset.exit.while.body.i_crit_edge

rpcrdma_reqs_reset.exit.while.body.i_crit_edge:   ; preds = %rpcrdma_reqs_reset.exit
  br label %while.body.i

rpcrdma_reqs_reset.exit.rpcrdma_mrs_destroy.exit_crit_edge: ; preds = %rpcrdma_reqs_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_mrs_destroy.exit

while.body.i:                                     ; preds = %list_del.exit21.i.while.body.i_crit_edge, %rpcrdma_reqs_reset.exit.while.body.i_crit_edge
  %add.ptr27.i = phi ptr [ %add.ptr.i, %list_del.exit21.i.while.body.i_crit_edge ], [ %add.ptr24.i, %rpcrdma_reqs_reset.exit.while.body.i_crit_edge ]
  %76 = phi ptr [ %94, %list_del.exit21.i.while.body.i_crit_edge ], [ %75, %rpcrdma_reqs_reset.exit.while.body.i_crit_edge ]
  %call.i.i.i21 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %add.ptr27.i) #11
  br i1 %call.i.i.i21, label %if.end.i.i.i22, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i22:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %76, i32 -172
  %77 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i, align 4
  %79 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr27.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i22, %while.body.i.list_del.exit.i_crit_edge
  %83 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr27.i, align 4
  %prev.i.i = getelementptr i8, ptr %76, i32 -172
  %84 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %call.i.i16.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %76) #11
  br i1 %call.i.i16.i, label %if.end.i.i19.i, label %list_del.exit.i.list_del.exit21.i_crit_edge

list_del.exit.i.list_del.exit21.i_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit21.i

if.end.i.i19.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i17.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i17.i, align 4
  %87 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %76, align 4
  %prev1.i.i.i18.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i18.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %list_del.exit21.i

list_del.exit21.i:                                ; preds = %if.end.i.i19.i, %list_del.exit.i.list_del.exit21.i_crit_edge
  %91 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %76, align 4
  %prev.i20.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i20.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i20.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rx_buf.i) #11
  tail call void @frwr_mr_release(ptr noundef nonnull %add.ptr27.i) #11
  tail call void @_raw_spin_lock(ptr noundef %rx_buf.i) #11
  %93 = ptrtoint ptr %rb_all_mrs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %rb_all_mrs.i, align 4
  %cmp.not.i23 = icmp eq ptr %94, %rb_all_mrs.i
  %add.ptr.i = getelementptr i8, ptr %94, i32 -176
  %cmp3.not22.i = icmp eq ptr %add.ptr.i, null
  %cmp3.not.i = or i1 %cmp.not.i23, %cmp3.not22.i
  br i1 %cmp3.not.i, label %list_del.exit21.i.rpcrdma_mrs_destroy.exit_crit_edge, label %list_del.exit21.i.while.body.i_crit_edge

list_del.exit21.i.while.body.i_crit_edge:         ; preds = %list_del.exit21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit21.i.rpcrdma_mrs_destroy.exit_crit_edge: ; preds = %list_del.exit21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_mrs_destroy.exit

rpcrdma_mrs_destroy.exit:                         ; preds = %list_del.exit21.i.rpcrdma_mrs_destroy.exit_crit_edge, %rpcrdma_reqs_reset.exit.rpcrdma_mrs_destroy.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_buf.i) #11
  %rb_sc_ctxs.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 6
  %95 = ptrtoint ptr %rb_sc_ctxs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rb_sc_ctxs.i, align 4
  %tobool.not.i = icmp eq ptr %96, null
  br i1 %tobool.not.i, label %rpcrdma_mrs_destroy.exit.rpcrdma_sendctxs_destroy.exit_crit_edge, label %for.cond.preheader.i

rpcrdma_mrs_destroy.exit.rpcrdma_sendctxs_destroy.exit_crit_edge: ; preds = %rpcrdma_mrs_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_sendctxs_destroy.exit

for.cond.preheader.i:                             ; preds = %rpcrdma_mrs_destroy.exit
  %rb_sc_last.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 5
  br label %for.body.i25

for.body.i25:                                     ; preds = %for.body.i25.for.body.i25_crit_edge, %for.cond.preheader.i
  %i.011.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i25.for.body.i25_crit_edge ]
  %97 = ptrtoint ptr %rb_sc_ctxs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rb_sc_ctxs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %98, i32 %i.011.i
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %100) #11
  %inc.i = add i32 %i.011.i, 1
  %101 = ptrtoint ptr %rb_sc_last.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rb_sc_last.i, align 4
  %cmp.not.i24 = icmp ugt i32 %inc.i, %102
  br i1 %cmp.not.i24, label %for.end.i, label %for.body.i25.for.body.i25_crit_edge

for.body.i25.for.body.i25_crit_edge:              ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i25

for.end.i:                                        ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %rb_sc_ctxs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rb_sc_ctxs.i, align 4
  tail call void @kfree(ptr noundef %104) #11
  %105 = ptrtoint ptr %rb_sc_ctxs.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %rb_sc_ctxs.i, align 4
  br label %rpcrdma_sendctxs_destroy.exit

rpcrdma_sendctxs_destroy.exit:                    ; preds = %for.end.i, %rpcrdma_mrs_destroy.exit.rpcrdma_sendctxs_destroy.exit_crit_edge
  %call1 = tail call fastcc i32 @rpcrdma_ep_put(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %rpcrdma_sendctxs_destroy.exit.if.end4_crit_edge, label %if.then3

rpcrdma_sendctxs_destroy.exit.if.end4_crit_edge:  ; preds = %rpcrdma_sendctxs_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %rpcrdma_sendctxs_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rdma_destroy_id(ptr noundef %3) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %rpcrdma_sendctxs_destroy.exit.if.end4_crit_edge
  %106 = ptrtoint ptr %rx_ep to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %rx_ep, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_disconnect(ptr noundef %r_xprt, i32 noundef %rc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_disconnect, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_disconnect, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %call42 = tail call i32 @__traceiter_xprtrdma_disconnect(ptr noundef null, ptr noundef %r_xprt, i32 noundef %rc) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_disconnect, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_disconnect, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xprtrdma_disconnect.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xprtrdma_disconnect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 671, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpcrdma_ep_put(ptr noundef %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ep, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %ep, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ep, ptr %ep, i32 1, ptr elementtype(i32) %ep) #11, !srcloc !96
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !82

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ep, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  %re_id.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 1
  %1 = ptrtoint ptr %re_id.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %re_id.i.i, align 4
  %qp.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qp.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rdma_destroy_qp(ptr noundef %2) #11
  %5 = ptrtoint ptr %re_id.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %re_id.i.i, align 4
  %qp3.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %qp3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %qp3.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %recv_cq.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 16, i32 3
  %8 = ptrtoint ptr %recv_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recv_cq.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ib_free_cq(ptr noundef nonnull %9) #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %10 = ptrtoint ptr %recv_cq.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %recv_cq.i.i, align 4
  %send_cq.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 16, i32 2
  %11 = ptrtoint ptr %send_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_cq.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %12, null
  br i1 %tobool12.not.i.i, label %if.end8.i.i.if.end16.i.i_crit_edge, label %if.then13.i.i

if.end8.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

if.then13.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ib_free_cq(ptr noundef nonnull %12) #11
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then13.i.i, %if.end8.i.i.if.end16.i.i_crit_edge
  %13 = ptrtoint ptr %send_cq.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %send_cq.i.i, align 4
  %re_pd.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %ep, i32 0, i32 2
  %14 = ptrtoint ptr %re_pd.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %re_pd.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %15, null
  br i1 %tobool19.not.i.i, label %if.end16.i.i.rpcrdma_ep_destroy.exit.i_crit_edge, label %if.then20.i.i

if.end16.i.i.rpcrdma_ep_destroy.exit.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_ep_destroy.exit.i

if.then20.i.i:                                    ; preds = %if.end16.i.i
  %call.i.i.i = tail call i32 @ib_dealloc_pd_user(ptr noundef nonnull %15, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then20.i.i.rpcrdma_ep_destroy.exit.i_crit_edge, label %land.rhs.i.i.i

if.then20.i.i.rpcrdma_ep_destroy.exit.i_crit_edge: ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_ep_destroy.exit.i

land.rhs.i.i.i:                                   ; preds = %if.then20.i.i
  %.b38.i.i.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i.i.i, label %land.rhs.i.i.i.rpcrdma_ep_destroy.exit.i_crit_edge, label %if.then.i.i.i, !prof !82

land.rhs.i.i.i.rpcrdma_ep_destroy.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_ep_destroy.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.13) #11
  br label %rpcrdma_ep_destroy.exit.i

rpcrdma_ep_destroy.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs.i.i.i.rpcrdma_ep_destroy.exit.i_crit_edge, %if.then20.i.i.rpcrdma_ep_destroy.exit.i_crit_edge, %if.end16.i.i.rpcrdma_ep_destroy.exit.i_crit_edge
  %16 = ptrtoint ptr %re_pd.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %re_pd.i.i, align 4
  tail call void @kfree(ptr noundef %ep) #11
  tail call void @module_put(ptr noundef null) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %rpcrdma_ep_destroy.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %rpcrdma_ep_destroy.exit.i ], [ 0, %if.end5.i.i.i.i.kref_put.exit_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rpcrdma_sendctx_get_locked(ptr noundef %r_xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_sc_head = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %rb_sc_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rb_sc_head, align 4
  %rb_sc_last.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %rb_sc_last.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rb_sc_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i = icmp ugt i32 %3, %1
  %add.i = add i32 %1, 1
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 0, !prof !82
  %rb_sc_tail = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %rb_sc_tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rb_sc_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %5)
  %cmp = icmp eq i32 %spec.select.i, %5
  br i1 %cmp, label %out_emptyq, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rb_sc_ctxs = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 6
  %6 = ptrtoint ptr %rb_sc_ctxs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_sc_ctxs, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %spec.select.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %rb_sc_head to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select.i, ptr %rb_sc_head, align 4
  br label %cleanup

out_emptyq:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xprt_wait_for_buffer_space(ptr noundef %r_xprt) #11
  %empty_sendctx_q = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 11
  %11 = ptrtoint ptr %empty_sendctx_q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %empty_sendctx_q, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %empty_sendctx_q, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_emptyq, %if.end
  %retval.0 = phi ptr [ null, %out_emptyq ], [ %9, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wait_for_buffer_space(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_mrs_refresh(ptr noundef %r_xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %re_connect_status = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %re_connect_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %re_connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %4 = load ptr, ptr @xprtiod_workqueue, align 4
  %rb_refresh_worker = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 15
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %rb_refresh_worker) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rpcrdma_req_create(ptr noundef %r_xprt, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2
  %or.i = or i32 %flags, 256
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !82

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 13
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 4632) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  br i1 %cmp.i19.i.i, label %if.end.kmalloc.exit.i_crit_edge, label %if.end.i20.i.i32, !prof !82

if.end.kmalloc.exit.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc.exit.i

if.end.i20.i.i32:                                 ; preds = %if.end
  %and2.i.i.i30 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i30)
  %tobool3.not.i.i.i31 = icmp eq i32 %and2.i.i.i30, 0
  br i1 %tobool3.not.i.i.i31, label %if.end5.i.i.i36, label %if.end.i20.i.i32.kmalloc.exit.i_crit_edge

if.end.i20.i.i32.kmalloc.exit.i_crit_edge:        ; preds = %if.end.i20.i.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc.exit.i

if.end5.i.i.i36:                                  ; preds = %if.end.i20.i.i32
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i33 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i33)
  %tobool7.not.i.i.i34 = icmp eq i32 %and6.i.i.i33, 0
  %..i.i.i35 = select i1 %tobool7.not.i.i.i34, i32 1, i32 2
  br label %kmalloc.exit.i

kmalloc.exit.i:                                   ; preds = %if.end5.i.i.i36, %if.end.i20.i.i32.kmalloc.exit.i_crit_edge, %if.end.kmalloc.exit.i_crit_edge
  %retval.0.i21.i.i37 = phi i32 [ 0, %if.end.kmalloc.exit.i_crit_edge ], [ 3, %if.end.i20.i.i32.kmalloc.exit.i_crit_edge ], [ %..i.i.i35, %if.end5.i.i.i36 ]
  %arrayidx6.i.i38 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i37, i32 7
  %2 = ptrtoint ptr %arrayidx6.i.i38 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i.i38, align 4
  %call7.i.i39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %flags, i32 noundef 32) #14
  %tobool.not.i = icmp eq ptr %call7.i.i39, null
  br i1 %tobool.not.i, label %kmalloc.exit.i.rpcrdma_regbuf_alloc.exit.thread_crit_edge, label %if.end8.i.i

kmalloc.exit.i.rpcrdma_regbuf_alloc.exit.thread_crit_edge: ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_alloc.exit.thread

if.end8.i.i:                                      ; preds = %kmalloc.exit.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef %flags) #15
  %rg_data.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i39, i32 0, i32 3
  %4 = ptrtoint ptr %rg_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %rg_data.i, align 8
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end4

if.then4.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i39) #11
  br label %rpcrdma_regbuf_alloc.exit.thread

rpcrdma_regbuf_alloc.exit.thread:                 ; preds = %if.then4.i, %kmalloc.exit.i.rpcrdma_regbuf_alloc.exit.thread_crit_edge
  %rl_sendbuf110 = getelementptr inbounds %struct.rpcrdma_req, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %rl_sendbuf110 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rl_sendbuf110, align 8
  br label %out2

if.end4:                                          ; preds = %if.end8.i.i
  %rg_device.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i39, i32 0, i32 1
  %6 = ptrtoint ptr %rg_device.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rg_device.i, align 8
  %rg_direction.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i39, i32 0, i32 2
  %7 = ptrtoint ptr %rg_direction.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rg_direction.i, align 4
  %length.i = getelementptr inbounds %struct.ib_sge, ptr %call7.i.i39, i32 0, i32 1
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size, ptr %length.i, align 8
  %rl_sendbuf = getelementptr inbounds %struct.rpcrdma_req, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %rl_sendbuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i39, ptr %rl_sendbuf, align 8
  br i1 %cmp.i19.i.i, label %if.end4.kmalloc.exit.i53_crit_edge, label %if.end.i20.i.i44, !prof !82

if.end4.kmalloc.exit.i53_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc.exit.i53

if.end.i20.i.i44:                                 ; preds = %if.end4
  %and2.i.i.i42 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i42)
  %tobool3.not.i.i.i43 = icmp eq i32 %and2.i.i.i42, 0
  br i1 %tobool3.not.i.i.i43, label %if.end5.i.i.i48, label %if.end.i20.i.i44.kmalloc.exit.i53_crit_edge

if.end.i20.i.i44.kmalloc.exit.i53_crit_edge:      ; preds = %if.end.i20.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc.exit.i53

if.end5.i.i.i48:                                  ; preds = %if.end.i20.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i45 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i45)
  %tobool7.not.i.i.i46 = icmp eq i32 %and6.i.i.i45, 0
  %..i.i.i47 = select i1 %tobool7.not.i.i.i46, i32 1, i32 2
  br label %kmalloc.exit.i53

kmalloc.exit.i53:                                 ; preds = %if.end5.i.i.i48, %if.end.i20.i.i44.kmalloc.exit.i53_crit_edge, %if.end4.kmalloc.exit.i53_crit_edge
  %retval.0.i21.i.i49 = phi i32 [ 0, %if.end4.kmalloc.exit.i53_crit_edge ], [ 3, %if.end.i20.i.i44.kmalloc.exit.i53_crit_edge ], [ %..i.i.i47, %if.end5.i.i.i48 ]
  %arrayidx6.i.i50 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i49, i32 7
  %10 = ptrtoint ptr %arrayidx6.i.i50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i.i50, align 4
  %call7.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef %flags, i32 noundef 32) #14
  %tobool.not.i52 = icmp eq ptr %call7.i.i51, null
  br i1 %tobool.not.i52, label %kmalloc.exit.i53.out3_crit_edge, label %if.end8.i.i95

kmalloc.exit.i53.out3_crit_edge:                  ; preds = %kmalloc.exit.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %out3

if.end8.i.i95:                                    ; preds = %kmalloc.exit.i53
  %call9.i.i94 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef %flags) #15
  %rg_data.i97 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i51, i32 0, i32 3
  %12 = ptrtoint ptr %rg_data.i97 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i94, ptr %rg_data.i97, align 8
  %tobool3.not.i98 = icmp eq ptr %call9.i.i94, null
  br i1 %tobool3.not.i98, label %if.then4.i100, label %if.end9

if.then4.i100:                                    ; preds = %if.end8.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i51) #11
  br label %out3

if.end9:                                          ; preds = %if.end8.i.i95
  %rg_device.i101 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i51, i32 0, i32 1
  %13 = ptrtoint ptr %rg_device.i101 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rg_device.i101, align 8
  %rg_direction.i102 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i51, i32 0, i32 2
  %14 = ptrtoint ptr %rg_direction.i102 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %rg_direction.i102, align 4
  %length.i103 = getelementptr inbounds %struct.ib_sge, ptr %call7.i.i51, i32 0, i32 1
  %15 = ptrtoint ptr %length.i103 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size, ptr %length.i103, align 8
  %rl_recvbuf = getelementptr inbounds %struct.rpcrdma_req, ptr %call7.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %rl_recvbuf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i51, ptr %rl_recvbuf, align 4
  %rl_free_mrs = getelementptr inbounds %struct.rpcrdma_req, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %rl_free_mrs to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %rl_free_mrs, ptr %rl_free_mrs, align 4
  %prev.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call7.i.i, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rl_free_mrs, ptr %prev.i, align 8
  %rl_registered = getelementptr inbounds %struct.rpcrdma_req, ptr %call7.i.i, i32 0, i32 13
  %19 = ptrtoint ptr %rl_registered to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %rl_registered, ptr %rl_registered, align 4
  %prev.i107 = getelementptr inbounds %struct.rpcrdma_req, ptr %call7.i.i, i32 0, i32 13, i32 1
  %20 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rl_registered, ptr %prev.i107, align 8
  tail call void @_raw_spin_lock(ptr noundef %rx_buf) #11
  %rl_all = getelementptr inbounds %struct.rpcrdma_req, ptr %call7.i.i, i32 0, i32 10
  %rb_allreqs = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 7
  %21 = ptrtoint ptr %rb_allreqs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rb_allreqs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rl_all, ptr noundef %rb_allreqs, ptr noundef %22) #11
  br i1 %call.i.i, label %if.end.i.i108, label %if.end9.list_add.exit_crit_edge

if.end9.list_add.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i108:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rl_all, ptr %prev1.i.i, align 4
  %24 = ptrtoint ptr %rl_all to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %rl_all, align 8
  %prev3.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call7.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rb_allreqs, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %rb_allreqs to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %rl_all, ptr %rb_allreqs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i108, %if.end9.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_buf) #11
  br label %cleanup

out3:                                             ; preds = %if.then4.i100, %kmalloc.exit.i53.out3_crit_edge
  %rl_recvbuf113 = getelementptr inbounds %struct.rpcrdma_req, ptr %call7.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %rl_recvbuf113 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rl_recvbuf113, align 4
  %28 = ptrtoint ptr %rl_sendbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rl_sendbuf, align 8
  tail call void @kfree(ptr noundef %29) #11
  br label %out2

out2:                                             ; preds = %out3, %rpcrdma_regbuf_alloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out2, %list_add.exit, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %list_add.exit ], [ null, %kzalloc.exit.cleanup_crit_edge ], [ null, %out2 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcrdma_req_setup(ptr nocapture noundef readonly %r_xprt, ptr nocapture noundef writeonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %re_max_rdma_segs = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %re_max_rdma_segs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %re_max_rdma_segs, align 4
  %add = mul i32 %3, 24
  %sub.i = add i32 %add, 27
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #11, !range !98
  %sub.i.i.i = sub nuw nsw i32 32, %4
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 32) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub.i.i.op.i, i32 noundef 3264) #15
  %rg_data.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %rg_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %rg_data.i, align 8
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i
  %rg_device.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %rg_device.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rg_device.i, align 8
  %rg_direction.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %rg_direction.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %rg_direction.i, align 4
  %length.i = getelementptr inbounds %struct.ib_sge, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i.i.op.i, ptr %length.i, align 8
  %call3 = tail call zeroext i1 @__rpcrdma_regbuf_dma_map(ptr noundef %r_xprt, ptr noundef nonnull %call7.i.i)
  br i1 %call3, label %if.end5, label %if.end.i.i19

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rl_rdmabuf = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 7
  %10 = ptrtoint ptr %rl_rdmabuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %rl_rdmabuf, align 4
  %rl_hdrbuf = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %rg_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rg_data.i, align 8
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  %15 = ptrtoint ptr %rl_hdrbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %rl_hdrbuf, align 4
  %iov_len.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 4, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %iov_len.i, align 4
  %iov_len4.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 4, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %iov_len4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %iov_len4.i, align 4
  %pages.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pages.i, align 4
  %page_len.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 4, i32 5
  %19 = ptrtoint ptr %page_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %page_len.i, align 4
  %flags.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags.i, align 4
  %len5.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 4, i32 8
  %21 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %len5.i, align 4
  %buflen.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 4, i32 7
  %22 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %14, ptr %buflen.i, align 4
  br label %cleanup

if.end.i.i19:                                     ; preds = %if.end
  %23 = ptrtoint ptr %rg_device.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rg_device.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %24, null
  br i1 %cmp.i.not.i.i, label %if.end.i.i19.rpcrdma_regbuf_free.exit_crit_edge, label %if.end2.i.i

if.end.i.i19.rpcrdma_regbuf_free.exit_crit_edge:  ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_free.exit

if.end2.i.i:                                      ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %call7.i.i, align 8
  %27 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length.i, align 8
  %29 = ptrtoint ptr %rg_direction.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rg_direction.i, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %24, align 8
  %conv.i.i.i = trunc i64 %26 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %conv.i.i.i, i32 noundef %28, i32 noundef %30, i32 noundef 0) #11
  %33 = ptrtoint ptr %rg_device.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rg_device.i, align 8
  br label %rpcrdma_regbuf_free.exit

rpcrdma_regbuf_free.exit:                         ; preds = %if.end2.i.i, %if.end.i.i19.rpcrdma_regbuf_free.exit_crit_edge
  %34 = ptrtoint ptr %rg_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rg_data.i, align 8
  tail call void @kfree(ptr noundef %35) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %rpcrdma_regbuf_free.exit, %if.end5, %if.then4.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %rpcrdma_regbuf_free.exit ], [ -12, %if.then4.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__rpcrdma_regbuf_dma_map(ptr nocapture noundef readonly %r_xprt, ptr nocapture noundef %rb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %re_id, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %rg_direction = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %rb, i32 0, i32 2
  %6 = ptrtoint ptr %rg_direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rg_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rg_data.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %rb, i32 0, i32 3
  %8 = ptrtoint ptr %rg_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rg_data.i, align 8
  %length.i = getelementptr inbounds %struct.ib_sge, ptr %rb, i32 0, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %9) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !82

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %13) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %17, %if.end.i.i.i ], [ %15, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef %9, i32 noundef %11) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %9 to i32
  %sub.i.i = add i32 %19, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %18, i32 %shr.i.i
  %and.i.i = and i32 %19, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %11, i32 noundef %7, i32 noundef 0) #11
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %20 = ptrtoint ptr %rb to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv2.i, ptr %rb, align 8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %22, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %rb to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rb, align 8
  tail call fastcc void @trace_xprtrdma_dma_maperr(i64 noundef %24)
  br label %cleanup

if.end9:                                          ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rg_device = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %rb, i32 0, i32 1
  %25 = ptrtoint ptr %rg_device to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %5, ptr %rg_device, align 8
  %26 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_ep, align 8
  %re_pd = getelementptr inbounds %struct.rpcrdma_ep, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %re_pd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %re_pd, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %lkey = getelementptr inbounds %struct.ib_sge, ptr %rb, i32 0, i32 2
  %32 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lkey, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then7 ], [ true, %if.end9 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_rep_put(ptr noundef %buf, ptr noundef %rep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rr_node = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 13
  %rb_free_reps = getelementptr inbounds %struct.rpcrdma_buffer, ptr %buf, i32 0, i32 10
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %rr_node, ptr noundef %rr_node, ptr noundef %rb_free_reps) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcrdma_buffer_create(ptr noundef %r_xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2
  %rb_bc_srv_max_requests = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 13
  %0 = ptrtoint ptr %rb_bc_srv_max_requests to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rb_bc_srv_max_requests, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %rx_buf, ptr noundef nonnull @.str.1, ptr noundef nonnull @rpcrdma_buffer_create.__key, i16 noundef signext 3) #11
  %rb_mrs = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %rb_mrs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %rb_mrs, ptr %rb_mrs, align 4
  %prev.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rb_mrs, ptr %prev.i, align 4
  %rb_all_mrs = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 8
  %3 = ptrtoint ptr %rb_all_mrs to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %rb_all_mrs, ptr %rb_all_mrs, align 4
  %prev.i32 = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rb_all_mrs, ptr %prev.i32, align 4
  %rb_refresh_worker = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 15
  tail call void @__init_work(ptr noundef %rb_refresh_worker, i32 noundef 0) #11
  %5 = ptrtoint ptr %rb_refresh_worker to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %rb_refresh_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @rpcrdma_buffer_create.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry5 = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 15, i32 1
  %6 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i33 = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 15, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry5, ptr %prev.i33, align 4
  %func = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 15, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rpcrdma_mr_refresh_worker, ptr %func, align 4
  %rb_send_bufs = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %rb_send_bufs to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rb_send_bufs, ptr %rb_send_bufs, align 4
  %prev.i34 = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rb_send_bufs, ptr %prev.i34, align 4
  %rb_allreqs = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %rb_allreqs to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %rb_allreqs, ptr %rb_allreqs, align 4
  %prev.i35 = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 7, i32 1
  %12 = ptrtoint ptr %prev.i35 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rb_allreqs, ptr %prev.i35, align 4
  %rb_all_reps = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 9
  %13 = ptrtoint ptr %rb_all_reps to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %rb_all_reps, ptr %rb_all_reps, align 4
  %prev.i36 = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 9, i32 1
  %14 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rb_all_reps, ptr %prev.i36, align 4
  %max_reqs = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 15
  %15 = ptrtoint ptr %max_reqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_reqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp38.not = icmp eq i32 %16, 0
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call9 = tail call ptr @rpcrdma_req_create(ptr noundef %r_xprt, i32 noundef 2048, i32 noundef 3264)
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %for.body
  %17 = ptrtoint ptr %rb_send_bufs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rb_send_bufs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9, ptr noundef %rb_send_bufs, ptr noundef %18) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %call9, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rb_send_bufs, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %rb_send_bufs to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call9, ptr %rb_send_bufs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.039, 1
  %23 = ptrtoint ptr %max_reqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_reqs, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rb_free_reps = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 10
  %25 = ptrtoint ptr %rb_free_reps to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_free_reps, align 4
  br label %cleanup11

out:                                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rpcrdma_buffer_destroy(ptr noundef %rx_buf)
  br label %cleanup11

cleanup11:                                        ; preds = %out, %for.end
  %retval.0 = phi i32 [ -12, %out ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpcrdma_mr_refresh_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1604
  tail call fastcc void @rpcrdma_mrs_create(ptr noundef %add.ptr3)
  %call = tail call zeroext i1 @xprt_write_space(ptr noundef %add.ptr3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_buffer_destroy(ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %buf) #11
  %rb_all_reps.i = getelementptr inbounds %struct.rpcrdma_buffer, ptr %buf, i32 0, i32 9
  %0 = ptrtoint ptr %rb_all_reps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rb_all_reps.i, align 4
  %cmp.not15.i = icmp eq ptr %1, %rb_all_reps.i
  %add.ptr16.i = getelementptr i8, ptr %1, i32 -160
  %cmp3.not1417.i = icmp eq ptr %add.ptr16.i, null
  %cmp3.not18.i = or i1 %cmp.not15.i, %cmp3.not1417.i
  br i1 %cmp3.not18.i, label %entry.rpcrdma_reps_destroy.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.rpcrdma_reps_destroy.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_reps_destroy.exit

while.body.i:                                     ; preds = %rpcrdma_rep_free.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %add.ptr19.i = phi ptr [ %add.ptr.i, %rpcrdma_rep_free.exit.i.while.body.i_crit_edge ], [ %add.ptr16.i, %entry.while.body.i_crit_edge ]
  %2 = phi ptr [ %27, %rpcrdma_rep_free.exit.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
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
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %buf) #11
  %rr_rdmabuf.i.i = getelementptr i8, ptr %2, i32 -124
  %11 = ptrtoint ptr %rr_rdmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rr_rdmabuf.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i.i, label %list_del.exit.i.rpcrdma_rep_free.exit.i_crit_edge, label %if.end.i.i.i.i

list_del.exit.i.rpcrdma_rep_free.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_rep_free.exit.i

if.end.i.i.i.i:                                   ; preds = %list_del.exit.i
  %rg_device.i.i.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %rg_device.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rg_device.i.i.i.i.i, align 8
  %cmp.i.not.i.i.i.i = icmp eq ptr %14, null
  br i1 %cmp.i.not.i.i.i.i, label %if.end.i.i.i.i.if.then.i.i.i_crit_edge, label %if.end2.i.i.i.i

if.end.i.i.i.i.if.then.i.i.i_crit_edge:           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end2.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %12, align 8
  %length.i.i.i.i.i = getelementptr inbounds %struct.ib_sge, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i.i.i.i.i, align 8
  %rg_direction.i.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %12, i32 0, i32 2
  %19 = ptrtoint ptr %rg_direction.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rg_direction.i.i.i.i, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %14, align 8
  %conv.i.i.i.i.i = trunc i64 %16 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %conv.i.i.i.i.i, i32 noundef %18, i32 noundef %20, i32 noundef 0) #11
  %23 = ptrtoint ptr %rg_device.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rg_device.i.i.i.i.i, align 8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end2.i.i.i.i, %if.end.i.i.i.i.if.then.i.i.i_crit_edge
  %rg_data.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %12, i32 0, i32 3
  %24 = ptrtoint ptr %rg_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rg_data.i.i.i, align 8
  tail call void @kfree(ptr noundef %25) #11
  br label %rpcrdma_rep_free.exit.i

rpcrdma_rep_free.exit.i:                          ; preds = %if.then.i.i.i, %list_del.exit.i.rpcrdma_rep_free.exit.i_crit_edge
  tail call void @kfree(ptr noundef %12) #11
  tail call void @kfree(ptr noundef nonnull %add.ptr19.i) #11
  tail call void @_raw_spin_lock(ptr noundef %buf) #11
  %26 = ptrtoint ptr %rb_all_reps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %rb_all_reps.i, align 4
  %cmp.not.i = icmp eq ptr %27, %rb_all_reps.i
  %add.ptr.i = getelementptr i8, ptr %27, i32 -160
  %cmp3.not14.i = icmp eq ptr %add.ptr.i, null
  %cmp3.not.i = or i1 %cmp.not.i, %cmp3.not14.i
  br i1 %cmp3.not.i, label %rpcrdma_rep_free.exit.i.rpcrdma_reps_destroy.exit_crit_edge, label %rpcrdma_rep_free.exit.i.while.body.i_crit_edge

rpcrdma_rep_free.exit.i.while.body.i_crit_edge:   ; preds = %rpcrdma_rep_free.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

rpcrdma_rep_free.exit.i.rpcrdma_reps_destroy.exit_crit_edge: ; preds = %rpcrdma_rep_free.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_reps_destroy.exit

rpcrdma_reps_destroy.exit:                        ; preds = %rpcrdma_rep_free.exit.i.rpcrdma_reps_destroy.exit_crit_edge, %entry.rpcrdma_reps_destroy.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %buf) #11
  %rb_send_bufs = getelementptr inbounds %struct.rpcrdma_buffer, ptr %buf, i32 0, i32 1
  %28 = ptrtoint ptr %rb_send_bufs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %rb_send_bufs, align 4
  %cmp.i.not6 = icmp eq ptr %29, %rb_send_bufs
  br i1 %cmp.i.not6, label %rpcrdma_reps_destroy.exit.while.end_crit_edge, label %rpcrdma_reps_destroy.exit.while.body_crit_edge

rpcrdma_reps_destroy.exit.while.body_crit_edge:   ; preds = %rpcrdma_reps_destroy.exit
  br label %while.body

rpcrdma_reps_destroy.exit.while.end_crit_edge:    ; preds = %rpcrdma_reps_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %rpcrdma_reps_destroy.exit.while.body_crit_edge
  %30 = phi ptr [ %40, %list_del.exit.while.body_crit_edge ], [ %29, %rpcrdma_reps_destroy.exit.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i5 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i5, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @rpcrdma_req_destroy(ptr noundef %30)
  %39 = ptrtoint ptr %rb_send_bufs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %rb_send_bufs, align 4
  %cmp.i.not = icmp eq ptr %40, %rb_send_bufs
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %rpcrdma_reps_destroy.exit.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_req_destroy(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_all = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rl_all) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %rl_all to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rl_all, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %rl_all to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %rl_all, align 4
  %prev.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rl_free_mrs = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 12
  %8 = ptrtoint ptr %rl_free_mrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %rl_free_mrs, align 4
  %cmp.not.i41 = icmp eq ptr %9, %rl_free_mrs
  %tobool.not.i4042 = icmp eq ptr %9, null
  %tobool.not.i43 = or i1 %cmp.not.i41, %tobool.not.i4042
  br i1 %tobool.not.i43, label %list_del.exit.while.end_crit_edge, label %list_del.exit.if.then.i_crit_edge

list_del.exit.if.then.i_crit_edge:                ; preds = %list_del.exit
  br label %if.then.i

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then.i:                                        ; preds = %list_del.exit15.if.then.i_crit_edge, %list_del.exit.if.then.i_crit_edge
  %10 = phi ptr [ %30, %list_del.exit15.if.then.i_crit_edge ], [ %9, %list_del.exit.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %10) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.i.i.i, %if.then.i.while.body_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %10, ptr %10, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %10, ptr %prev.i3.i.i, align 4
  %mr_xprt = getelementptr inbounds %struct.rpcrdma_mr, ptr %10, i32 0, i32 10
  %19 = ptrtoint ptr %mr_xprt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mr_xprt, align 8
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %20, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rx_buf) #11
  %mr_all = getelementptr inbounds %struct.rpcrdma_mr, ptr %10, i32 0, i32 14
  %call.i.i10 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mr_all) #11
  br i1 %call.i.i10, label %if.end.i.i13, label %while.body.list_del.exit15_crit_edge

while.body.list_del.exit15_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit15

if.end.i.i13:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i11 = getelementptr inbounds %struct.rpcrdma_mr, ptr %10, i32 0, i32 14, i32 1
  %21 = ptrtoint ptr %prev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i11, align 4
  %23 = ptrtoint ptr %mr_all to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mr_all, align 4
  %prev1.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i12, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit15

list_del.exit15:                                  ; preds = %if.end.i.i13, %while.body.list_del.exit15_crit_edge
  %27 = ptrtoint ptr %mr_all to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %mr_all, align 4
  %prev.i14 = getelementptr inbounds %struct.rpcrdma_mr, ptr %10, i32 0, i32 14, i32 1
  %28 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i14, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rx_buf) #11
  tail call void @frwr_mr_release(ptr noundef nonnull %10) #11
  %29 = ptrtoint ptr %rl_free_mrs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %rl_free_mrs, align 4
  %cmp.not.i = icmp eq ptr %30, %rl_free_mrs
  %tobool.not.i40 = icmp eq ptr %30, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not.i40
  br i1 %tobool.not.i, label %list_del.exit15.while.end_crit_edge, label %list_del.exit15.if.then.i_crit_edge

list_del.exit15.if.then.i_crit_edge:              ; preds = %list_del.exit15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

list_del.exit15.while.end_crit_edge:              ; preds = %list_del.exit15
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit15.while.end_crit_edge, %list_del.exit.while.end_crit_edge
  %rl_recvbuf = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 9
  %31 = ptrtoint ptr %rl_recvbuf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rl_recvbuf, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %while.end.rpcrdma_regbuf_free.exit_crit_edge, label %if.end.i.i16

while.end.rpcrdma_regbuf_free.exit_crit_edge:     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_free.exit

if.end.i.i16:                                     ; preds = %while.end
  %rg_device.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %rg_device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rg_device.i.i.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %34, null
  br i1 %cmp.i.not.i.i, label %if.end.i.i16.if.then.i17_crit_edge, label %if.end2.i.i

if.end.i.i16.if.then.i17_crit_edge:               ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i17

if.end2.i.i:                                      ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %32, align 8
  %length.i.i.i = getelementptr inbounds %struct.ib_sge, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i.i.i, align 8
  %rg_direction.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %rg_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rg_direction.i.i, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %34, align 8
  %conv.i.i.i = trunc i64 %36 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %42, i32 noundef %conv.i.i.i, i32 noundef %38, i32 noundef %40, i32 noundef 0) #11
  %43 = ptrtoint ptr %rg_device.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rg_device.i.i.i, align 8
  br label %if.then.i17

if.then.i17:                                      ; preds = %if.end2.i.i, %if.end.i.i16.if.then.i17_crit_edge
  %rg_data.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %32, i32 0, i32 3
  %44 = ptrtoint ptr %rg_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rg_data.i, align 8
  tail call void @kfree(ptr noundef %45) #11
  br label %rpcrdma_regbuf_free.exit

rpcrdma_regbuf_free.exit:                         ; preds = %if.then.i17, %while.end.rpcrdma_regbuf_free.exit_crit_edge
  tail call void @kfree(ptr noundef %32) #11
  %rl_sendbuf = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 8
  %46 = ptrtoint ptr %rl_sendbuf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rl_sendbuf, align 8
  %tobool.not.i.i18 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i18, label %rpcrdma_regbuf_free.exit.rpcrdma_regbuf_free.exit28_crit_edge, label %if.end.i.i21

rpcrdma_regbuf_free.exit.rpcrdma_regbuf_free.exit28_crit_edge: ; preds = %rpcrdma_regbuf_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_free.exit28

if.end.i.i21:                                     ; preds = %rpcrdma_regbuf_free.exit
  %rg_device.i.i.i19 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %rg_device.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rg_device.i.i.i19, align 8
  %cmp.i.not.i.i20 = icmp eq ptr %49, null
  br i1 %cmp.i.not.i.i20, label %if.end.i.i21.if.then.i27_crit_edge, label %if.end2.i.i25

if.end.i.i21.if.then.i27_crit_edge:               ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i27

if.end2.i.i25:                                    ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %47, align 8
  %length.i.i.i22 = getelementptr inbounds %struct.ib_sge, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %length.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length.i.i.i22, align 8
  %rg_direction.i.i23 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %47, i32 0, i32 2
  %54 = ptrtoint ptr %rg_direction.i.i23 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rg_direction.i.i23, align 4
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %49, align 8
  %conv.i.i.i24 = trunc i64 %51 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %57, i32 noundef %conv.i.i.i24, i32 noundef %53, i32 noundef %55, i32 noundef 0) #11
  %58 = ptrtoint ptr %rg_device.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rg_device.i.i.i19, align 8
  br label %if.then.i27

if.then.i27:                                      ; preds = %if.end2.i.i25, %if.end.i.i21.if.then.i27_crit_edge
  %rg_data.i26 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %47, i32 0, i32 3
  %59 = ptrtoint ptr %rg_data.i26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rg_data.i26, align 8
  tail call void @kfree(ptr noundef %60) #11
  br label %rpcrdma_regbuf_free.exit28

rpcrdma_regbuf_free.exit28:                       ; preds = %if.then.i27, %rpcrdma_regbuf_free.exit.rpcrdma_regbuf_free.exit28_crit_edge
  tail call void @kfree(ptr noundef %47) #11
  %rl_rdmabuf = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 7
  %61 = ptrtoint ptr %rl_rdmabuf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rl_rdmabuf, align 4
  %tobool.not.i.i29 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i29, label %rpcrdma_regbuf_free.exit28.rpcrdma_regbuf_free.exit39_crit_edge, label %if.end.i.i32

rpcrdma_regbuf_free.exit28.rpcrdma_regbuf_free.exit39_crit_edge: ; preds = %rpcrdma_regbuf_free.exit28
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_free.exit39

if.end.i.i32:                                     ; preds = %rpcrdma_regbuf_free.exit28
  %rg_device.i.i.i30 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %rg_device.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rg_device.i.i.i30, align 8
  %cmp.i.not.i.i31 = icmp eq ptr %64, null
  br i1 %cmp.i.not.i.i31, label %if.end.i.i32.if.then.i38_crit_edge, label %if.end2.i.i36

if.end.i.i32.if.then.i38_crit_edge:               ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i38

if.end2.i.i36:                                    ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %62, align 8
  %length.i.i.i33 = getelementptr inbounds %struct.ib_sge, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %length.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length.i.i.i33, align 8
  %rg_direction.i.i34 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %62, i32 0, i32 2
  %69 = ptrtoint ptr %rg_direction.i.i34 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rg_direction.i.i34, align 4
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %64, align 8
  %conv.i.i.i35 = trunc i64 %66 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %72, i32 noundef %conv.i.i.i35, i32 noundef %68, i32 noundef %70, i32 noundef 0) #11
  %73 = ptrtoint ptr %rg_device.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %rg_device.i.i.i30, align 8
  br label %if.then.i38

if.then.i38:                                      ; preds = %if.end2.i.i36, %if.end.i.i32.if.then.i38_crit_edge
  %rg_data.i37 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %62, i32 0, i32 3
  %74 = ptrtoint ptr %rg_data.i37 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rg_data.i37, align 8
  tail call void @kfree(ptr noundef %75) #11
  br label %rpcrdma_regbuf_free.exit39

rpcrdma_regbuf_free.exit39:                       ; preds = %if.then.i38, %rpcrdma_regbuf_free.exit28.rpcrdma_regbuf_free.exit39_crit_edge
  tail call void @kfree(ptr noundef %62) #11
  tail call void @kfree(ptr noundef %req) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @frwr_mr_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rpcrdma_mr_get(ptr noundef %r_xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rx_buf) #11
  %rb_mrs = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %rb_mrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rb_mrs, align 4
  %cmp.not.i = icmp eq ptr %1, %rb_mrs
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %1
  %tobool.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i, label %entry.rpcrdma_mr_pop.exit_crit_edge, label %if.then.i

entry.rpcrdma_mr_pop.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_mr_pop.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.select.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %8 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %spec.select.i, ptr %spec.select.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select.i, ptr %prev.i3.i.i, align 4
  br label %rpcrdma_mr_pop.exit

rpcrdma_mr_pop.exit:                              ; preds = %list_del_init.exit.i, %entry.rpcrdma_mr_pop.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_buf) #11
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_reply_put(ptr noundef %buffers, ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_reply = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %rl_reply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rl_reply, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rr_node.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %1, i32 0, i32 13
  %rb_free_reps.i = getelementptr inbounds %struct.rpcrdma_buffer, ptr %buffers, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef %rr_node.i, ptr noundef %rr_node.i, ptr noundef %rb_free_reps.i) #11
  %2 = ptrtoint ptr %rl_reply to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rl_reply, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rpcrdma_buffer_get(ptr noundef %buffers) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %buffers) #11
  %rb_send_bufs = getelementptr inbounds %struct.rpcrdma_buffer, ptr %buffers, i32 0, i32 1
  %0 = ptrtoint ptr %rb_send_bufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rb_send_bufs, align 4
  %cmp.not = icmp eq ptr %1, %rb_send_bufs
  %spec.select = select i1 %cmp.not, ptr null, ptr %1
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.select, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %spec.select, ptr %spec.select, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %buffers) #11
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_buffer_put(ptr noundef %buffers, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_reply.i = getelementptr inbounds %struct.rpcrdma_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %rl_reply.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rl_reply.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rpcrdma_reply_put.exit_crit_edge, label %if.then.i

entry.rpcrdma_reply_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_reply_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rr_node.i.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %1, i32 0, i32 13
  %rb_free_reps.i.i = getelementptr inbounds %struct.rpcrdma_buffer, ptr %buffers, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef %rr_node.i.i, ptr noundef %rr_node.i.i, ptr noundef %rb_free_reps.i.i) #11
  %2 = ptrtoint ptr %rl_reply.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rl_reply.i, align 8
  br label %rpcrdma_reply_put.exit

rpcrdma_reply_put.exit:                           ; preds = %if.then.i, %entry.rpcrdma_reply_put.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %buffers) #11
  %rb_send_bufs = getelementptr inbounds %struct.rpcrdma_buffer, ptr %buffers, i32 0, i32 1
  %3 = ptrtoint ptr %rb_send_bufs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rb_send_bufs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %rb_send_bufs, ptr noundef %4) #11
  br i1 %call.i.i, label %if.end.i.i, label %rpcrdma_reply_put.exit.list_add.exit_crit_edge

rpcrdma_reply_put.exit.list_add.exit_crit_edge:   ; preds = %rpcrdma_reply_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %rpcrdma_reply_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %req, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %req, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rb_send_bufs, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %rb_send_bufs to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %req, ptr %rb_send_bufs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %rpcrdma_reply_put.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %buffers) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rpcrdma_regbuf_realloc(ptr noundef %rb, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef %flags) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %rb, null
  br i1 %tobool.not.i, label %if.end.rpcrdma_regbuf_dma_unmap.exit_crit_edge, label %if.end.i7

if.end.rpcrdma_regbuf_dma_unmap.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_dma_unmap.exit

if.end.i7:                                        ; preds = %if.end
  %rg_device.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %rb, i32 0, i32 1
  %0 = ptrtoint ptr %rg_device.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rg_device.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %1, null
  br i1 %cmp.i.not.i, label %if.end.i7.rpcrdma_regbuf_dma_unmap.exit_crit_edge, label %if.end2.i

if.end.i7.rpcrdma_regbuf_dma_unmap.exit_crit_edge: ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_dma_unmap.exit

if.end2.i:                                        ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %rb to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rb, align 8
  %length.i.i = getelementptr inbounds %struct.ib_sge, ptr %rb, i32 0, i32 1
  %4 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i.i, align 8
  %rg_direction.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %rb, i32 0, i32 2
  %6 = ptrtoint ptr %rg_direction.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rg_direction.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %conv.i.i = trunc i64 %3 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %conv.i.i, i32 noundef %5, i32 noundef %7, i32 noundef 0) #11
  %10 = ptrtoint ptr %rg_device.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rg_device.i.i, align 8
  br label %rpcrdma_regbuf_dma_unmap.exit

rpcrdma_regbuf_dma_unmap.exit:                    ; preds = %if.end2.i, %if.end.i7.rpcrdma_regbuf_dma_unmap.exit_crit_edge, %if.end.rpcrdma_regbuf_dma_unmap.exit_crit_edge
  %rg_data = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %rb, i32 0, i32 3
  %11 = ptrtoint ptr %rg_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rg_data, align 8
  tail call void @kfree(ptr noundef %12) #11
  %13 = ptrtoint ptr %rg_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %rg_data, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %rb, i32 0, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size, ptr %length, align 8
  br label %cleanup

cleanup:                                          ; preds = %rpcrdma_regbuf_dma_unmap.exit, %entry.cleanup_crit_edge
  %15 = xor i1 %tobool.not, true
  ret i1 %15
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_dma_maperr(i64 noundef %addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_dma_maperr, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_dma_maperr, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !99
  %call42 = tail call i32 @__traceiter_xprtrdma_dma_maperr(ptr noundef null, i64 noundef %addr) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_dma_maperr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_dma_maperr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xprtrdma_dma_maperr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xprtrdma_dma_maperr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1246, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
define internal fastcc void @rpcrdma_rep_destroy(ptr noundef %rep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rr_rxprt = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 9
  %0 = ptrtoint ptr %rr_rxprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rr_rxprt, align 8
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rx_buf) #11
  %rr_all = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rr_all) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %rr_all to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rr_all, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %rr_all to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %rr_all, align 4
  %prev.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rx_buf) #11
  %rr_rdmabuf.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 8
  %10 = ptrtoint ptr %rr_rdmabuf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rr_rdmabuf.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %list_del.exit.rpcrdma_rep_free.exit_crit_edge, label %if.end.i.i.i

list_del.exit.rpcrdma_rep_free.exit_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_rep_free.exit

if.end.i.i.i:                                     ; preds = %list_del.exit
  %rg_device.i.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %rg_device.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rg_device.i.i.i.i, align 8
  %cmp.i.not.i.i.i = icmp eq ptr %13, null
  br i1 %cmp.i.not.i.i.i, label %if.end.i.i.i.if.then.i.i_crit_edge, label %if.end2.i.i.i

if.end.i.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end2.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %11, align 8
  %length.i.i.i.i = getelementptr inbounds %struct.ib_sge, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i.i.i.i, align 8
  %rg_direction.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %rg_direction.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rg_direction.i.i.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 8
  %conv.i.i.i.i = trunc i64 %15 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %conv.i.i.i.i, i32 noundef %17, i32 noundef %19, i32 noundef 0) #11
  %22 = ptrtoint ptr %rg_device.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rg_device.i.i.i.i, align 8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end2.i.i.i, %if.end.i.i.i.if.then.i.i_crit_edge
  %rg_data.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %11, i32 0, i32 3
  %23 = ptrtoint ptr %rg_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rg_data.i.i, align 8
  tail call void @kfree(ptr noundef %24) #11
  br label %rpcrdma_rep_free.exit

rpcrdma_rep_free.exit:                            ; preds = %if.then.i.i, %list_del.exit.rpcrdma_rep_free.exit_crit_edge
  tail call void @kfree(ptr noundef %11) #11
  tail call void @kfree(ptr noundef %rep) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rpcrdma_rep_create(ptr noundef %r_xprt, i1 noundef zeroext %temp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %temp to i8
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %1 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_ep, align 8
  %re_inline_recv = getelementptr inbounds %struct.rpcrdma_ep, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %re_inline_recv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %re_inline_recv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 32) #14
  %tobool.not.i = icmp eq ptr %call7.i.i51, null
  br i1 %tobool.not.i, label %if.end.rpcrdma_regbuf_alloc.exit.thread_crit_edge, label %if.end8.i.i

if.end.rpcrdma_regbuf_alloc.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_alloc.exit.thread

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #15
  %rg_data.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i51, i32 0, i32 3
  %6 = ptrtoint ptr %rg_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %rg_data.i, align 8
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %rpcrdma_regbuf_dma_map.exit

if.then4.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i51) #11
  br label %rpcrdma_regbuf_alloc.exit.thread

rpcrdma_regbuf_alloc.exit.thread:                 ; preds = %if.then4.i, %if.end.rpcrdma_regbuf_alloc.exit.thread_crit_edge
  %rr_rdmabuf62 = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %rr_rdmabuf62 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rr_rdmabuf62, align 4
  br label %out_free

rpcrdma_regbuf_dma_map.exit:                      ; preds = %if.end8.i.i
  %rg_device.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i51, i32 0, i32 1
  %8 = ptrtoint ptr %rg_device.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rg_device.i, align 8
  %rg_direction.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %call7.i.i51, i32 0, i32 2
  %9 = ptrtoint ptr %rg_direction.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %rg_direction.i, align 4
  %length.i = getelementptr inbounds %struct.ib_sge, ptr %call7.i.i51, i32 0, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %4, ptr %length.i, align 8
  %rr_rdmabuf = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %rr_rdmabuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i51, ptr %rr_rdmabuf, align 4
  %call2.i = tail call zeroext i1 @__rpcrdma_regbuf_dma_map(ptr noundef %r_xprt, ptr noundef nonnull %call7.i.i51) #11
  br i1 %call2.i, label %if.end8, label %out_free_regbuf

if.end8:                                          ; preds = %rpcrdma_regbuf_dma_map.exit
  %12 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ep, align 8
  %re_completion_ids = getelementptr inbounds %struct.rpcrdma_ep, ptr %13, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %re_completion_ids, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %re_completion_ids, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %re_completion_ids, ptr %re_completion_ids, i32 1, ptr elementtype(i32) %re_completion_ids) #11, !srcloc !79
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  %ci_completion_id = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %ci_completion_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %asmresult.i.i.i.i, ptr %ci_completion_id, align 8
  %rr_hdrbuf = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %rr_rdmabuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rr_rdmabuf, align 4
  %rg_data.i54 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %rg_data.i54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rg_data.i54, align 8
  %length.i55 = getelementptr inbounds %struct.ib_sge, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %length.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i55, align 8
  %22 = ptrtoint ptr %rr_hdrbuf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %rr_hdrbuf, align 8
  %iov_len.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %iov_len.i, align 4
  %iov_len4.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %iov_len4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %iov_len4.i, align 4
  %pages.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 11, i32 3
  %25 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pages.i, align 4
  %page_len.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 11, i32 5
  %26 = ptrtoint ptr %page_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %page_len.i, align 4
  %flags.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 11, i32 6
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %flags.i, align 8
  %len5.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 11, i32 8
  %28 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %len5.i, align 8
  %buflen.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 11, i32 7
  %29 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %21, ptr %buflen.i, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @rpcrdma_wc_receive, ptr %call7.i.i, align 8
  %rr_rxprt = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %rr_rxprt to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %r_xprt, ptr %rr_rxprt, align 8
  %rr_recv_wr = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 14
  %32 = ptrtoint ptr %rr_recv_wr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rr_recv_wr, align 8
  %33 = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %33, align 8
  %sg_list = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 14, i32 2
  %35 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %17, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 14, i32 3
  %36 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %num_sge, align 4
  %rr_temp = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %rr_temp to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool, ptr %rr_temp, align 8
  tail call void @_raw_spin_lock(ptr noundef %rx_buf) #11
  %rr_all = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 15
  %rb_all_reps = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 2, i32 9
  %38 = ptrtoint ptr %rb_all_reps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rb_all_reps, align 4
  %call.i.i56 = tail call zeroext i1 @__list_add_valid(ptr noundef %rr_all, ptr noundef %rb_all_reps, ptr noundef %39) #11
  br i1 %call.i.i56, label %if.end.i.i57, label %if.end8.list_add.exit_crit_edge

if.end8.list_add.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i57:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %rr_all, ptr %prev1.i.i, align 4
  %41 = ptrtoint ptr %rr_all to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %rr_all, align 8
  %prev3.i.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %call7.i.i, i32 0, i32 15, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %rb_all_reps, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %rb_all_reps to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %rr_all, ptr %rb_all_reps, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i57, %if.end8.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_buf) #11
  br label %cleanup

out_free_regbuf:                                  ; preds = %rpcrdma_regbuf_dma_map.exit
  %44 = ptrtoint ptr %rr_rdmabuf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rr_rdmabuf, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %out_free_regbuf.rpcrdma_regbuf_free.exit_crit_edge, label %if.end.i.i58

out_free_regbuf.rpcrdma_regbuf_free.exit_crit_edge: ; preds = %out_free_regbuf
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_regbuf_free.exit

if.end.i.i58:                                     ; preds = %out_free_regbuf
  %rg_device.i.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %rg_device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rg_device.i.i.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %47, null
  br i1 %cmp.i.not.i.i, label %if.end.i.i58.if.then.i_crit_edge, label %if.end2.i.i

if.end.i.i58.if.then.i_crit_edge:                 ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end2.i.i:                                      ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %45, align 8
  %length.i.i.i = getelementptr inbounds %struct.ib_sge, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length.i.i.i, align 8
  %rg_direction.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %45, i32 0, i32 2
  %52 = ptrtoint ptr %rg_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rg_direction.i.i, align 4
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %47, align 8
  %conv.i.i.i = trunc i64 %49 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %conv.i.i.i, i32 noundef %51, i32 noundef %53, i32 noundef 0) #11
  %56 = ptrtoint ptr %rg_device.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %rg_device.i.i.i, align 8
  br label %if.then.i

if.then.i:                                        ; preds = %if.end2.i.i, %if.end.i.i58.if.then.i_crit_edge
  %rg_data.i59 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %45, i32 0, i32 3
  %57 = ptrtoint ptr %rg_data.i59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rg_data.i59, align 8
  tail call void @kfree(ptr noundef %58) #11
  br label %rpcrdma_regbuf_free.exit

rpcrdma_regbuf_free.exit:                         ; preds = %if.then.i, %out_free_regbuf.rpcrdma_regbuf_free.exit_crit_edge
  tail call void @kfree(ptr noundef %45) #11
  br label %out_free

out_free:                                         ; preds = %rpcrdma_regbuf_free.exit, %rpcrdma_regbuf_alloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %list_add.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %out_free ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_post_recv(ptr noundef %rep) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_recv, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_post_recv, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !101
  %call42 = tail call i32 @__traceiter_xprtrdma_post_recv(ptr noundef null, ptr noundef %rep) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_recv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_recv, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xprtrdma_post_recv.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xprtrdma_post_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1001, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
define internal fastcc void @trace_xprtrdma_post_recvs_err(ptr noundef %r_xprt, i32 noundef %status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_recvs_err, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_post_recvs_err, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  %call42 = tail call i32 @__traceiter_xprtrdma_post_recvs_err(ptr noundef null, ptr noundef %r_xprt, i32 noundef %status) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_recvs_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_recvs_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xprtrdma_post_recvs_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xprtrdma_post_recvs_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1063, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_post_recvs(ptr noundef %r_xprt, i32 noundef %count) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_recvs, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_post_recvs, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !105
  %call42 = tail call i32 @__traceiter_xprtrdma_post_recvs(ptr noundef null, ptr noundef %r_xprt, i32 noundef %count) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_recvs, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_post_recvs, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xprtrdma_post_recvs.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xprtrdma_post_recvs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1033, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frwr_query_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcrdma_cm_event_handler(ptr noundef %id, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 229) #11
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge55
    i32 1, label %sw.bb5
    i32 3, label %sw.bb8
    i32 11, label %do.end14
    i32 14, label %entry.disconnected_crit_edge
    i32 9, label %sw.bb16
    i32 6, label %sw.bb18
    i32 7, label %sw.bb20
    i32 8, label %sw.bb22
    i32 10, label %sw.bb26
  ]

entry.disconnected_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %disconnected

entry.sw.bb_crit_edge55:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge55
  %re_async_rc = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %re_async_rc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %re_async_rc, align 4
  %re_done = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %re_done) #11
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %re_async_rc6 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %re_async_rc6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -71, ptr %re_async_rc6, align 4
  %re_done7 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %re_done7) #11
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %re_async_rc9 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %re_async_rc9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -101, ptr %re_async_rc9, align 4
  %re_done10 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %re_done10) #11
  br label %cleanup

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %id, i32 0, i32 4, i32 0, i32 1
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %re_id, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %name = getelementptr inbounds %struct.ib_device, ptr %11, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef %dst_addr) #16
  br label %disconnected

sw.bb16:                                          ; preds = %entry
  tail call fastcc void @rpcrdma_ep_get(ptr noundef %1)
  %re_connect_status17 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %re_connect_status17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %re_connect_status17, align 4
  %param = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %13 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %param, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %sw.bb16.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb16.if.end.i_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb16
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -156561896, i32 %16)
  %cmp.i = icmp eq i32 %16, -156561896
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %cp_version.i = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %cp_version.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cp_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp2.i = icmp eq i8 %18, 1
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true1.i.if.end.i_crit_edge

land.lhs.true1.i.if.end.i_crit_edge:              ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #13
  %cp_send_size.i = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %cp_send_size.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cp_send_size.i, align 1
  %conv.i.i = zext i8 %20 to i32
  %add.i.i = shl nuw nsw i32 %conv.i.i, 10
  %shl.i.i = add nuw nsw i32 %add.i.i, 1024
  %cp_recv_size.i = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %14, i32 0, i32 4
  %21 = ptrtoint ptr %cp_recv_size.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cp_recv_size.i, align 1
  %conv.i25.i = zext i8 %22 to i32
  %add.i26.i = shl nuw nsw i32 %conv.i25.i, 10
  %shl.i27.i = add nuw nsw i32 %add.i26.i, 1024
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true1.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %sw.bb16.if.end.i_crit_edge
  %rsize.0.i = phi i32 [ %shl.i.i, %if.then.i ], [ 1024, %land.lhs.true1.i.if.end.i_crit_edge ], [ 1024, %land.lhs.true.i.if.end.i_crit_edge ], [ 1024, %sw.bb16.if.end.i_crit_edge ]
  %wsize.0.i = phi i32 [ %shl.i27.i, %if.then.i ], [ 1024, %land.lhs.true1.i.if.end.i_crit_edge ], [ 1024, %land.lhs.true.i.if.end.i_crit_edge ], [ 1024, %sw.bb16.if.end.i_crit_edge ]
  %re_inline_recv.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 24
  %23 = ptrtoint ptr %re_inline_recv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %re_inline_recv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rsize.0.i, i32 %24)
  %cmp5.i = icmp ult i32 %rsize.0.i, %24
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %re_inline_recv.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %rsize.0.i, ptr %re_inline_recv.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  %re_inline_send.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 23
  %26 = ptrtoint ptr %re_inline_send.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %re_inline_send.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wsize.0.i, i32 %27)
  %cmp10.i = icmp ult i32 %wsize.0.i, %27
  br i1 %cmp10.i, label %if.then12.i, label %if.end9.i.rpcrdma_update_cm_private.exit_crit_edge

if.end9.i.rpcrdma_update_cm_private.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_update_cm_private.exit

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %re_inline_send.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %wsize.0.i, ptr %re_inline_send.i, align 4
  br label %rpcrdma_update_cm_private.exit

rpcrdma_update_cm_private.exit:                   ; preds = %if.then12.i, %if.end9.i.rpcrdma_update_cm_private.exit_crit_edge
  tail call void @rpcrdma_set_max_header_sizes(ptr noundef %1) #11
  tail call fastcc void @trace_xprtrdma_inline_thresh(ptr noundef %1)
  %re_connect_wait = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %re_connect_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %re_connect_status19 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %re_connect_status19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -107, ptr %re_connect_status19, align 4
  br label %wake_connect_worker

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %re_connect_status21 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %re_connect_status21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -101, ptr %re_connect_status21, align 4
  br label %wake_connect_worker

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %re_connect_status23 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %re_connect_status23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -111, ptr %re_connect_status23, align 4
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %33)
  %cmp = icmp eq i32 %33, 10
  %spec.store.select = select i1 %cmp, i32 -107, i32 -111
  %34 = ptrtoint ptr %re_connect_status23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.store.select, ptr %re_connect_status23, align 4
  br label %wake_connect_worker

wake_connect_worker:                              ; preds = %sw.bb22, %sw.bb20, %sw.bb18
  %re_connect_wait25 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %re_connect_wait25, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %disconnected

disconnected:                                     ; preds = %sw.bb26, %do.end14, %entry.disconnected_crit_edge
  %.sink = phi i32 [ -103, %sw.bb26 ], [ -19, %entry.disconnected_crit_edge ], [ -19, %do.end14 ]
  %re_connect_status27 = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 13
  %35 = ptrtoint ptr %re_connect_status27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %re_connect_status27, align 4
  %re_force_disconnect.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %re_force_disconnect.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %re_force_disconnect.i, i32 1, i32 3, i32 1) #11
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %re_force_disconnect.i, ptr %re_force_disconnect.i, i32 1, i32 1, ptr elementtype(i32) %re_force_disconnect.i) #11, !srcloc !75
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.not.i.i.i.i, label %disconnected.rpcrdma_force_disconnect.exit_crit_edge, label %if.then.i53

disconnected.rpcrdma_force_disconnect.exit_crit_edge: ; preds = %disconnected
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_force_disconnect.exit

if.then.i53:                                      ; preds = %disconnected
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  %re_xprt.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %re_xprt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %re_xprt.i, align 4
  tail call void @xprt_force_disconnect(ptr noundef %38) #11
  br label %rpcrdma_force_disconnect.exit

rpcrdma_force_disconnect.exit:                    ; preds = %if.then.i53, %disconnected.rpcrdma_force_disconnect.exit_crit_edge
  %call28 = tail call fastcc i32 @rpcrdma_ep_put(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %rpcrdma_force_disconnect.exit, %wake_connect_worker, %rpcrdma_update_cm_private.exit, %sw.bb8, %sw.bb5, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %rpcrdma_force_disconnect.exit ], [ 0, %wake_connect_worker ], [ 0, %sw.bb8 ], [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ 0, %rpcrdma_update_cm_private.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_route(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_inline_thresh(ptr noundef %ep) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_inline_thresh, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_inline_thresh, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !107
  %call42 = tail call i32 @__traceiter_xprtrdma_inline_thresh(ptr noundef null, ptr noundef %ep) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_inline_thresh, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_inline_thresh, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xprtrdma_inline_thresh.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xprtrdma_inline_thresh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 668, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_set_max_header_sizes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_inline_thresh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_cq_any(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_disconnect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_drain_rq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_drain_sq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_qp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_cq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpcrdma_wc_send(ptr nocapture noundef readonly %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %2 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_context, align 8
  %sc_cid = getelementptr inbounds %struct.rpcrdma_sendctx, ptr %1, i32 0, i32 1
  tail call fastcc void @trace_xprtrdma_wc_send(ptr noundef %wc, ptr noundef %sc_cid)
  %rb_sc_tail.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %3, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %rb_sc_tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rb_sc_tail.i, align 4
  %rb_sc_last.i.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %3, i32 0, i32 2, i32 5
  %rb_sc_ctxs.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %3, i32 0, i32 2, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %next_tail.0.i = phi i32 [ %5, %entry ], [ %spec.select.i.i, %do.body.i.do.body.i_crit_edge ]
  %6 = ptrtoint ptr %rb_sc_last.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rb_sc_last.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %next_tail.0.i)
  %cmp.i.i = icmp ugt i32 %7, %next_tail.0.i
  %add.i.i = add i32 %next_tail.0.i, 1
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 0, !prof !82
  %8 = ptrtoint ptr %rb_sc_ctxs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rb_sc_ctxs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %spec.select.i.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @rpcrdma_sendctx_unmap(ptr noundef %11) #11
  %12 = ptrtoint ptr %rb_sc_ctxs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_sc_ctxs.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %13, i32 %spec.select.i.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i, align 4
  %cmp.not.i = icmp eq ptr %15, %1
  br i1 %cmp.not.i, label %rpcrdma_sendctx_put_locked.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

rpcrdma_sendctx_put_locked.exit:                  ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %16 = ptrtoint ptr %rb_sc_tail.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %spec.select.i.i, ptr %rb_sc_tail.i, align 4
  %call25.i = tail call zeroext i1 @xprt_write_space(ptr noundef %3) #11
  %status.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i5 = icmp eq i32 %18, 0
  br i1 %cmp.not.i5, label %rpcrdma_sendctx_put_locked.exit.rpcrdma_flush_disconnect.exit_crit_edge, label %if.then.i

rpcrdma_sendctx_put_locked.exit.rpcrdma_flush_disconnect.exit_crit_edge: ; preds = %rpcrdma_sendctx_put_locked.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_flush_disconnect.exit

if.then.i:                                        ; preds = %rpcrdma_sendctx_put_locked.exit
  %rx_ep.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %rx_ep.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_ep.i, align 8
  %re_force_disconnect.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %20, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %re_force_disconnect.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %re_force_disconnect.i.i, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %re_force_disconnect.i.i, ptr %re_force_disconnect.i.i, i32 1, i32 1, ptr elementtype(i32) %re_force_disconnect.i.i) #11, !srcloc !75
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.rpcrdma_flush_disconnect.exit_crit_edge, label %if.then.i.i

if.then.i.rpcrdma_flush_disconnect.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_flush_disconnect.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  %re_xprt.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %20, i32 0, i32 18
  %22 = ptrtoint ptr %re_xprt.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %re_xprt.i.i, align 4
  tail call void @xprt_force_disconnect(ptr noundef %23) #11
  br label %rpcrdma_flush_disconnect.exit

rpcrdma_flush_disconnect.exit:                    ; preds = %if.then.i.i, %if.then.i.rpcrdma_flush_disconnect.exit_crit_edge, %rpcrdma_sendctx_put_locked.exit.rpcrdma_flush_disconnect.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_wc_send(ptr noundef %wc, ptr noundef %cid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_send, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_wc_send, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %call42 = tail call i32 @__traceiter_xprtrdma_wc_send(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_send, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xprtrdma_wc_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xprtrdma_wc_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1098, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
declare dso_local i32 @__traceiter_xprtrdma_wc_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_sendctx_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_write_space(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frwr_mr_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_createmrs(ptr noundef %r_xprt, i32 noundef %count) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_createmrs, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_createmrs, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !112
  %call42 = tail call i32 @__traceiter_xprtrdma_createmrs(ptr noundef null, ptr noundef %r_xprt, i32 noundef %count) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_createmrs, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_createmrs, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xprtrdma_createmrs.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xprtrdma_createmrs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 757, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
declare dso_local i32 @__traceiter_xprtrdma_createmrs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @frwr_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_dma_maperr(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llist_del_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpcrdma_wc_receive(ptr nocapture noundef readonly %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %2 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_context, align 8
  %rr_cid = getelementptr inbounds %struct.rpcrdma_rep, ptr %1, i32 0, i32 1
  tail call fastcc void @trace_xprtrdma_wc_receive(ptr noundef %wc, ptr noundef %rr_cid)
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ep, align 8
  %re_receive_count = getelementptr inbounds %struct.rpcrdma_ep, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %re_receive_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %re_receive_count, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %re_receive_count, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end, label %if.then.i

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %10 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %byte_len, align 4
  %iov_len.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %iov_len.i, align 4
  %len1.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %1, i32 0, i32 11, i32 8
  %13 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %len1.i, align 4
  %wc_flags = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %14 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wc_flags, align 8
  %rr_wc_flags = getelementptr inbounds %struct.rpcrdma_rep, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %rr_wc_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rr_wc_flags, align 8
  %ex = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %17 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ex, align 4
  %rr_inv_rkey = getelementptr inbounds %struct.rpcrdma_rep, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %rr_inv_rkey to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rr_inv_rkey, align 4
  %rr_rdmabuf = getelementptr inbounds %struct.rpcrdma_rep, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %rr_rdmabuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rr_rdmabuf, align 4
  %rg_device.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %rg_device.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rg_device.i, align 8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %21, align 8
  %26 = load i32, ptr %byte_len, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 8
  %conv.i = trunc i64 %25 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %28, i32 noundef %conv.i, i32 noundef %26, i32 noundef 2) #11
  tail call void @rpcrdma_reply_handler(ptr noundef %1) #11
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %29 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_ep, align 8
  %re_force_disconnect.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %30, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %re_force_disconnect.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %re_force_disconnect.i.i, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %re_force_disconnect.i.i, ptr %re_force_disconnect.i.i, i32 1, i32 1, ptr elementtype(i32) %re_force_disconnect.i.i) #11, !srcloc !75
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.rpcrdma_flush_disconnect.exit_crit_edge, label %if.then.i.i

if.then.i.rpcrdma_flush_disconnect.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpcrdma_flush_disconnect.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  %re_xprt.i.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %30, i32 0, i32 18
  %32 = ptrtoint ptr %re_xprt.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %re_xprt.i.i, align 4
  tail call void @xprt_force_disconnect(ptr noundef %33) #11
  br label %rpcrdma_flush_disconnect.exit

rpcrdma_flush_disconnect.exit:                    ; preds = %if.then.i.i, %if.then.i.rpcrdma_flush_disconnect.exit_crit_edge
  %rr_node.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %1, i32 0, i32 13
  %rb_free_reps.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %3, i32 0, i32 2, i32 10
  %call.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef %rr_node.i, ptr noundef %rr_node.i, ptr noundef %rb_free_reps.i) #11
  br label %cleanup

cleanup:                                          ; preds = %rpcrdma_flush_disconnect.exit, %if.end
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_wc_receive(ptr noundef %wc, ptr noundef %cid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_receive, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_wc_receive, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !114
  %call42 = tail call i32 @__traceiter_xprtrdma_wc_receive(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_receive, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_wc_receive, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xprtrdma_wc_receive.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xprtrdma_wc_receive.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1096, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #11
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
declare dso_local void @rpcrdma_reply_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_wc_receive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_post_recv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_post_recvs_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_post_recvs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/xprtrdma/verbs.c", i32 513, i32 2}
!2 = !{ptr @rpcrdma_buffer_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/sunrpc/xprtrdma/verbs.c", i32 1054, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rpcrdma_buffer_create.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../net/sunrpc/xprtrdma/verbs.c", i32 1057, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rpcrdma_ep_create.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../net/sunrpc/xprtrdma/verbs.c", i32 409, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/sunrpc/xprtrdma/verbs.c", i32 461, i32 14}
!13 = !{ptr @init_completion.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../include/linux/completion.h", i32 87, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sunrpc/xprtrdma/verbs.c", i32 246, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rpcrdma_cm_event_handler._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @rpcrdma_cm_event_handler._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/trace/events/rpcrdma.h", i32 634, i32 1}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!25 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/trace/events/rpcrdma.h", i32 670, i32 1}
!31 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/trace/events/rpcrdma.h", i32 671, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/trace/events/rpcrdma.h", i32 1098, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/trace/events/rpcrdma.h", i32 734, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/trace/events/rpcrdma.h", i32 1230, i32 1}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/trace/events/rpcrdma.h", i32 1096, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/trace/events/rpcrdma.h", i32 981, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/trace/events/rpcrdma.h", i32 1035, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/trace/events/rpcrdma.h", i32 1003, i32 1}
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
!74 = !{i64 2148269480}
!75 = !{i64 754303, i64 754328, i64 754350, i64 754366, i64 754378, i64 754398, i64 754422, i64 754438, i64 754450}
!76 = !{i64 2148269668}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2148355472}
!79 = !{i64 2148270781, i64 2148270813, i64 2148270842, i64 2148270876, i64 2148270907, i64 2148270930}
!80 = !{i64 2148355701}
!81 = !{i64 2148271591, i64 2148271623, i64 2148271652, i64 2148271686, i64 2148271717, i64 2148271740}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{!"auto-init"}
!84 = !{i8 0, i8 2}
!85 = !{i64 2148358513}
!86 = !{i64 2148273246, i64 2148273278, i64 2148273307, i64 2148273341, i64 2148273372, i64 2148273395}
!87 = !{i64 2148358742}
!88 = !{i64 2148751876, i64 2148751881, i64 2148751894, i64 2148751938, i64 2148751972, i64 2148751993}
!89 = !{i64 2158438434}
!90 = !{i64 2158438649}
!91 = !{i64 2149332942}
!92 = !{i64 2149333978}
!93 = !{i64 2158455419}
!94 = !{i64 2158455640}
!95 = !{i64 2148359592}
!96 = !{i64 2148274056, i64 2148274088, i64 2148274117, i64 2148274151, i64 2148274182, i64 2148274205}
!97 = !{i64 2149632370}
!98 = !{i32 0, i32 33}
!99 = !{i64 2159072883}
!100 = !{i64 2159073092}
!101 = !{i64 2158731539}
!102 = !{i64 2158731744}
!103 = !{i64 2158769683}
!104 = !{i64 2158769920}
!105 = !{i64 2158748463}
!106 = !{i64 2158748690}
!107 = !{i64 2158417290}
!108 = !{i64 2158417501}
!109 = !{i64 2160228283}
!110 = !{i64 2158825660}
!111 = !{i64 2158825869}
!112 = !{i64 2158528510}
!113 = !{i64 2158528735}
!114 = !{i64 2158804404}
!115 = !{i64 2158804619}
