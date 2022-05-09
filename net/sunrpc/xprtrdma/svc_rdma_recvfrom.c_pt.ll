; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/svc_rdma_recvfrom.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/svc_rdma_recvfrom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%struct.atomic_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.svc_rdma_recv_ctxt = type { %struct.llist_node, %struct.list_head, %struct.ib_recv_wr, %struct.ib_cqe, %struct.rpc_rdma_cid, %struct.ib_sge, ptr, %struct.xdr_stream, i8, i32, i32, i32, i32, %struct.svc_rdma_pcl, %struct.svc_rdma_pcl, ptr, %struct.svc_rdma_pcl, %struct.svc_rdma_pcl }
%struct.llist_node = type { ptr }
%struct.ib_recv_wr = type { ptr, %union.anon.169, ptr, i32 }
%union.anon.169 = type { i64 }
%struct.ib_cqe = type { ptr }
%struct.rpc_rdma_cid = type { i32, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.svc_rdma_pcl = type { i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.147, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.147 = type { %struct.work_struct }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.179, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.179 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.170 }
%struct.anon.170 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.svc_rdma_chunk = type { %struct.list_head, i32, i32, i32, i32, [0 x %struct.svc_rdma_segment] }
%struct.svc_rdma_segment = type { i32, i32, i64 }
%struct.ib_wc = type { %union.anon.145, i32, i32, i32, i32, ptr, %union.anon.146, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.145 = type { i64 }
%union.anon.146 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@svcrdma_stat_recv = external dso_local global %struct.percpu_counter, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_svcrdma_wc_recv = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/rpcrdma.h\00", [33 x i8] zeroinitializer }, align 32
@trace_svcrdma_wc_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_svcrdma_wc_recv_flush = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_wc_recv_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_wc_recv_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_wc_recv_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_post_recv = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_post_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_rq_post_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_rq_post_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_svcrdma_decode_rqst = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_decode_rqst.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_decode_short_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_decode_short_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_decode_badvers_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_decode_badvers_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_decode_drop_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_decode_drop_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_decode_badproc_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_decode_badproc_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_decode_parse_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_decode_parse_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@___asan_gen_ = private constant [43 x i8] c"../net/sunrpc/xprtrdma/svc_rdma_recvfrom.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 326, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [34 x i8] c"../include/trace/events/rpcrdma.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 2049, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 108, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rdma_recv_ctxts_destroy(ptr noundef %rdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_recv_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 29
  %call2 = tail call ptr @llist_del_first(ptr noundef %sc_recv_ctxts) #8
  %tobool.not3 = icmp eq ptr %call2, null
  br i1 %tobool.not3, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sc_pd.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call4 = phi ptr [ %call2, %while.body.lr.ph ], [ %call, %while.body.while.body_crit_edge ]
  %0 = ptrtoint ptr %sc_pd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_pd.i, align 4
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %rc_recv_sge.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call4, i32 0, i32 5
  %4 = ptrtoint ptr %rc_recv_sge.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rc_recv_sge.i, align 8
  %length.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call4, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %conv.i.i = trunc i64 %5 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %conv.i.i, i32 noundef %7, i32 noundef 2, i32 noundef 0) #8
  %rc_recv_buf.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call4, i32 0, i32 6
  %10 = ptrtoint ptr %rc_recv_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rc_recv_buf.i, align 8
  tail call void @kfree(ptr noundef %11) #8
  tail call void @kfree(ptr noundef nonnull %call4) #8
  %call = tail call ptr @llist_del_first(ptr noundef %sc_recv_ctxts) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @svc_rdma_recv_ctxt_get(ptr noundef %rdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_recv_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 29
  %call = tail call ptr @llist_del_first(ptr noundef %sc_recv_ctxts) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %out_empty, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %svc_rdma_recv_ctxt_alloc.exit, %entry.out_crit_edge
  %ctxt.0 = phi ptr [ %call7.i.i, %svc_rdma_recv_ctxt_alloc.exit ], [ %call, %entry.out_crit_edge ]
  %rc_page_count = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %ctxt.0, i32 0, i32 10
  %0 = ptrtoint ptr %rc_page_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rc_page_count, align 8
  br label %cleanup

out_empty:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 184) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %out_empty.cleanup_crit_edge, label %if.end.i

out_empty.cleanup_crit_edge:                      ; preds = %out_empty
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %out_empty
  %sc_max_req_size.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 11
  %2 = ptrtoint ptr %sc_max_req_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sc_max_req_size.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #12
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.fail1.i_crit_edge, label %if.end4.i

if.end.i.fail1.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1.i

if.end4.i:                                        ; preds = %if.end.i
  %sc_pd.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 13
  %4 = ptrtoint ptr %sc_pd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_pd.i, align 4
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %8 = ptrtoint ptr %sc_max_req_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sc_max_req_size.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #8
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end4.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge, label %if.then.i.i.i, !prof !52

land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_dma_map_single.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %11) #8
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %15, %if.end.i.i.i.i ], [ %13, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #8
  br label %ib_dma_map_single.exit.i

if.end39.i.i.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %11, ptr noundef nonnull %call9.i.i, i32 noundef %9) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %call9.i.i to i32
  %sub.i.i.i = add i32 %17, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %16, i32 %shr.i.i.i
  %and.i.i.i = and i32 %17, 3968
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %9, i32 noundef 2, i32 noundef 0) #8
  br label %ib_dma_map_single.exit.i

ib_dma_map_single.exit.i:                         ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge ]
  %18 = ptrtoint ptr %sc_pd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc_pd.i, align 4
  %device8.i = getelementptr inbounds %struct.ib_pd, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %device8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device8.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %retval.0.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i57.not.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i57.not.i, label %fail2.i, label %svc_rdma_recv_ctxt_alloc.exit

fail2.i:                                          ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %fail1.i

fail1.i:                                          ; preds = %fail2.i, %if.end.i.fail1.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

svc_rdma_recv_ctxt_alloc.exit:                    ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i.i = zext i32 %retval.0.i.i.i to i64
  %rc_cid.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 4
  %sc_rq_cq.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 23
  %24 = ptrtoint ptr %sc_rq_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc_rq_cq.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.ib_cq, ptr %25, i32 0, i32 17, i32 8
  %26 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i.i, align 8
  %28 = ptrtoint ptr %rc_cid.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rc_cid.i, align 4
  %sc_completion_ids.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 30
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_completion_ids.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %sc_completion_ids.i.i, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_completion_ids.i.i, ptr %sc_completion_ids.i.i, i32 1, ptr elementtype(i32) %sc_completion_ids.i.i) #8, !srcloc !54
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  %ci_completion_id.i.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %ci_completion_id.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %asmresult.i.i.i.i.i.i, ptr %ci_completion_id.i.i, align 8
  %cl_chunks.i.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 13, i32 1
  %31 = ptrtoint ptr %cl_chunks.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %cl_chunks.i.i, ptr %cl_chunks.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 13, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cl_chunks.i.i, ptr %prev.i.i.i, align 4
  %cl_chunks.i58.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 14, i32 1
  %33 = ptrtoint ptr %cl_chunks.i58.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %cl_chunks.i58.i, ptr %cl_chunks.i58.i, align 4
  %prev.i.i59.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cl_chunks.i58.i, ptr %prev.i.i59.i, align 8
  %cl_chunks.i60.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 16, i32 1
  %35 = ptrtoint ptr %cl_chunks.i60.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %cl_chunks.i60.i, ptr %cl_chunks.i60.i, align 4
  %prev.i.i61.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 16, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cl_chunks.i60.i, ptr %prev.i.i61.i, align 8
  %cl_chunks.i62.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 17, i32 1
  %37 = ptrtoint ptr %cl_chunks.i62.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %cl_chunks.i62.i, ptr %cl_chunks.i62.i, align 8
  %prev.i.i63.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i.i63.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cl_chunks.i62.i, ptr %prev.i.i63.i, align 4
  %rc_recv_wr.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %rc_recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rc_recv_wr.i, align 8
  %rc_cqe.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 3
  %40 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %rc_cqe.i, ptr %40, align 8
  %rc_recv_sge.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 5
  %sg_list.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %rc_recv_sge.i, ptr %sg_list.i, align 8
  %num_sge.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %num_sge.i, align 4
  %44 = ptrtoint ptr %rc_cqe.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @svc_rdma_wc_receive, ptr %rc_cqe.i, align 8
  %45 = ptrtoint ptr %rc_recv_sge.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv2.i.i, ptr %rc_recv_sge.i, align 8
  %46 = ptrtoint ptr %sc_max_req_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sc_max_req_size.i, align 4
  %length.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %length.i, align 8
  %49 = ptrtoint ptr %sc_pd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sc_pd.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %lkey.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 5, i32 2
  %53 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %lkey.i, align 4
  %rc_recv_buf.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %rc_recv_buf.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i.i, ptr %rc_recv_buf.i, align 8
  %rc_temp.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call7.i.i, i32 0, i32 8
  %55 = ptrtoint ptr %rc_temp.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %rc_temp.i, align 8
  br label %out

