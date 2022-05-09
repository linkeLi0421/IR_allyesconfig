; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/svc_rdma_rw.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/svc_rdma_rw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%struct.atomic_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.svcxprt_rdma = type { %struct.svc_xprt, ptr, %struct.list_head, i32, i32, i8, %struct.atomic_t, i32, i32, i32, i32, i32, i8, ptr, %struct.spinlock, %struct.llist_head, %struct.spinlock, %struct.llist_head, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, %struct.spinlock, %struct.wait_queue_head, i32, %struct.work_struct, %struct.llist_head, %struct.atomic_t }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.127 }
%union.anon.127 = type { ptr, [124 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_head = type { ptr }
%struct.svc_rdma_write_info = type { ptr, i32, i32, ptr, ptr, i32, %struct.svc_rdma_chunk_ctxt }
%struct.svc_rdma_chunk_ctxt = type { %struct.rpc_rdma_cid, %struct.ib_cqe, ptr, %struct.list_head, i64, i32, i32, %struct.completion }
%struct.rpc_rdma_cid = type { i32, i32 }
%struct.ib_cqe = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.147, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.147 = type { %struct.work_struct }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.179, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.179 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ib_odp_caps = type { i64, %struct.anon.170 }
%struct.anon.170 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.svc_rdma_recv_ctxt = type { %struct.llist_node, %struct.list_head, %struct.ib_recv_wr, %struct.ib_cqe, %struct.rpc_rdma_cid, %struct.ib_sge, ptr, %struct.xdr_stream, i8, i32, i32, i32, i32, %struct.svc_rdma_pcl, %struct.svc_rdma_pcl, ptr, %struct.svc_rdma_pcl, %struct.svc_rdma_pcl }
%struct.llist_node = type { ptr }
%struct.ib_recv_wr = type { ptr, %union.anon.169, ptr, i32 }
%union.anon.169 = type { i64 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.svc_rdma_pcl = type { i32, %struct.list_head }
%struct.svc_rdma_read_info = type { ptr, ptr, i32, i32, i32, %struct.svc_rdma_chunk_ctxt }
%struct.svc_rdma_chunk = type { %struct.list_head, i32, i32, i32, i32, [0 x %struct.svc_rdma_segment] }
%struct.svc_rdma_segment = type { i32, i32, i64 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.ib_wc = type { %union.anon.145, i32, i32, i32, i32, ptr, %union.anon.146, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.145 = type { i64 }
%union.anon.146 = type { i32 }
%struct.svc_rdma_rw_ctxt = type { %struct.llist_node, %struct.list_head, %struct.rdma_rw_ctx, i32, %struct.sg_table, [0 x %struct.scatterlist] }
%struct.rdma_rw_ctx = type { i32, i8, %union.anon.182 }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type { %struct.ib_sge, %struct.ib_rdma_wr }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.167, ptr, i32, i32, i32, %union.anon.168 }
%union.anon.167 = type { i64 }
%union.anon.168 = type { i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_svcrdma_wc_write = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/rpcrdma.h\00", [33 x i8] zeroinitializer }, align 32
@trace_svcrdma_wc_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_svcrdma_wc_write_flush = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_wc_write_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_wc_write_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_wc_write_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@svcrdma_stat_write = external dso_local global %struct.percpu_counter, align 8
@__tracepoint_svcrdma_no_rwctx_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_no_rwctx_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_dma_map_rw_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_dma_map_rw_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_svcrdma_small_wrch_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_small_wrch_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_svcrdma_post_write_chunk = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_post_write_chunk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@svcrdma_stat_sq_starve = external dso_local global %struct.percpu_counter, align 8
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/sunrpc/xprtrdma/svc_rdma_rw.c\00", [62 x i8] zeroinitializer }, align 32
@__tracepoint_svcrdma_sq_full = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_sq_full.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_sq_retry = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_sq_retry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_sq_post_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_sq_post_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_post_reply_chunk = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_post_reply_chunk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_wc_read = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_wc_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_wc_read_flush = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_wc_read_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_wc_read_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_wc_read_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@svcrdma_stat_read = external dso_local global %struct.percpu_counter, align 8
@__tracepoint_svcrdma_page_overrun_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_page_overrun_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_post_read_chunk = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_post_read_chunk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@___asan_gen_.10 = private unnamed_addr constant [34 x i8] c"../include/trace/events/rpcrdma.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 2148, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 108, i32 2 }
@___asan_gen_.16 = private constant [37 x i8] c"../net/sunrpc/xprtrdma/svc_rdma_rw.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 397, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 87, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @init_completion.__key, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rdma_destroy_rw_ctxts(ptr noundef %rdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_rw_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 17
  %call1 = tail call ptr @llist_del_first(ptr noundef %sc_rw_ctxts) #9
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call1, %entry.while.body_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call3) #9
  %call = tail call ptr @llist_del_first(ptr noundef %sc_rw_ctxts) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llist_del_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_rdma_send_write_chunk(ptr noundef %rdma, ptr noundef %chunk, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 120) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %chunk, ptr %call7.i.i, align 8
  %wi_seg_off.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %wi_seg_off.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wi_seg_off.i, align 4
  %wi_seg_no.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %wi_seg_no.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wi_seg_no.i, align 8
  %wi_cc.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6
  %sc_sq_cq.i.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 24
  %4 = ptrtoint ptr %sc_sq_cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_sq_cq.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.ib_cq, ptr %5, i32 0, i32 17, i32 8
  %6 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i.i.i, align 8
  %8 = ptrtoint ptr %wi_cc.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %wi_cc.i, align 8
  %sc_completion_ids.i.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 30
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_completion_ids.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %sc_completion_ids.i.i.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_completion_ids.i.i.i, ptr %sc_completion_ids.i.i.i, i32 1, ptr elementtype(i32) %sc_completion_ids.i.i.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  %ci_completion_id.i.i.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %ci_completion_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %asmresult.i.i.i.i.i.i.i, ptr %ci_completion_id.i.i.i, align 4
  %cc_rdma.i.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %cc_rdma.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rdma, ptr %cc_rdma.i.i, align 4
  %cc_rwctxts.i.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %cc_rwctxts.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %cc_rwctxts.i.i, ptr %cc_rwctxts.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cc_rwctxts.i.i, ptr %prev.i.i.i, align 4
  %cc_sqecount.i.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 5
  %14 = ptrtoint ptr %cc_sqecount.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cc_sqecount.i.i, align 8
  %cc_cqe.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %cc_cqe.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @svc_rdma_write_done, ptr %cc_cqe.i, align 8
  %call1 = tail call i32 @svc_rdma_xb_write(ptr noundef %xdr, ptr noundef nonnull %call7.i.i)
  %len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 8
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %17)
  %cmp.not = icmp eq i32 %call1, %17
  br i1 %cmp.not, label %if.end3, label %if.end.out_err_crit_edge

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end3:                                          ; preds = %if.end
  %18 = ptrtoint ptr %cc_sqecount.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cc_sqecount.i.i, align 8
  tail call fastcc void @trace_svcrdma_post_write_chunk(ptr noundef %wi_cc.i, i32 noundef %19)
  %call4 = tail call fastcc i32 @svc_rdma_post_chunk_ctxt(ptr noundef %wi_cc.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.out_err_crit_edge, label %if.end7

if.end3.out_err_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  br label %cleanup

out_err:                                          ; preds = %if.end3.out_err_crit_edge, %if.end.out_err_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_err_crit_edge ], [ %call4, %if.end3.out_err_crit_edge ]
  tail call fastcc void @svc_rdma_cc_release(ptr noundef %wi_cc.i, i32 noundef 1) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ %21, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_rdma_xb_write(ptr noundef %xdr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iov_len = getelementptr inbounds %struct.kvec, ptr %xdr, i32 0, i32 1
  %0 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdr, align 4
  %wi_base.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %wi_base.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %wi_base.i, align 8
  %5 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iov_len, align 4
  %call.i = tail call fastcc i32 @svc_rdma_build_writes(ptr noundef %data, ptr noundef nonnull @svc_rdma_vec_to_sg, i32 noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 5
  %7 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end4.if.end15_crit_edge, label %if.then6

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then6:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iov_len, align 4
  %wi_xdr.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %wi_xdr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %xdr, ptr %wi_xdr.i, align 4
  %12 = load i32, ptr %iov_len, align 4
  %sub.i = sub i32 %10, %12
  %wi_next_off.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %data, i32 0, i32 5
  %13 = ptrtoint ptr %wi_next_off.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.i, ptr %wi_next_off.i, align 4
  %call.i44 = tail call fastcc i32 @svc_rdma_build_writes(ptr noundef %data, ptr noundef nonnull @svc_rdma_pagelist_to_sg, i32 noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp12 = icmp slt i32 %call.i44, 0
  br i1 %cmp12, label %if.then6.cleanup_crit_edge, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.then6.if.end15_crit_edge, %if.end4.if.end15_crit_edge
  %iov_len17 = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %iov_len17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iov_len17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.end15.if.end26_crit_edge, label %if.then19

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19:                                        ; preds = %if.end15
  %tail = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail, align 4
  %wi_base.i45 = getelementptr inbounds %struct.svc_rdma_write_info, ptr %data, i32 0, i32 4
  %18 = ptrtoint ptr %wi_base.i45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %wi_base.i45, align 8
  %19 = ptrtoint ptr %iov_len17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iov_len17, align 4
  %call.i47 = tail call fastcc i32 @svc_rdma_build_writes(ptr noundef %data, ptr noundef nonnull @svc_rdma_vec_to_sg, i32 noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp23 = icmp slt i32 %call.i47, 0
  br i1 %cmp23, label %if.then19.cleanup_crit_edge, label %if.then19.if.end26_crit_edge

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.then19.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 8
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then19.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.end26 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i44, %if.then6.cleanup_crit_edge ], [ %call.i47, %if.then19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_post_write_chunk(ptr noundef %cid, i32 noundef %sqecount) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_write_chunk, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_post_write_chunk, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  %call42 = tail call i32 @__traceiter_svcrdma_post_write_chunk(ptr noundef null, ptr noundef %cid, i32 noundef %sqecount) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_write_chunk, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_write_chunk, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_post_write_chunk.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_post_write_chunk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2112, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
define internal fastcc i32 @svc_rdma_post_chunk_ctxt(ptr noundef %cc) unnamed_addr #0 align 64 {
entry:
  %bad_wr = alloca ptr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_rdma = getelementptr inbounds %struct.svc_rdma_chunk_ctxt, ptr %cc, i32 0, i32 2
  %0 = ptrtoint ptr %cc_rdma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_rdma, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_wr) #9
  %2 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad_wr, align 4, !annotation !77
  %cc_sqecount = getelementptr inbounds %struct.svc_rdma_chunk_ctxt, ptr %cc, i32 0, i32 5
  %3 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cc_sqecount, align 8
  %sc_sq_depth = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %sc_sq_depth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sc_sq_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %entry.cleanup54_crit_edge, label %if.end

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup54

if.end:                                           ; preds = %entry
  %cc_rwctxts = getelementptr inbounds %struct.svc_rdma_chunk_ctxt, ptr %cc, i32 0, i32 3
  %7 = ptrtoint ptr %cc_rwctxts to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.096 = load ptr, ptr %cc_rwctxts, align 4
  %cmp.i.not97 = icmp eq ptr %tmp.096, %cc_rwctxts
  br i1 %cmp.i.not97, label %if.end.do.body.preheader_crit_edge, label %for.body.lr.ph

if.end.do.body.preheader_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %cc_cqe = getelementptr inbounds %struct.svc_rdma_chunk_ctxt, ptr %cc, i32 0, i32 1
  %sc_qp = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 22
  %sc_port_num = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 12
  %rw_ctx.peel = getelementptr i8, ptr %tmp.096, i32 12
  %8 = ptrtoint ptr %sc_qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_qp, align 4
  %10 = ptrtoint ptr %sc_port_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sc_port_num, align 4
  %conv.peel = zext i8 %11 to i32
  %call3.peel = tail call ptr @rdma_rw_ctx_wrs(ptr noundef %rw_ctx.peel, ptr noundef %9, i32 noundef %conv.peel, ptr noundef %cc_cqe, ptr noundef null) #9
  %12 = ptrtoint ptr %tmp.096 to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.0.peel = load ptr, ptr %tmp.096, align 4
  %cmp.i.not.peel = icmp eq ptr %tmp.0.peel, %cc_rwctxts
  br i1 %cmp.i.not.peel, label %for.body.lr.ph.do.body.preheader_crit_edge, label %for.body.lr.ph.for.body_crit_edge

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body.lr.ph.do.body.preheader_crit_edge:       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.body.do.body.preheader_crit_edge, %for.body.lr.ph.do.body.preheader_crit_edge, %if.end.do.body.preheader_crit_edge
  %first_wr.0.lcssa = phi ptr [ null, %if.end.do.body.preheader_crit_edge ], [ %call3.peel, %for.body.lr.ph.do.body.preheader_crit_edge ], [ %call3, %for.body.do.body.preheader_crit_edge ]
  %sc_sq_avail = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cc_sqecount, align 8
  %call.i.i105 = call zeroext i1 @__kasan_check_write(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @llvm.prefetch.p0(ptr %sc_sq_avail, i32 1, i32 3, i32 1) #9
  %15 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_sq_avail, ptr %sc_sq_avail, i32 %14, ptr elementtype(i32) %sc_sq_avail) #9, !srcloc !79
  %asmresult.i.i.i106 = extractvalue { i32, i32 } %15, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i106)
  %cmp7107 = icmp sgt i32 %asmresult.i.i.i106, 0
  br i1 %cmp7107, label %do.body.preheader.if.then9_crit_edge, label %if.end16.lr.ph

do.body.preheader.if.then9_crit_edge:             ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end16.lr.ph:                                   ; preds = %do.body.preheader
  %sc_send_wait = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 26
  br label %if.end16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %tmp.0100 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %tmp.0.peel, %for.body.lr.ph.for.body_crit_edge ]
  %first_wr.099 = phi ptr [ %call3, %for.body.for.body_crit_edge ], [ %call3.peel, %for.body.lr.ph.for.body_crit_edge ]
  %rw_ctx = getelementptr i8, ptr %tmp.0100, i32 12
  %16 = ptrtoint ptr %sc_qp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc_qp, align 4
  %18 = ptrtoint ptr %sc_port_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sc_port_num, align 4
  %conv = zext i8 %19 to i32
  %call3 = tail call ptr @rdma_rw_ctx_wrs(ptr noundef %rw_ctx, ptr noundef %17, i32 noundef %conv, ptr noundef null, ptr noundef %first_wr.099) #9
  %20 = ptrtoint ptr %tmp.0100 to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.0 = load ptr, ptr %tmp.0100, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %cc_rwctxts
  br i1 %cmp.i.not, label %for.body.do.body.preheader_crit_edge, label %for.body.for.body_crit_edge, !llvm.loop !81

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.do.body.preheader_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

if.then9:                                         ; preds = %do.end44.if.then9_crit_edge, %do.body.preheader.if.then9_crit_edge
  %call10 = call i64 @ktime_get() #9
  %cc_posttime = getelementptr inbounds %struct.svc_rdma_chunk_ctxt, ptr %cc, i32 0, i32 4
  %21 = ptrtoint ptr %cc_posttime to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call10, ptr %cc_posttime, align 8
  %sc_qp11 = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %sc_qp11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sc_qp11, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %27(ptr noundef %23, ptr noundef %first_wr.0.lcssa, ptr noundef nonnull %bad_wr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.then9.cleanup54_crit_edge, label %do.end46

if.then9.cleanup54_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup54

if.end16:                                         ; preds = %do.end44.if.end16_crit_edge, %if.end16.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %28 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @svcrdma_stat_sq_starve, i64 noundef 1, i32 noundef %28) #9
  call fastcc void @trace_svcrdma_sq_full(ptr noundef %1)
  %29 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cc_sqecount, align 8
  %call.i.i90 = call zeroext i1 @__kasan_check_write(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %sc_sq_avail, i32 1, i32 3, i32 1) #9
  %31 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_sq_avail, ptr %sc_sq_avail, i32 %30, ptr elementtype(i32) %sc_sq_avail) #9, !srcloc !83
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 398) #9
  %call.i.i91 = call zeroext i1 @__kasan_check_read(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  %32 = ptrtoint ptr %sc_sq_avail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %sc_sq_avail, align 4
  %34 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cc_sqecount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp27 = icmp sgt i32 %33, %35
  br i1 %cmp27, label %if.end16.do.end44_crit_edge, label %if.end30

if.end16.do.end44_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

if.end30:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %36 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call32101 = call i32 @prepare_to_wait_event(ptr noundef %sc_send_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i92102 = call zeroext i1 @__kasan_check_read(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  %37 = ptrtoint ptr %sc_sq_avail to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %sc_sq_avail, align 4
  %39 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cc_sqecount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp36103 = icmp sgt i32 %38, %40
  br i1 %cmp36103, label %if.end30.for.end40_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  br label %cleanup

if.end30.for.end40_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  call void @schedule() #9
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %sc_send_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i92 = call zeroext i1 @__kasan_check_read(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  %41 = ptrtoint ptr %sc_sq_avail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %sc_sq_avail, align 4
  %43 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cc_sqecount, align 8
  %cmp36 = icmp sgt i32 %42, %44
  br i1 %cmp36, label %cleanup.for.end40_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

for.end40:                                        ; preds = %cleanup.for.end40_crit_edge, %if.end30.for.end40_crit_edge
  call void @finish_wait(ptr noundef %sc_send_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.end44

do.end44:                                         ; preds = %for.end40, %if.end16.do.end44_crit_edge
  call fastcc void @trace_svcrdma_sq_retry(ptr noundef %1)
  %45 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cc_sqecount, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @llvm.prefetch.p0(ptr %sc_sq_avail, i32 1, i32 3, i32 1) #9
  %47 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_sq_avail, ptr %sc_sq_avail, i32 %46, ptr elementtype(i32) %sc_sq_avail) #9, !srcloc !79
  %asmresult.i.i.i = extractvalue { i32, i32 } %47, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %cmp7 = icmp sgt i32 %asmresult.i.i.i, 0
  br i1 %cmp7, label %do.end44.if.then9_crit_edge, label %do.end44.if.end16_crit_edge

do.end44.if.end16_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end44.if.then9_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

do.end46:                                         ; preds = %if.then9
  call fastcc void @trace_svcrdma_sq_post_err(ptr noundef %1, i32 noundef %call.i)
  call void @svc_xprt_deferred_close(ptr noundef %1) #9
  %48 = ptrtoint ptr %bad_wr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bad_wr, align 4
  %cmp47.not = icmp eq ptr %49, %first_wr.0.lcssa
  br i1 %cmp47.not, label %if.end50, label %do.end46.cleanup54_crit_edge

do.end46.cleanup54_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup54

if.end50:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cc_sqecount, align 8
  %call.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %sc_sq_avail, i32 1, i32 3, i32 1) #9
  %52 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_sq_avail, ptr %sc_sq_avail, i32 %51, ptr elementtype(i32) %sc_sq_avail) #9, !srcloc !83
  %sc_send_wait53 = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 26
  call void @__wake_up(ptr noundef %sc_send_wait53, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup54

cleanup54:                                        ; preds = %if.end50, %do.end46.cleanup54_crit_edge, %if.then9.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ -107, %if.end50 ], [ -22, %entry.cleanup54_crit_edge ], [ 0, %if.then9.cleanup54_crit_edge ], [ 0, %do.end46.cleanup54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_wr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_rdma_send_reply_chunk(ptr noundef %rdma, ptr noundef %rctxt, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_chunks.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %cl_chunks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cl_chunks.i, align 4
  %cmp.i.i = icmp eq ptr %1, %cl_chunks.i
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cl_chunks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %cl_chunks.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 120) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp.i.i.i = icmp eq ptr %3, %cl_chunks.i
  %spec.select.i = select i1 %cmp.i.i.i, ptr null, ptr %3
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %call7.i.i, align 8
  %wi_seg_off.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %wi_seg_off.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wi_seg_off.i, align 4
  %wi_seg_no.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %wi_seg_no.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wi_seg_no.i, align 8
  %wi_cc.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6
  %sc_sq_cq.i.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 24
  %8 = ptrtoint ptr %sc_sq_cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_sq_cq.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.ib_cq, ptr %9, i32 0, i32 17, i32 8
  %10 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i.i.i, align 8
  %12 = ptrtoint ptr %wi_cc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %wi_cc.i, align 8
  %sc_completion_ids.i.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 30
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_completion_ids.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %sc_completion_ids.i.i.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_completion_ids.i.i.i, ptr %sc_completion_ids.i.i.i, i32 1, ptr elementtype(i32) %sc_completion_ids.i.i.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  %ci_completion_id.i.i.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %14 = ptrtoint ptr %ci_completion_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %asmresult.i.i.i.i.i.i.i, ptr %ci_completion_id.i.i.i, align 4
  %cc_rdma.i.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %cc_rdma.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rdma, ptr %cc_rdma.i.i, align 4
  %cc_rwctxts.i.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %cc_rwctxts.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %cc_rwctxts.i.i, ptr %cc_rwctxts.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cc_rwctxts.i.i, ptr %prev.i.i.i, align 4
  %cc_sqecount.i.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 5
  %18 = ptrtoint ptr %cc_sqecount.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cc_sqecount.i.i, align 8
  %cc_cqe.i = getelementptr inbounds %struct.svc_rdma_write_info, ptr %call7.i.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %cc_cqe.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @svc_rdma_write_done, ptr %cc_cqe.i, align 8
  %rc_write_pcl = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 16
  %call6 = tail call i32 @pcl_process_nonpayloads(ptr noundef %rc_write_pcl, ptr noundef %xdr, ptr noundef nonnull @svc_rdma_xb_write, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.out_err_crit_edge, label %if.end8

if.end5.out_err_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end8:                                          ; preds = %if.end5
  %20 = ptrtoint ptr %cc_sqecount.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cc_sqecount.i.i, align 8
  tail call fastcc void @trace_svcrdma_post_reply_chunk(ptr noundef %wi_cc.i, i32 noundef %21)
  %call9 = tail call fastcc i32 @svc_rdma_post_chunk_ctxt(ptr noundef %wi_cc.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.out_err_crit_edge, label %if.end12

if.end8.out_err_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 8
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  br label %cleanup

out_err:                                          ; preds = %if.end8.out_err_crit_edge, %if.end5.out_err_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5.out_err_crit_edge ], [ %call9, %if.end8.out_err_crit_edge ]
  tail call fastcc void @svc_rdma_cc_release(ptr noundef %wi_cc.i, i32 noundef 1) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ %23, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcl_process_nonpayloads(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_post_reply_chunk(ptr noundef %cid, i32 noundef %sqecount) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_reply_chunk, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_post_reply_chunk, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %call42 = tail call i32 @__traceiter_svcrdma_post_reply_chunk(ptr noundef null, ptr noundef %cid, i32 noundef %sqecount) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_reply_chunk, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_reply_chunk, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_post_reply_chunk.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_post_reply_chunk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2113, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
define dso_local i32 @svc_rdma_process_read_list(ptr noundef %rdma, ptr noundef %rqstp, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 120) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ri_cc.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 5
  %sc_sq_cq.i.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 24
  %1 = ptrtoint ptr %sc_sq_cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc_sq_cq.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.ib_cq, ptr %2, i32 0, i32 17, i32 8
  %3 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i.i.i, align 8
  %5 = ptrtoint ptr %ri_cc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ri_cc.i, align 8
  %sc_completion_ids.i.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 30
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_completion_ids.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %sc_completion_ids.i.i.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_completion_ids.i.i.i, ptr %sc_completion_ids.i.i.i, i32 1, ptr elementtype(i32) %sc_completion_ids.i.i.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  %ci_completion_id.i.i.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %ci_completion_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %asmresult.i.i.i.i.i.i.i, ptr %ci_completion_id.i.i.i, align 4
  %cc_rdma.i.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %cc_rdma.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rdma, ptr %cc_rdma.i.i, align 4
  %cc_rwctxts.i.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %cc_rwctxts.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %cc_rwctxts.i.i, ptr %cc_rwctxts.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 5, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cc_rwctxts.i.i, ptr %prev.i.i.i, align 4
  %cc_sqecount.i.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 5, i32 5
  %11 = ptrtoint ptr %cc_sqecount.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cc_sqecount.i.i, align 8
  %cc_cqe.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %cc_cqe.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @svc_rdma_wc_read_done, ptr %cc_cqe.i, align 8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rqstp, ptr %call7.i.i, align 8
  %ri_readctxt = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ri_readctxt to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %head, ptr %ri_readctxt, align 4
  %ri_pageno = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %ri_pageno to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ri_pageno, align 8
  %ri_pageoff = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %ri_pageoff to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ri_pageoff, align 4
  %ri_totalbytes = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %ri_totalbytes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ri_totalbytes, align 8
  %cl_chunks.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %head, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %cl_chunks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cl_chunks.i, align 4
  %cmp.i.i = icmp eq ptr %19, %cl_chunks.i
  br i1 %cmp.i.i, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.end
  %rc_read_pcl = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %head, i32 0, i32 14
  %20 = ptrtoint ptr %rc_read_pcl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rc_read_pcl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp eq i32 %21, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then2
  %cl_chunks.i.i.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %head, i32 0, i32 14, i32 1
  %22 = ptrtoint ptr %cl_chunks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cl_chunks.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %23, %cl_chunks.i.i.i
  %spec.select.i.i = select i1 %cmp.i.i.i.i, ptr null, ptr %23
  %ch_segments.i.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5
  %ch_segcount.i.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %ch_segcount.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ch_segcount.i.i, align 4
  %sub11.i.i = add i32 %25, -1
  %arrayidx212.i.i = getelementptr %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5, i32 %sub11.i.i
  %cmp.not13.i.i = icmp ugt ptr %ch_segments.i.i, %arrayidx212.i.i
  br i1 %cmp.not13.i.i, label %if.then3.out_err_crit_edge, label %if.then3.for.body.i.i_crit_edge

if.then3.for.body.i.i_crit_edge:                  ; preds = %if.then3
  br label %for.body.i.i

if.then3.out_err_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then3.for.body.i.i_crit_edge
  %segment.014.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %ch_segments.i.i, %if.then3.for.body.i.i_crit_edge ]
  %call.i.i = tail call fastcc i32 @svc_rdma_build_read_segment(ptr noundef %call7.i.i, ptr noundef %segment.014.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %for.body.i.i.out_err_crit_edge, label %if.end.i.i

for.body.i.i.out_err_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end.i.i:                                       ; preds = %for.body.i.i
  %rs_length.i.i = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment.014.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %rs_length.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rs_length.i.i, align 4
  %28 = ptrtoint ptr %ri_totalbytes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ri_totalbytes, align 8
  %add.i.i = add i32 %29, %27
  store i32 %add.i.i, ptr %ri_totalbytes, align 8
  %incdec.ptr.i.i = getelementptr %struct.svc_rdma_segment, ptr %segment.014.i.i, i32 1
  %30 = ptrtoint ptr %ch_segcount.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ch_segcount.i.i, align 4
  %sub.i.i = add i32 %31, -1
  %arrayidx2.i.i = getelementptr %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5, i32 %sub.i.i
  %cmp.not.i.i = icmp ugt ptr %incdec.ptr.i.i, %arrayidx2.i.i
  br i1 %cmp.not.i.i, label %if.end9.thread54, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end9.thread54:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rq_arg.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %32 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rq_arg.i, align 4
  %ch_position.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %ch_position.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ch_position.i, align 8
  %add.ptr.i = getelementptr i8, ptr %33, i32 %35
  %tail.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i, ptr %tail.i, align 4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iov_len.i, align 4
  %39 = load i32, ptr %ch_position.i, align 8
  %sub.i = sub i32 %38, %39
  %iov_len10.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %iov_len10.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i, ptr %iov_len10.i, align 4
  %41 = load i32, ptr %ch_position.i, align 8
  store i32 %41, ptr %iov_len.i, align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i, align 8
  %rq_pages.i = getelementptr inbounds %struct.svc_rqst, ptr %43, i32 0, i32 20
  %pages.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 3
  %44 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %rq_pages.i, ptr %pages.i, align 4
  %ch_length.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %ch_length.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ch_length.i, align 4
  %add.i37.i = add i32 %46, 3
  %and.i.i = and i32 %add.i37.i, -4
  %page_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 5
  %47 = ptrtoint ptr %page_len.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.i.i, ptr %page_len.i, align 4
  %len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 8
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i, align 4
  %add.i = add i32 %49, %and.i.i
  store i32 %add.i, ptr %len.i, align 4
  %buflen.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 7
  %50 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buflen.i, align 4
  %add18.i = add i32 %51, %and.i.i
  store i32 %add18.i, ptr %buflen.i, align 4
  br label %if.end12

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @svc_rdma_read_multiple_chunks(ptr noundef nonnull %call7.i.i)
  br label %if.end9

if.else7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @svc_rdma_read_special(ptr noundef nonnull %call7.i.i)
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.else
  %ret.0 = phi i32 [ %call5, %if.else ], [ %call8, %if.else7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp10 = icmp slt i32 %ret.0, 0
  br i1 %cmp10, label %if.end9.out_err_crit_edge, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end9.out_err_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %if.end9.thread54
  %52 = ptrtoint ptr %cc_sqecount.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cc_sqecount.i.i, align 8
  tail call fastcc void @trace_svcrdma_post_read_chunk(ptr noundef %ri_cc.i, i32 noundef %53)
  %cc_done = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 5, i32 7
  %54 = ptrtoint ptr %cc_done to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %cc_done, align 8
  %wait.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #9
  %call13 = tail call fastcc i32 @svc_rdma_post_chunk_ctxt(ptr noundef %ri_cc.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.out_err_crit_edge, label %if.end16

if.end12.out_err_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wait_for_completion(ptr noundef %cc_done) #9
  %cc_status = getelementptr inbounds %struct.svc_rdma_read_info, ptr %call7.i.i, i32 0, i32 5, i32 6
  %55 = ptrtoint ptr %cc_status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cc_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp18.not = icmp eq i32 %56, 0
  %spec.select = select i1 %cmp18.not, i32 1, i32 -5
  %rc_page_count = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %head, i32 0, i32 10
  %57 = ptrtoint ptr %rc_page_count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rc_page_count, align 8
  %arrayidx = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 20, i32 %58
  %rq_respages = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 21
  %59 = ptrtoint ptr %rq_respages to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx, ptr %rq_respages, align 4
  %add.ptr = getelementptr ptr, ptr %arrayidx, i32 1
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %60 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr, ptr %rq_next_page, align 8
  store i32 0, ptr %rc_page_count, align 8
  br label %out_err

out_err:                                          ; preds = %if.end16, %if.end12.out_err_crit_edge, %if.end9.out_err_crit_edge, %for.body.i.i.out_err_crit_edge, %if.then3.out_err_crit_edge
  %ret.2 = phi i32 [ %ret.0, %if.end9.out_err_crit_edge ], [ %call13, %if.end12.out_err_crit_edge ], [ %spec.select, %if.end16 ], [ -22, %if.then3.out_err_crit_edge ], [ %call.i.i, %for.body.i.i.out_err_crit_edge ]
  tail call fastcc void @svc_rdma_cc_release(ptr noundef %ri_cc.i, i32 noundef 2) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_rdma_read_multiple_chunks(ptr nocapture noundef %info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_readctxt = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %ri_readctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ri_readctxt, align 4
  %cl_chunks.i.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %1, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %cl_chunks.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %cl_chunks.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %3, %cl_chunks.i.i
  %spec.select.i = select i1 %cmp.i.i.i, ptr null, ptr %3
  %ch_position = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i, i32 0, i32 1
  %4 = ptrtoint ptr %ch_position to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch_position, align 8
  %rc_recv_buf.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rc_recv_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rc_recv_buf.i, align 8
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 8
  %ri_pageoff.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 3
  %10 = ptrtoint ptr %ri_pageoff.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ri_pageoff.i, align 4
  %add.i = add i32 %5, 4095
  %add1.i = add i32 %add.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1.i)
  %cmp1.not.i = icmp ult i32 %add1.i, 4096
  br i1 %cmp1.not.i, label %entry.svc_rdma_copy_inline_range.exit_crit_edge, label %for.body.lr.ph.i

entry.svc_rdma_copy_inline_range.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_rdma_copy_inline_range.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %shr.i = lshr i32 %add1.i, 12
  %rc_page_count.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %1, i32 0, i32 10
  %ri_pageno.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 2
  %ri_totalbytes.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %offset.addr.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add18.i, %if.end16.i.for.body.i_crit_edge ]
  %page_no.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc19.i, %if.end16.i.for.body.i_crit_edge ]
  %remaining.addr.02.i = phi i32 [ %5, %for.body.lr.ph.i ], [ %sub17.i, %if.end16.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %ri_pageoff.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ri_pageoff.i, align 4
  %sub.i = sub i32 4096, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %remaining.addr.02.i, i32 %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %rc_page_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rc_page_count.i, align 8
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %rc_page_count.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %17 = ptrtoint ptr %ri_pageno.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ri_pageno.i, align 8
  %arrayidx.i = getelementptr %struct.svc_rqst, ptr %9, i32 0, i32 20, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %20) #9
  %21 = ptrtoint ptr %ri_pageno.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ri_pageno.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %22
  %add.ptr6.i = getelementptr i8, ptr %7, i32 %offset.addr.04.i
  %23 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr6.i, i32 %14)
  %24 = ptrtoint ptr %ri_totalbytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ri_totalbytes.i, align 8
  %add7.i = add i32 %25, %14
  store i32 %add7.i, ptr %ri_totalbytes.i, align 8
  %26 = ptrtoint ptr %ri_pageoff.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ri_pageoff.i, align 4
  %add9.i = add i32 %27, %14
  store i32 %add9.i, ptr %ri_pageoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add9.i)
  %cmp11.i = icmp eq i32 %add9.i, 4096
  br i1 %cmp11.i, label %if.then12.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %ri_pageno.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ri_pageno.i, align 8
  %inc14.i = add i32 %29, 1
  store i32 %inc14.i, ptr %ri_pageno.i, align 8
  %30 = ptrtoint ptr %ri_pageoff.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ri_pageoff.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end.i.if.end16.i_crit_edge
  %sub17.i = sub i32 %remaining.addr.02.i, %14
  %add18.i = add i32 %14, %offset.addr.04.i
  %inc19.i = add nuw nsw i32 %page_no.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i, %shr.i
  br i1 %exitcond.not.i, label %if.end16.i.svc_rdma_copy_inline_range.exit_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end16.i.svc_rdma_copy_inline_range.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_rdma_copy_inline_range.exit

svc_rdma_copy_inline_range.exit:                  ; preds = %if.end16.i.svc_rdma_copy_inline_range.exit_crit_edge, %entry.svc_rdma_copy_inline_range.exit_crit_edge
  ret i32 -22
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_rdma_read_special(ptr noundef %info) unnamed_addr #4 align 64 {
entry:
  %dummy.i148.i = alloca %struct.svc_rdma_segment, align 8
  %dummy.i110.i = alloca %struct.svc_rdma_segment, align 8
  %dummy.i.i = alloca %struct.svc_rdma_segment, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %ri_readctxt.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %ri_readctxt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ri_readctxt.i, align 4
  %cl_chunks.i.i.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %3, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %cl_chunks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cl_chunks.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %5, %cl_chunks.i.i.i
  %spec.select.i.i = select i1 %cmp.i.i.i.i, ptr null, ptr %5
  %cl_chunks.i.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %3, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %cl_chunks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %cl_chunks.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %7, %cl_chunks.i.i
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %ch_segments.i.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5
  %ch_segcount.i.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %ch_segcount.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_segcount.i.i, align 4
  %sub11.i.i = add i32 %9, -1
  %arrayidx212.i.i = getelementptr %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5, i32 %sub11.i.i
  %cmp.not13.i.i = icmp ugt ptr %ch_segments.i.i, %arrayidx212.i.i
  br i1 %cmp.not13.i.i, label %if.then.i.out_crit_edge, label %for.body.lr.ph.i.i

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %ri_totalbytes.i.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %segment.014.i.i = phi ptr [ %ch_segments.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call fastcc i32 @svc_rdma_build_read_segment(ptr noundef %info, ptr noundef %segment.014.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %for.body.i.i.out_crit_edge, label %if.end.i.i

for.body.i.i.out_crit_edge:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i:                                       ; preds = %for.body.i.i
  %rs_length.i.i = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment.014.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %rs_length.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rs_length.i.i, align 4
  %12 = ptrtoint ptr %ri_totalbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ri_totalbytes.i.i, align 8
  %add.i.i = add i32 %13, %11
  store i32 %add.i.i, ptr %ri_totalbytes.i.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.svc_rdma_segment, ptr %segment.014.i.i, i32 1
  %14 = ptrtoint ptr %ch_segcount.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ch_segcount.i.i, align 4
  %sub.i.i = add i32 %15, -1
  %arrayidx2.i.i = getelementptr %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5, i32 %sub.i.i
  %cmp.not.i.i = icmp ugt ptr %incdec.ptr.i.i, %arrayidx2.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %16 = ptrtoint ptr %cl_chunks.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %cl_chunks.i.i, align 4
  %cmp.i.i.i72.i = icmp eq ptr %17, %cl_chunks.i.i
  %spec.select.i73.i = select i1 %cmp.i.i.i72.i, ptr null, ptr %17
  %ch_position.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i73.i, i32 0, i32 1
  %18 = ptrtoint ptr %ch_position.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch_position.i, align 8
  %ch_segments.i74.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5
  %ch_segcount.i75.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %ch_segcount.i75.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch_segcount.i75.i, align 4
  %sub49.i.i = add i32 %21, -1
  %arrayidx250.i.i = getelementptr %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5, i32 %sub49.i.i
  %cmp.not51.i.i = icmp ugt ptr %ch_segments.i74.i, %arrayidx250.i.i
  br i1 %cmp.not51.i.i, label %if.end.i.out_crit_edge, label %for.body.lr.ph.i77.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph.i77.i:                             ; preds = %if.end.i
  %22 = getelementptr inbounds %struct.svc_rdma_segment, ptr %dummy.i.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.svc_rdma_segment, ptr %dummy.i.i, i32 0, i32 2
  %ri_totalbytes.i76.i = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 4
  br label %for.body.i80.i

for.body.i80.i:                                   ; preds = %for.inc.i.i.for.body.i80.i_crit_edge, %for.body.lr.ph.i77.i
  %offset.addr.055.i.i = phi i32 [ 0, %for.body.lr.ph.i77.i ], [ %offset.addr.1.ph.i.i, %for.inc.i.i.for.body.i80.i_crit_edge ]
  %ret.054.i.i = phi i32 [ -22, %for.body.lr.ph.i77.i ], [ %ret.1.ph.i.i, %for.inc.i.i.for.body.i80.i_crit_edge ]
  %segment.053.i.i = phi ptr [ %ch_segments.i74.i, %for.body.lr.ph.i77.i ], [ %incdec.ptr.i84.i, %for.inc.i.i.for.body.i80.i_crit_edge ]
  %length.addr.052.i.i = phi i32 [ %19, %for.body.lr.ph.i77.i ], [ %length.addr.1.ph.i.i, %for.inc.i.i.for.body.i80.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dummy.i.i) #9
  %rs_length.i78.i = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment.053.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %rs_length.i78.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rs_length.i78.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.055.i.i, i32 %25)
  %cmp3.i79.i = icmp ugt i32 %offset.addr.055.i.i, %25
  br i1 %cmp3.i79.i, label %if.then.i.i, label %if.end.i83.i

if.then.i.i:                                      ; preds = %for.body.i80.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub5.i.i = sub i32 %offset.addr.055.i.i, %25
  br label %for.inc.i.i

if.end.i83.i:                                     ; preds = %for.body.i80.i
  %26 = ptrtoint ptr %segment.053.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %segment.053.i.i, align 8
  %28 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dummy.i.i, align 8
  %29 = tail call i32 @llvm.umin.i32(i32 %length.addr.052.i.i, i32 %25) #9
  %sub9.i.i = sub i32 %29, %offset.addr.055.i.i
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub9.i.i, ptr %22, align 4
  %rs_offset.i.i = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment.053.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %rs_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rs_offset.i.i, align 8
  %conv.i.i = zext i32 %offset.addr.055.i.i to i64
  %add.i81.i = add i64 %32, %conv.i.i
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add.i81.i, ptr %23, align 8
  %call.i82.i = call fastcc i32 @svc_rdma_build_read_segment(ptr noundef %info, ptr noundef nonnull %dummy.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %cmp12.i.i = icmp slt i32 %call.i82.i, 0
  br i1 %cmp12.i.i, label %cleanup.i.i, label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ri_totalbytes.i76.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ri_totalbytes.i76.i, align 8
  %add17.i.i = add i32 %35, %sub9.i.i
  store i32 %add17.i.i, ptr %ri_totalbytes.i76.i, align 8
  %sub19.i.i = sub i32 %length.addr.052.i.i, %sub9.i.i
  br label %for.inc.i.i

cleanup.i.i:                                      ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dummy.i.i) #9
  br label %out

for.inc.i.i:                                      ; preds = %if.end15.i.i, %if.then.i.i
  %length.addr.1.ph.i.i = phi i32 [ %sub19.i.i, %if.end15.i.i ], [ %length.addr.052.i.i, %if.then.i.i ]
  %ret.1.ph.i.i = phi i32 [ %call.i82.i, %if.end15.i.i ], [ %ret.054.i.i, %if.then.i.i ]
  %offset.addr.1.ph.i.i = phi i32 [ 0, %if.end15.i.i ], [ %sub5.i.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dummy.i.i) #9
  %incdec.ptr.i84.i = getelementptr %struct.svc_rdma_segment, ptr %segment.053.i.i, i32 1
  %36 = ptrtoint ptr %ch_segcount.i75.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ch_segcount.i75.i, align 4
  %sub.i85.i = add i32 %37, -1
  %arrayidx2.i86.i = getelementptr %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5, i32 %sub.i85.i
  %cmp.not.i87.i = icmp ugt ptr %incdec.ptr.i84.i, %arrayidx2.i86.i
  br i1 %cmp.not.i87.i, label %svc_rdma_read_chunk_range.exit.i, label %for.inc.i.i.for.body.i80.i_crit_edge

for.inc.i.i.for.body.i80.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i80.i

svc_rdma_read_chunk_range.exit.i:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.ph.i.i)
  %cmp.i = icmp slt i32 %ret.1.ph.i.i, 0
  br i1 %cmp.i, label %svc_rdma_read_chunk_range.exit.i.out_crit_edge, label %if.end6.i

svc_rdma_read_chunk_range.exit.i.out_crit_edge:   ; preds = %svc_rdma_read_chunk_range.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6.i:                                        ; preds = %svc_rdma_read_chunk_range.exit.i
  %38 = getelementptr inbounds %struct.svc_rdma_segment, ptr %dummy.i110.i, i32 0, i32 1
  %39 = getelementptr inbounds %struct.svc_rdma_segment, ptr %dummy.i110.i, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %svc_rdma_read_chunk_range.exit147.i.for.cond.i_crit_edge, %if.end6.i
  %start.0.i = phi i32 [ 0, %if.end6.i ], [ %add.i, %svc_rdma_read_chunk_range.exit147.i.for.cond.i_crit_edge ]
  %length.0.i = phi i32 [ %19, %if.end6.i ], [ %sub.i, %svc_rdma_read_chunk_range.exit147.i.for.cond.i_crit_edge ]
  %chunk.0.in.i = phi ptr [ %cl_chunks.i.i, %if.end6.i ], [ %chunk.0.i, %svc_rdma_read_chunk_range.exit147.i.for.cond.i_crit_edge ]
  %40 = ptrtoint ptr %chunk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %chunk.0.i = load ptr, ptr %chunk.0.in.i, align 4
  %cmp9.not.i = icmp eq ptr %chunk.0.i, %cl_chunks.i.i
  br i1 %cmp9.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %ch_segments.i88.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0.i, i32 0, i32 5
  %ch_segcount.i89.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0.i, i32 0, i32 4
  %41 = ptrtoint ptr %ch_segcount.i89.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ch_segcount.i89.i, align 4
  %sub11.i90.i = add i32 %42, -1
  %arrayidx212.i91.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.0.i, i32 0, i32 5, i32 %sub11.i90.i
  %cmp.not13.i92.i = icmp ugt ptr %ch_segments.i88.i, %arrayidx212.i91.i
  br i1 %cmp.not13.i92.i, label %for.body.i.out_crit_edge, label %for.body.i.for.body.i98.i_crit_edge

for.body.i.for.body.i98.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i98.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.i98.i:                                   ; preds = %if.end.i105.i.for.body.i98.i_crit_edge, %for.body.i.for.body.i98.i_crit_edge
  %segment.014.i95.i = phi ptr [ %incdec.ptr.i101.i, %if.end.i105.i.for.body.i98.i_crit_edge ], [ %ch_segments.i88.i, %for.body.i.for.body.i98.i_crit_edge ]
  %call.i96.i = tail call fastcc i32 @svc_rdma_build_read_segment(ptr noundef %info, ptr noundef %segment.014.i95.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %cmp3.i97.i = icmp slt i32 %call.i96.i, 0
  br i1 %cmp3.i97.i, label %for.body.i98.i.out_crit_edge, label %if.end.i105.i

for.body.i98.i.out_crit_edge:                     ; preds = %for.body.i98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i105.i:                                    ; preds = %for.body.i98.i
  %rs_length.i99.i = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment.014.i95.i, i32 0, i32 1
  %43 = ptrtoint ptr %rs_length.i99.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rs_length.i99.i, align 4
  %45 = ptrtoint ptr %ri_totalbytes.i76.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ri_totalbytes.i76.i, align 8
  %add.i100.i = add i32 %46, %44
  store i32 %add.i100.i, ptr %ri_totalbytes.i76.i, align 8
  %incdec.ptr.i101.i = getelementptr %struct.svc_rdma_segment, ptr %segment.014.i95.i, i32 1
  %47 = ptrtoint ptr %ch_segcount.i89.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ch_segcount.i89.i, align 4
  %sub.i102.i = add i32 %48, -1
  %arrayidx2.i103.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.0.i, i32 0, i32 5, i32 %sub.i102.i
  %cmp.not.i104.i = icmp ugt ptr %incdec.ptr.i101.i, %arrayidx2.i103.i
  br i1 %cmp.not.i104.i, label %if.end13.i, label %if.end.i105.i.for.body.i98.i_crit_edge

if.end.i105.i.for.body.i98.i_crit_edge:           ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i98.i

if.end13.i:                                       ; preds = %if.end.i105.i
  %49 = ptrtoint ptr %chunk.0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chunk.0.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %50, %cl_chunks.i.i
  %tobool.not192.i = icmp eq ptr %50, null
  %tobool.not.i = or i1 %cmp.i.not.i.i, %tobool.not192.i
  br i1 %tobool.not.i, label %if.end13.i.for.end.i_crit_edge, label %if.end16.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end16.i:                                       ; preds = %if.end13.i
  %add.i = add i32 %length.0.i, %start.0.i
  %ch_position17.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %ch_position17.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ch_position17.i, align 8
  %sub.i = sub i32 %52, %add.i100.i
  %53 = ptrtoint ptr %ch_segcount.i75.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ch_segcount.i75.i, align 4
  %sub49.i113.i = add i32 %54, -1
  %arrayidx250.i114.i = getelementptr %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5, i32 %sub49.i113.i
  %cmp.not51.i115.i = icmp ugt ptr %ch_segments.i74.i, %arrayidx250.i114.i
  br i1 %cmp.not51.i115.i, label %if.end16.i.out_crit_edge, label %if.end16.i.for.body.i124.i_crit_edge

if.end16.i.for.body.i124.i_crit_edge:             ; preds = %if.end16.i
  br label %for.body.i124.i

if.end16.i.out_crit_edge:                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.i124.i:                                  ; preds = %for.inc.i145.i.for.body.i124.i_crit_edge, %if.end16.i.for.body.i124.i_crit_edge
  %offset.addr.055.i118.i = phi i32 [ %offset.addr.1.ph.i140.i, %for.inc.i145.i.for.body.i124.i_crit_edge ], [ %add.i, %if.end16.i.for.body.i124.i_crit_edge ]
  %ret.054.i119.i = phi i32 [ %ret.1.ph.i139.i, %for.inc.i145.i.for.body.i124.i_crit_edge ], [ -22, %if.end16.i.for.body.i124.i_crit_edge ]
  %segment.053.i120.i = phi ptr [ %incdec.ptr.i141.i, %for.inc.i145.i.for.body.i124.i_crit_edge ], [ %ch_segments.i74.i, %if.end16.i.for.body.i124.i_crit_edge ]
  %length.addr.052.i121.i = phi i32 [ %length.addr.1.ph.i138.i, %for.inc.i145.i.for.body.i124.i_crit_edge ], [ %sub.i, %if.end16.i.for.body.i124.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dummy.i110.i) #9
  %rs_length.i122.i = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment.053.i120.i, i32 0, i32 1
  %55 = ptrtoint ptr %rs_length.i122.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rs_length.i122.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.055.i118.i, i32 %56)
  %cmp3.i123.i = icmp ugt i32 %offset.addr.055.i118.i, %56
  br i1 %cmp3.i123.i, label %if.then.i126.i, label %if.end.i133.i

if.then.i126.i:                                   ; preds = %for.body.i124.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub5.i125.i = sub i32 %offset.addr.055.i118.i, %56
  br label %for.inc.i145.i

if.end.i133.i:                                    ; preds = %for.body.i124.i
  %57 = ptrtoint ptr %segment.053.i120.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %segment.053.i120.i, align 8
  %59 = ptrtoint ptr %dummy.i110.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %dummy.i110.i, align 8
  %60 = tail call i32 @llvm.umin.i32(i32 %length.addr.052.i121.i, i32 %56) #9
  %sub9.i127.i = sub i32 %60, %offset.addr.055.i118.i
  %61 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub9.i127.i, ptr %38, align 4
  %rs_offset.i128.i = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment.053.i120.i, i32 0, i32 2
  %62 = ptrtoint ptr %rs_offset.i128.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %rs_offset.i128.i, align 8
  %conv.i129.i = zext i32 %offset.addr.055.i118.i to i64
  %add.i130.i = add i64 %63, %conv.i129.i
  %64 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %add.i130.i, ptr %39, align 8
  %call.i131.i = call fastcc i32 @svc_rdma_build_read_segment(ptr noundef %info, ptr noundef nonnull %dummy.i110.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131.i)
  %cmp12.i132.i = icmp slt i32 %call.i131.i, 0
  br i1 %cmp12.i132.i, label %cleanup.i137.i, label %if.end15.i136.i

if.end15.i136.i:                                  ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %ri_totalbytes.i76.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ri_totalbytes.i76.i, align 8
  %add17.i134.i = add i32 %66, %sub9.i127.i
  store i32 %add17.i134.i, ptr %ri_totalbytes.i76.i, align 8
  %sub19.i135.i = sub i32 %length.addr.052.i121.i, %sub9.i127.i
  br label %for.inc.i145.i

cleanup.i137.i:                                   ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dummy.i110.i) #9
  br label %out

for.inc.i145.i:                                   ; preds = %if.end15.i136.i, %if.then.i126.i
  %length.addr.1.ph.i138.i = phi i32 [ %sub19.i135.i, %if.end15.i136.i ], [ %length.addr.052.i121.i, %if.then.i126.i ]
  %ret.1.ph.i139.i = phi i32 [ %call.i131.i, %if.end15.i136.i ], [ %ret.054.i119.i, %if.then.i126.i ]
  %offset.addr.1.ph.i140.i = phi i32 [ 0, %if.end15.i136.i ], [ %sub5.i125.i, %if.then.i126.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dummy.i110.i) #9
  %incdec.ptr.i141.i = getelementptr %struct.svc_rdma_segment, ptr %segment.053.i120.i, i32 1
  %67 = ptrtoint ptr %ch_segcount.i75.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ch_segcount.i75.i, align 4
  %sub.i142.i = add i32 %68, -1
  %arrayidx2.i143.i = getelementptr %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5, i32 %sub.i142.i
  %cmp.not.i144.i = icmp ugt ptr %incdec.ptr.i141.i, %arrayidx2.i143.i
  br i1 %cmp.not.i144.i, label %svc_rdma_read_chunk_range.exit147.i, label %for.inc.i145.i.for.body.i124.i_crit_edge

for.inc.i145.i.for.body.i124.i_crit_edge:         ; preds = %for.inc.i145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i124.i

svc_rdma_read_chunk_range.exit147.i:              ; preds = %for.inc.i145.i
  %cmp19.i = icmp slt i32 %ret.1.ph.i139.i, 0
  br i1 %cmp19.i, label %svc_rdma_read_chunk_range.exit147.i.out_crit_edge, label %svc_rdma_read_chunk_range.exit147.i.for.cond.i_crit_edge

svc_rdma_read_chunk_range.exit147.i.for.cond.i_crit_edge: ; preds = %svc_rdma_read_chunk_range.exit147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

svc_rdma_read_chunk_range.exit147.i.out_crit_edge: ; preds = %svc_rdma_read_chunk_range.exit147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end.i:                                        ; preds = %if.end13.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %69 = ptrtoint ptr %ch_segcount.i75.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ch_segcount.i75.i, align 4
  %sub49.i151.i = add i32 %70, -1
  %arrayidx250.i152.i = getelementptr %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5, i32 %sub49.i151.i
  %cmp.not51.i153.i = icmp ugt ptr %ch_segments.i74.i, %arrayidx250.i152.i
  br i1 %cmp.not51.i153.i, label %for.end.i.out_crit_edge, label %for.body.lr.ph.i155.i

for.end.i.out_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph.i155.i:                            ; preds = %for.end.i
  %ch_length.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %ch_length.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ch_length.i, align 4
  %add27.i = add i32 %length.0.i, %start.0.i
  %sub28.i = sub i32 %72, %add27.i
  %73 = getelementptr inbounds %struct.svc_rdma_segment, ptr %dummy.i148.i, i32 0, i32 1
  %74 = getelementptr inbounds %struct.svc_rdma_segment, ptr %dummy.i148.i, i32 0, i32 2
  br label %for.body.i162.i

for.body.i162.i:                                  ; preds = %for.inc.i183.i.for.body.i162.i_crit_edge, %for.body.lr.ph.i155.i
  %offset.addr.055.i156.i = phi i32 [ %add27.i, %for.body.lr.ph.i155.i ], [ %offset.addr.1.ph.i178.i, %for.inc.i183.i.for.body.i162.i_crit_edge ]
  %ret.054.i157.i = phi i32 [ -22, %for.body.lr.ph.i155.i ], [ %ret.1.ph.i177.i, %for.inc.i183.i.for.body.i162.i_crit_edge ]
  %segment.053.i158.i = phi ptr [ %ch_segments.i74.i, %for.body.lr.ph.i155.i ], [ %incdec.ptr.i179.i, %for.inc.i183.i.for.body.i162.i_crit_edge ]
  %length.addr.052.i159.i = phi i32 [ %sub28.i, %for.body.lr.ph.i155.i ], [ %length.addr.1.ph.i176.i, %for.inc.i183.i.for.body.i162.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dummy.i148.i) #9
  %rs_length.i160.i = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment.053.i158.i, i32 0, i32 1
  %75 = ptrtoint ptr %rs_length.i160.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rs_length.i160.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.055.i156.i, i32 %76)
  %cmp3.i161.i = icmp ugt i32 %offset.addr.055.i156.i, %76
  br i1 %cmp3.i161.i, label %if.then.i164.i, label %if.end.i171.i

if.then.i164.i:                                   ; preds = %for.body.i162.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub5.i163.i = sub i32 %offset.addr.055.i156.i, %76
  br label %for.inc.i183.i

if.end.i171.i:                                    ; preds = %for.body.i162.i
  %77 = ptrtoint ptr %segment.053.i158.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %segment.053.i158.i, align 8
  %79 = ptrtoint ptr %dummy.i148.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %dummy.i148.i, align 8
  %80 = tail call i32 @llvm.umin.i32(i32 %length.addr.052.i159.i, i32 %76) #9
  %sub9.i165.i = sub i32 %80, %offset.addr.055.i156.i
  %81 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub9.i165.i, ptr %73, align 4
  %rs_offset.i166.i = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment.053.i158.i, i32 0, i32 2
  %82 = ptrtoint ptr %rs_offset.i166.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rs_offset.i166.i, align 8
  %conv.i167.i = zext i32 %offset.addr.055.i156.i to i64
  %add.i168.i = add i64 %83, %conv.i167.i
  %84 = ptrtoint ptr %74 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %add.i168.i, ptr %74, align 8
  %call.i169.i = call fastcc i32 @svc_rdma_build_read_segment(ptr noundef %info, ptr noundef nonnull %dummy.i148.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169.i)
  %cmp12.i170.i = icmp slt i32 %call.i169.i, 0
  br i1 %cmp12.i170.i, label %cleanup.i175.i, label %if.end15.i174.i

if.end15.i174.i:                                  ; preds = %if.end.i171.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %ri_totalbytes.i76.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ri_totalbytes.i76.i, align 8
  %add17.i172.i = add i32 %86, %sub9.i165.i
  store i32 %add17.i172.i, ptr %ri_totalbytes.i76.i, align 8
  %sub19.i173.i = sub i32 %length.addr.052.i159.i, %sub9.i165.i
  br label %for.inc.i183.i

cleanup.i175.i:                                   ; preds = %if.end.i171.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dummy.i148.i) #9
  br label %out

for.inc.i183.i:                                   ; preds = %if.end15.i174.i, %if.then.i164.i
  %length.addr.1.ph.i176.i = phi i32 [ %sub19.i173.i, %if.end15.i174.i ], [ %length.addr.052.i159.i, %if.then.i164.i ]
  %ret.1.ph.i177.i = phi i32 [ %call.i169.i, %if.end15.i174.i ], [ %ret.054.i157.i, %if.then.i164.i ]
  %offset.addr.1.ph.i178.i = phi i32 [ 0, %if.end15.i174.i ], [ %sub5.i163.i, %if.then.i164.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dummy.i148.i) #9
  %incdec.ptr.i179.i = getelementptr %struct.svc_rdma_segment, ptr %segment.053.i158.i, i32 1
  %87 = ptrtoint ptr %ch_segcount.i75.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ch_segcount.i75.i, align 4
  %sub.i180.i = add i32 %88, -1
  %arrayidx2.i181.i = getelementptr %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 5, i32 %sub.i180.i
  %cmp.not.i182.i = icmp ugt ptr %incdec.ptr.i179.i, %arrayidx2.i181.i
  br i1 %cmp.not.i182.i, label %svc_rdma_read_call_chunk.exit, label %for.inc.i183.i.for.body.i162.i_crit_edge

for.inc.i183.i.for.body.i162.i_crit_edge:         ; preds = %for.inc.i183.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i162.i

svc_rdma_read_call_chunk.exit:                    ; preds = %for.inc.i183.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.ph.i177.i)
  %cmp = icmp slt i32 %ret.1.ph.i177.i, 0
  br i1 %cmp, label %svc_rdma_read_call_chunk.exit.out_crit_edge, label %svc_rdma_read_call_chunk.exit.if.end_crit_edge

svc_rdma_read_call_chunk.exit.if.end_crit_edge:   ; preds = %svc_rdma_read_call_chunk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

svc_rdma_read_call_chunk.exit.out_crit_edge:      ; preds = %svc_rdma_read_call_chunk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %svc_rdma_read_call_chunk.exit.if.end_crit_edge, %if.end.i.i.if.end_crit_edge
  %retval.0.i39 = phi i32 [ %ret.1.ph.i177.i, %svc_rdma_read_call_chunk.exit.if.end_crit_edge ], [ 0, %if.end.i.i.if.end_crit_edge ]
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 15
  %ri_totalbytes = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 4
  %89 = ptrtoint ptr %ri_totalbytes to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ri_totalbytes, align 8
  %len = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 15, i32 8
  %91 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len, align 4
  %add = add i32 %92, %90
  store i32 %add, ptr %len, align 4
  %93 = load i32, ptr %ri_totalbytes, align 8
  %buflen = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 15, i32 7
  %94 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %buflen, align 4
  %add2 = add i32 %95, %93
  store i32 %add2, ptr %buflen, align 4
  %96 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %info, align 8
  %rq_pages = getelementptr inbounds %struct.svc_rqst, ptr %97, i32 0, i32 20
  %98 = ptrtoint ptr %rq_pages to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rq_pages, align 4
  %call4 = tail call ptr @page_address(ptr noundef %99) #9
  %100 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call4, ptr %rq_arg, align 4
  %101 = ptrtoint ptr %ri_totalbytes to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ri_totalbytes, align 8
  %103 = tail call i32 @llvm.umin.i32(i32 %102, i32 4096)
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 1
  %104 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %iov_len, align 4
  %105 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %info, align 8
  %arrayidx12 = getelementptr %struct.svc_rqst, ptr %106, i32 0, i32 20, i32 1
  %pages = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 15, i32 3
  %107 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx12, ptr %pages, align 4
  %108 = ptrtoint ptr %ri_totalbytes to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ri_totalbytes, align 8
  %sub = sub i32 %109, %103
  %page_len = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 15, i32 5
  %110 = ptrtoint ptr %page_len to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %sub, ptr %page_len, align 4
  br label %out

out:                                              ; preds = %if.end, %svc_rdma_read_call_chunk.exit.out_crit_edge, %cleanup.i175.i, %for.end.i.out_crit_edge, %svc_rdma_read_chunk_range.exit147.i.out_crit_edge, %cleanup.i137.i, %if.end16.i.out_crit_edge, %for.body.i98.i.out_crit_edge, %for.body.i.out_crit_edge, %svc_rdma_read_chunk_range.exit.i.out_crit_edge, %cleanup.i.i, %if.end.i.out_crit_edge, %for.body.i.i.out_crit_edge, %if.then.i.out_crit_edge
  %retval.0.i35 = phi i32 [ %ret.1.ph.i177.i, %svc_rdma_read_call_chunk.exit.out_crit_edge ], [ %retval.0.i39, %if.end ], [ %call.i131.i, %cleanup.i137.i ], [ %call.i82.i, %cleanup.i.i ], [ -22, %if.end.i.out_crit_edge ], [ -22, %for.end.i.out_crit_edge ], [ %call.i169.i, %cleanup.i175.i ], [ -22, %if.then.i.out_crit_edge ], [ %ret.1.ph.i.i, %svc_rdma_read_chunk_range.exit.i.out_crit_edge ], [ %call.i.i, %for.body.i.i.out_crit_edge ], [ %call.i96.i, %for.body.i98.i.out_crit_edge ], [ -22, %if.end16.i.out_crit_edge ], [ -22, %for.body.i.out_crit_edge ], [ %ret.1.ph.i139.i, %svc_rdma_read_chunk_range.exit147.i.out_crit_edge ]
  ret i32 %retval.0.i35
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_post_read_chunk(ptr noundef %cid, i32 noundef %sqecount) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_read_chunk, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_post_read_chunk, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %call42 = tail call i32 @__traceiter_svcrdma_post_read_chunk(ptr noundef null, ptr noundef %cid, i32 noundef %sqecount) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_read_chunk, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_read_chunk, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_post_read_chunk.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_post_read_chunk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2111, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_rdma_write_done(ptr nocapture noundef readnone %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %cc_rdma = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %cc_rdma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_rdma, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_svcrdma_wc_write(ptr noundef %wc, ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_svcrdma_wc_write_flush(ptr noundef %wc, ptr noundef %add.ptr)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_svcrdma_wc_write_err(ptr noundef %wc, ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %cc_sqecount = getelementptr i8, ptr %1, i32 24
  %7 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cc_sqecount, align 8
  tail call void @svc_rdma_wake_send_waiters(ptr noundef %3, i32 noundef %8) #9
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %sw.epilog.if.end_crit_edge, label %if.then, !prof !72

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @svc_xprt_deferred_close(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %add.ptr3 = getelementptr i8, ptr %1, i32 -32
  tail call fastcc void @svc_rdma_cc_release(ptr noundef %add.ptr, i32 noundef 1) #9
  tail call void @kfree(ptr noundef %add.ptr3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_wc_write(ptr noundef %wc, ptr noundef %cid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_write, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_write, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  %call42 = tail call i32 @__traceiter_svcrdma_wc_write(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_write, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_wc_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2148, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
define internal fastcc void @trace_svcrdma_wc_write_flush(ptr noundef %wc, ptr noundef %cid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_write_flush, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_write_flush, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  %call42 = tail call i32 @__traceiter_svcrdma_wc_write_flush(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_write_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_write_flush, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_write_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_wc_write_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2149, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
define internal fastcc void @trace_svcrdma_wc_write_err(ptr noundef %wc, ptr noundef %cid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_write_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_write_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  %call42 = tail call i32 @__traceiter_svcrdma_wc_write_err(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_write_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_write_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_write_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_wc_write_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2150, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
declare dso_local void @svc_rdma_wake_send_waiters(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_deferred_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_write_flush(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_write_err(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_rdma_build_writes(ptr noundef %info, ptr nocapture noundef readonly %constructor, i32 noundef %remaining) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_rdma = getelementptr inbounds %struct.svc_rdma_write_info, ptr %info, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %cc_rdma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_rdma, align 4
  %wi_seg_no = getelementptr inbounds %struct.svc_rdma_write_info, ptr %info, i32 0, i32 2
  %wi_seg_off = getelementptr inbounds %struct.svc_rdma_write_info, ptr %info, i32 0, i32 1
  %sc_qp.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 22
  %sc_port_num.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 12
  %cc_rwctxts = getelementptr inbounds %struct.svc_rdma_write_info, ptr %info, i32 0, i32 6, i32 3
  %cc_sqecount = getelementptr inbounds %struct.svc_rdma_write_info, ptr %info, i32 0, i32 6, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %remaining.addr.0 = phi i32 [ %remaining, %entry ], [ %sub26, %do.cond.do.body_crit_edge ]
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %4 = ptrtoint ptr %wi_seg_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wi_seg_no, align 8
  %arrayidx = getelementptr %struct.svc_rdma_chunk, ptr %3, i32 0, i32 5, i32 %5
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %do.body.out_overflow_crit_edge, label %if.end

do.body.out_overflow_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_overflow

if.end:                                           ; preds = %do.body
  %rs_length = getelementptr %struct.svc_rdma_chunk, ptr %3, i32 0, i32 5, i32 %5, i32 1
  %6 = ptrtoint ptr %rs_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rs_length, align 4
  %8 = ptrtoint ptr %wi_seg_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wi_seg_off, align 4
  %sub = sub i32 %7, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %remaining.addr.0, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %if.end.out_overflow_crit_edge, label %if.end3

if.end.out_overflow_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_overflow

if.end3:                                          ; preds = %if.end
  %shr = lshr i32 %10, 12
  %add = add nuw nsw i32 %shr, 2
  %call = tail call fastcc ptr @svc_rdma_get_rw_ctxt(ptr noundef %1, i32 noundef %add)
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end3.cleanup31_crit_edge, label %if.end6

if.end3.cleanup31_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

if.end6:                                          ; preds = %if.end3
  tail call void %constructor(ptr noundef %info, i32 noundef %10, ptr noundef nonnull %call) #9, !callees !94
  %rs_offset = getelementptr %struct.svc_rdma_chunk, ptr %3, i32 0, i32 5, i32 %5, i32 2
  %11 = ptrtoint ptr %rs_offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rs_offset, align 8
  %13 = ptrtoint ptr %wi_seg_off to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wi_seg_off, align 4
  %conv = zext i32 %14 to i64
  %add8 = add i64 %12, %conv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 8
  %rw_ctx.i = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %sc_qp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc_qp.i, align 4
  %19 = ptrtoint ptr %sc_port_num.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sc_port_num.i, align 4
  %conv.i = zext i8 %20 to i32
  %rw_sg_table.i = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 4
  %21 = ptrtoint ptr %rw_sg_table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rw_sg_table.i, align 4
  %rw_nents.i = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 3
  %23 = ptrtoint ptr %rw_nents.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rw_nents.i, align 8
  %call.i = tail call i32 @rdma_rw_ctx_init(ptr noundef %rw_ctx.i, ptr noundef %18, i32 noundef %conv.i, ptr noundef %22, i32 noundef %24, i32 noundef 0, i64 noundef %add8, i32 noundef %16, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %svc_rdma_rw_ctx_init.exit.thread, label %if.end13, !prof !95

svc_rdma_rw_ctx_init.exit.thread:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %rw_nents.i.le = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 3
  %sc_rw_ctxts.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 17
  tail call void @sg_free_table_chained(ptr noundef %rw_sg_table.i, i32 noundef 128) #9
  %call.i.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %call, ptr noundef nonnull %call, ptr noundef %sc_rw_ctxts.i) #9
  %25 = ptrtoint ptr %rw_nents.i.le to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rw_nents.i.le, align 8
  tail call fastcc void @trace_svcrdma_dma_map_rw_err(ptr noundef %1, i32 noundef %26, i32 noundef %call.i) #9
  br label %cleanup31

if.end13:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %27 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @svcrdma_stat_write, i64 noundef 1, i32 noundef %27) #9
  %rw_list = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %cc_rwctxts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cc_rwctxts, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rw_list, ptr noundef %cc_rwctxts, ptr noundef %29) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.list_add.exit_crit_edge

if.end13.list_add.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rw_list, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %rw_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %rw_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cc_rwctxts, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %cc_rwctxts to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %rw_list, ptr %cc_rwctxts, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end13.list_add.exit_crit_edge
  %34 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cc_sqecount, align 8
  %add14 = add i32 %35, %call.i
  store i32 %add14, ptr %cc_sqecount, align 8
  %36 = ptrtoint ptr %rs_length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rs_length, align 4
  %38 = ptrtoint ptr %wi_seg_off to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wi_seg_off, align 4
  %sub17 = sub i32 %37, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub17)
  %cmp18 = icmp eq i32 %10, %sub17
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %wi_seg_no to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wi_seg_no, align 8
  %inc = add i32 %41, 1
  store i32 %inc, ptr %wi_seg_no, align 8
  br label %do.cond

if.else:                                          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add24 = add i32 %39, %10
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then20
  %storemerge = phi i32 [ %add24, %if.else ], [ 0, %if.then20 ]
  %42 = ptrtoint ptr %wi_seg_off to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge, ptr %wi_seg_off, align 4
  %sub26 = sub i32 %remaining.addr.0, %10
  %tobool28.not = icmp eq i32 %sub26, 0
  br i1 %tobool28.not, label %do.cond.cleanup31_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond.cleanup31_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

out_overflow:                                     ; preds = %if.end.out_overflow_crit_edge, %do.body.out_overflow_crit_edge
  %43 = ptrtoint ptr %wi_seg_no to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wi_seg_no, align 8
  %45 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %info, align 8
  %ch_segcount = getelementptr inbounds %struct.svc_rdma_chunk, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %ch_segcount to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ch_segcount, align 4
  tail call fastcc void @trace_svcrdma_small_wrch_err(ptr noundef %1, i32 noundef %remaining.addr.0, i32 noundef %44, i32 noundef %48)
  br label %cleanup31

cleanup31:                                        ; preds = %out_overflow, %do.cond.cleanup31_crit_edge, %svc_rdma_rw_ctx_init.exit.thread, %if.end3.cleanup31_crit_edge
  %retval.2 = phi i32 [ -7, %out_overflow ], [ -5, %svc_rdma_rw_ctx_init.exit.thread ], [ -12, %if.end3.cleanup31_crit_edge ], [ 0, %do.cond.cleanup31_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_rdma_vec_to_sg(ptr nocapture noundef %info, i32 noundef %len, ptr nocapture noundef %ctxt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rw_sg_table = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %ctxt, i32 0, i32 4
  %0 = ptrtoint ptr %rw_sg_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rw_sg_table, align 4
  %wi_base = getelementptr inbounds %struct.svc_rdma_write_info, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %wi_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wi_base, align 8
  %4 = ptrtoint ptr %3 to i32
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.do.body5.i_crit_edge, !prof !72

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %5 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %5, %3
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !72

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %4, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %6, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !95

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %7, i32 %shr.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !72

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !72

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %4, 4095
  %and.i.i.i = and i32 %9, 3
  %or.i.i.i = or i32 %and.i.i.i, %10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i.i.i, ptr %1, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %len, ptr %length.i.i, align 4
  %14 = ptrtoint ptr %wi_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wi_base, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 %len
  store ptr %add.ptr, ptr %wi_base, align 8
  %rw_nents = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %ctxt, i32 0, i32 3
  %16 = ptrtoint ptr %rw_nents to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %rw_nents, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @svc_rdma_get_rw_ctxt(ptr noundef %rdma, i32 noundef %sges) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_rw_ctxt_lock = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %sc_rw_ctxt_lock) #9
  %sc_rw_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 17
  %call = tail call ptr @llist_del_first(ptr noundef %sc_rw_ctxts) #9
  tail call void @_raw_spin_unlock(ptr noundef %sc_rw_ctxt_lock) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %kmalloc.exit, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

kmalloc.exit:                                     ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 2672) #12
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %kmalloc.exit.out_noctx_crit_edge, label %if.end

kmalloc.exit.out_noctx_crit_edge:                 ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_noctx

if.end:                                           ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rw_list = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %rw_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %rw_list, ptr %rw_list, align 4
  %prev.i = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call7.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rw_list, ptr %prev.i, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %ctxt.0 = phi ptr [ %call7.i, %if.end ], [ %call, %entry.if.end6_crit_edge ]
  %rw_first_sgl = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %ctxt.0, i32 0, i32 5
  %rw_sg_table = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %ctxt.0, i32 0, i32 4
  %3 = ptrtoint ptr %rw_sg_table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rw_first_sgl, ptr %rw_sg_table, align 4
  %call10 = tail call i32 @sg_alloc_table_chained(ptr noundef %rw_sg_table, i32 noundef %sges, ptr noundef %rw_first_sgl, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %out_free

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_free:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %ctxt.0) #9
  br label %out_noctx

out_noctx:                                        ; preds = %out_free, %kmalloc.exit.out_noctx_crit_edge
  tail call fastcc void @trace_svcrdma_no_rwctx_err(ptr noundef %rdma, i32 noundef %sges)
  br label %cleanup

cleanup:                                          ; preds = %out_noctx, %if.end6.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_noctx ], [ %ctxt.0, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_small_wrch_err(ptr noundef %rdma, i32 noundef %remaining, i32 noundef %seg_no, i32 noundef %num_segs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_small_wrch_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_small_wrch_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  %call42 = tail call i32 @__traceiter_svcrdma_small_wrch_err(ptr noundef null, ptr noundef %rdma, i32 noundef %remaining, i32 noundef %seg_no, i32 noundef %num_segs) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_small_wrch_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_small_wrch_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_small_wrch_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_small_wrch_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1938, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
declare dso_local i32 @sg_alloc_table_chained(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_no_rwctx_err(ptr noundef %rdma, i32 noundef %num_sges) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_no_rwctx_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_no_rwctx_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %call42 = tail call i32 @__traceiter_svcrdma_no_rwctx_err(ptr noundef null, ptr noundef %rdma, i32 noundef %num_sges) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_no_rwctx_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_no_rwctx_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_no_rwctx_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_no_rwctx_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1878, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_no_rwctx_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_ctx_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_dma_map_rw_err(ptr noundef %rdma, i32 noundef %nents, i32 noundef %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_map_rw_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_dma_map_rw_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %call42 = tail call i32 @__traceiter_svcrdma_dma_map_rw_err(ptr noundef null, ptr noundef %rdma, i32 noundef %nents, i32 noundef %status) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_map_rw_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_map_rw_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_dma_map_rw_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_dma_map_rw_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1853, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
declare dso_local void @sg_free_table_chained(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_dma_map_rw_err(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_small_wrch_err(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_rdma_pagelist_to_sg(ptr nocapture noundef %info, i32 noundef %remaining, ptr nocapture noundef %ctxt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wi_xdr = getelementptr inbounds %struct.svc_rdma_write_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %wi_xdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wi_xdr, align 4
  %wi_next_off = getelementptr inbounds %struct.svc_rdma_write_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %wi_next_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wi_next_off, align 4
  %page_base = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_base, align 4
  %add = add i32 %5, %3
  %shr = lshr i32 %add, 12
  %and = and i32 %add, 4095
  %pages = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages, align 4
  %add.ptr = getelementptr ptr, ptr %7, i32 %shr
  %add2 = add i32 %3, %remaining
  store i32 %add2, ptr %wi_next_off, align 4
  %rw_sg_table = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %ctxt, i32 0, i32 4
  %8 = ptrtoint ptr %rw_sg_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rw_sg_table, align 4
  %sub.peel = sub nuw nsw i32 4096, %and
  %10 = tail call i32 @llvm.umin.i32(i32 %remaining, i32 %sub.peel)
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %9, align 4
  %15 = ptrtoint ptr %12 to i32
  %and2.i.i.peel = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.peel)
  %tobool.not.i.i.peel = icmp eq i32 %and2.i.i.peel, 0
  br i1 %tobool.not.i.i.peel, label %do.body11.i.i.peel, label %entry.do.body5.i.i_crit_edge, !prof !72

entry.do.body5.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

do.body11.i.i.peel:                               ; preds = %entry
  %and.i.i.i.peel = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.peel)
  %tobool.i.not.i.i.peel = icmp eq i32 %and.i.i.i.peel, 0
  br i1 %tobool.i.not.i.i.peel, label %sg_set_page.exit.peel, label %do.body11.i.i.peel.do.body19.i.i_crit_edge, !prof !72

do.body11.i.i.peel.do.body19.i.i_crit_edge:       ; preds = %do.body11.i.i.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19.i.i

sg_set_page.exit.peel:                            ; preds = %do.body11.i.i.peel
  %and.i.i.peel = and i32 %14, 3
  %or.i.i.peel = or i32 %and.i.i.peel, %15
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i.peel, ptr %9, align 4
  %offset1.i.peel = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %offset1.i.peel to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %offset1.i.peel, align 4
  %length.i.peel = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %length.i.peel to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %10, ptr %length.i.peel, align 4
  %sub3.peel = sub i32 %remaining, %10
  %call.peel = tail call ptr @sg_next(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.peel)
  %tobool.not.peel = icmp eq i32 %sub3.peel, 0
  br i1 %tobool.not.peel, label %sg_set_page.exit.peel.do.end_crit_edge, label %sg_set_page.exit.peel.do.body_crit_edge

sg_set_page.exit.peel.do.body_crit_edge:          ; preds = %sg_set_page.exit.peel
  br label %do.body

sg_set_page.exit.peel.do.end_crit_edge:           ; preds = %sg_set_page.exit.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.body:                                          ; preds = %sg_set_page.exit.do.body_crit_edge, %sg_set_page.exit.peel.do.body_crit_edge
  %sge_no.0 = phi i32 [ %inc, %sg_set_page.exit.do.body_crit_edge ], [ 1, %sg_set_page.exit.peel.do.body_crit_edge ]
  %sg.0 = phi ptr [ %call, %sg_set_page.exit.do.body_crit_edge ], [ %call.peel, %sg_set_page.exit.peel.do.body_crit_edge ]
  %add.ptr.pn = phi ptr [ %page.0, %sg_set_page.exit.do.body_crit_edge ], [ %add.ptr, %sg_set_page.exit.peel.do.body_crit_edge ]
  %remaining.addr.0 = phi i32 [ %sub3, %sg_set_page.exit.do.body_crit_edge ], [ %sub3.peel, %sg_set_page.exit.peel.do.body_crit_edge ]
  %page.0 = getelementptr ptr, ptr %add.ptr.pn, i32 1
  %19 = tail call i32 @llvm.umin.i32(i32 %remaining.addr.0, i32 4096)
  %20 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %page.0, align 4
  %22 = ptrtoint ptr %sg.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sg.0, align 4
  %24 = ptrtoint ptr %21 to i32
  %and2.i.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body.do.body5.i.i_crit_edge, !prof !72

do.body.do.body5.i.i_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %do.body.do.body5.i.i_crit_edge, %entry.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

do.body11.i.i:                                    ; preds = %do.body
  %and.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body11.i.i.do.body19.i.i_crit_edge, !prof !72

do.body11.i.i.do.body19.i.i_crit_edge:            ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19.i.i

do.body19.i.i:                                    ; preds = %do.body11.i.i.do.body19.i.i_crit_edge, %do.body11.i.i.peel.do.body19.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %23, 3
  %or.i.i = or i32 %and.i.i, %24
  %25 = ptrtoint ptr %sg.0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i, ptr %sg.0, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0, i32 0, i32 1
  %26 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0, i32 0, i32 2
  %27 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %19, ptr %length.i, align 4
  %sub3 = sub i32 %remaining.addr.0, %19
  %call = tail call ptr @sg_next(ptr noundef %sg.0) #9
  %inc = add i32 %sge_no.0, 1
  %tobool.not = icmp eq i32 %sub3, 0
  br i1 %tobool.not, label %sg_set_page.exit.do.end_crit_edge, label %sg_set_page.exit.do.body_crit_edge, !llvm.loop !105

sg_set_page.exit.do.body_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sg_set_page.exit.do.end_crit_edge:                ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %sg_set_page.exit.do.end_crit_edge, %sg_set_page.exit.peel.do.end_crit_edge
  %inc.lcssa = phi i32 [ 1, %sg_set_page.exit.peel.do.end_crit_edge ], [ %inc, %sg_set_page.exit.do.end_crit_edge ]
  %rw_nents = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %ctxt, i32 0, i32 3
  %28 = ptrtoint ptr %rw_nents to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.lcssa, ptr %rw_nents, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_post_write_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_rw_ctx_wrs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_sq_full(ptr noundef %rdma) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_sq_full, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_sq_full, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %call42 = tail call i32 @__traceiter_svcrdma_sq_full(ptr noundef null, ptr noundef %rdma) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_sq_full, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_sq_full, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_sq_full.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_sq_full.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2210, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_sq_retry(ptr noundef %rdma) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_sq_retry, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_sq_retry, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !108
  %call42 = tail call i32 @__traceiter_svcrdma_sq_retry(ptr noundef null, ptr noundef %rdma) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_sq_retry, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_sq_retry, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_sq_retry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_sq_retry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2211, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
define internal fastcc void @trace_svcrdma_sq_post_err(ptr noundef %rdma, i32 noundef %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_sq_post_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_sq_post_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %call42 = tail call i32 @__traceiter_svcrdma_sq_post_err(ptr noundef null, ptr noundef %rdma, i32 noundef %status) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_sq_post_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_sq_post_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_sq_post_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_sq_post_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2239, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_sq_full(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_sq_retry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_sq_post_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svc_rdma_cc_release(ptr noundef %cc, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  %free = alloca %struct.llist_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_rdma = getelementptr inbounds %struct.svc_rdma_chunk_ctxt, ptr %cc, i32 0, i32 2
  %0 = ptrtoint ptr %cc_rdma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_rdma, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %free) #9
  %2 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %free, align 4
  %cc_rwctxts = getelementptr inbounds %struct.svc_rdma_chunk_ctxt, ptr %cc, i32 0, i32 3
  %3 = ptrtoint ptr %cc_rwctxts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %cc_rwctxts, align 4
  %cmp.not.i22 = icmp eq ptr %4, %cc_rwctxts
  %add.ptr.i23 = getelementptr i8, ptr %4, i32 -4
  %cmp.not2124 = icmp eq ptr %add.ptr.i23, null
  %cmp.not25 = or i1 %cmp.not.i22, %cmp.not2124
  br i1 %cmp.not25, label %entry.if.end5_crit_edge, label %while.body.lr.ph

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

while.body.lr.ph:                                 ; preds = %entry
  %sc_qp = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 22
  %sc_port_num = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %add.ptr.i28 = phi ptr [ %add.ptr.i23, %while.body.lr.ph ], [ %add.ptr.i, %list_del.exit.while.body_crit_edge ]
  %5 = phi ptr [ %4, %while.body.lr.ph ], [ %24, %list_del.exit.while.body_crit_edge ]
  %last.027 = phi ptr [ null, %while.body.lr.ph ], [ %spec.select, %list_del.exit.while.body_crit_edge ]
  %first.026 = phi ptr [ null, %while.body.lr.ph ], [ %add.ptr.i28, %list_del.exit.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rw_ctx = getelementptr i8, ptr %5, i32 12
  %14 = ptrtoint ptr %sc_qp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc_qp, align 4
  %16 = ptrtoint ptr %sc_port_num to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sc_port_num, align 4
  %conv = zext i8 %17 to i32
  %rw_sg_table = getelementptr i8, ptr %5, i32 96
  %18 = ptrtoint ptr %rw_sg_table to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rw_sg_table, align 4
  %rw_nents = getelementptr i8, ptr %5, i32 92
  %20 = ptrtoint ptr %rw_nents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rw_nents, align 8
  call void @rdma_rw_ctx_destroy(ptr noundef %rw_ctx, ptr noundef %15, i32 noundef %conv, ptr noundef %19, i32 noundef %21, i32 noundef %dir) #9
  call void @sg_free_table_chained(ptr noundef %rw_sg_table, i32 noundef 128) #9
  %call.i.i20 = call zeroext i1 @llist_add_batch(ptr noundef nonnull %add.ptr.i28, ptr noundef nonnull %add.ptr.i28, ptr noundef nonnull %free) #9
  %22 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %first.026, ptr %add.ptr.i28, align 8
  %tobool.not = icmp eq ptr %last.027, null
  %spec.select = select i1 %tobool.not, ptr %add.ptr.i28, ptr %last.027
  %23 = ptrtoint ptr %cc_rwctxts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %cc_rwctxts, align 4
  %cmp.not.i = icmp eq ptr %24, %cc_rwctxts
  %add.ptr.i = getelementptr i8, ptr %24, i32 -4
  %cmp.not21 = icmp eq ptr %add.ptr.i, null
  %cmp.not = or i1 %cmp.not.i, %cmp.not21
  br i1 %cmp.not, label %if.then3, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.then3:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sc_rw_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 17
  %call4 = call zeroext i1 @llist_add_batch(ptr noundef nonnull %add.ptr.i28, ptr noundef nonnull %spec.select, ptr noundef %sc_rw_ctxts) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %free) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_rw_ctx_destroy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_post_reply_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_rdma_wc_read_done(ptr nocapture noundef readnone %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ri_totalbytes = getelementptr i8, ptr %1, i32 -16
  %5 = ptrtoint ptr %ri_totalbytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ri_totalbytes, align 8
  %cc_posttime = getelementptr i8, ptr %1, i32 16
  %7 = ptrtoint ptr %cc_posttime to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cc_posttime, align 8
  tail call fastcc void @trace_svcrdma_wc_read(ptr noundef %wc, ptr noundef %add.ptr, i32 noundef %6, i64 noundef %8)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_svcrdma_wc_read_flush(ptr noundef %wc, ptr noundef %add.ptr)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_svcrdma_wc_read_err(ptr noundef %wc, ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %cc_rdma = getelementptr i8, ptr %1, i32 4
  %9 = ptrtoint ptr %cc_rdma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cc_rdma, align 4
  %cc_sqecount = getelementptr i8, ptr %1, i32 24
  %11 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cc_sqecount, align 8
  tail call void @svc_rdma_wake_send_waiters(ptr noundef %10, i32 noundef %12) #9
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 8
  %cc_status = getelementptr i8, ptr %1, i32 28
  %15 = ptrtoint ptr %cc_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cc_status, align 4
  %cc_done = getelementptr i8, ptr %1, i32 32
  tail call void @complete(ptr noundef %cc_done) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_wc_read(ptr noundef %wc, ptr noundef %cid, i32 noundef %totalbytes, i64 noundef %posttime) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_read, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_read, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  %call42 = tail call i32 @__traceiter_svcrdma_wc_read(ptr noundef null, ptr noundef %wc, ptr noundef %cid, i32 noundef %totalbytes, i64 noundef %posttime) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_read, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_wc_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2143, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
define internal fastcc void @trace_svcrdma_wc_read_flush(ptr noundef %wc, ptr noundef %cid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_read_flush, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_read_flush, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
  %call42 = tail call i32 @__traceiter_svcrdma_wc_read_flush(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_read_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_read_flush, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_read_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_wc_read_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2145, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
define internal fastcc void @trace_svcrdma_wc_read_err(ptr noundef %wc, ptr noundef %cid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_read_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_read_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  %call42 = tail call i32 @__traceiter_svcrdma_wc_read_err(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_read_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_read_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_read_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_wc_read_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2146, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_read_flush(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_read_err(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_rdma_build_read_segment(ptr noundef %info, ptr nocapture noundef readonly %segment) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_readctxt = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %ri_readctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ri_readctxt, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %rs_length = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment, i32 0, i32 1
  %4 = ptrtoint ptr %rs_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rs_length, align 4
  %ri_pageoff = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %ri_pageoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ri_pageoff, align 4
  %add = add i32 %5, 4095
  %add1 = add i32 %add, %7
  %shr = lshr i32 %add1, 12
  %cc_rdma = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %cc_rdma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc_rdma, align 4
  %call = tail call fastcc ptr @svc_rdma_get_rw_ctxt(ptr noundef %9, i32 noundef %shr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rw_nents = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %rw_nents to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %rw_nents, align 8
  %rw_sg_table = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1)
  %cmp89.not = icmp ult i32 %add1, 4096
  br i1 %cmp89.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %11 = ptrtoint ptr %rw_sg_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rw_sg_table, align 4
  %rc_page_count = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %1, i32 0, i32 10
  %ri_pageno = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 2
  %rq_page_end = getelementptr inbounds %struct.svc_rqst, ptr %3, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sg.092 = phi ptr [ %12, %for.body.lr.ph ], [ %call10, %for.inc.for.body_crit_edge ]
  %len.091 = phi i32 [ %5, %for.body.lr.ph ], [ %sub20, %for.inc.for.body_crit_edge ]
  %sge_no.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %ri_pageoff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ri_pageoff, align 4
  %sub = sub i32 4096, %14
  %15 = tail call i32 @llvm.umin.i32(i32 %len.091, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  br i1 %tobool6.not, label %if.then7, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %rc_page_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rc_page_count, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %rc_page_count, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body.if.end8_crit_edge
  %18 = ptrtoint ptr %ri_pageno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ri_pageno, align 8
  %arrayidx = getelementptr %struct.svc_rqst, ptr %3, i32 0, i32 20, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %ri_pageoff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ri_pageoff, align 4
  %24 = ptrtoint ptr %sg.092 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg.092, align 4
  %26 = ptrtoint ptr %21 to i32
  %and2.i.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !72

do.body5.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

do.body11.i.i:                                    ; preds = %if.end8
  %and.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !72

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %25, 3
  %or.i.i = or i32 %and.i.i, %26
  %27 = ptrtoint ptr %sg.092 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i.i, ptr %sg.092, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.092, i32 0, i32 1
  %28 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %23, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.092, i32 0, i32 2
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %15, ptr %length.i, align 4
  %call10 = tail call ptr @sg_next(ptr noundef %sg.092) #9
  %30 = ptrtoint ptr %ri_pageoff to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ri_pageoff, align 4
  %add12 = add i32 %31, %15
  store i32 %add12, ptr %ri_pageoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add12)
  %cmp14 = icmp eq i32 %add12, 4096
  br i1 %cmp14, label %if.then15, label %sg_set_page.exit.if.end19_crit_edge

sg_set_page.exit.if.end19_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %ri_pageno to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ri_pageno, align 8
  %inc17 = add i32 %33, 1
  store i32 %inc17, ptr %ri_pageno, align 8
  %34 = ptrtoint ptr %ri_pageoff to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ri_pageoff, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %sg_set_page.exit.if.end19_crit_edge
  %sub20 = sub i32 %len.091, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20)
  %tobool21.not = icmp eq i32 %sub20, 0
  br i1 %tobool21.not, label %if.end19.for.inc_crit_edge, label %land.lhs.true

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end19
  %35 = ptrtoint ptr %ri_pageno to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ri_pageno, align 8
  %add24 = add i32 %36, 1
  %arrayidx25 = getelementptr %struct.svc_rqst, ptr %3, i32 0, i32 20, i32 %add24
  %37 = ptrtoint ptr %rq_page_end to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rq_page_end, align 4
  %cmp26 = icmp ugt ptr %arrayidx25, %38
  br i1 %cmp26, label %out_overrun, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end19.for.inc_crit_edge
  %inc29 = add nuw i32 %sge_no.090, 1
  %39 = ptrtoint ptr %rw_nents to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rw_nents, align 8
  %cmp = icmp ult i32 %inc29, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ %shr, %if.end.for.end_crit_edge ], [ %40, %for.inc.for.end_crit_edge ]
  %41 = ptrtoint ptr %cc_rdma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cc_rdma, align 4
  %rs_offset = getelementptr inbounds %struct.svc_rdma_segment, ptr %segment, i32 0, i32 2
  %43 = ptrtoint ptr %rs_offset to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rs_offset, align 8
  %45 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %segment, align 8
  %rw_ctx.i = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 2
  %sc_qp.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %42, i32 0, i32 22
  %47 = ptrtoint ptr %sc_qp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sc_qp.i, align 4
  %sc_port_num.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %42, i32 0, i32 12
  %49 = ptrtoint ptr %sc_port_num.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sc_port_num.i, align 4
  %conv.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %rw_sg_table to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rw_sg_table, align 4
  %call.i = tail call i32 @rdma_rw_ctx_init(ptr noundef %rw_ctx.i, ptr noundef %48, i32 noundef %conv.i, ptr noundef %52, i32 noundef %.lcssa, i32 noundef 0, i64 noundef %44, i32 noundef %46, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %svc_rdma_rw_ctx_init.exit.thread, label %if.end34, !prof !95

svc_rdma_rw_ctx_init.exit.thread:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sc_rw_ctxts.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %42, i32 0, i32 17
  tail call void @sg_free_table_chained(ptr noundef %rw_sg_table, i32 noundef 128) #9
  %call.i.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %call, ptr noundef nonnull %call, ptr noundef %sc_rw_ctxts.i) #9
  %53 = ptrtoint ptr %rw_nents to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rw_nents, align 8
  tail call fastcc void @trace_svcrdma_dma_map_rw_err(ptr noundef %42, i32 noundef %54, i32 noundef %call.i) #9
  br label %cleanup

if.end34:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %55 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @svcrdma_stat_read, i64 noundef 1, i32 noundef %55) #9
  %rw_list = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 1
  %cc_rwctxts = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %cc_rwctxts to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cc_rwctxts, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rw_list, ptr noundef %cc_rwctxts, ptr noundef %57) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.list_add.exit_crit_edge

if.end34.list_add.exit_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %rw_list, ptr %prev1.i.i, align 4
  %59 = ptrtoint ptr %rw_list to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %rw_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.svc_rdma_rw_ctxt, ptr %call, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %cc_rwctxts, ptr %prev3.i.i, align 4
  %61 = ptrtoint ptr %cc_rwctxts to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %rw_list, ptr %cc_rwctxts, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end34.list_add.exit_crit_edge
  %cc_sqecount = getelementptr inbounds %struct.svc_rdma_read_info, ptr %info, i32 0, i32 5, i32 5
  %62 = ptrtoint ptr %cc_sqecount to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cc_sqecount, align 8
  %add35 = add i32 %63, %call.i
  store i32 %add35, ptr %cc_sqecount, align 8
  br label %cleanup

out_overrun:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %cc_rdma to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cc_rdma, align 4
  tail call fastcc void @trace_svcrdma_page_overrun_err(ptr noundef %65, ptr noundef %3, i32 noundef %36)
  br label %cleanup

cleanup:                                          ; preds = %out_overrun, %list_add.exit, %svc_rdma_rw_ctx_init.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %out_overrun ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ], [ -5, %svc_rdma_rw_ctx_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_page_overrun_err(ptr noundef %rdma, ptr noundef %rqst, i32 noundef %pageno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_page_overrun_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_page_overrun_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %call42 = tail call i32 @__traceiter_svcrdma_page_overrun_err(ptr noundef null, ptr noundef %rdma, ptr noundef %rqst, i32 noundef %pageno) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_page_overrun_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_page_overrun_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_page_overrun_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_page_overrun_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1906, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #9
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
declare dso_local i32 @__traceiter_svcrdma_page_overrun_err(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_post_read_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/trace/events/rpcrdma.h", i32 2148, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/trace/events/rpcrdma.h", i32 2149, i32 1}
!10 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/trace/events/rpcrdma.h", i32 2150, i32 1}
!13 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/trace/events/rpcrdma.h", i32 1855, i32 1}
!16 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/trace/events/rpcrdma.h", i32 1826, i32 1}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/trace/events/rpcrdma.h", i32 1908, i32 1}
!22 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/trace/events/rpcrdma.h", i32 2112, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/sunrpc/xprtrdma/svc_rdma_rw.c", i32 397, i32 3}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/trace/events/rpcrdma.h", i32 2210, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/trace/events/rpcrdma.h", i32 2211, i32 1}
!33 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/trace/events/rpcrdma.h", i32 2213, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/trace/events/rpcrdma.h", i32 2113, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/trace/events/rpcrdma.h", i32 2115, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/trace/events/rpcrdma.h", i32 2145, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/trace/events/rpcrdma.h", i32 2146, i32 1}
!48 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/trace/events/rpcrdma.h", i32 1880, i32 1}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/trace/events/rpcrdma.h", i32 2111, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = !{ptr @init_completion.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../include/linux/completion.h", i32 87, i32 2}
!57 = !{ptr @.str.4, !56, !"<string literal>", i1 false, i1 false}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148626395}
!69 = !{i64 2148541704, i64 2148541736, i64 2148541765, i64 2148541799, i64 2148541830, i64 2148541853}
!70 = !{i64 2148626624}
!71 = !{i64 2148354377, i64 2148354382, i64 2148354395, i64 2148354439, i64 2148354473, i64 2148354494}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2159983121}
!74 = !{i64 2159983358}
!75 = !{i64 2149353140}
!76 = !{i64 2149354176}
!77 = !{!"auto-init"}
!78 = !{i64 2148629436}
!79 = !{i64 2148544169, i64 2148544201, i64 2148544230, i64 2148544264, i64 2148544295, i64 2148544318}
!80 = !{i64 2148629665}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.peeled.count", i32 1}
!83 = !{i64 2148540984, i64 2148541010, i64 2148541039, i64 2148541073, i64 2148541104, i64 2148541127}
!84 = !{i64 2160004919}
!85 = !{i64 2160005156}
!86 = !{i64 2159965438}
!87 = !{i64 2159965673}
!88 = !{i64 2160079163}
!89 = !{i64 2160079372}
!90 = !{i64 2160096430}
!91 = !{i64 2160096651}
!92 = !{i64 2160113943}
!93 = !{i64 2160114160}
!94 = !{ptr @svc_rdma_pagelist_to_sg, ptr @svc_rdma_vec_to_sg}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2153813887, i64 2153814379, i64 2153813924, i64 2153813980, i64 2153814014, i64 2153814038, i64 2153814079, i64 2153814100, i64 2153814128, i64 2153814162}
!97 = !{i64 2153807568, i64 2153808060, i64 2153807605, i64 2153807661, i64 2153807695, i64 2153807719, i64 2153807760, i64 2153807781, i64 2153807809, i64 2153807843}
!98 = !{i64 2153809178, i64 2153809670, i64 2153809215, i64 2153809271, i64 2153809305, i64 2153809329, i64 2153809370, i64 2153809391, i64 2153809419, i64 2153809453}
!99 = !{i64 2159748215}
!100 = !{i64 2159748488}
!101 = !{i64 2159707851}
!102 = !{i64 2159708082}
!103 = !{i64 2159690446}
!104 = !{i64 2159690691}
!105 = distinct !{!105, !82}
!106 = !{i64 2160151565}
!107 = !{i64 2160151766}
!108 = !{i64 2160167979}
!109 = !{i64 2160168182}
!110 = !{i64 2160184658}
!111 = !{i64 2160184883}
!112 = !{i64 2160023039}
!113 = !{i64 2160023290}
!114 = !{i64 2160040483}
!115 = !{i64 2160040702}
!116 = !{i64 2160061964}
!117 = !{i64 2160062179}
!118 = !{i64 2159729741}
!119 = !{i64 2159729988}