cleanup:                                          ; preds = %fail1.i, %out_empty.cleanup_crit_edge, %out
  %retval.0 = phi ptr [ %ctxt.0, %out ], [ null, %out_empty.cleanup_crit_edge ], [ null, %fail1.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rdma_recv_ctxt_put(ptr noundef %rdma, ptr noundef %ctxt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_call_pcl = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %ctxt, i32 0, i32 13
  tail call void @pcl_free(ptr noundef %rc_call_pcl) #8
  %rc_read_pcl = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %ctxt, i32 0, i32 14
  tail call void @pcl_free(ptr noundef %rc_read_pcl) #8
  %rc_write_pcl = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %ctxt, i32 0, i32 16
  tail call void @pcl_free(ptr noundef %rc_write_pcl) #8
  %rc_reply_pcl = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %ctxt, i32 0, i32 17
  tail call void @pcl_free(ptr noundef %rc_reply_pcl) #8
  %rc_temp = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %ctxt, i32 0, i32 8
  %0 = ptrtoint ptr %rc_temp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rc_temp, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sc_recv_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 29
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %ctxt, ptr noundef %ctxt, ptr noundef %sc_recv_ctxts) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sc_pd.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 13
  %2 = ptrtoint ptr %sc_pd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_pd.i, align 4
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %rc_recv_sge.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %ctxt, i32 0, i32 5
  %6 = ptrtoint ptr %rc_recv_sge.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rc_recv_sge.i, align 8
  %length.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %ctxt, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %conv.i.i = trunc i64 %7 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %conv.i.i, i32 noundef %9, i32 noundef 2, i32 noundef 0) #8
  %rc_recv_buf.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %ctxt, i32 0, i32 6
  %12 = ptrtoint ptr %rc_recv_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rc_recv_buf.i, align 8
  tail call void @kfree(ptr noundef %13) #8
  tail call void @kfree(ptr noundef %ctxt) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcl_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rdma_release_rqst(ptr nocapture noundef %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt_ctxt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 12
  %0 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt_ctxt, align 4
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %2 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt, align 8
  store ptr null, ptr %rq_xprt_ctxt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @svc_rdma_recv_ctxt_put(ptr noundef %3, ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @svc_rdma_post_recvs(ptr noundef %rdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_max_requests = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 9
  %0 = ptrtoint ptr %sc_max_requests to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sc_max_requests, align 4
  %call = tail call fastcc zeroext i1 @svc_rdma_refresh_recvs(ptr noundef %rdma, i32 noundef %1, i1 noundef zeroext true)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @svc_rdma_refresh_recvs(ptr noundef %rdma, i32 noundef %wanted, i1 noundef zeroext %temp) unnamed_addr #0 align 64 {
entry:
  %bad_wr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %temp to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_wr) #8
  %0 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bad_wr, align 4
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %rdma, i32 0, i32 5
  %1 = ptrtoint ptr %xpt_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %xpt_flags, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wanted)
  %tobool1.not38 = icmp eq i32 %wanted, 0
  %or.cond = or i1 %tobool.not, %tobool1.not38
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %sc_pending_recvs = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.body.lr.ph
  %dec40.in = phi i32 [ %wanted, %while.body.lr.ph ], [ %dec40, %if.end5.while.body_crit_edge ]
  %recv_chain.039 = phi ptr [ null, %while.body.lr.ph ], [ %rc_recv_wr, %if.end5.while.body_crit_edge ]
  %call2 = tail call ptr @svc_rdma_recv_ctxt_get(ptr noundef %rdma)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %while.body.while.end_crit_edge, label %if.end5

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end5:                                          ; preds = %while.body
  %dec40 = add i32 %dec40.in, -1
  tail call fastcc void @trace_svcrdma_post_recv(ptr noundef nonnull %call2)
  %rc_temp = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call2, i32 0, i32 8
  %4 = ptrtoint ptr %rc_temp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %rc_temp, align 8
  %rc_recv_wr = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %call2, i32 0, i32 2
  %5 = ptrtoint ptr %rc_recv_wr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %recv_chain.039, ptr %rc_recv_wr, align 8
  %6 = ptrtoint ptr %sc_pending_recvs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sc_pending_recvs, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %sc_pending_recvs, align 4
  %tobool1.not = icmp eq i32 %dec40, 0
  br i1 %tobool1.not, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %while.body.while.end_crit_edge
  %recv_chain.0.lcssa = phi ptr [ %rc_recv_wr, %if.end5.while.end_crit_edge ], [ %recv_chain.039, %while.body.while.end_crit_edge ]
  %tobool9.not = icmp eq ptr %recv_chain.0.lcssa, null
  br i1 %tobool9.not, label %while.end.cleanup_crit_edge, label %if.end11

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %while.end
  %sc_qp = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 22
  %8 = ptrtoint ptr %sc_qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_qp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %11, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %post_recv.i, align 4
  %call.i = call i32 %13(ptr noundef %9, ptr noundef nonnull %recv_chain.0.lcssa, ptr noundef nonnull %bad_wr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %err_free

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free:                                         ; preds = %if.end11
  call fastcc void @trace_svcrdma_rq_post_err(ptr noundef %rdma, i32 noundef %call.i)
  %14 = ptrtoint ptr %bad_wr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bad_wr, align 4
  %tobool17.not42 = icmp eq ptr %15, null
  br i1 %tobool17.not42, label %err_free.cleanup_crit_edge, label %err_free.while.body18_crit_edge

err_free.while.body18_crit_edge:                  ; preds = %err_free
  br label %while.body18

err_free.cleanup_crit_edge:                       ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body18:                                     ; preds = %while.body18.while.body18_crit_edge, %err_free.while.body18_crit_edge
  %16 = phi ptr [ %21, %while.body18.while.body18_crit_edge ], [ %15, %err_free.while.body18_crit_edge ]
  %add.ptr = getelementptr i8, ptr %16, i32 -16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %bad_wr, align 4
  call void @svc_rdma_recv_ctxt_put(ptr noundef %rdma, ptr noundef %add.ptr)
  %20 = ptrtoint ptr %bad_wr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bad_wr, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %while.body18.cleanup_crit_edge, label %while.body18.while.body18_crit_edge

while.body18.while.body18_crit_edge:              ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body18

while.body18.cleanup_crit_edge:                   ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body18.cleanup_crit_edge, %err_free.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %while.end.cleanup_crit_edge ], [ true, %if.end11.cleanup_crit_edge ], [ false, %err_free.cleanup_crit_edge ], [ false, %while.body18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_wr) #8
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rdma_flush_recv_queues(ptr noundef %rdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_rq_dto_q = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 20
  %0 = ptrtoint ptr %sc_rq_dto_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sc_rq_dto_q, align 4
  %cmp.not.i4 = icmp eq ptr %1, %sc_rq_dto_q
  %add.ptr.i5 = getelementptr i8, ptr %1, i32 -4
  %tobool.not36 = icmp eq ptr %add.ptr.i5, null
  %tobool.not7 = or i1 %cmp.not.i4, %tobool.not36
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %add.ptr.i8 = phi ptr [ %add.ptr.i, %list_del.exit.while.body_crit_edge ], [ %add.ptr.i5, %entry.while.body_crit_edge ]
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @svc_rdma_recv_ctxt_put(ptr noundef %rdma, ptr noundef nonnull %add.ptr.i8)
  %11 = ptrtoint ptr %sc_rq_dto_q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %sc_rq_dto_q, align 4
  %cmp.not.i = icmp eq ptr %12, %sc_rq_dto_q
  %add.ptr.i = getelementptr i8, ptr %12, i32 -4
  %tobool.not3 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not3
  br i1 %tobool.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_rdma_recvfrom(ptr noundef %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %rq_xprt_ctxt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 12
  %2 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rq_xprt_ctxt, align 4
  %sc_rq_dto_lock = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %sc_rq_dto_lock) #8
  %sc_rq_dto_q = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %sc_rq_dto_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %sc_rq_dto_q, align 4
  %cmp.not.i = icmp eq ptr %4, %sc_rq_dto_q
  %add.ptr.i = getelementptr i8, ptr %4, i32 -4
  %tobool.not118 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not118
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sc_rq_dto_lock) #8
  tail call void @svc_xprt_received(ptr noundef %1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %13 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @svcrdma_stat_recv, i64 noundef 1, i32 noundef %13) #8
  %sc_pd = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %sc_pd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc_pd, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %rc_recv_sge = getelementptr i8, ptr %4, i32 52
  %18 = ptrtoint ptr %rc_recv_sge to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rc_recv_sge, align 8
  %rc_byte_len = getelementptr i8, ptr %4, i32 112
  %20 = ptrtoint ptr %rc_byte_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rc_byte_len, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 8
  %conv.i = trunc i64 %19 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %23, i32 noundef %conv.i, i32 noundef %21, i32 noundef 2) #8
  %rq_arg.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %rc_recv_buf.i = getelementptr i8, ptr %4, i32 68
  %24 = ptrtoint ptr %rc_recv_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rc_recv_buf.i, align 8
  %26 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %rq_arg.i, align 4
  %27 = ptrtoint ptr %rc_byte_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rc_byte_len, align 4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %iov_len.i, align 4
  %tail.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 1
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %tail.i, align 4
  %iov_len7.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %iov_len7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %iov_len7.i, align 4
  %page_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 5
  %32 = ptrtoint ptr %page_len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %page_len.i, align 4
  %page_base.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 4
  %33 = ptrtoint ptr %page_base.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %page_base.i, align 4
  %34 = load i32, ptr %rc_byte_len, align 4
  %buflen.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 7
  %35 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %buflen.i, align 4
  %36 = load i32, ptr %rc_byte_len, align 4
  %len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 8
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %len.i, align 4
  %rq_pages = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 20
  %rq_respages = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 21
  %38 = ptrtoint ptr %rq_respages to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rq_pages, ptr %rq_respages, align 4
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %39 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rq_pages, ptr %rq_next_page, align 8
  %rc_stream.i = getelementptr i8, ptr %4, i32 72
  tail call void @xdr_init_decode(ptr noundef %rc_stream.i, ptr noundef %rq_arg.i, ptr noundef %25, ptr noundef null) #8
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef 16) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %out_short.i, label %if.end.i, !prof !57

if.end.i:                                         ; preds = %list_del.exit
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %40 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %incdec.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.not.i84 = icmp eq i32 %41, 1
  br i1 %cmp.not.i84, label %if.end6.i, label %out_version.i

if.end6.i:                                        ; preds = %if.end.i
  %add.ptr.i85 = getelementptr i32, ptr %call.i, i32 3
  %42 = ptrtoint ptr %add.ptr.i85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i85, align 4
  %rc_msgtype.i = getelementptr i8, ptr %4, i32 124
  %44 = ptrtoint ptr %rc_msgtype.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rc_msgtype.i, align 8
  %45 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %43, label %out_proc.i [
    i32 0, label %if.end6.i.sw.epilog.i_crit_edge
    i32 1, label %if.end6.i.sw.epilog.i_crit_edge139
    i32 3, label %if.end6.i.if.end8.thread_crit_edge
    i32 4, label %if.end6.i.if.end8.thread_crit_edge140
  ]

if.end6.i.if.end8.thread_crit_edge140:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.thread

if.end6.i.if.end8.thread_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.thread

if.end6.i.sw.epilog.i_crit_edge139:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end6.i.sw.epilog.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end6.i.sw.epilog.i_crit_edge, %if.end6.i.sw.epilog.i_crit_edge139
  %call.i.i86 = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef 4) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i86, null
  br i1 %tobool.not.i.i, label %sw.epilog.i.out_inval.i_crit_edge, label %if.end.i.i87

sw.epilog.i.out_inval.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

if.end.i.i87:                                     ; preds = %sw.epilog.i
  %rc_call_pcl.i.i.i = getelementptr i8, ptr %4, i32 128
  %46 = ptrtoint ptr %rc_call_pcl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rc_call_pcl.i.i.i, align 4
  %rc_read_pcl.i.i.i = getelementptr i8, ptr %4, i32 140
  %47 = ptrtoint ptr %rc_read_pcl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rc_read_pcl.i.i.i, align 8
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %cleanup.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i.i87
  %p.addr.0.i.i.i = phi ptr [ %call.i.i86, %if.end.i.i87 ], [ %call16.i.i.i, %cleanup.i.i.i.while.cond.i.i.i_crit_edge ]
  %48 = ptrtoint ptr %p.addr.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p.addr.0.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.not.i.i.i = icmp eq i32 %49, 0
  br i1 %cmp.i.not.i.i.i, label %if.end3.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %call2.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef 20) #8
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.out_inval.i_crit_edge, label %if.end.i.i.i

while.body.i.i.i.out_inval.i_crit_edge:           ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %50 = ptrtoint ptr %call2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool4.not.i.i.i = icmp eq i32 %51, 0
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  %and.i.i.i = and i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end8.i.i.i, label %if.then5.i.i.i.out_inval.i_crit_edge

if.then5.i.i.i.out_inval.i_crit_edge:             ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

if.end8.i.i.i:                                    ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %rc_read_pcl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rc_read_pcl.i.i.i, align 8
  %inc.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i, ptr %rc_read_pcl.i.i.i, align 8
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %rc_call_pcl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rc_call_pcl.i.i.i, align 4
  %inc13.i.i.i = add i32 %55, 1
  store i32 %inc13.i.i.i, ptr %rc_call_pcl.i.i.i, align 4
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.else.i.i.i, %if.end8.i.i.i
  %call16.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef 4) #8
  %tobool17.not.not.i.i.i = icmp eq ptr %call16.i.i.i, null
  br i1 %tobool17.not.not.i.i.i, label %cleanup.i.i.i.out_inval.i_crit_edge, label %cleanup.i.i.i.while.cond.i.i.i_crit_edge

cleanup.i.i.i.while.cond.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i

cleanup.i.i.i.out_inval.i_crit_edge:              ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

if.end3.i.i:                                      ; preds = %while.cond.i.i.i
  %call4.i.i = tail call zeroext i1 @pcl_alloc_call(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i.i86) #8
  br i1 %call4.i.i, label %xdr_check_read_list.exit.i, label %if.end3.i.i.out_inval.i_crit_edge

if.end3.i.i.out_inval.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

xdr_check_read_list.exit.i:                       ; preds = %if.end3.i.i
  %call7.i.i = tail call zeroext i1 @pcl_alloc_read(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i.i86) #8
  br i1 %call7.i.i, label %if.end11.i, label %xdr_check_read_list.exit.i.out_inval.i_crit_edge

xdr_check_read_list.exit.i.out_inval.i_crit_edge: ; preds = %xdr_check_read_list.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

if.end11.i:                                       ; preds = %xdr_check_read_list.exit.i
  %call.i63.i = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef 4) #8
  %tobool.not.i64.i = icmp eq ptr %call.i63.i, null
  br i1 %tobool.not.i64.i, label %if.end11.i.out_inval.i_crit_edge, label %if.end.i65.i

if.end11.i.out_inval.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

if.end.i65.i:                                     ; preds = %if.end11.i
  %rc_write_pcl.i.i.i = getelementptr i8, ptr %4, i32 156
  %56 = ptrtoint ptr %rc_write_pcl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %rc_write_pcl.i.i.i, align 8
  br label %while.cond.i.i68.i

while.cond.i.i68.i:                               ; preds = %if.end.i.i72.i.while.cond.i.i68.i_crit_edge, %if.end.i65.i
  %p.addr.0.i.i66.i = phi ptr [ %call.i63.i, %if.end.i65.i ], [ %call4.i.i.i, %if.end.i.i72.i.while.cond.i.i68.i_crit_edge ]
  %57 = ptrtoint ptr %p.addr.0.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %p.addr.0.i.i66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.not.i.i67.i = icmp eq i32 %58, 0
  br i1 %cmp.i.not.i.i67.i, label %if.end3.i74.i, label %while.body.i.i69.i

while.body.i.i69.i:                               ; preds = %while.cond.i.i68.i
  %call.i.i.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef 4) #8
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %while.body.i.i69.i.out_inval.i_crit_edge, label %xdr_check_write_chunk.exit.i.i.i, !prof !57

while.body.i.i69.i.out_inval.i_crit_edge:         ; preds = %while.body.i.i69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

xdr_check_write_chunk.exit.i.i.i:                 ; preds = %while.body.i.i69.i
  %59 = ptrtoint ptr %call.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call.i.i.i.i.i, align 4
  %mul2.i.i.i.i = shl i32 %60, 4
  %call3.i.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef %mul2.i.i.i.i) #8
  %cmp.i11.not.i.i.i = icmp eq ptr %call3.i.i.i.i, null
  br i1 %cmp.i11.not.i.i.i, label %xdr_check_write_chunk.exit.i.i.i.out_inval.i_crit_edge, label %if.end.i.i72.i

xdr_check_write_chunk.exit.i.i.i.out_inval.i_crit_edge: ; preds = %xdr_check_write_chunk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

if.end.i.i72.i:                                   ; preds = %xdr_check_write_chunk.exit.i.i.i
  %61 = ptrtoint ptr %rc_write_pcl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rc_write_pcl.i.i.i, align 8
  %inc.i.i70.i = add i32 %62, 1
  store i32 %inc.i.i70.i, ptr %rc_write_pcl.i.i.i, align 8
  %call4.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef 4) #8
  %tobool.not.i.i71.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool.not.i.i71.i, label %if.end.i.i72.i.out_inval.i_crit_edge, label %if.end.i.i72.i.while.cond.i.i68.i_crit_edge

if.end.i.i72.i.while.cond.i.i68.i_crit_edge:      ; preds = %if.end.i.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i68.i

if.end.i.i72.i.out_inval.i_crit_edge:             ; preds = %if.end.i.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

if.end3.i74.i:                                    ; preds = %while.cond.i.i68.i
  %call4.i73.i = tail call zeroext i1 @pcl_alloc_write(ptr noundef %add.ptr.i, ptr noundef %rc_write_pcl.i.i.i, ptr noundef nonnull %call.i63.i) #8
  br i1 %call4.i73.i, label %if.end14.i, label %if.end3.i74.i.out_inval.i_crit_edge

if.end3.i74.i.out_inval.i_crit_edge:              ; preds = %if.end3.i74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

if.end14.i:                                       ; preds = %if.end3.i74.i
  %cl_chunks.i.i.i.i = getelementptr i8, ptr %4, i32 160
  %63 = ptrtoint ptr %cl_chunks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %cl_chunks.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp eq ptr %64, %cl_chunks.i.i.i.i
  %spec.select.i.i.i = select i1 %cmp.i.i.i.i.i, ptr null, ptr %64
  %rc_cur_result_payload.i.i = getelementptr i8, ptr %4, i32 152
  %65 = ptrtoint ptr %rc_cur_result_payload.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %spec.select.i.i.i, ptr %rc_cur_result_payload.i.i, align 4
  %call.i78.i = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef 4) #8
  %tobool.not.i79.i = icmp eq ptr %call.i78.i, null
  br i1 %tobool.not.i79.i, label %if.end14.i.out_inval.i_crit_edge, label %if.end.i80.i

if.end14.i.out_inval.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

if.end.i80.i:                                     ; preds = %if.end14.i
  %66 = ptrtoint ptr %call.i78.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call.i78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.not.i.i = icmp eq i32 %67, 0
  br i1 %cmp.i.not.i.i, label %if.end.i80.i.svc_rdma_xdr_decode_req.exit_crit_edge, label %if.end3.i81.i

if.end.i80.i.svc_rdma_xdr_decode_req.exit_crit_edge: ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %svc_rdma_xdr_decode_req.exit

if.end3.i81.i:                                    ; preds = %if.end.i80.i
  %call.i.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef 4) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end3.i81.i.out_inval.i_crit_edge, label %xdr_check_write_chunk.exit.i.i, !prof !57

if.end3.i81.i.out_inval.i_crit_edge:              ; preds = %if.end3.i81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

xdr_check_write_chunk.exit.i.i:                   ; preds = %if.end3.i81.i
  %68 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call.i.i.i.i, align 4
  %mul2.i.i.i = shl i32 %69, 4
  %call3.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rc_stream.i, i32 noundef %mul2.i.i.i) #8
  %cmp.i15.not.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %cmp.i15.not.i.i, label %xdr_check_write_chunk.exit.i.i.out_inval.i_crit_edge, label %xdr_check_reply_chunk.exit.i

xdr_check_write_chunk.exit.i.i.out_inval.i_crit_edge: ; preds = %xdr_check_write_chunk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

xdr_check_reply_chunk.exit.i:                     ; preds = %xdr_check_write_chunk.exit.i.i
  %rc_reply_pcl.i.i = getelementptr i8, ptr %4, i32 168
  %70 = ptrtoint ptr %rc_reply_pcl.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %rc_reply_pcl.i.i, align 4
  %call8.i.i = tail call zeroext i1 @pcl_alloc_write(ptr noundef %add.ptr.i, ptr noundef %rc_reply_pcl.i.i, ptr noundef nonnull %call.i78.i) #8
  br i1 %call8.i.i, label %xdr_check_reply_chunk.exit.i.svc_rdma_xdr_decode_req.exit_crit_edge, label %xdr_check_reply_chunk.exit.i.out_inval.i_crit_edge

xdr_check_reply_chunk.exit.i.out_inval.i_crit_edge: ; preds = %xdr_check_reply_chunk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inval.i

xdr_check_reply_chunk.exit.i.svc_rdma_xdr_decode_req.exit_crit_edge: ; preds = %xdr_check_reply_chunk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %svc_rdma_xdr_decode_req.exit

out_short.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i, align 4
  tail call fastcc void @trace_svcrdma_decode_short_err(ptr noundef nonnull %add.ptr.i, i32 noundef %72) #8
  br label %out_err

out_version.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_svcrdma_decode_badvers_err(ptr noundef nonnull %add.ptr.i, ptr noundef %25) #8
  br label %out_err

if.end8.thread:                                   ; preds = %if.end6.i.if.end8.thread_crit_edge, %if.end6.i.if.end8.thread_crit_edge140
  tail call fastcc void @trace_svcrdma_decode_drop_err(ptr noundef nonnull %add.ptr.i, ptr noundef %25) #8
  br label %out_drop

out_proc.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_svcrdma_decode_badproc_err(ptr noundef nonnull %add.ptr.i, ptr noundef %25) #8
  br label %out_err

out_inval.i:                                      ; preds = %xdr_check_reply_chunk.exit.i.out_inval.i_crit_edge, %xdr_check_write_chunk.exit.i.i.out_inval.i_crit_edge, %if.end3.i81.i.out_inval.i_crit_edge, %if.end14.i.out_inval.i_crit_edge, %if.end3.i74.i.out_inval.i_crit_edge, %if.end.i.i72.i.out_inval.i_crit_edge, %xdr_check_write_chunk.exit.i.i.i.out_inval.i_crit_edge, %while.body.i.i69.i.out_inval.i_crit_edge, %if.end11.i.out_inval.i_crit_edge, %xdr_check_read_list.exit.i.out_inval.i_crit_edge, %if.end3.i.i.out_inval.i_crit_edge, %cleanup.i.i.i.out_inval.i_crit_edge, %if.then5.i.i.i.out_inval.i_crit_edge, %while.body.i.i.i.out_inval.i_crit_edge, %sw.epilog.i.out_inval.i_crit_edge
  tail call fastcc void @trace_svcrdma_decode_parse_err(ptr noundef %add.ptr.i, ptr noundef %25) #8
  br label %out_err

svc_rdma_xdr_decode_req.exit:                     ; preds = %xdr_check_reply_chunk.exit.i.svc_rdma_xdr_decode_req.exit_crit_edge, %if.end.i80.i.svc_rdma_xdr_decode_req.exit_crit_edge
  %73 = ptrtoint ptr %rc_stream.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rc_stream.i, align 4
  %75 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %rq_arg.i, align 4
  %call24.i = tail call i32 @xdr_stream_pos(ptr noundef %rc_stream.i) #8
  %76 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iov_len.i, align 4
  %sub.i = sub i32 %77, %call24.i
  store i32 %sub.i, ptr %iov_len.i, align 4
  %78 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i, align 4
  %sub27.i = sub i32 %79, %call24.i
  store i32 %sub27.i, ptr %len.i, align 4
  tail call fastcc void @trace_svcrdma_decode_rqst(ptr noundef %add.ptr.i, ptr noundef %25, i32 noundef %call24.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp = icmp slt i32 %call24.i, 0
  br i1 %cmp, label %svc_rdma_xdr_decode_req.exit.out_err_crit_edge, label %if.end8

svc_rdma_xdr_decode_req.exit.out_err_crit_edge:   ; preds = %svc_rdma_xdr_decode_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %xpt_flags) #8
  tail call void @_raw_spin_unlock(ptr noundef %sc_rq_dto_lock) #8
  tail call void @svc_xprt_received(ptr noundef %1) #8
  br label %cleanup

if.end8:                                          ; preds = %svc_rdma_xdr_decode_req.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp9 = icmp eq i32 %call24.i, 0
  br i1 %cmp9, label %if.end8.out_drop_crit_edge, label %if.end11

if.end8.out_drop_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_drop

if.end11:                                         ; preds = %if.end8
  %rq_xprt_hlen = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 14
  %80 = ptrtoint ptr %rq_xprt_hlen to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call24.i, ptr %rq_xprt_hlen, align 4
  %81 = ptrtoint ptr %rc_recv_buf.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rc_recv_buf.i, align 8
  %xpt_bc_xprt.i = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 21
  %83 = ptrtoint ptr %xpt_bc_xprt.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xpt_bc_xprt.i, align 4
  %tobool.not.i91 = icmp eq ptr %84, null
  br i1 %tobool.not.i91, label %if.end11.if.end14_crit_edge, label %if.end.i94

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i94:                                       ; preds = %if.end11
  %85 = ptrtoint ptr %rc_msgtype.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rc_msgtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.not.i93 = icmp eq i32 %86, 0
  br i1 %cmp.not.i93, label %if.end2.i, label %if.end.i94.if.end14_crit_edge

if.end.i94.if.end14_crit_edge:                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end2.i:                                        ; preds = %if.end.i94
  %cl_chunks.i.i = getelementptr i8, ptr %4, i32 132
  %87 = ptrtoint ptr %cl_chunks.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %cl_chunks.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %88, %cl_chunks.i.i
  br i1 %cmp.i.i.i, label %if.end4.i, label %if.end2.i.if.end14_crit_edge

if.end2.i.if.end14_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end4.i:                                        ; preds = %if.end2.i
  %cl_chunks.i22.i = getelementptr i8, ptr %4, i32 144
  %89 = ptrtoint ptr %cl_chunks.i22.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %cl_chunks.i22.i, align 4
  %cmp.i.i23.i = icmp eq ptr %90, %cl_chunks.i22.i
  br i1 %cmp.i.i23.i, label %if.end7.i, label %if.end4.i.if.end14_crit_edge

if.end4.i.if.end14_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end7.i:                                        ; preds = %if.end4.i
  %91 = ptrtoint ptr %cl_chunks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %cl_chunks.i.i.i.i, align 4
  %cmp.i.i25.i = icmp eq ptr %92, %cl_chunks.i.i.i.i
  br i1 %cmp.i.i25.i, label %if.end10.i, label %if.end7.i.if.end14_crit_edge

if.end7.i.if.end14_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end10.i:                                       ; preds = %if.end7.i
  %cl_chunks.i26.i = getelementptr i8, ptr %4, i32 172
  %93 = ptrtoint ptr %cl_chunks.i26.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %cl_chunks.i26.i, align 4
  %cmp.i.i27.i = icmp eq ptr %94, %cl_chunks.i26.i
  br i1 %cmp.i.i27.i, label %svc_rdma_is_reverse_direction_reply.exit, label %if.end10.i.if.end14_crit_edge

if.end10.i.if.end14_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

svc_rdma_is_reverse_direction_reply.exit:         ; preds = %if.end10.i
  %add.ptr.i95 = getelementptr i32, ptr %82, i32 8
  %95 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp14.i.not = icmp eq i32 %96, 0
  br i1 %cmp14.i.not, label %svc_rdma_is_reverse_direction_reply.exit.if.end14_crit_edge, label %out_backchannel

svc_rdma_is_reverse_direction_reply.exit.if.end14_crit_edge: ; preds = %svc_rdma_is_reverse_direction_reply.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %svc_rdma_is_reverse_direction_reply.exit.if.end14_crit_edge, %if.end10.i.if.end14_crit_edge, %if.end7.i.if.end14_crit_edge, %if.end4.i.if.end14_crit_edge, %if.end2.i.if.end14_crit_edge, %if.end.i94.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  %rc_inv_rkey.i = getelementptr i8, ptr %4, i32 120
  %97 = ptrtoint ptr %rc_inv_rkey.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %rc_inv_rkey.i, align 4
  %sc_snd_w_inv.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 5
  %98 = ptrtoint ptr %sc_snd_w_inv.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sc_snd_w_inv.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i97 = icmp eq i8 %99, 0
  br i1 %tobool.not.i97, label %if.end14.svc_rdma_get_inv_rkey.exit_crit_edge, label %if.end.i98

if.end14.svc_rdma_get_inv_rkey.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %svc_rdma_get_inv_rkey.exit

if.end.i98:                                       ; preds = %if.end14
  %cl_chunks.i = getelementptr i8, ptr %4, i32 132
  %100 = ptrtoint ptr %cl_chunks.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %chunk.0208.i = load ptr, ptr %cl_chunks.i, align 4
  %cmp.not209.i = icmp eq ptr %chunk.0208.i, %cl_chunks.i
  br i1 %cmp.not209.i, label %if.end.i98.for.end21.i_crit_edge, label %if.end.i98.for.body.i_crit_edge

if.end.i98.for.body.i_crit_edge:                  ; preds = %if.end.i98
  br label %for.body.i

if.end.i98.for.end21.i_crit_edge:                 ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21.i

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %inv_rkey.1.lcssa.i = phi i32 [ %inv_rkey.0210.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %inv_rkey.2.i, %for.inc.i.for.cond.loopexit.i_crit_edge ]
  %101 = ptrtoint ptr %chunk.0211.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %chunk.0.i = load ptr, ptr %chunk.0211.i, align 4
  %cmp.not.i99 = icmp eq ptr %chunk.0.i, %cl_chunks.i
  br i1 %cmp.not.i99, label %for.cond.loopexit.i.for.end21.i_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.loopexit.i.for.end21.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.end.i98.for.body.i_crit_edge
  %chunk.0211.i = phi ptr [ %chunk.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %chunk.0208.i, %if.end.i98.for.body.i_crit_edge ]
  %inv_rkey.0210.i = phi i32 [ %inv_rkey.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %if.end.i98.for.body.i_crit_edge ]
  %ch_segments.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0211.i, i32 0, i32 5
  %ch_segcount.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0211.i, i32 0, i32 4
  %102 = ptrtoint ptr %ch_segcount.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ch_segcount.i, align 4
  %sub.i100 = add i32 %103, -1
  %arrayidx5.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.0211.i, i32 0, i32 5, i32 %sub.i100
  %cmp6.not204.i = icmp ugt ptr %ch_segments.i, %arrayidx5.i
  br i1 %cmp6.not204.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body7.i_crit_edge

for.body.i.for.body7.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body7.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit.i

for.body7.i:                                      ; preds = %for.inc.i.for.body7.i_crit_edge, %for.body.i.for.body7.i_crit_edge
  %segment.0206.i = phi ptr [ %incdec.ptr.i101, %for.inc.i.for.body7.i_crit_edge ], [ %ch_segments.i, %for.body.i.for.body7.i_crit_edge ]
  %inv_rkey.1205.i = phi i32 [ %inv_rkey.2.i, %for.inc.i.for.body7.i_crit_edge ], [ %inv_rkey.0210.i, %for.body.i.for.body7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inv_rkey.1205.i)
  %cmp8.i = icmp eq i32 %inv_rkey.1205.i, 0
  %104 = ptrtoint ptr %segment.0206.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %segment.0206.i, align 8
  br i1 %cmp8.i, label %for.body7.i.for.inc.i_crit_edge, label %if.else.i

for.body7.i.for.inc.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inv_rkey.1205.i, i32 %105)
  %cmp11.not.i = icmp eq i32 %inv_rkey.1205.i, %105
  br i1 %cmp11.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.svc_rdma_get_inv_rkey.exit_crit_edge

if.else.i.svc_rdma_get_inv_rkey.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %svc_rdma_get_inv_rkey.exit

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body7.i.for.inc.i_crit_edge
  %inv_rkey.2.i = phi i32 [ %inv_rkey.1205.i, %if.else.i.for.inc.i_crit_edge ], [ %105, %for.body7.i.for.inc.i_crit_edge ]
  %incdec.ptr.i101 = getelementptr %struct.svc_rdma_segment, ptr %segment.0206.i, i32 1
  %cmp6.not.i = icmp ugt ptr %incdec.ptr.i101, %arrayidx5.i
  br i1 %cmp6.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body7.i_crit_edge

for.inc.i.for.body7.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit.i

for.end21.i:                                      ; preds = %for.cond.loopexit.i.for.end21.i_crit_edge, %if.end.i98.for.end21.i_crit_edge
  %inv_rkey.0.lcssa.i = phi i32 [ 0, %if.end.i98.for.end21.i_crit_edge ], [ %inv_rkey.1.lcssa.i, %for.cond.loopexit.i.for.end21.i_crit_edge ]
  %cl_chunks23.i = getelementptr i8, ptr %4, i32 144
  %106 = ptrtoint ptr %cl_chunks23.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %chunk.1218.i = load ptr, ptr %cl_chunks23.i, align 4
  %cmp31.not219.i = icmp eq ptr %chunk.1218.i, %cl_chunks23.i
  br i1 %cmp31.not219.i, label %for.end21.i.for.end60.i_crit_edge, label %for.end21.i.for.body32.i_crit_edge

for.end21.i.for.body32.i_crit_edge:               ; preds = %for.end21.i
  br label %for.body32.i

for.end21.i.for.end60.i_crit_edge:                ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60.i

for.cond27.loopexit.i:                            ; preds = %for.inc51.i.for.cond27.loopexit.i_crit_edge, %for.body32.i.for.cond27.loopexit.i_crit_edge
  %inv_rkey.4.lcssa.i = phi i32 [ %inv_rkey.3220.i, %for.body32.i.for.cond27.loopexit.i_crit_edge ], [ %inv_rkey.5.i, %for.inc51.i.for.cond27.loopexit.i_crit_edge ]
  %107 = ptrtoint ptr %chunk.1221.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %chunk.1.i = load ptr, ptr %chunk.1221.i, align 4
  %cmp31.not.i = icmp eq ptr %chunk.1.i, %cl_chunks23.i
  br i1 %cmp31.not.i, label %for.cond27.loopexit.i.for.end60.i_crit_edge, label %for.cond27.loopexit.i.for.body32.i_crit_edge

for.cond27.loopexit.i.for.body32.i_crit_edge:     ; preds = %for.cond27.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body32.i

for.cond27.loopexit.i.for.end60.i_crit_edge:      ; preds = %for.cond27.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60.i

for.body32.i:                                     ; preds = %for.cond27.loopexit.i.for.body32.i_crit_edge, %for.end21.i.for.body32.i_crit_edge
  %chunk.1221.i = phi ptr [ %chunk.1.i, %for.cond27.loopexit.i.for.body32.i_crit_edge ], [ %chunk.1218.i, %for.end21.i.for.body32.i_crit_edge ]
  %inv_rkey.3220.i = phi i32 [ %inv_rkey.4.lcssa.i, %for.cond27.loopexit.i.for.body32.i_crit_edge ], [ %inv_rkey.0.lcssa.i, %for.end21.i.for.body32.i_crit_edge ]
  %ch_segments33.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.1221.i, i32 0, i32 5
  %ch_segcount37.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.1221.i, i32 0, i32 4
  %108 = ptrtoint ptr %ch_segcount37.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ch_segcount37.i, align 4
  %sub38.i = add i32 %109, -1
  %arrayidx39.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.1221.i, i32 0, i32 5, i32 %sub38.i
  %cmp40.not213.i = icmp ugt ptr %ch_segments33.i, %arrayidx39.i
  br i1 %cmp40.not213.i, label %for.body32.i.for.cond27.loopexit.i_crit_edge, label %for.body32.i.for.body41.i_crit_edge

for.body32.i.for.body41.i_crit_edge:              ; preds = %for.body32.i
  br label %for.body41.i

for.body32.i.for.cond27.loopexit.i_crit_edge:     ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond27.loopexit.i

for.body41.i:                                     ; preds = %for.inc51.i.for.body41.i_crit_edge, %for.body32.i.for.body41.i_crit_edge
  %segment.1215.i = phi ptr [ %incdec.ptr52.i, %for.inc51.i.for.body41.i_crit_edge ], [ %ch_segments33.i, %for.body32.i.for.body41.i_crit_edge ]
  %inv_rkey.4214.i = phi i32 [ %inv_rkey.5.i, %for.inc51.i.for.body41.i_crit_edge ], [ %inv_rkey.3220.i, %for.body32.i.for.body41.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inv_rkey.4214.i)
  %cmp42.i = icmp eq i32 %inv_rkey.4214.i, 0
  %110 = ptrtoint ptr %segment.1215.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %segment.1215.i, align 8
  br i1 %cmp42.i, label %for.body41.i.for.inc51.i_crit_edge, label %if.else45.i

for.body41.i.for.inc51.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51.i

if.else45.i:                                      ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inv_rkey.4214.i, i32 %111)
  %cmp47.not.i = icmp eq i32 %inv_rkey.4214.i, %111
  br i1 %cmp47.not.i, label %if.else45.i.for.inc51.i_crit_edge, label %if.else45.i.svc_rdma_get_inv_rkey.exit_crit_edge

if.else45.i.svc_rdma_get_inv_rkey.exit_crit_edge: ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %svc_rdma_get_inv_rkey.exit

if.else45.i.for.inc51.i_crit_edge:                ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51.i

for.inc51.i:                                      ; preds = %if.else45.i.for.inc51.i_crit_edge, %for.body41.i.for.inc51.i_crit_edge
  %inv_rkey.5.i = phi i32 [ %inv_rkey.4214.i, %if.else45.i.for.inc51.i_crit_edge ], [ %111, %for.body41.i.for.inc51.i_crit_edge ]
  %incdec.ptr52.i = getelementptr %struct.svc_rdma_segment, ptr %segment.1215.i, i32 1
  %cmp40.not.i = icmp ugt ptr %incdec.ptr52.i, %arrayidx39.i
  br i1 %cmp40.not.i, label %for.inc51.i.for.cond27.loopexit.i_crit_edge, label %for.inc51.i.for.body41.i_crit_edge

for.inc51.i.for.body41.i_crit_edge:               ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41.i

for.inc51.i.for.cond27.loopexit.i_crit_edge:      ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond27.loopexit.i

for.end60.i:                                      ; preds = %for.cond27.loopexit.i.for.end60.i_crit_edge, %for.end21.i.for.end60.i_crit_edge
  %inv_rkey.3.lcssa.i = phi i32 [ %inv_rkey.0.lcssa.i, %for.end21.i.for.end60.i_crit_edge ], [ %inv_rkey.4.lcssa.i, %for.cond27.loopexit.i.for.end60.i_crit_edge ]
  %112 = ptrtoint ptr %cl_chunks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %chunk.2228.i = load ptr, ptr %cl_chunks.i.i.i.i, align 4
  %cmp70.not229.i = icmp eq ptr %chunk.2228.i, %cl_chunks.i.i.i.i
  br i1 %cmp70.not229.i, label %for.end60.i.for.end99.i_crit_edge, label %for.end60.i.for.body71.i_crit_edge

for.end60.i.for.body71.i_crit_edge:               ; preds = %for.end60.i
  br label %for.body71.i

for.end60.i.for.end99.i_crit_edge:                ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end99.i

for.cond66.loopexit.i:                            ; preds = %for.inc90.i.for.cond66.loopexit.i_crit_edge, %for.body71.i.for.cond66.loopexit.i_crit_edge
  %inv_rkey.7.lcssa.i = phi i32 [ %inv_rkey.6230.i, %for.body71.i.for.cond66.loopexit.i_crit_edge ], [ %inv_rkey.8.i, %for.inc90.i.for.cond66.loopexit.i_crit_edge ]
  %113 = ptrtoint ptr %chunk.2231.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %chunk.2.i = load ptr, ptr %chunk.2231.i, align 4
  %cmp70.not.i = icmp eq ptr %chunk.2.i, %cl_chunks.i.i.i.i
  br i1 %cmp70.not.i, label %for.cond66.loopexit.i.for.end99.i_crit_edge, label %for.cond66.loopexit.i.for.body71.i_crit_edge

for.cond66.loopexit.i.for.body71.i_crit_edge:     ; preds = %for.cond66.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body71.i

for.cond66.loopexit.i.for.end99.i_crit_edge:      ; preds = %for.cond66.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end99.i

for.body71.i:                                     ; preds = %for.cond66.loopexit.i.for.body71.i_crit_edge, %for.end60.i.for.body71.i_crit_edge
  %chunk.2231.i = phi ptr [ %chunk.2.i, %for.cond66.loopexit.i.for.body71.i_crit_edge ], [ %chunk.2228.i, %for.end60.i.for.body71.i_crit_edge ]
  %inv_rkey.6230.i = phi i32 [ %inv_rkey.7.lcssa.i, %for.cond66.loopexit.i.for.body71.i_crit_edge ], [ %inv_rkey.3.lcssa.i, %for.end60.i.for.body71.i_crit_edge ]
  %ch_segments72.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.2231.i, i32 0, i32 5
  %ch_segcount76.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.2231.i, i32 0, i32 4
  %114 = ptrtoint ptr %ch_segcount76.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ch_segcount76.i, align 4
  %sub77.i = add i32 %115, -1
  %arrayidx78.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.2231.i, i32 0, i32 5, i32 %sub77.i
  %cmp79.not223.i = icmp ugt ptr %ch_segments72.i, %arrayidx78.i
  br i1 %cmp79.not223.i, label %for.body71.i.for.cond66.loopexit.i_crit_edge, label %for.body71.i.for.body80.i_crit_edge

for.body71.i.for.body80.i_crit_edge:              ; preds = %for.body71.i
  br label %for.body80.i

for.body71.i.for.cond66.loopexit.i_crit_edge:     ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond66.loopexit.i

for.body80.i:                                     ; preds = %for.inc90.i.for.body80.i_crit_edge, %for.body71.i.for.body80.i_crit_edge
  %segment.2225.i = phi ptr [ %incdec.ptr91.i, %for.inc90.i.for.body80.i_crit_edge ], [ %ch_segments72.i, %for.body71.i.for.body80.i_crit_edge ]
  %inv_rkey.7224.i = phi i32 [ %inv_rkey.8.i, %for.inc90.i.for.body80.i_crit_edge ], [ %inv_rkey.6230.i, %for.body71.i.for.body80.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inv_rkey.7224.i)
  %cmp81.i = icmp eq i32 %inv_rkey.7224.i, 0
  %116 = ptrtoint ptr %segment.2225.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %segment.2225.i, align 8
  br i1 %cmp81.i, label %for.body80.i.for.inc90.i_crit_edge, label %if.else84.i

for.body80.i.for.inc90.i_crit_edge:               ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc90.i

if.else84.i:                                      ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inv_rkey.7224.i, i32 %117)
  %cmp86.not.i = icmp eq i32 %inv_rkey.7224.i, %117
  br i1 %cmp86.not.i, label %if.else84.i.for.inc90.i_crit_edge, label %if.else84.i.svc_rdma_get_inv_rkey.exit_crit_edge

if.else84.i.svc_rdma_get_inv_rkey.exit_crit_edge: ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %svc_rdma_get_inv_rkey.exit

if.else84.i.for.inc90.i_crit_edge:                ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc90.i

for.inc90.i:                                      ; preds = %if.else84.i.for.inc90.i_crit_edge, %for.body80.i.for.inc90.i_crit_edge
  %inv_rkey.8.i = phi i32 [ %inv_rkey.7224.i, %if.else84.i.for.inc90.i_crit_edge ], [ %117, %for.body80.i.for.inc90.i_crit_edge ]
  %incdec.ptr91.i = getelementptr %struct.svc_rdma_segment, ptr %segment.2225.i, i32 1
  %cmp79.not.i = icmp ugt ptr %incdec.ptr91.i, %arrayidx78.i
  br i1 %cmp79.not.i, label %for.inc90.i.for.cond66.loopexit.i_crit_edge, label %for.inc90.i.for.body80.i_crit_edge

for.inc90.i.for.body80.i_crit_edge:               ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body80.i

for.inc90.i.for.cond66.loopexit.i_crit_edge:      ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond66.loopexit.i

for.end99.i:                                      ; preds = %for.cond66.loopexit.i.for.end99.i_crit_edge, %for.end60.i.for.end99.i_crit_edge
  %inv_rkey.6.lcssa.i = phi i32 [ %inv_rkey.3.lcssa.i, %for.end60.i.for.end99.i_crit_edge ], [ %inv_rkey.7.lcssa.i, %for.cond66.loopexit.i.for.end99.i_crit_edge ]
  %cl_chunks101.i = getelementptr i8, ptr %4, i32 172
  %118 = ptrtoint ptr %cl_chunks101.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %chunk.3238.i = load ptr, ptr %cl_chunks101.i, align 4
  %cmp109.not239.i = icmp eq ptr %chunk.3238.i, %cl_chunks101.i
  br i1 %cmp109.not239.i, label %for.end99.i.for.end138.i_crit_edge, label %for.end99.i.for.body110.i_crit_edge

for.end99.i.for.body110.i_crit_edge:              ; preds = %for.end99.i
  br label %for.body110.i

for.end99.i.for.end138.i_crit_edge:               ; preds = %for.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end138.i

for.cond105.loopexit.i:                           ; preds = %for.inc129.i.for.cond105.loopexit.i_crit_edge, %for.body110.i.for.cond105.loopexit.i_crit_edge
  %inv_rkey.10.lcssa.i = phi i32 [ %inv_rkey.9240.i, %for.body110.i.for.cond105.loopexit.i_crit_edge ], [ %inv_rkey.11.i, %for.inc129.i.for.cond105.loopexit.i_crit_edge ]
  %119 = ptrtoint ptr %chunk.3241.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %chunk.3.i = load ptr, ptr %chunk.3241.i, align 4
  %cmp109.not.i = icmp eq ptr %chunk.3.i, %cl_chunks101.i
  br i1 %cmp109.not.i, label %for.cond105.loopexit.i.for.end138.i_crit_edge, label %for.cond105.loopexit.i.for.body110.i_crit_edge

for.cond105.loopexit.i.for.body110.i_crit_edge:   ; preds = %for.cond105.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body110.i

for.cond105.loopexit.i.for.end138.i_crit_edge:    ; preds = %for.cond105.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end138.i

for.body110.i:                                    ; preds = %for.cond105.loopexit.i.for.body110.i_crit_edge, %for.end99.i.for.body110.i_crit_edge
  %chunk.3241.i = phi ptr [ %chunk.3.i, %for.cond105.loopexit.i.for.body110.i_crit_edge ], [ %chunk.3238.i, %for.end99.i.for.body110.i_crit_edge ]
  %inv_rkey.9240.i = phi i32 [ %inv_rkey.10.lcssa.i, %for.cond105.loopexit.i.for.body110.i_crit_edge ], [ %inv_rkey.6.lcssa.i, %for.end99.i.for.body110.i_crit_edge ]
  %ch_segments111.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.3241.i, i32 0, i32 5
  %ch_segcount115.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.3241.i, i32 0, i32 4
  %120 = ptrtoint ptr %ch_segcount115.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ch_segcount115.i, align 4
  %sub116.i = add i32 %121, -1
  %arrayidx117.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.3241.i, i32 0, i32 5, i32 %sub116.i
  %cmp118.not233.i = icmp ugt ptr %ch_segments111.i, %arrayidx117.i
  br i1 %cmp118.not233.i, label %for.body110.i.for.cond105.loopexit.i_crit_edge, label %for.body110.i.for.body119.i_crit_edge

for.body110.i.for.body119.i_crit_edge:            ; preds = %for.body110.i
  br label %for.body119.i

for.body110.i.for.cond105.loopexit.i_crit_edge:   ; preds = %for.body110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond105.loopexit.i

for.body119.i:                                    ; preds = %for.inc129.i.for.body119.i_crit_edge, %for.body110.i.for.body119.i_crit_edge
  %segment.3235.i = phi ptr [ %incdec.ptr130.i, %for.inc129.i.for.body119.i_crit_edge ], [ %ch_segments111.i, %for.body110.i.for.body119.i_crit_edge ]
  %inv_rkey.10234.i = phi i32 [ %inv_rkey.11.i, %for.inc129.i.for.body119.i_crit_edge ], [ %inv_rkey.9240.i, %for.body110.i.for.body119.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inv_rkey.10234.i)
  %cmp120.i = icmp eq i32 %inv_rkey.10234.i, 0
  %122 = ptrtoint ptr %segment.3235.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %segment.3235.i, align 8
  br i1 %cmp120.i, label %for.body119.i.for.inc129.i_crit_edge, label %if.else123.i

for.body119.i.for.inc129.i_crit_edge:             ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc129.i

if.else123.i:                                     ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inv_rkey.10234.i, i32 %123)
  %cmp125.not.i = icmp eq i32 %inv_rkey.10234.i, %123
  br i1 %cmp125.not.i, label %if.else123.i.for.inc129.i_crit_edge, label %if.else123.i.svc_rdma_get_inv_rkey.exit_crit_edge

if.else123.i.svc_rdma_get_inv_rkey.exit_crit_edge: ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %svc_rdma_get_inv_rkey.exit

if.else123.i.for.inc129.i_crit_edge:              ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc129.i

for.inc129.i:                                     ; preds = %if.else123.i.for.inc129.i_crit_edge, %for.body119.i.for.inc129.i_crit_edge
  %inv_rkey.11.i = phi i32 [ %inv_rkey.10234.i, %if.else123.i.for.inc129.i_crit_edge ], [ %123, %for.body119.i.for.inc129.i_crit_edge ]
  %incdec.ptr130.i = getelementptr %struct.svc_rdma_segment, ptr %segment.3235.i, i32 1
  %cmp118.not.i = icmp ugt ptr %incdec.ptr130.i, %arrayidx117.i
  br i1 %cmp118.not.i, label %for.inc129.i.for.cond105.loopexit.i_crit_edge, label %for.inc129.i.for.body119.i_crit_edge

for.inc129.i.for.body119.i_crit_edge:             ; preds = %for.inc129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body119.i

for.inc129.i.for.cond105.loopexit.i_crit_edge:    ; preds = %for.inc129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond105.loopexit.i

for.end138.i:                                     ; preds = %for.cond105.loopexit.i.for.end138.i_crit_edge, %for.end99.i.for.end138.i_crit_edge
  %inv_rkey.9.lcssa.i = phi i32 [ %inv_rkey.6.lcssa.i, %for.end99.i.for.end138.i_crit_edge ], [ %inv_rkey.10.lcssa.i, %for.cond105.loopexit.i.for.end138.i_crit_edge ]
  %124 = ptrtoint ptr %rc_inv_rkey.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %inv_rkey.9.lcssa.i, ptr %rc_inv_rkey.i, align 4
  br label %svc_rdma_get_inv_rkey.exit

svc_rdma_get_inv_rkey.exit:                       ; preds = %for.end138.i, %if.else123.i.svc_rdma_get_inv_rkey.exit_crit_edge, %if.else84.i.svc_rdma_get_inv_rkey.exit_crit_edge, %if.else45.i.svc_rdma_get_inv_rkey.exit_crit_edge, %if.else.i.svc_rdma_get_inv_rkey.exit_crit_edge, %if.end14.svc_rdma_get_inv_rkey.exit_crit_edge
  %cl_chunks.i102 = getelementptr i8, ptr %4, i32 144
  %125 = ptrtoint ptr %cl_chunks.i102 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile ptr, ptr %cl_chunks.i102, align 4
  %cmp.i.i = icmp eq ptr %126, %cl_chunks.i102
  br i1 %cmp.i.i, label %lor.lhs.false, label %svc_rdma_get_inv_rkey.exit.if.then17_crit_edge

svc_rdma_get_inv_rkey.exit.if.then17_crit_edge:   ; preds = %svc_rdma_get_inv_rkey.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false:                                    ; preds = %svc_rdma_get_inv_rkey.exit
  %cl_chunks.i103 = getelementptr i8, ptr %4, i32 132
  %127 = ptrtoint ptr %cl_chunks.i103 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %cl_chunks.i103, align 4
  %cmp.i.i104 = icmp eq ptr %128, %cl_chunks.i103
  br i1 %cmp.i.i104, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %svc_rdma_get_inv_rkey.exit.if.then17_crit_edge
  %call18 = tail call i32 @svc_rdma_process_read_list(ptr noundef %1, ptr noundef %rqstp, ptr noundef nonnull %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %out_readfail, label %if.then17.if.end22_crit_edge

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %129 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %add.ptr.i, ptr %rq_xprt_ctxt, align 4
  %rq_prot = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 31
  %130 = ptrtoint ptr %rq_prot to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 263, ptr %rq_prot, align 4
  tail call void @svc_xprt_copy_addrs(ptr noundef %rqstp, ptr noundef %1) #8
  %131 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len.i, align 8
  br label %cleanup

out_err:                                          ; preds = %svc_rdma_xdr_decode_req.exit.out_err_crit_edge, %out_inval.i, %out_proc.i, %out_version.i, %out_short.i
  %retval.0.i110 = phi i32 [ %call24.i, %svc_rdma_xdr_decode_req.exit.out_err_crit_edge ], [ -22, %out_inval.i ], [ -22, %out_proc.i ], [ -93, %out_version.i ], [ -22, %out_short.i ]
  %call.i105 = tail call ptr @svc_rdma_send_ctxt_get(ptr noundef %1) #8
  %tobool.not.i106 = icmp eq ptr %call.i105, null
  br i1 %tobool.not.i106, label %out_err.svc_rdma_send_error.exit_crit_edge, label %if.end.i107

out_err.svc_rdma_send_error.exit_crit_edge:       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %svc_rdma_send_error.exit

if.end.i107:                                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @svc_rdma_send_error_msg(ptr noundef %1, ptr noundef nonnull %call.i105, ptr noundef %add.ptr.i, i32 noundef %retval.0.i110) #8
  br label %svc_rdma_send_error.exit

svc_rdma_send_error.exit:                         ; preds = %if.end.i107, %out_err.svc_rdma_send_error.exit_crit_edge
  tail call void @svc_rdma_recv_ctxt_put(ptr noundef %1, ptr noundef nonnull %add.ptr.i)
  br label %cleanup

out_readfail:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call18)
  %cmp25 = icmp eq i32 %call18, -22
  br i1 %cmp25, label %if.then26, label %out_readfail.if.end27_crit_edge

out_readfail.if.end27_crit_edge:                  ; preds = %out_readfail
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %out_readfail
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @svc_rdma_send_error(ptr noundef %1, ptr noundef nonnull %add.ptr.i, i32 noundef -22)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %out_readfail.if.end27_crit_edge
  tail call void @svc_rdma_recv_ctxt_put(ptr noundef %1, ptr noundef nonnull %add.ptr.i)
  br label %cleanup

out_backchannel:                                  ; preds = %svc_rdma_is_reverse_direction_reply.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @svc_rdma_handle_bc_reply(ptr noundef %rqstp, ptr noundef nonnull %add.ptr.i) #8
  br label %out_drop

out_drop:                                         ; preds = %out_backchannel, %if.end8.out_drop_crit_edge, %if.end8.thread
  tail call void @svc_rdma_recv_ctxt_put(ptr noundef %1, ptr noundef nonnull %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %out_drop, %if.end27, %svc_rdma_send_error.exit, %if.end22, %if.else
  %retval.0 = phi i32 [ 0, %svc_rdma_send_error.exit ], [ 0, %out_drop ], [ %132, %if.end22 ], [ %call18, %if.end27 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_received(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_rdma_process_read_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_copy_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svc_rdma_send_error(ptr noundef %rdma, ptr noundef %rctxt, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @svc_rdma_send_ctxt_get(ptr noundef %rdma) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @svc_rdma_send_error_msg(ptr noundef %rdma, ptr noundef nonnull %call, ptr noundef %rctxt, i32 noundef %status) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rdma_handle_bc_reply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_rdma_wc_receive(ptr nocapture noundef readonly %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %0 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_context, align 8
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wc, align 8
  %sc_pending_recvs = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %sc_pending_recvs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sc_pending_recvs, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %sc_pending_recvs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -40
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %7, label %if.else [
    i32 0, label %if.end
    i32 5, label %if.then14
  ]

if.end:                                           ; preds = %entry
  %rc_cid = getelementptr i8, ptr %3, i32 4
  tail call fastcc void @trace_svcrdma_wc_recv(ptr noundef %wc, ptr noundef %rc_cid)
  %9 = ptrtoint ptr %sc_pending_recvs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sc_pending_recvs, align 4
  %sc_max_requests = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %sc_max_requests to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sc_max_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp2 = icmp ult i32 %10, %12
  br i1 %cmp2, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %if.end
  %sc_recv_batch = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %sc_recv_batch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sc_recv_batch, align 4
  %call = tail call fastcc zeroext i1 @svc_rdma_refresh_recvs(ptr noundef %1, i32 noundef %14, i1 noundef zeroext false)
  br i1 %call, label %if.then3.if.end6_crit_edge, label %if.then3.dropped_crit_edge

if.then3.dropped_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %dropped

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %15 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %byte_len, align 4
  %rc_byte_len = getelementptr i8, ptr %3, i32 76
  %17 = ptrtoint ptr %rc_byte_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rc_byte_len, align 4
  %sc_rq_dto_lock = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %sc_rq_dto_lock) #8
  %rc_list = getelementptr i8, ptr %3, i32 -36
  %sc_rq_dto_q = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 20
  %prev.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 20, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rc_list, ptr noundef %19, ptr noundef %sc_rq_dto_q) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_add_tail.exit_crit_edge

if.end6.list_add_tail.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rc_list, ptr %prev.i, align 4
  %21 = ptrtoint ptr %rc_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sc_rq_dto_q, ptr %rc_list, align 4
  %prev3.i.i = getelementptr i8, ptr %3, i32 -32
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %rc_list, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end6.list_add_tail.exit_crit_edge
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %xpt_flags) #8
  tail call void @_raw_spin_unlock(ptr noundef %sc_rq_dto_lock) #8
  %sc_flags = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 27
  %24 = ptrtoint ptr %sc_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sc_flags, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %if.then9, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @svc_xprt_enqueue(ptr noundef %1) #8
  br label %cleanup

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rc_cid15 = getelementptr i8, ptr %3, i32 4
  tail call fastcc void @trace_svcrdma_wc_recv_flush(ptr noundef %wc, ptr noundef %rc_cid15)
  br label %dropped

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rc_cid16 = getelementptr i8, ptr %3, i32 4
  tail call fastcc void @trace_svcrdma_wc_recv_err(ptr noundef %wc, ptr noundef %rc_cid16)
  br label %dropped

dropped:                                          ; preds = %if.else, %if.then14, %if.then3.dropped_crit_edge
  tail call void @svc_rdma_recv_ctxt_put(ptr noundef %1, ptr noundef %add.ptr)
  tail call void @svc_xprt_deferred_close(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %dropped, %if.then9, %list_add_tail.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_wc_recv(ptr noundef %wc, ptr noundef %cid) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_recv, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_recv, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %call42 = tail call i32 @__traceiter_svcrdma_wc_recv(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_recv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_recv, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_recv.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_wc_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2049, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_enqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_wc_recv_flush(ptr noundef %wc, ptr noundef %cid) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_recv_flush, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_recv_flush, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !63
  %call42 = tail call i32 @__traceiter_svcrdma_wc_recv_flush(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_recv_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_recv_flush, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_recv_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_wc_recv_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2050, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
define internal fastcc void @trace_svcrdma_wc_recv_err(ptr noundef %wc, ptr noundef %cid) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_recv_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_recv_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %call42 = tail call i32 @__traceiter_svcrdma_wc_recv_err(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !66
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_recv_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_recv_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_recv_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_wc_recv_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2051, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
declare dso_local void @svc_xprt_deferred_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_recv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_recv_flush(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_recv_err(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_post_recv(ptr noundef %ctxt) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_recv, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_post_recv, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  %call42 = tail call i32 @__traceiter_svcrdma_post_recv(ptr noundef null, ptr noundef %ctxt) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_recv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_recv, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_post_recv.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_post_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2047, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
define internal fastcc void @trace_svcrdma_rq_post_err(ptr noundef %rdma, i32 noundef %status) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_rq_post_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_rq_post_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  %call42 = tail call i32 @__traceiter_svcrdma_rq_post_err(ptr noundef null, ptr noundef %rdma, i32 noundef %status) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !70
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_rq_post_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_rq_post_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_rq_post_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_rq_post_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2074, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
declare dso_local i32 @__traceiter_svcrdma_post_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_rq_post_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_stream_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_decode_rqst(ptr noundef %ctxt, ptr noundef %p, i32 noundef %hdrlen) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_rqst, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_decode_rqst, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  %call42 = tail call i32 @__traceiter_svcrdma_decode_rqst(ptr noundef null, ptr noundef %ctxt, ptr noundef %p, i32 noundef %hdrlen) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_rqst, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_rqst, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_decode_rqst.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_decode_rqst.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1569, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
define internal fastcc void @trace_svcrdma_decode_short_err(ptr noundef %ctxt, i32 noundef %hdrlen) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_short_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_decode_short_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %call42 = tail call i32 @__traceiter_svcrdma_decode_short_err(ptr noundef null, ptr noundef %ctxt, i32 noundef %hdrlen) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_short_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_short_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_decode_short_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_decode_short_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1594, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
define internal fastcc void @trace_svcrdma_decode_badvers_err(ptr noundef %ctxt, ptr noundef %p) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_badvers_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_decode_badvers_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !75
  %call42 = tail call i32 @__traceiter_svcrdma_decode_badvers_err(ptr noundef null, ptr noundef %ctxt, ptr noundef %p) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !76
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_badvers_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_badvers_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_decode_badvers_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_decode_badvers_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1636, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
define internal fastcc void @trace_svcrdma_decode_drop_err(ptr noundef %ctxt, ptr noundef %p) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_drop_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_decode_drop_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !77
  %call42 = tail call i32 @__traceiter_svcrdma_decode_drop_err(ptr noundef null, ptr noundef %ctxt, ptr noundef %p) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !78
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_drop_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_drop_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_decode_drop_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_decode_drop_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1637, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
define internal fastcc void @trace_svcrdma_decode_badproc_err(ptr noundef %ctxt, ptr noundef %p) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_badproc_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_decode_badproc_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %call42 = tail call i32 @__traceiter_svcrdma_decode_badproc_err(ptr noundef null, ptr noundef %ctxt, ptr noundef %p) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_badproc_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_badproc_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_decode_badproc_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_decode_badproc_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1638, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
define internal fastcc void @trace_svcrdma_decode_parse_err(ptr noundef %ctxt, ptr noundef %p) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_parse_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_decode_parse_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %call42 = tail call i32 @__traceiter_svcrdma_decode_parse_err(ptr noundef null, ptr noundef %ctxt, ptr noundef %p) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_parse_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_parse_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_decode_parse_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_svcrdma_decode_parse_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1639, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #8
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
declare dso_local zeroext i1 @pcl_alloc_call(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcl_alloc_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcl_alloc_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_decode_rqst(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_decode_short_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_decode_badvers_err(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_decode_drop_err(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_decode_badproc_err(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_decode_parse_err(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_rdma_send_ctxt_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rdma_send_error_msg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/trace/events/rpcrdma.h", i32 2049, i32 1}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/trace/events/rpcrdma.h", i32 2050, i32 1}
!14 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/trace/events/rpcrdma.h", i32 2051, i32 1}
!17 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/trace/events/rpcrdma.h", i32 2027, i32 1}
!20 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/trace/events/rpcrdma.h", i32 2053, i32 1}
!23 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/trace/events/rpcrdma.h", i32 1536, i32 1}
!26 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/trace/events/rpcrdma.h", i32 1571, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/trace/events/rpcrdma.h", i32 1636, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/trace/events/rpcrdma.h", i32 1637, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/trace/events/rpcrdma.h", i32 1638, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/trace/events/rpcrdma.h", i32 1639, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2148689068}
!54 = !{i64 2148604353, i64 2148604385, i64 2148604414, i64 2148604448, i64 2148604479, i64 2148604502}
!55 = !{i64 2148689297}
!56 = !{i8 0, i8 2}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2148224359, i64 2148224364, i64 2148224377, i64 2148224421, i64 2148224455, i64 2148224476}
!59 = !{i64 2159878198}
!60 = !{i64 2159878405}
!61 = !{i64 2149949063}
!62 = !{i64 2149950099}
!63 = !{i64 2159899436}
!64 = !{i64 2159899655}
!65 = !{i64 2159916859}
!66 = !{i64 2159917074}
!67 = !{i64 2159861220}
!68 = !{i64 2159861425}
!69 = !{i64 2159933786}
!70 = !{i64 2159934011}
!71 = !{i64 2159414024}
!72 = !{i64 2159414255}
!73 = !{i64 2159435498}
!74 = !{i64 2159435733}
!75 = !{i64 2159453325}
!76 = !{i64 2159453554}
!77 = !{i64 2159471090}
!78 = !{i64 2159471313}
!79 = !{i64 2159492874}
!80 = !{i64 2159493103}
!81 = !{i64 2159510679}
!82 = !{i64 2159510904}
